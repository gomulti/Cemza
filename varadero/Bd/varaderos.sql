-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 07-03-2019 a las 15:32:11
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
-- Base de datos: `gomserve_varaderos`
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

--
-- Volcado de datos para la tabla `wp_commentmeta`
--

INSERT INTO `wp_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_wp_trash_meta_status', '0'),
(2, 1, '_wp_trash_meta_time', '1550304609'),
(3, 3, '_wp_trash_meta_status', '0'),
(4, 3, '_wp_trash_meta_time', '1550899636'),
(5, 2, '_wp_trash_meta_status', '0'),
(6, 2, '_wp_trash_meta_time', '1550899636'),
(7, 4, '_wp_trash_meta_status', '1'),
(8, 4, '_wp_trash_meta_time', '1551238711');

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

--
-- Volcado de datos para la tabla `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 128, 'Jane', 'yasmindryer@googlemail.com', 'http://cspan.org/', '191.101.112.175', '2019-02-15 22:03:31', '2019-02-15 22:03:31', 'I have been browsing online greater than 3 hours as of \r\nlate, yet I never found any fascinating \r\narticle like yours. It\'s pretty worth enough for me.\r\nPersonally, if all webmasters and bloggers \r\nmade just right content as you did, the web will likely be a lot more useful than ever before.\r\nIt is perfect time to make some plans for the longer term \r\nand it’s time to be happy. I have learn this publish and if I \r\nmay just I want to suggest you some interesting things or advice.\r\nPerhaps you could write next articles referring to this \r\narticle. I desire to read more things approximately it!    Saved as a favorite, \r\nI like your website!  http://cspan.org/', 0, 'spam', 'Opera/9.80 (Windows NT 6.2; Win64; x64) Presto/2.12.388 Version/12.17', '', 0, 0),
(2, 128, 'menang domino qiu qiu', 'Dale.Noble68@kucinggair.coolyarddecorations.com', 'https://bahastopikgosip2.blogspot.com/2018/09/kakak-syahrini-lakukan-hal-tak-biasa.html', '139.194.104.97', '2019-02-23 03:53:21', '2019-02-23 03:53:21', 'I know this if off topic but I\'m looking into starting my own weblog and was wondering what \r\nall is needed to get setup? I\'m assuming having a blog like yours would cost \r\na pretty penny? I\'m not very web savvy so I\'m not 100% sure.\r\nAny recommendations or advice would be greatly appreciated.\r\nThank you https://bahastopikgosip2.blogspot.com/2018/09/kakak-syahrini-lakukan-hal-tak-biasa.html', 0, 'spam', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.62 Safari/537.36', '', 0, 0),
(3, 128, 'menang domino qiu qiu', 'Dale.Noble68@kucinggair.coolyarddecorations.com', 'https://bahastopikgosip2.blogspot.com/2018/09/kakak-syahrini-lakukan-hal-tak-biasa.html', '139.194.104.97', '2019-02-23 03:53:44', '2019-02-23 03:53:44', 'I know this if off topic but I\'m looking into starting my own weblog and was \r\nwondering what all is needed to get setup? I\'m assuming having a blog like yours would cost a \r\npretty penny? I\'m not very web savvy so I\'m not 100% sure.\r\nAny recommendations or advice would be greatly appreciated.\r\nThank you https://bahastopikgosip2.blogspot.com/2018/09/kakak-syahrini-lakukan-hal-tak-biasa.html', 0, 'spam', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.62 Safari/537.36', '', 0, 0),
(4, 128, 'varaderoszavala', 'zutfreddy@gmail.com', '', '189.148.244.72', '2019-02-23 05:30:48', '2019-02-23 05:30:48', 'prueba', 0, 'trash', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', '', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_hidemysiteSecure`
--

CREATE TABLE `wp_hidemysiteSecure` (
  `id` mediumint(12) NOT NULL,
  `ip` text NOT NULL,
  `time` varchar(20) NOT NULL,
  `repeated_fails` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `wp_hidemysiteSecure`
--

INSERT INTO `wp_hidemysiteSecure` (`id`, `ip`, `time`, `repeated_fails`) VALUES
(1, '189.129.35.5', '1550305088', '2');

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
(1, 'siteurl', 'http://varaderos.gomserver.net/cms', 'yes'),
(2, 'home', 'http://varaderos.gomserver.net/cms', 'yes'),
(3, 'blogname', 'Varaderos Zavala', 'yes'),
(4, 'blogdescription', 'Otro sitio realizado con WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'zutfreddy@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '', 'yes'),
(11, 'comments_notify', '', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'closed', 'yes'),
(20, 'default_ping_status', 'closed', 'yes'),
(21, 'default_pingback_flag', '', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
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
(40, 'template', 'twentyseventeen', 'yes'),
(41, 'stylesheet', 'twentyseventeen', 'yes'),
(42, 'comment_whitelist', '', 'yes'),
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
(71, 'thread_comments', '', 'yes'),
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
(102, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'cron', 'a:6:{i:1551991743;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1551998943;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1551999151;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1551999873;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1552017968;a:1:{s:18:\"ai1wm_cleanup_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(113, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1550528233;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(122, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.1.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.1-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.1\";s:7:\"version\";s:3:\"5.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.1.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.1-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.1\";s:7:\"version\";s:3:\"5.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1551976097;s:15:\"version_checked\";s:5:\"5.0.3\";s:12:\"translations\";a:0:{}}', 'no'),
(124, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:19:\"zutfreddy@gmail.com\";s:7:\"version\";s:5:\"5.0.3\";s:9:\"timestamp\";i:1548283755;}', 'no'),
(636, 'ai1wm_secret_key', 'jdXQjc6EOdHX', 'yes'),
(637, 'ai1wm_status', 'a:2:{s:4:\"type\";s:8:\"download\";s:7:\"message\";s:356:\"<a href=\"http://varaderos.gomserver.net/cms/wp-content/ai1wm-backups/varaderos.gomserver.net-cms-20190227-041026-187.wpress\" class=\"ai1wm-button-green ai1wm-emphasize ai1wm-button-download\" title=\"varaderos.gomserver.net\" download=\"varaderos.gomserver.net-cms-20190227-041026-187.wpress\"><span>Download varaderos.gomserver.net</span><em>Size: 7 MB</em></a>\";}', 'yes'),
(676, '_transient_twentyseventeen_categories', '2', 'yes'),
(643, 'ai1wm_updater', 'a:0:{}', 'yes'),
(649, '_transient_is_multi_author', '0', 'yes'),
(736, '_site_transient_timeout_theme_roots', '1551977898', 'no'),
(737, '_site_transient_theme_roots', 'a:3:{s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(738, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1551976099;s:7:\"checked\";a:3:{s:14:\"twentynineteen\";s:3:\"1.1\";s:15:\"twentyseventeen\";s:3:\"1.9\";s:13:\"twentysixteen\";s:3:\"1.7\";}s:8:\"response\";a:3:{s:14:\"twentynineteen\";a:4:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.3.zip\";}s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.1.zip\";}s:13:\"twentysixteen\";a:4:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.1.9.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(128, 'can_compress_scripts', '0', 'no'),
(619, 'category_children', 'a:0:{}', 'yes'),
(436, 'hide_my_site_plk', '', 'yes'),
(437, 'hide_my_site_enabled', '1', 'yes'),
(438, 'hide_my_site_password', 'varaderoszavala@2018', 'yes'),
(439, 'hide_my_site_password_hint', '', 'yes'),
(440, 'hide_my_site_duration', '1', 'yes'),
(441, 'hide_my_site_bruteforce', '1', 'yes'),
(442, 'hide_my_site_allow_ips', '', 'yes'),
(443, 'hide_my_site_custom_messaging_banner', '', 'yes'),
(444, 'hide_my_site_custom_messaging_banner_override', '', 'yes'),
(445, 'hide_my_site_pagetitle', 'Password Protected Site', 'yes'),
(446, 'hide_my_site_allow_admin', '', 'yes'),
(447, 'hide_my_site_public_rss', '', 'yes'),
(448, 'hide_my_site_prev', '', 'yes'),
(449, 'hide_my_site_current_theme', 'hmsclassic', 'yes'),
(450, 'hide_my_site_custom_background_image_upload', '', 'yes'),
(451, 'hide_my_site_custom_background_image_position', '', 'yes'),
(452, 'hide_my_site_background_color', '', 'yes'),
(453, 'hide_my_site_custom_css', '', 'yes'),
(456, 'hide_my_site_cookie2suffix', 'ae75e1f1c83ded80d3278a4b549c5f7ac502d84648370896ea3d69040aed16e8', 'yes'),
(431, 'widget_akismet_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(426, 'recently_activated', 'a:0:{}', 'yes'),
(427, 'hmw_securitycheck', 'a:38:{s:8:\"checkPHP\";a:2:{s:5:\"value\";s:6:\"7.0.33\";s:5:\"valid\";b:1;}s:10:\"checkMysql\";a:2:{s:5:\"value\";s:6:\"5.6.41\";s:5:\"valid\";b:1;}s:7:\"checkWP\";a:3:{s:5:\"value\";s:5:\"5.0.3\";s:5:\"valid\";b:1;s:7:\"version\";s:5:\"5.0.3\";}s:12:\"checkWPDebug\";a:2:{s:5:\"value\";s:2:\"No\";s:5:\"valid\";b:1;}s:12:\"checkDBDebug\";a:2:{s:5:\"value\";s:2:\"No\";s:5:\"valid\";b:1;}s:16:\"checkScriptDebug\";a:2:{s:5:\"value\";s:2:\"No\";s:5:\"valid\";b:1;}s:18:\"checkDisplayErrors\";a:2:{s:5:\"value\";s:1:\"0\";s:5:\"valid\";b:1;}s:8:\"checkSSL\";a:2:{s:5:\"value\";s:2:\"No\";s:5:\"valid\";b:0;}s:15:\"checkAdminUsers\";a:2:{s:5:\"value\";s:2:\"No\";s:5:\"valid\";b:1;}s:21:\"checkUserRegistration\";a:2:{s:5:\"value\";s:2:\"No\";s:5:\"valid\";b:1;}s:19:\"checkPluginsUpdates\";a:2:{s:5:\"value\";s:30:\"1 plugin are outdated: akismet\";s:5:\"valid\";b:0;}s:15:\"checkOldPlugins\";a:2:{s:5:\"value\";s:26:\"All plugins are up to date\";s:5:\"valid\";b:1;}s:24:\"checkIncompatiblePlugins\";a:2:{s:5:\"value\";s:26:\"All plugins are compatible\";s:5:\"valid\";b:1;}s:18:\"checkThemesUpdates\";a:2:{s:5:\"value\";s:85:\"3 theme(s) are outdated: <br />twentynineteen<br />twentyseventeen<br />twentysixteen\";s:5:\"valid\";b:0;}s:13:\"checkDBPrefix\";a:2:{s:5:\"value\";s:3:\"wp_\";s:5:\"valid\";b:1;}s:21:\"checkVersionDisplayed\";a:2:{s:5:\"value\";s:7:\"Visible\";s:5:\"valid\";i:0;}s:13:\"checkSaltKeys\";a:2:{s:5:\"value\";s:3:\"Yes\";s:5:\"valid\";b:1;}s:16:\"checkSaltKeysAge\";a:2:{s:5:\"value\";s:7:\"Updated\";s:5:\"valid\";b:1;}s:15:\"checkDbPassword\";a:2:{s:5:\"value\";s:4:\"Good\";s:5:\"valid\";b:1;}s:16:\"checkCommonPaths\";a:2:{s:5:\"value\";s:3:\"Sí\";s:5:\"valid\";b:0;}s:13:\"checkOldPaths\";a:2:{s:5:\"value\";s:3:\"Sí\";s:5:\"valid\";b:0;}s:13:\"checkOldLogin\";a:2:{s:5:\"value\";s:3:\"Sí\";s:5:\"valid\";b:0;}s:16:\"checkConfigChmod\";a:2:{s:5:\"value\";s:3:\"Sí\";s:5:\"valid\";b:0;}s:11:\"checkConfig\";a:2:{s:5:\"value\";s:2:\"No\";s:5:\"valid\";b:1;}s:11:\"checkReadme\";a:2:{s:5:\"value\";s:3:\"Yes\";s:5:\"valid\";b:0;}s:12:\"checkInstall\";a:2:{s:5:\"value\";s:3:\"Sí\";s:5:\"valid\";b:0;}s:20:\"checkRegisterGlobals\";a:2:{s:5:\"value\";s:2:\"No\";s:5:\"valid\";b:1;}s:15:\"checkExposedPHP\";a:2:{s:5:\"value\";s:2:\"No\";s:5:\"valid\";b:1;}s:12:\"checkPHPSafe\";a:2:{s:5:\"value\";s:2:\"No\";s:5:\"valid\";b:1;}s:20:\"checkAllowUrlInclude\";a:2:{s:5:\"value\";s:3:\"Sí\";s:5:\"valid\";b:0;}s:16:\"checkAdminEditor\";a:2:{s:5:\"value\";s:3:\"Sí\";s:5:\"valid\";b:0;}s:21:\"checkUploadsBrowsable\";a:2:{s:5:\"value\";s:3:\"Sí\";s:5:\"valid\";b:0;}s:8:\"checkWLW\";a:2:{s:5:\"value\";s:3:\"Sí\";s:5:\"valid\";b:0;}s:11:\"checkXmlrpc\";a:2:{s:5:\"value\";s:3:\"Sí\";s:5:\"valid\";b:0;}s:8:\"checkRDS\";a:2:{s:5:\"value\";s:3:\"Sí\";s:5:\"valid\";b:0;}s:21:\"checkMysqlPermissions\";a:2:{s:5:\"value\";s:3:\"Sí\";s:5:\"valid\";b:0;}s:14:\"checkUsersById\";a:2:{s:5:\"value\";s:3:\"Sí\";s:5:\"valid\";b:0;}s:20:\"checkBlogDescription\";a:2:{s:5:\"value\";s:3:\"Sí\";s:5:\"valid\";b:0;}}', 'yes'),
(428, 'hmw_securitycheck_time', 'a:1:{s:9:\"timestamp\";i:1550304711;}', 'yes'),
(488, 'current_theme', 'Twenty Seventeen', 'yes'),
(489, 'theme_mods_twentyseventeen', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(490, 'theme_switched', '', 'yes'),
(739, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1551976099;s:7:\"checked\";a:5:{s:19:\"akismet/akismet.php\";s:3:\"4.1\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:4:\"6.85\";s:9:\"hello.php\";s:5:\"1.7.1\";s:22:\"hide-my-site/index.php\";s:5:\"2.0.5\";s:53:\"hide-page-and-post-title/hide-page-and-post-title.php\";s:3:\"1.2\";}s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:37:\"w.org/plugins/all-in-one-wp-migration\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:4:\"6.86\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.6.86.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=2031177\";s:2:\"1x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=2031177\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=2031177\";s:2:\"1x\";s:78:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=2031177\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.1\";s:12:\"requires_php\";s:6:\"5.2.17\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:22:\"hide-my-site/index.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/hide-my-site\";s:4:\"slug\";s:12:\"hide-my-site\";s:6:\"plugin\";s:22:\"hide-my-site/index.php\";s:11:\"new_version\";s:5:\"2.0.5\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/hide-my-site/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/hide-my-site.2.0.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/hide-my-site/assets/icon-256x256.png?rev=1008088\";s:2:\"1x\";s:65:\"https://ps.w.org/hide-my-site/assets/icon-128x128.png?rev=1008093\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hide-my-site/assets/banner-772x250.png?rev=714201\";}s:11:\"banners_rtl\";a:0:{}}s:53:\"hide-page-and-post-title/hide-page-and-post-title.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/hide-page-and-post-title\";s:4:\"slug\";s:24:\"hide-page-and-post-title\";s:6:\"plugin\";s:53:\"hide-page-and-post-title/hide-page-and-post-title.php\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/hide-page-and-post-title/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/hide-page-and-post-title.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:77:\"https://ps.w.org/hide-page-and-post-title/assets/icon-128x128.png?rev=1703131\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:79:\"https://ps.w.org/hide-page-and-post-title/assets/banner-772x250.png?rev=1703131\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

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
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(7, 6, '_edit_lock', '1548285014:1'),
(13, 10, '_edit_lock', '1548286463:1'),
(10, 8, '_edit_lock', '1548285056:1'),
(16, 12, '_edit_lock', '1548288277:1'),
(29, 17, '_edit_lock', '1548362398:1'),
(112, 40, '_edit_lock', '1548313549:1'),
(52, 23, '_edit_lock', '1548362506:1'),
(33, 17, '_edit_last', '1'),
(72, 28, '_edit_lock', '1548362708:1'),
(55, 23, '_edit_last', '1'),
(63, 12, '_edit_last', '1'),
(66, 26, '_edit_lock', '1548362625:1'),
(69, 26, '_edit_last', '1'),
(106, 38, '_edit_lock', '1548313389:1'),
(75, 28, '_edit_last', '1'),
(86, 33, '_edit_lock', '1548362799:1'),
(89, 33, '_edit_last', '1'),
(100, 36, '_edit_lock', '1548313468:1'),
(118, 42, '_edit_lock', '1548313606:1'),
(103, 36, '_edit_last', '1'),
(124, 44, '_edit_lock', '1548313627:1'),
(109, 38, '_edit_last', '1'),
(130, 46, '_edit_lock', '1548313650:1'),
(115, 40, '_edit_last', '1'),
(136, 48, '_edit_lock', '1548313598:1'),
(121, 42, '_edit_last', '1'),
(142, 50, '_edit_lock', '1548313703:1'),
(127, 44, '_edit_last', '1'),
(166, 58, '_edit_lock', '1551239155:1'),
(133, 46, '_edit_last', '1'),
(160, 56, '_edit_lock', '1551239167:1'),
(139, 48, '_edit_last', '1'),
(219, 74, '_edit_lock', '1549078664:1'),
(154, 54, '_edit_lock', '1551239180:1'),
(145, 50, '_edit_last', '1'),
(151, 52, '_edit_last', '1'),
(148, 52, '_edit_lock', '1548355628:1'),
(157, 54, '_edit_last', '1'),
(213, 72, '_edit_lock', '1549078679:1'),
(163, 56, '_edit_last', '1'),
(207, 70, '_edit_lock', '1548358521:1'),
(169, 58, '_edit_last', '1'),
(173, 61, '_edit_lock', '1548354657:1'),
(224, 74, '_edit_last', '1'),
(176, 61, '_edit_last', '1'),
(250, 82, '_edit_lock', '1548362149:1'),
(210, 70, '_edit_last', '1'),
(216, 72, '_edit_last', '1'),
(220, 74, 'extension', 'Ext.200/300'),
(223, 74, 'telefono_marcacion', '+529383828914'),
(229, 72, 'telefono_marcacion', '+529383842246'),
(244, 80, '_edit_lock', '1548362046:1'),
(232, 76, '_edit_lock', '1549078370:1'),
(310, 102, '_edit_lock', '1548362938:1'),
(235, 76, '_edit_last', '1'),
(238, 78, '_edit_lock', '1548361669:1'),
(241, 78, '_edit_last', '1'),
(260, 85, '_edit_lock', '1548362322:1'),
(247, 80, '_edit_last', '1'),
(298, 98, '_edit_lock', '1548362623:1'),
(253, 82, '_edit_last', '1'),
(266, 87, '_edit_lock', '1548362523:1'),
(263, 85, '_edit_last', '1'),
(292, 96, '_edit_lock', '1548362602:1'),
(295, 96, '_edit_last', '1'),
(304, 100, '_edit_lock', '1548362843:1'),
(285, 87, '_edit_last', '1'),
(414, 135, '_edit_last', '1'),
(316, 104, '_edit_lock', '1548363099:1'),
(301, 98, '_edit_last', '1'),
(322, 106, '_edit_lock', '1548363113:1'),
(307, 100, '_edit_last', '1'),
(328, 108, '_edit_lock', '1548363131:1'),
(313, 102, '_edit_last', '1'),
(334, 110, '_edit_lock', '1548363144:1'),
(319, 104, '_edit_last', '1'),
(340, 112, '_edit_lock', '1548363077:1'),
(325, 106, '_edit_last', '1'),
(346, 114, '_edit_lock', '1548363235:1'),
(331, 108, '_edit_last', '1'),
(352, 116, '_edit_lock', '1548363296:1'),
(337, 110, '_edit_last', '1'),
(358, 118, '_edit_lock', '1548363247:1'),
(343, 112, '_edit_last', '1'),
(364, 120, '_edit_lock', '1548363383:1'),
(349, 114, '_edit_last', '1'),
(370, 122, '_edit_lock', '1551238968:1'),
(355, 116, '_edit_last', '1'),
(376, 124, '_edit_lock', '1551238982:1'),
(361, 118, '_edit_last', '1'),
(382, 126, '_edit_lock', '1551238891:1'),
(367, 120, '_edit_last', '1'),
(388, 128, '_edit_lock', '1548363843:1'),
(373, 122, '_edit_last', '1'),
(421, 137, '_edit_last', '1'),
(379, 124, '_edit_last', '1'),
(385, 126, '_edit_last', '1'),
(391, 128, '_edit_last', '1'),
(417, 137, '_edit_lock', '1549078693:1'),
(403, 133, '_edit_lock', '1548363991:1'),
(407, 133, '_edit_last', '1'),
(406, 133, '_oembed_8213da06ba0e8f49af9bfac10cff3ae5', '{{unknown}}'),
(410, 135, '_edit_lock', '1548364009:1'),
(413, 135, '_oembed_1973e4e6f7e1d5060a63d25d14224cb1', '{{unknown}}'),
(420, 137, 'telefono_marcacion', '+529381248686'),
(452, 141, '_edit_last', '1'),
(443, 141, '_edit_lock', '1549078547:1'),
(451, 141, 'telefono_marcacion', '+529381378482'),
(460, 144, '_edit_lock', '1550528173:1'),
(463, 144, '_edit_last', '1'),
(482, 135, '_oembed_f6d497fde21367fee4a2f812e110fe06', '{{unknown}}'),
(483, 133, '_oembed_565f8c9aa88ded488654a6df311972dc', '{{unknown}}'),
(484, 150, '_wp_attached_file', '2019/01/proyecto-varios.jpg'),
(485, 150, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:152;s:4:\"file\";s:27:\"2019/01/proyecto-varios.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"proyecto-varios-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"proyecto-varios-300x152.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:27:\"proyecto-varios-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(486, 151, '_wp_attached_file', '2019/01/proyecto-marinsa.jpg'),
(487, 151, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:152;s:4:\"file\";s:28:\"2019/01/proyecto-marinsa.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"proyecto-marinsa-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"proyecto-marinsa-300x152.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:28:\"proyecto-marinsa-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(488, 152, '_wp_attached_file', '2019/01/proyecto-pemex.jpg'),
(489, 152, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:152;s:4:\"file\";s:26:\"2019/01/proyecto-pemex.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"proyecto-pemex-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"proyecto-pemex-300x152.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:26:\"proyecto-pemex-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(494, 124, '_thumbnail_id', '151'),
(491, 126, '_thumbnail_id', '150'),
(501, 58, '_thumbnail_id', '150'),
(497, 122, '_thumbnail_id', '152'),
(508, 54, '_encloseme', '1'),
(504, 56, '_thumbnail_id', '151'),
(507, 54, '_thumbnail_id', '152');

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
(2, 1, '2019-01-23 22:49:03', '2019-01-23 22:49:03', '<!-- wp:paragraph -->\n<p>Esta es una página de ejemplo. Es diferente a una entrada del blog porque permanecerá en un solo lugar y aparecerá en la navegación de su sitio (en la mayoría de los temas). La mayoría de las personas comienzan con una página «Acerca de» que les presenta a los visitantes potenciales del sitio. Podría decir algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>¡Bienvenido! Soy camarero de día, aspirante a actor de noche y esta es mi web. Vivo en Mairena del Alcor, tengo un perro que se llama Firulais y me gusta el rebujito. (Y las tardes largas con café)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…o algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La empresa Mariscos Recio fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco a hoteles y restaurantes, pero poco a poco se ha ido transformando en un gran imperio. Mariscos Recio, el mar al mejor precio.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como nuevo usuario de WordPress, deberías ir a <a href=\"http://varaderos.gomserver.net/cms/wp-admin/\">tu escritorio</a> para borrar esta página y crear nuevas páginas para tu contenido. ¡Pásalo bien!</p>\n<!-- /wp:paragraph -->', 'Página de ejemplo', '', 'publish', 'closed', 'open', '', 'pagina-ejemplo', '', '', '2019-02-23 05:44:40', '2019-02-23 05:44:40', '', 0, 'http://varaderos.gomserver.net/cms/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-01-23 22:49:03', '2019-01-23 22:49:03', '<!-- wp:heading --><h2>Quiénes somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>La dirección de nuestra web es: http://varaderos.gomserver.net/cms.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Qué datos personales recogemos y por qué los recogemos</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comentarios</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Cuando los visitantes dejan comentarios en la web, recopilamos los datos que se muestran en el formulario de comentarios, así como la dirección IP del visitante y la cadena de agentes de usuario del navegador para ayudar a la detección de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Una cadena anónima creada a partir de tu dirección de correo electrónico (también llamada hash) puede ser proporcionada al servicio de Gravatar para ver si la estás usando. La política de privacidad del servicio Gravatar está disponible aquí: https://automattic.com/privacy/. Después de la aprobación de tu comentario, la imagen de tu perfil es visible para el público en el contexto de su comentario.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Medios</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si subes imágenes a la web deberías evitar subir imágenes con datos de ubicación (GPS EXIF) incluidos. Los visitantes de la web pueden descargar y extraer cualquier dato de localización de las imágenes de la web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formularios de contacto</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si dejas un comentario en nuestro sitio puedes elegir guardar tu nombre, dirección de correo electrónico y web en cookies. Esto es para tu comodidad, para que no tengas que volver a rellenar tus datos cuando dejes otro comentario. Estas cookies tendrán una duración de un año.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si tienes una cuenta y te conectas a este sitio, instalaremos una cookie temporal para determinar si tu navegador acepta cookies. Esta cookie no contiene datos personales y se elimina al cerrar el navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Cuando inicias sesión, también instalaremos varias cookies para guardar tu información de inicio de sesión y tus opciones de visualización de pantalla. Las cookies de inicio de sesión duran dos días, y las cookies de opciones de pantalla duran un año. Si seleccionas &quot;Recordarme&quot;, tu inicio de sesión perdurará durante dos semanas. Si sales de tu cuenta, las cookies de inicio de sesión se eliminarán.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si editas o publicas un artículo se guardará una cookie adicional en tu navegador. Esta cookie no incluye datos personales y simplemente indica el ID del artículo que acabas de editar. Caduca después de 1 día.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contenido incrustado de otros sitios web</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Los artículos de este sitio pueden incluir contenido incrustado (por ejemplo, vídeos, imágenes, artículos, etc.). El contenido incrustado de otras web se comporta exactamente de la misma manera que si el visitante hubiera visitado la otra web.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estas web pueden recopilar datos sobre ti, utilizar cookies, incrustar un seguimiento adicional de terceros, y supervisar tu interacción con ese contenido incrustado, incluido el seguimiento de tu interacción con el contenido incrustado si tienes una cuenta y estás conectado a esa web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analítica</h3><!-- /wp:heading --><!-- wp:heading --><h2>Con quién compartimos tus datos</h2><!-- /wp:heading --><!-- wp:heading --><h2>Cuánto tiempo conservamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si dejas un comentario, el comentario y sus metadatos se conservan indefinidamente. Esto es para que podamos reconocer y aprobar comentarios sucesivos automáticamente en lugar de mantenerlos en una cola de moderación.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>De los usuarios que se registran en nuestra web (si los hay), también almacenamos la información personal que proporcionan en su perfil de usuario. Todos los usuarios pueden ver, editar o eliminar su información personal en cualquier momento (excepto que no pueden cambiar su nombre de usuario). Los administradores de la web también pueden ver y editar esa información.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Qué derechos tienes sobre tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si tienes una cuenta o has dejado comentarios en esta web, puedes solicitar recibir un archivo de exportación de los datos personales que tenemos sobre ti, incluyendo cualquier dato que nos hayas proporcionado. También puedes solicitar que eliminemos cualquier dato personal que tengamos sobre ti. Esto no incluye ningún dato que estemos obligados a conservar con fines administrativos, legales o de seguridad.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Dónde enviamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Los comentarios de los visitantes puede que los revise un servicio de detección automática de spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Tu información de contacto</h2><!-- /wp:heading --><!-- wp:heading --><h2>Información adicional</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cómo protegemos tus datos</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Qué procedimientos utilizamos contra las brechas de datos</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>De qué terceros recibimos datos</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Qué tipo de toma de decisiones automatizada y/o perfilado hacemos con los datos del usuario</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Requerimientos regulatorios de revelación de información del sector</h3><!-- /wp:heading -->', 'Política de privacidad', '', 'draft', 'closed', 'open', '', 'politica-privacidad', '', '', '2019-02-23 05:44:40', '2019-02-23 05:44:40', '', 0, 'http://varaderos.gomserver.net/cms/?page_id=3', 0, 'page', '', 0),
(6, 1, '2019-01-23 23:05:29', '2019-01-23 23:05:29', '<!-- wp:paragraph -->\n<p>Contamos con la infraestructura, equipos,&nbsp;<br>personal técnico calificado y la experiencia para&nbsp;<br>ofrecer servicios de calidad en reparación y&nbsp;<br>mantenimiento en seco y a flote de&nbsp;<br>embarcaciones.</p>\n<!-- /wp:paragraph -->', 'Acerca de nosotros', '', 'publish', 'open', 'open', '', 'acerca-de-nosotros', '', '', '2019-01-23 23:05:29', '2019-01-23 23:05:29', '', 0, 'http://varaderos.gomserver.net/cms/?p=6', 0, 'post', '', 0),
(7, 1, '2019-01-23 23:05:29', '2019-01-23 23:05:29', '<!-- wp:paragraph -->\n<p>Contamos con la infraestructura, equipos,&nbsp;<br>personal técnico calificado y la experiencia para&nbsp;<br>ofrecer servicios de calidad en reparación y&nbsp;<br>mantenimiento en seco y a flote de&nbsp;<br>embarcaciones.</p>\n<!-- /wp:paragraph -->', 'Acerca de nosotros', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2019-01-23 23:05:29', '2019-01-23 23:05:29', '', 6, 'http://varaderos.gomserver.net/cms/2019/01/23/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2019-01-23 23:13:17', '2019-01-23 23:13:17', '<!-- wp:paragraph -->\n<p>Somos una empresa 100 % mexicana. Ofrecemos un sistema integral en la industria de reparación y                        mantenimiento de embarcaciones en el Golfo de México, con más de 50 años de experiencia.</p>\n<!-- /wp:paragraph -->', 'Acerca de nosotros - Texto 2', '', 'publish', 'open', 'open', '', 'acerca-de-nosotros-texto-2', '', '', '2019-01-23 23:13:17', '2019-01-23 23:13:17', '', 0, 'http://varaderos.gomserver.net/cms/?p=8', 0, 'post', '', 0),
(9, 1, '2019-01-23 23:13:17', '2019-01-23 23:13:17', '<!-- wp:paragraph -->\n<p>Somos una empresa 100 % mexicana. Ofrecemos un sistema integral en la industria de reparación y                        mantenimiento de embarcaciones en el Golfo de México, con más de 50 años de experiencia.</p>\n<!-- /wp:paragraph -->', 'Acerca de nosotros - Texto 2', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-01-23 23:13:17', '2019-01-23 23:13:17', '', 8, 'http://varaderos.gomserver.net/cms/2019/01/23/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2019-01-23 23:36:31', '2019-01-23 23:36:31', '<!-- wp:paragraph -->\n<p>Estamos estratégicamente ubicados en el puerto de&nbsp;<br>Ciudad del Carmen Campeche, México; dando servicio a&nbsp;<br>todo el Golfo de México.</p>\n<!-- /wp:paragraph -->', 'Nuestras instalaciones', '', 'publish', 'open', 'open', '', 'nuestras-instalaciones', '', '', '2019-01-23 23:36:31', '2019-01-23 23:36:31', '', 0, 'http://varaderos.gomserver.net/cms/?p=10', 0, 'post', '', 0),
(11, 1, '2019-01-23 23:36:31', '2019-01-23 23:36:31', '<!-- wp:paragraph -->\n<p>Estamos estratégicamente ubicados en el puerto de&nbsp;<br>Ciudad del Carmen Campeche, México; dando servicio a&nbsp;<br>todo el Golfo de México.</p>\n<!-- /wp:paragraph -->', 'Nuestras instalaciones', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2019-01-23 23:36:31', '2019-01-23 23:36:31', '', 10, 'http://varaderos.gomserver.net/cms/2019/01/23/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2019-01-23 23:39:59', '2019-01-23 23:39:59', '<!-- wp:paragraph -->\n<p>Tenemos a disposición dos camas de varada:<br></p>\n<!-- /wp:paragraph -->', 'Nuestras instalaciones p.2 - Titulo', '', 'publish', 'open', 'open', '', 'nuestras-instalaciones-p-2', '', '', '2019-01-24 00:04:36', '2019-01-24 00:04:36', '', 0, 'http://varaderos.gomserver.net/cms/?p=12', 0, 'post', '', 0),
(13, 1, '2019-01-23 23:39:59', '2019-01-23 23:39:59', '<!-- wp:paragraph -->\n<p>Tenemos a disposición dos camas de varada:<br></p>\n<!-- /wp:paragraph -->', 'Nuestras instalaciones p.2', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-01-23 23:39:59', '2019-01-23 23:39:59', '', 12, 'http://varaderos.gomserver.net/cms/2019/01/23/12-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2019-01-23 23:53:50', '2019-01-23 23:53:50', '<!-- wp:list -->\n<ul><li><strong> Eslora:</strong>&nbsp;39.00 Mts</li><li><strong>Manga:</strong>&nbsp;6.00 Mts</li><li><strong>Calado a nivel de picadero:</strong>&nbsp;7 ft.</li><li><strong>Capacidad:</strong>&nbsp;400 tons.</li></ul>\n<!-- /wp:list -->', 'Varadero 1', '', 'publish', 'open', 'open', '', 'nuestras-instalaciones-p-4', '', '', '2019-01-24 20:41:05', '2019-01-24 20:41:05', '', 0, 'http://varaderos.gomserver.net/cms/?p=17', 0, 'post', '', 0),
(22, 1, '2019-01-23 23:59:06', '2019-01-23 23:59:06', '<!-- wp:list -->\n<ul><li><strong>Eslora:</strong>&nbsp;39.00 Mts</li><li><strong>Manga:</strong>&nbsp;6.00 Mts</li><li><strong>Calado a nivel de picadero:</strong>&nbsp;7 ft.</li><li><strong>Capacidad:</strong>&nbsp;400 tons.</li></ul>\n<!-- /wp:list -->', 'Varadero 1', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-01-23 23:59:06', '2019-01-23 23:59:06', '', 17, 'http://varaderos.gomserver.net/cms/2019/01/23/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2019-01-23 23:53:50', '2019-01-23 23:53:50', '<!-- wp:paragraph -->\n<p>Varadero 1</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li><strong>Eslora:</strong>&nbsp;39.00 Mts</li><li><strong>Manga:</strong>&nbsp;6.00 Mts</li><li><strong>Calado a nivel de picadero:</strong>&nbsp;7 ft.</li><li><strong>Capacidad:</strong>&nbsp;400 tons.</li></ul>\n<!-- /wp:list -->', 'Nuestras instalaciones p.4', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-01-23 23:53:50', '2019-01-23 23:53:50', '', 17, 'http://varaderos.gomserver.net/cms/2019/01/23/17-revision-v1/', 0, 'revision', '', 0),
(138, 1, '2019-02-02 02:13:02', '2019-02-02 02:13:02', '<!-- wp:paragraph -->\n<p>+52 01 (938) 124 8686</p>\n<!-- /wp:paragraph -->', 'Contacto Telefono 3', '', 'inherit', 'closed', 'closed', '', '137-revision-v1', '', '', '2019-02-02 02:13:02', '2019-02-02 02:13:02', '', 137, 'http://varaderos.gomserver.net/cms/2019/02/02/137-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2019-01-23 23:56:41', '2019-01-23 23:56:41', '<!-- wp:paragraph -->\n<p><div class=\"name-varadero\">Varadero 1</div></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li><strong>Eslora:</strong>&nbsp;39.00 Mts</li><li><strong>Manga:</strong>&nbsp;6.00 Mts</li><li><strong>Calado a nivel de picadero:</strong>&nbsp;7 ft.</li><li><strong>Capacidad:</strong>&nbsp;400 tons.</li></ul>\n<!-- /wp:list -->', 'Nuestras instalaciones p.4', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-01-23 23:56:41', '2019-01-23 23:56:41', '', 17, 'http://varaderos.gomserver.net/cms/2019/01/23/17-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2019-01-23 23:58:05', '2019-01-23 23:58:05', '<!-- wp:paragraph -->\n<p><h3 class=\"name-varadero\">Varadero 1</h3></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li><strong>Eslora:</strong>&nbsp;39.00 Mts</li><li><strong>Manga:</strong>&nbsp;6.00 Mts</li><li><strong>Calado a nivel de picadero:</strong>&nbsp;7 ft.</li><li><strong>Capacidad:</strong>&nbsp;400 tons.</li></ul>\n<!-- /wp:list -->', 'Nuestras instalaciones p.4', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-01-23 23:58:05', '2019-01-23 23:58:05', '', 17, 'http://varaderos.gomserver.net/cms/2019/01/23/17-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2019-01-24 00:02:08', '2019-01-24 00:02:08', '<ul>\n 	<li><strong>Eslora:</strong> 45.12 Mts</li>\n 	<li><strong>Manga:</strong> 11.00 Mts</li>\n 	<li><strong>Calado a nivel de picadero:</strong> 10 ft.</li>\n 	<li><strong>Capacidad:</strong> 1,000 tons.</li>\n</ul>', 'Varadero 2', '', 'publish', 'open', 'open', '', 'vararedo-2', '', '', '2019-01-24 17:30:23', '2019-01-24 17:30:23', '', 0, 'http://varaderos.gomserver.net/cms/?p=23', 0, 'post', '', 0),
(24, 1, '2019-01-24 00:02:08', '2019-01-24 00:02:08', '<ul>\n 	<li><strong>Eslora:</strong> 45.12 Mts</li>\n 	<li><strong>Manga:</strong> 11.00 Mts</li>\n 	<li><strong>Calado a nivel de picadero:</strong> 10 ft.</li>\n 	<li><strong>Capacidad:</strong> 1,000 tons.</li>\n</ul>', 'Vararedo 2', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2019-01-24 00:02:08', '2019-01-24 00:02:08', '', 23, 'http://varaderos.gomserver.net/cms/2019/01/24/23-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2019-01-24 00:04:34', '2019-01-24 00:04:34', '<!-- wp:paragraph -->\n<p>Tenemos a disposición dos camas de varada:<br></p>\n<!-- /wp:paragraph -->', 'Nuestras instalaciones p.2 - Titulo', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-01-24 00:04:34', '2019-01-24 00:04:34', '', 12, 'http://varaderos.gomserver.net/cms/2019/01/24/12-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2019-01-24 00:05:07', '2019-01-24 00:05:07', '<!-- wp:paragraph -->\n<p>Nuestras instalaciones cuentan con:</p>\n<!-- /wp:paragraph -->', 'Nuestras instalaciones p.3 - Titulo', '', 'publish', 'open', 'open', '', 'nuestras-instalaciones-p-3-titulo', '', '', '2019-01-24 00:05:08', '2019-01-24 00:05:08', '', 0, 'http://varaderos.gomserver.net/cms/?p=26', 0, 'post', '', 0),
(27, 1, '2019-01-24 00:05:07', '2019-01-24 00:05:07', '<!-- wp:paragraph -->\n<p>Nuestras instalaciones cuentan con:</p>\n<!-- /wp:paragraph -->', 'Nuestras instalaciones p.3 - Titulo', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2019-01-24 00:05:07', '2019-01-24 00:05:07', '', 26, 'http://varaderos.gomserver.net/cms/2019/01/24/26-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2019-01-24 00:06:37', '2019-01-24 00:06:37', '<ul class=\"list-facilities\">\n 	<li>2 Muelles de reparación\n<ul>\n 	<li>Norte: 35 .83m x 20.19 mts.</li>\n 	<li>Sur: 109 .83m x 4.38 mts.</li>\n</ul>\n</li>\n 	<li>Taller mecánico y maquinado</li>\n 	<li>Patio de corte y conformado</li>\n</ul>', 'Nuestras instalaciones p3. Lista p.1', '', 'publish', 'open', 'open', '', 'nuestras-instalaciones-p3-lista-p-1', '', '', '2019-01-24 00:10:02', '2019-01-24 00:10:02', '', 0, 'http://varaderos.gomserver.net/cms/?p=28', 0, 'post', '', 0),
(29, 1, '2019-01-24 00:06:37', '2019-01-24 00:06:37', '<ul class=\"list-facilities\">\n 	<li>2 Muelles de reparación\n<ul>\n 	<li>Norte: 35 .83m x 20.19 mts.</li>\n 	<li>Sur: 109 .83m x 4.38 mts.</li>\n</ul>\n</li>\n 	<li>Taller mecánico y maquinado</li>\n 	<li>Patio de corte y conformado</li>\n</ul>', 'Nuestras instalaciones p3. Lista p.1', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2019-01-24 00:06:37', '2019-01-24 00:06:37', '', 28, 'http://varaderos.gomserver.net/cms/2019/01/24/28-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2019-01-24 00:10:00', '2019-01-24 00:10:00', '<ul class=\"list-facilities\">\n 	<li>2 Muelles de reparación\n<ul>\n 	<li>Norte: 35 .83m x 20.19 mts.</li>\n 	<li>Sur: 109 .83m x 4.38 mts.</li>\n</ul>\n</li>\n 	<li>Taller mecánico y maquinado</li>\n 	<li>Patio de corte y conformado</li>\n</ul>', 'Nuestras instalaciones p3. Lista p.1', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2019-01-24 00:10:00', '2019-01-24 00:10:00', '', 28, 'http://varaderos.gomserver.net/cms/2019/01/24/28-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2019-01-24 00:07:02', '2019-01-24 00:07:02', '<ul class=\"list-facilities\">\n 	<li style=\"list-style-type: none\">\n<ul class=\"list-facilities\">\n 	<li>2 Muelles de reparación\n<ul>\n 	<li style=\"list-style-type: none\">\n<ul>\n 	<li>Norte: 35 .83m x 20.19 mts.</li>\n 	<li>Sur: 109 .83m x 4.38 mts.</li>\n</ul>\n</li>\n</ul>\n</li>\n 	<li>Taller mecánico y maquinado</li>\n 	<li>Patio de corte y conformado</li>\n</ul>\n</li>\n</ul>', 'Nuestras instalaciones p3. Lista p.1', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2019-01-24 00:07:02', '2019-01-24 00:07:02', '', 28, 'http://varaderos.gomserver.net/cms/2019/01/24/28-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2019-01-24 00:11:42', '2019-01-24 00:11:42', '<ul class=\"list-facilities\">\n 	<li>Área de sandblast</li>\n 	<li>Taller de rolado</li>\n 	<li>Oficinas generales</li>\n 	<li>Almacén general</li>\n 	<li>Oficinas de armadores con Internet Wifi</li>\n</ul>', 'Nuestras instalaciones p3. Lista p.2', '', 'publish', 'open', 'open', '', '33', '', '', '2019-01-24 17:30:58', '2019-01-24 17:30:58', '', 0, 'http://varaderos.gomserver.net/cms/?p=33', 0, 'post', '', 0),
(34, 1, '2019-01-24 00:11:42', '2019-01-24 00:11:42', '<ul class=\"list-facilities\">\n 	<li>Área de sand blast</li>\n 	<li>Taller de rolado</li>\n 	<li>Oficinas generales</li>\n 	<li>Almacén general</li>\n 	<li>Oficinas de armadores con Internet Wifi</li>\n</ul>', '', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2019-01-24 00:11:42', '2019-01-24 00:11:42', '', 33, 'http://varaderos.gomserver.net/cms/2019/01/24/33-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2019-01-24 00:12:18', '2019-01-24 00:12:18', '<ul class=\"list-facilities\">\n 	<li>Área de sand blast</li>\n 	<li>Taller de rolado</li>\n 	<li>Oficinas generales</li>\n 	<li>Almacén general</li>\n 	<li>Oficinas de armadores con Internet Wifi</li>\n</ul>', 'Nuestras instalaciones p3. Lista p.2', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2019-01-24 00:12:18', '2019-01-24 00:12:18', '', 33, 'http://varaderos.gomserver.net/cms/2019/01/24/33-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2019-01-24 07:04:24', '2019-01-24 07:04:24', '<!-- wp:paragraph -->\n<p>Puestas en seco de hasta 1,000 tons. y a flote en muelle o costa afuera.</p>\n<!-- /wp:paragraph -->', 'Reparación de embarcaciones', '', 'publish', 'open', 'open', '', 'reparacion-de-embarcaciones', '', '', '2019-01-24 07:04:27', '2019-01-24 07:04:27', '', 0, 'http://varaderos.gomserver.net/cms/?p=36', 0, 'post', '', 0),
(37, 1, '2019-01-24 07:04:24', '2019-01-24 07:04:24', '<!-- wp:paragraph -->\n<p>Puestas en seco de hasta 1,000 tons. y a flote en muelle o costa afuera.</p>\n<!-- /wp:paragraph -->', 'Reparación de embarcaciones', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2019-01-24 07:04:24', '2019-01-24 07:04:24', '', 36, 'http://varaderos.gomserver.net/cms/2019/01/24/36-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2019-01-24 07:04:46', '2019-01-24 07:04:46', '<!-- wp:paragraph -->\n<p>A cascos, cubiertas, tanques, casetería, estructuras y accesorios varios.<br></p>\n<!-- /wp:paragraph -->', 'Sandblast y Pintura', '', 'publish', 'open', 'open', '', 'sandblast-y-pintura', '', '', '2019-01-24 07:04:48', '2019-01-24 07:04:48', '', 0, 'http://varaderos.gomserver.net/cms/?p=38', 0, 'post', '', 0),
(39, 1, '2019-01-24 07:04:46', '2019-01-24 07:04:46', '<!-- wp:paragraph -->\n<p>A cascos, cubiertas, tanques, casetería, estructuras y accesorios varios.<br></p>\n<!-- /wp:paragraph -->', 'Sandblast y Pintura', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2019-01-24 07:04:46', '2019-01-24 07:04:46', '', 38, 'http://varaderos.gomserver.net/cms/2019/01/24/38-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2019-01-24 07:05:46', '2019-01-24 07:05:46', '<!-- wp:paragraph -->\n<p>Renovación de acero y aluminio naval con soldadores certificados por ABS.<br></p>\n<!-- /wp:paragraph -->', 'Pailería y Soldadura', '', 'publish', 'open', 'open', '', 'paileria-y-soldadura', '', '', '2019-01-24 07:05:48', '2019-01-24 07:05:48', '', 0, 'http://varaderos.gomserver.net/cms/?p=40', 0, 'post', '', 0),
(41, 1, '2019-01-24 07:05:46', '2019-01-24 07:05:46', '<!-- wp:paragraph -->\n<p>Renovación de acero y aluminio naval con soldadores certificados por ABS.<br></p>\n<!-- /wp:paragraph -->', 'Pailería y Soldadura', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2019-01-24 07:05:46', '2019-01-24 07:05:46', '', 40, 'http://varaderos.gomserver.net/cms/2019/01/24/40-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2019-01-24 07:06:43', '2019-01-24 07:06:43', '<!-- wp:paragraph -->\n<p>Mantenimiento y reparación a válvulas, sistema de propulsión y gobierno, cambio de bujes, etc.<br></p>\n<!-- /wp:paragraph -->', 'Mecánica', '', 'publish', 'open', 'open', '', 'mecanica', '', '', '2019-01-24 07:06:45', '2019-01-24 07:06:45', '', 0, 'http://varaderos.gomserver.net/cms/?p=42', 0, 'post', '', 0),
(43, 1, '2019-01-24 07:06:43', '2019-01-24 07:06:43', '<!-- wp:paragraph -->\n<p>Mantenimiento y reparación a válvulas, sistema de propulsión y gobierno, cambio de bujes, etc.<br></p>\n<!-- /wp:paragraph -->', 'Mecánica', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2019-01-24 07:06:43', '2019-01-24 07:06:43', '', 42, 'http://varaderos.gomserver.net/cms/2019/01/24/42-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2019-01-24 07:07:05', '2019-01-24 07:07:05', '<!-- wp:paragraph -->\n<p>Contamos con dos muelles de reparación: Norte (35.83m x 20.19m) y Sur (109.83m x 4.38m), calado máximo 16ft.<br></p>\n<!-- /wp:paragraph -->', 'Muellaje', '', 'publish', 'open', 'open', '', 'muellaje', '', '', '2019-01-24 07:07:06', '2019-01-24 07:07:06', '', 0, 'http://varaderos.gomserver.net/cms/?p=44', 0, 'post', '', 0),
(45, 1, '2019-01-24 07:07:05', '2019-01-24 07:07:05', '<!-- wp:paragraph -->\n<p>Contamos con dos muelles de reparación: Norte (35.83m x 20.19m) y Sur (109.83m x 4.38m), calado máximo 16ft.<br></p>\n<!-- /wp:paragraph -->', 'Muellaje', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2019-01-24 07:07:05', '2019-01-24 07:07:05', '', 44, 'http://varaderos.gomserver.net/cms/2019/01/24/44-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2019-01-24 07:07:27', '2019-01-24 07:07:27', '<!-- wp:paragraph -->\n<p>Bujes, ánodos de zinc y magnesio, aluminio naval y materiales de acero certificado por ABS.<br></p>\n<!-- /wp:paragraph -->', 'Suministros Navales', '', 'publish', 'open', 'open', '', 'suministros-navales', '', '', '2019-01-24 07:07:29', '2019-01-24 07:07:29', '', 0, 'http://varaderos.gomserver.net/cms/?p=46', 0, 'post', '', 0),
(47, 1, '2019-01-24 07:07:27', '2019-01-24 07:07:27', '<!-- wp:paragraph -->\n<p>Bujes, ánodos de zinc y magnesio, aluminio naval y materiales de acero certificado por ABS.<br></p>\n<!-- /wp:paragraph -->', 'Suministros Navales', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2019-01-24 07:07:27', '2019-01-24 07:07:27', '', 46, 'http://varaderos.gomserver.net/cms/2019/01/24/46-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2019-01-24 07:07:45', '2019-01-24 07:07:45', '<!-- wp:paragraph -->\n<p>Fabricación y maquinado de piezas.<br></p>\n<!-- /wp:paragraph -->', 'Maquinado', '', 'publish', 'open', 'open', '', 'maquinado', '', '', '2019-01-24 07:07:47', '2019-01-24 07:07:47', '', 0, 'http://varaderos.gomserver.net/cms/?p=48', 0, 'post', '', 0),
(49, 1, '2019-01-24 07:07:45', '2019-01-24 07:07:45', '<!-- wp:paragraph -->\n<p>Fabricación y maquinado de piezas.<br></p>\n<!-- /wp:paragraph -->', 'Maquinado', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2019-01-24 07:07:45', '2019-01-24 07:07:45', '', 48, 'http://varaderos.gomserver.net/cms/2019/01/24/48-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2019-01-24 07:09:17', '2019-01-24 07:09:17', '<!-- wp:paragraph -->\n<p>Líquidos penetrantes, ultrasonido, calibración de espesores, pruebas neumáticas e hidrostáticas a tanques, etc.<br></p>\n<!-- /wp:paragraph -->', 'Pruebas No Destructivas', '', 'publish', 'open', 'open', '', 'pruebas-no-destructivas', '', '', '2019-01-24 07:09:19', '2019-01-24 07:09:19', '', 0, 'http://varaderos.gomserver.net/cms/?p=50', 0, 'post', '', 0),
(51, 1, '2019-01-24 07:09:17', '2019-01-24 07:09:17', '<!-- wp:paragraph -->\n<p>Líquidos penetrantes, ultrasonido, calibración de espesores, pruebas neumáticas e hidrostáticas a tanques, etc.<br></p>\n<!-- /wp:paragraph -->', 'Pruebas No Destructivas', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2019-01-24 07:09:17', '2019-01-24 07:09:17', '', 50, 'http://varaderos.gomserver.net/cms/2019/01/24/50-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2019-01-24 07:11:37', '2019-01-24 07:11:37', '<!-- wp:paragraph -->\n<p>Estos son algunos de los trabajos que hemos realizado</p>\n<!-- /wp:paragraph -->', 'Proyectos Destacados', '', 'publish', 'open', 'open', '', 'proyectos-destacados', '', '', '2019-01-24 07:11:39', '2019-01-24 07:11:39', '', 0, 'http://varaderos.gomserver.net/cms/?p=52', 0, 'post', '', 0),
(53, 1, '2019-01-24 07:11:37', '2019-01-24 07:11:37', '<!-- wp:paragraph -->\n<p>Estos son algunos de los trabajos que hemos realizado</p>\n<!-- /wp:paragraph -->', 'Proyectos Destacados', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2019-01-24 07:11:37', '2019-01-24 07:11:37', '', 52, 'http://varaderos.gomserver.net/cms/2019/01/24/52-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2019-01-24 07:15:46', '2019-01-24 07:15:46', 'Reparación y mantenimiento mayor al remolcador PEMEX XVL, de\nPemex Refinación.\n\nReparación y mantenimiento mayor al Chalán PEMEX 581, de Pemex\nRefinación.\n\nDesacoplamiento, mantenimiento, instalación de moto bombas de\ncarga y trabajos para asegurar la confiabilidad operativa del CHALAN\nPEMEX 571.', 'PEMEX', '', 'publish', 'open', 'open', '', 'pemex', '', '', '2019-02-27 03:46:19', '2019-02-27 03:46:19', '', 0, 'http://varaderos.gomserver.net/cms/?p=54', 0, 'post', '', 0),
(55, 1, '2019-01-24 07:15:46', '2019-01-24 07:15:46', 'Reparación y mantenimiento mayor al remolcador PEMEX XVL, de\nPemex Refinación.\n\nReparación y mantenimiento mayor al Chalán PEMEX 581, de Pemex\nRefinación.\n\nDesacoplamiento, mantenimiento, instalación de moto bombas de\ncarga y trabajos para asegurar la confiabilidad operativa del CHALAN\nPEMEX 571.', 'PEMEX', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2019-01-24 07:15:46', '2019-01-24 07:15:46', '', 54, 'http://varaderos.gomserver.net/cms/2019/01/24/54-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2019-01-24 07:20:28', '2019-01-24 07:20:28', 'Habilitado de barcos loderos Amethist Y Turquoise de la\nCompañía Marinsa: Armado de estructuras, Habilitado de líneas de proceso, Habilitado de Bombas loderas, Instalación de planta desalinadora, Instalación de planta de lodos, Fabricación e instalación de cobertizo en aluminio, Instalación de agitadores de lodos.\n\nRehabilitación en seco, lancha de pasaje de casco en aluminio\nZACATAL Y TILA de la compañía Marinsa.', 'Marinsa', '', 'publish', 'open', 'open', '', 'marinsa', '', '', '2019-02-27 03:46:06', '2019-02-27 03:46:06', '', 0, 'http://varaderos.gomserver.net/cms/?p=56', 0, 'post', '', 0),
(57, 1, '2019-01-24 07:20:28', '2019-01-24 07:20:28', 'Habilitado de barcos loderos Amethist Y Turquoise de la\nCompañía Marinsa: Armado de estructuras, Habilitado de líneas de proceso, Habilitado de Bombas loderas, Instalación de planta desalinadora, Instalación de planta de lodos, Fabricación e instalación de cobertizo en aluminio, Instalación de agitadores de lodos.\n\nRehabilitación en seco, lancha de pasaje de casco en aluminio\nZACATAL Y TILA de la compañía Marinsa.', 'Marinsa', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2019-01-24 07:20:28', '2019-01-24 07:20:28', '', 56, 'http://varaderos.gomserver.net/cms/2019/01/24/56-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2019-01-24 07:20:57', '2019-01-24 07:20:57', 'Reparación en seco y mantenimiento del sistema propulsivo y anticorrosivo al barco pirata PERLA NEGRA, de la Compañía Riviera Holiday de Cancún, Quintana Roo.\n\nReparación en seco y mantenimiento del sistema propulsivo al barco pirata JOLLY ROGER, de la compañía, Pirates How Cancún, Cancún Quintana Roo.', 'Varios', '', 'publish', 'open', 'open', '', 'varios', '', '', '2019-02-27 03:45:54', '2019-02-27 03:45:54', '', 0, 'http://varaderos.gomserver.net/cms/?p=58', 0, 'post', '', 0),
(59, 1, '2019-01-24 07:20:57', '2019-01-24 07:20:57', 'Reparación en seco y mantenimiento del sistema propulsivo y\nanticorrosivo al barco pirata PERLA NEGRA, de la Compañía\nRiviera Holiday de Cancún, Quintana Roo.\n\nReparación en seco y mantenimiento del sistema propulsivo al\nbarco pirata JOLLY ROGER, de la compañía, Pirates How Cancún, Cancún\nQuintana Roo.', 'Varios', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2019-01-24 07:20:57', '2019-01-24 07:20:57', '', 58, 'http://varaderos.gomserver.net/cms/2019/01/24/58-revision-v1/', 0, 'revision', '', 0),
(139, 1, '2019-02-02 02:18:07', '2019-02-02 02:18:07', '52 01 (938) 124 8686', 'Contacto Telefono 3', '', 'inherit', 'closed', 'closed', '', '137-revision-v1', '', '', '2019-02-02 02:18:07', '2019-02-02 02:18:07', '', 137, 'http://varaderos.gomserver.net/cms/2019/02/02/137-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2019-01-24 07:21:25', '2019-01-24 07:21:25', 'Nuestros ejecutivos le brindaran servicio y asesoría hasta\nsu empresa, con rapidez puntualidad y profesionalismo.\nSi desea más información no dude en contactarnos.', 'Contáctanos', '', 'publish', 'open', 'open', '', 'contactanos', '', '', '2019-01-24 17:35:38', '2019-01-24 17:35:38', '', 0, 'http://varaderos.gomserver.net/cms/?p=61', 0, 'post', '', 0),
(62, 1, '2019-01-24 07:21:25', '2019-01-24 07:21:25', 'Nuestros ejecutivos le brindaran servicio y asesoría hasta su empresa, con rapidez puntualidad y profesionalismo. Si desea más información no dude en contactarnos.', 'Contáctanos', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2019-01-24 07:21:25', '2019-01-24 07:21:25', '', 61, 'http://varaderos.gomserver.net/cms/2019/01/24/61-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2019-01-24 17:28:20', '2019-01-24 17:28:20', 'Nuestros ejecutivos le brindaran servicio y asesoría hasta\nsu empresa, con rapidez puntualidad y profesionalismo.\nSi desea más información no dude en contactarnos.', 'Contáctanos', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2019-01-24 17:28:20', '2019-01-24 17:28:20', '', 61, 'http://varaderos.gomserver.net/cms/2019/01/24/61-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2019-01-24 17:29:10', '2019-01-24 17:29:10', '<ul>\n 	<li><strong>Eslora:</strong> 45.12 Mts</li>\n 	<li><strong>Manga:</strong> 11.00 Mts</li>\n 	<li><strong>Calado a nivel de picadero:</strong> 10 ft.</li>\n 	<li><strong>Capacidad:</strong> 1,000 tons.</li>\n</ul>', 'Varadedo 2', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2019-01-24 17:29:10', '2019-01-24 17:29:10', '', 23, 'http://varaderos.gomserver.net/cms/2019/01/24/23-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2019-01-24 17:30:22', '2019-01-24 17:30:22', '<ul>\n 	<li><strong>Eslora:</strong> 45.12 Mts</li>\n 	<li><strong>Manga:</strong> 11.00 Mts</li>\n 	<li><strong>Calado a nivel de picadero:</strong> 10 ft.</li>\n 	<li><strong>Capacidad:</strong> 1,000 tons.</li>\n</ul>', 'Varadero 2', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2019-01-24 17:30:22', '2019-01-24 17:30:22', '', 23, 'http://varaderos.gomserver.net/cms/2019/01/24/23-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2019-01-24 17:30:56', '2019-01-24 17:30:56', '<ul class=\"list-facilities\">\n 	<li>Área de sandblast</li>\n 	<li>Taller de rolado</li>\n 	<li>Oficinas generales</li>\n 	<li>Almacén general</li>\n 	<li>Oficinas de armadores con Internet Wifi</li>\n</ul>', 'Nuestras instalaciones p3. Lista p.2', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2019-01-24 17:30:56', '2019-01-24 17:30:56', '', 33, 'http://varaderos.gomserver.net/cms/2019/01/24/33-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2019-01-24 17:35:36', '2019-01-24 17:35:36', 'Nuestros ejecutivos le brindaran servicio y asesoría hasta\nsu empresa, con rapidez puntualidad y profesionalismo.\nSi desea más información no dude en contactarnos.', 'Contáctanos', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2019-01-24 17:35:36', '2019-01-24 17:35:36', '', 61, 'http://varaderos.gomserver.net/cms/2019/01/24/61-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2019-01-24 18:38:12', '2019-01-24 18:38:12', 'Reparación en seco y mantenimiento del sistema propulsivo y anticorrosivo al barco pirata PERLA NEGRA, de la Compañía\nRiviera Holiday de Cancún, Quintana Roo.\n\nReparación en seco y mantenimiento del sistema propulsivo al barco pirata JOLLY ROGER, de la compañía, Pirates How Cancún, Cancún Quintana Roo.', 'Varios', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2019-01-24 18:38:12', '2019-01-24 18:38:12', '', 58, 'http://varaderos.gomserver.net/cms/2019/01/24/58-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2019-01-24 18:38:31', '2019-01-24 18:38:31', 'Reparación en seco y mantenimiento del sistema propulsivo y anticorrosivo al barco pirata PERLA NEGRA, de la Compañía Riviera Holiday de Cancún, Quintana Roo.\n\nReparación en seco y mantenimiento del sistema propulsivo al barco pirata JOLLY ROGER, de la compañía, Pirates How Cancún, Cancún Quintana Roo.', 'Varios', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2019-01-24 18:38:31', '2019-01-24 18:38:31', '', 58, 'http://varaderos.gomserver.net/cms/2019/01/24/58-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2019-01-24 19:33:53', '2019-01-24 19:33:53', 'Calle 47, # 2 Col. Pallas. Cd. del Carmen, Campeche. México.', 'Contacto - Dirección', '', 'publish', 'open', 'open', '', 'contacto-direccion', '', '', '2019-01-24 19:33:54', '2019-01-24 19:33:54', '', 0, 'http://varaderos.gomserver.net/cms/?p=70', 0, 'post', '', 0),
(71, 1, '2019-01-24 19:33:53', '2019-01-24 19:33:53', 'Calle 47, # 2 Col. Pallas. Cd. del Carmen, Campeche. México.', 'Contacto - Dirección', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2019-01-24 19:33:53', '2019-01-24 19:33:53', '', 70, 'http://varaderos.gomserver.net/cms/2019/01/24/70-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2019-01-24 19:38:19', '2019-01-24 19:38:19', '+52 01 (938) 384 2246', 'Contacto - Telefono 1', '', 'publish', 'open', 'open', '', 'contacto-telefono-1', '', '', '2019-02-02 03:37:58', '2019-02-02 03:37:58', '', 0, 'http://varaderos.gomserver.net/cms/?p=72', 0, 'post', '', 0),
(73, 1, '2019-01-24 19:38:19', '2019-01-24 19:38:19', '+52 01 (938) 384 2246', 'Contacto - Telefono 1', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2019-01-24 19:38:19', '2019-01-24 19:38:19', '', 72, 'http://varaderos.gomserver.net/cms/2019/01/24/72-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2019-01-24 19:40:06', '2019-01-24 19:40:06', '+52 01 (938) 382 8914', 'Contacto - Telefono 2', '', 'publish', 'open', 'open', '', 'contacto-telefono-2', '', '', '2019-02-02 03:37:43', '2019-02-02 03:37:43', '', 0, 'http://varaderos.gomserver.net/cms/?p=74', 0, 'post', '', 0),
(75, 1, '2019-01-24 19:40:06', '2019-01-24 19:40:06', '+52 01 (938) 382 8914', 'Contacto - Telefono 2', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2019-01-24 19:40:06', '2019-01-24 19:40:06', '', 74, 'http://varaderos.gomserver.net/cms/2019/01/24/74-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2019-01-24 19:41:33', '2019-01-24 19:41:33', 'ventas@varaderoszavala.com', 'Contacto - Email', '', 'publish', 'open', 'open', '', 'contacto-email', '', '', '2019-01-24 19:41:35', '2019-01-24 19:41:35', '', 0, 'http://varaderos.gomserver.net/cms/?p=76', 0, 'post', '', 0),
(77, 1, '2019-01-24 19:41:33', '2019-01-24 19:41:33', 'ventas@varaderoszavala.com', 'Contacto - Email', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2019-01-24 19:41:33', '2019-01-24 19:41:33', '', 76, 'http://varaderos.gomserver.net/cms/2019/01/24/76-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2019-01-24 20:29:18', '2019-01-24 20:29:18', 'We have the infrastructure , equipment, quali ed personnel and technical expertise to o er quality services in repair and maintenance and dry boat afloat.', 'About us', '', 'publish', 'open', 'open', '', 'about-us', '', '', '2019-01-24 20:29:20', '2019-01-24 20:29:20', '', 0, 'http://varaderos.gomserver.net/cms/?p=78', 0, 'post', '', 0),
(79, 1, '2019-01-24 20:29:18', '2019-01-24 20:29:18', 'We have the infrastructure , equipment, quali ed personnel and technical expertise to o er quality services in repair and maintenance and dry boat afloat.', 'About us', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2019-01-24 20:29:18', '2019-01-24 20:29:18', '', 78, 'http://varaderos.gomserver.net/cms/2019/01/24/78-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2019-01-24 20:30:46', '2019-01-24 20:30:46', 'We are a 100% Mexican company located in Ciudad del Carmen , Campeche, Mexico, o ering comprehensive system in the industry repair and maintenance of vessels in the Gulf of Mexico , with more than 50 years of experience.', 'About us - text 2', '', 'publish', 'open', 'open', '', 'about-us-text-2', '', '', '2019-01-24 20:30:48', '2019-01-24 20:30:48', '', 0, 'http://varaderos.gomserver.net/cms/?p=80', 0, 'post', '', 0),
(81, 1, '2019-01-24 20:30:46', '2019-01-24 20:30:46', 'We are a 100% Mexican company located in Ciudad del Carmen , Campeche, Mexico, o ering comprehensive system in the industry repair and maintenance of vessels in the Gulf of Mexico , with more than 50 years of experience.', 'About us - text 2', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2019-01-24 20:30:46', '2019-01-24 20:30:46', '', 80, 'http://varaderos.gomserver.net/cms/2019/01/24/80-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2019-01-24 20:36:56', '2019-01-24 20:36:56', 'We are strategically located in the port of\nCiudad del Carmen Campeche, Mexico; serving the entire\nGulf of Mexico.', 'Our facilities', '', 'publish', 'open', 'open', '', 'our-facilities', '', '', '2019-01-24 20:37:32', '2019-01-24 20:37:32', '', 0, 'http://varaderos.gomserver.net/cms/?p=82', 0, 'post', '', 0),
(83, 1, '2019-01-24 20:36:56', '2019-01-24 20:36:56', 'We are strategically located in the port of Ciudad del Carmen Campeche, Mexico; serving the entire Gulf of Mexico.', 'Our facilities', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2019-01-24 20:36:56', '2019-01-24 20:36:56', '', 82, 'http://varaderos.gomserver.net/cms/2019/01/24/82-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2019-01-24 20:37:30', '2019-01-24 20:37:30', 'We are strategically located in the port of\nCiudad del Carmen Campeche, Mexico; serving the entire\nGulf of Mexico.', 'Our facilities', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2019-01-24 20:37:30', '2019-01-24 20:37:30', '', 82, 'http://varaderos.gomserver.net/cms/2019/01/24/82-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2019-01-24 20:38:39', '2019-01-24 20:38:39', 'We have two double stranded', 'Our facilities p.2 – Title', '', 'publish', 'open', 'open', '', 'our-facilities-p-2-title', '', '', '2019-01-24 20:38:41', '2019-01-24 20:38:41', '', 0, 'http://varaderos.gomserver.net/cms/?p=85', 0, 'post', '', 0),
(86, 1, '2019-01-24 20:38:39', '2019-01-24 20:38:39', 'We have two double stranded', 'Our facilities p.2 – Title', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2019-01-24 20:38:39', '2019-01-24 20:38:39', '', 85, 'http://varaderos.gomserver.net/cms/2019/01/24/85-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2019-01-24 20:41:22', '2019-01-24 20:41:22', '<!-- wp:list -->\n<ul><li><strong> Lenght:</strong>&nbsp;39.00 Mts</li><li><strong> Beam:</strong>&nbsp;6.00 Mts</li><li><strong>Draft riding level:</strong>&nbsp;7 ft.</li><li><strong> Capacity:</strong>&nbsp;400 tons.</li></ul>\n<!-- /wp:list -->', 'Dry dock 1', '', 'publish', 'open', 'open', '', 'dry-dock-1', '', '', '2019-01-24 20:42:01', '2019-01-24 20:42:01', '', 0, 'http://varaderos.gomserver.net/cms/?p=87', 0, 'post', '', 0),
(88, 1, '2019-01-24 20:39:29', '2019-01-24 20:39:29', '<!-- wp:list -->\n<ul><li><strong>Eslora:</strong>&nbsp;39.00 Mts</li><li><strong>Manga:</strong>&nbsp;6.00 Mts</li><li><strong>Calado a nivel de picadero:</strong>&nbsp;7 ft.</li><li><strong>Capacidad:</strong>&nbsp;400 tons.</li></ul>\n<!-- /wp:list -->', 'Dry dock 1', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-01-24 20:39:29', '2019-01-24 20:39:29', '', 17, 'http://varaderos.gomserver.net/cms/2019/01/24/17-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2019-01-24 20:40:33', '2019-01-24 20:40:33', '<!-- wp:list -->\n<ul><li><strong> Lenght:</strong>&nbsp;39.00 Mts</li><li><strong> Beam:</strong>&nbsp;6.00 Mts</li><li><strong>Calado a nivel de picadero:</strong>&nbsp;7 ft.</li><li><strong>Capacidad:</strong>&nbsp;400 tons.</li></ul>\n<!-- /wp:list -->', 'Varadero 1', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-01-24 20:40:33', '2019-01-24 20:40:33', '', 17, 'http://varaderos.gomserver.net/cms/2019/01/24/17-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2019-01-24 20:40:05', '2019-01-24 20:40:05', '<!-- wp:list -->\n<ul><li><strong> Lenght:</strong>&nbsp;39.00 Mts</li><li><strong> Beam:</strong>&nbsp;6.00 Mts</li><li><strong>Draft riding level:</strong>&nbsp;7 ft.</li><li><strong> Capacity:</strong>&nbsp;400 tons.</li></ul>\n<!-- /wp:list -->', 'Dry dock 1', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-01-24 20:40:05', '2019-01-24 20:40:05', '', 17, 'http://varaderos.gomserver.net/cms/2019/01/24/17-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2019-01-24 20:41:03', '2019-01-24 20:41:03', '<!-- wp:list -->\n<ul><li><strong> Eslora:</strong>&nbsp;39.00 Mts</li><li><strong>Manga:</strong>&nbsp;6.00 Mts</li><li><strong>Calado a nivel de picadero:</strong>&nbsp;7 ft.</li><li><strong>Capacidad:</strong>&nbsp;400 tons.</li></ul>\n<!-- /wp:list -->', 'Varadero 1', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-01-24 20:41:03', '2019-01-24 20:41:03', '', 17, 'http://varaderos.gomserver.net/cms/2019/01/24/17-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2019-01-24 20:41:22', '2019-01-24 20:41:22', '<!-- wp:list -->\n<ul><li><strong> Lenght:</strong>&nbsp;39.00 Mts</li><li><strong>Manga:</strong>&nbsp;6.00 Mts</li><li><strong>Calado a nivel de picadero:</strong>&nbsp;7 ft.</li><li><strong>Capacidad:</strong>&nbsp;400 tons.</li></ul>\n<!-- /wp:list -->', 'Dry dock 1', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2019-01-24 20:41:22', '2019-01-24 20:41:22', '', 87, 'http://varaderos.gomserver.net/cms/2019/01/24/87-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2019-01-24 20:43:20', '2019-01-24 20:43:20', '<ul>\n 	<li><strong>Lenght:</strong> 45.12 Mts</li>\n 	<li><strong>Beam:</strong> 11.00 Mts</li>\n 	<li><strong> Draft riding level:</strong> 10 ft.</li>\n 	<li><strong>Capacity:</strong> 1,000 tons.</li>\n</ul>', 'Dry dock 2', '', 'publish', 'open', 'open', '', 'dry-dock-2', '', '', '2019-01-24 20:43:22', '2019-01-24 20:43:22', '', 0, 'http://varaderos.gomserver.net/cms/?p=96', 0, 'post', '', 0),
(97, 1, '2019-01-24 20:43:20', '2019-01-24 20:43:20', '<ul>\n 	<li><strong>Lenght:</strong> 45.12 Mts</li>\n 	<li><strong>Beam:</strong> 11.00 Mts</li>\n 	<li><strong> Draft riding level:</strong> 10 ft.</li>\n 	<li><strong>Capacity:</strong> 1,000 tons.</li>\n</ul>', 'Dry dock 2', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2019-01-24 20:43:20', '2019-01-24 20:43:20', '', 96, 'http://varaderos.gomserver.net/cms/2019/01/24/96-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2019-01-24 20:42:00', '2019-01-24 20:42:00', '<!-- wp:list -->\n<ul><li><strong> Lenght:</strong>&nbsp;39.00 Mts</li><li><strong> Beam:</strong>&nbsp;6.00 Mts</li><li><strong>Draft riding level:</strong>&nbsp;7 ft.</li><li><strong> Capacity:</strong>&nbsp;400 tons.</li></ul>\n<!-- /wp:list -->', 'Dry dock 1', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2019-01-24 20:42:00', '2019-01-24 20:42:00', '', 87, 'http://varaderos.gomserver.net/cms/2019/01/24/87-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2019-01-24 20:44:58', '2019-01-24 20:44:58', '<!-- wp:paragraph -->\n<p>Our facilities include:</p>\n<!-- /wp:paragraph -->', 'Our facilities p.3 - Title', '', 'publish', 'open', 'open', '', 'our-facilities-p-3-title', '', '', '2019-01-24 20:45:00', '2019-01-24 20:45:00', '', 0, 'http://varaderos.gomserver.net/cms/?p=98', 0, 'post', '', 0),
(99, 1, '2019-01-24 20:44:58', '2019-01-24 20:44:58', '<!-- wp:paragraph -->\n<p>Our facilities include:</p>\n<!-- /wp:paragraph -->', 'Our facilities p.3 - Title', '', 'inherit', 'closed', 'closed', '', '98-revision-v1', '', '', '2019-01-24 20:44:58', '2019-01-24 20:44:58', '', 98, 'http://varaderos.gomserver.net/cms/2019/01/24/98-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2019-01-24 20:47:21', '2019-01-24 20:47:21', '<ul class=\"list-facilities\">\n 	<li>2 springs repair\n<ul>\n 	<li>North 35 .83m x 20.19 mts.</li>\n 	<li>South 109 .83m x 4.38 mts.</li>\n</ul>\n</li>\n 	<li>Repair and machining workshop</li>\n 	<li>Cut and shaping yard</li>\n</ul>', 'Our facilities p3. List p.1', '', 'publish', 'closed', 'open', '', 'our-facilities-p3-list-p-1', '', '', '2019-02-23 05:33:09', '2019-02-23 05:33:09', '', 0, 'http://varaderos.gomserver.net/cms/?p=100', 0, 'post', '', 0),
(101, 1, '2019-01-24 20:47:21', '2019-01-24 20:47:21', '<ul class=\"list-facilities\">\n 	<li>2 springs repair\n<ul>\n 	<li>North 35 .83m x 20.19 mts.</li>\n 	<li>South 109 .83m x 4.38 mts.</li>\n</ul>\n</li>\n 	<li>Repair and machining workshop</li>\n 	<li>Cut and shaping yard</li>\n</ul>', 'Our facilities p3. List p.1', '', 'inherit', 'closed', 'closed', '', '100-revision-v1', '', '', '2019-01-24 20:47:21', '2019-01-24 20:47:21', '', 100, 'http://varaderos.gomserver.net/cms/2019/01/24/100-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2019-01-24 20:48:53', '2019-01-24 20:48:53', '<ul class=\"list-facilities\">\n 	<li>Sandblast area</li>\n 	<li>Rolling workshop</li>\n 	<li>Main offices</li>\n 	<li>Storehouse</li>\n 	<li>Shipowners office with wireless internet</li>\n</ul>', 'Our facilities p3. List p.2', '', 'publish', 'closed', 'open', '', 'our-facilities-p3-list-p-2', '', '', '2019-02-23 05:33:09', '2019-02-23 05:33:09', '', 0, 'http://varaderos.gomserver.net/cms/?p=102', 0, 'post', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(103, 1, '2019-01-24 20:48:53', '2019-01-24 20:48:53', '<ul class=\"list-facilities\">\n 	<li>Sandblast area</li>\n 	<li>Rolling workshop</li>\n 	<li>Main offices</li>\n 	<li>Storehouse</li>\n 	<li>Shipowners office with wireless internet</li>\n</ul>', 'Our facilities p3. List p.2', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2019-01-24 20:48:53', '2019-01-24 20:48:53', '', 102, 'http://varaderos.gomserver.net/cms/2019/01/24/102-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2019-01-24 20:51:37', '2019-01-24 20:51:37', 'Dry put up to 1,000 tons . and a oat in dock or o shore.', 'Ship Repair', '', 'publish', 'closed', 'open', '', 'ship-repair', '', '', '2019-02-23 05:33:09', '2019-02-23 05:33:09', '', 0, 'http://varaderos.gomserver.net/cms/?p=104', 0, 'post', '', 0),
(105, 1, '2019-01-24 20:51:37', '2019-01-24 20:51:37', 'Dry put up to 1,000 tons . and a oat in dock or o shore.', 'Ship Repair', '', 'inherit', 'closed', 'closed', '', '104-revision-v1', '', '', '2019-01-24 20:51:37', '2019-01-24 20:51:37', '', 104, 'http://varaderos.gomserver.net/cms/2019/01/24/104-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2019-01-24 20:51:51', '2019-01-24 20:51:51', 'Hulls, decks, tanks, structures and various accessories.', 'Sandblast and Painting', '', 'publish', 'closed', 'open', '', 'sandblast-and-painting', '', '', '2019-02-23 05:33:09', '2019-02-23 05:33:09', '', 0, 'http://varaderos.gomserver.net/cms/?p=106', 0, 'post', '', 0),
(107, 1, '2019-01-24 20:51:51', '2019-01-24 20:51:51', 'Hulls, decks, tanks, structures and various accessories.', 'Sandblast and Painting', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2019-01-24 20:51:51', '2019-01-24 20:51:51', '', 106, 'http://varaderos.gomserver.net/cms/2019/01/24/106-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2019-01-24 20:52:08', '2019-01-24 20:52:08', 'Renovation of steel and aluminum naval ABS certified welders.', 'Steel Fabrication and Welding', '', 'publish', 'closed', 'open', '', 'steel-fabrication-and-welding', '', '', '2019-02-23 05:33:09', '2019-02-23 05:33:09', '', 0, 'http://varaderos.gomserver.net/cms/?p=108', 0, 'post', '', 0),
(109, 1, '2019-01-24 20:52:08', '2019-01-24 20:52:08', 'Renovation of steel and aluminum naval ABS certified welders.', 'Steel Fabrication and Welding', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2019-01-24 20:52:08', '2019-01-24 20:52:08', '', 108, 'http://varaderos.gomserver.net/cms/2019/01/24/108-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2019-01-24 20:52:21', '2019-01-24 20:52:21', 'Maintenance and repair valves, propulsion and steering system , Sleeve Bearings, etc.', 'Mechanical', '', 'publish', 'closed', 'open', '', 'mechanical', '', '', '2019-02-23 05:33:09', '2019-02-23 05:33:09', '', 0, 'http://varaderos.gomserver.net/cms/?p=110', 0, 'post', '', 0),
(111, 1, '2019-01-24 20:52:21', '2019-01-24 20:52:21', 'Maintenance and repair valves, propulsion and steering system , Sleeve Bearings, etc.', 'Mechanical', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2019-01-24 20:52:21', '2019-01-24 20:52:21', '', 110, 'http://varaderos.gomserver.net/cms/2019/01/24/110-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2019-01-24 20:52:36', '2019-01-24 20:52:36', 'We have two repair docks: North ( 35.83m x 20.19m ) and South ( 109.83m x 4.38m ), maximum draft 16ft.', 'Dockage', '', 'publish', 'closed', 'open', '', 'dockage', '', '', '2019-02-23 05:33:09', '2019-02-23 05:33:09', '', 0, 'http://varaderos.gomserver.net/cms/?p=112', 0, 'post', '', 0),
(113, 1, '2019-01-24 20:52:36', '2019-01-24 20:52:36', 'We have two repair docks: North ( 35.83m x 20.19m ) and South ( 109.83m x 4.38m ), maximum draft 16ft.', 'Dockage', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2019-01-24 20:52:36', '2019-01-24 20:52:36', '', 112, 'http://varaderos.gomserver.net/cms/2019/01/24/112-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2019-01-24 20:53:53', '2019-01-24 20:53:53', 'Sleeve Bearings, zinc and magnesium anodes , naval aluminum and steel materials certified by ABS.', 'Naval Supplies', '', 'publish', 'closed', 'open', '', 'naval-supplies', '', '', '2019-02-23 05:33:09', '2019-02-23 05:33:09', '', 0, 'http://varaderos.gomserver.net/cms/?p=114', 0, 'post', '', 0),
(115, 1, '2019-01-24 20:53:53', '2019-01-24 20:53:53', 'Sleeve Bearings, zinc and magnesium anodes , naval aluminum and steel materials certified by ABS.', 'Naval Supplies', '', 'inherit', 'closed', 'closed', '', '114-revision-v1', '', '', '2019-01-24 20:53:53', '2019-01-24 20:53:53', '', 114, 'http://varaderos.gomserver.net/cms/2019/01/24/114-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2019-01-24 20:54:54', '2019-01-24 20:54:54', 'Fabrication and machining of parts.', 'Machining', '', 'publish', 'closed', 'open', '', 'machining', '', '', '2019-02-23 05:33:09', '2019-02-23 05:33:09', '', 0, 'http://varaderos.gomserver.net/cms/?p=116', 0, 'post', '', 0),
(117, 1, '2019-01-24 20:54:54', '2019-01-24 20:54:54', 'Fabrication and machining of parts.', 'Machining', '', 'inherit', 'closed', 'closed', '', '116-revision-v1', '', '', '2019-01-24 20:54:54', '2019-01-24 20:54:54', '', 116, 'http://varaderos.gomserver.net/cms/2019/01/24/116-revision-v1/', 0, 'revision', '', 0),
(118, 1, '2019-01-24 20:55:30', '2019-01-24 20:55:30', 'Liquid penetrant, ultrasonic thickness calibration, pneumatic and hydrostatic testing tanks, etc.', 'Non-Destructive Testing', '', 'publish', 'closed', 'open', '', 'non-destructive-testing', '', '', '2019-02-23 05:33:09', '2019-02-23 05:33:09', '', 0, 'http://varaderos.gomserver.net/cms/?p=118', 0, 'post', '', 0),
(119, 1, '2019-01-24 20:55:30', '2019-01-24 20:55:30', 'Liquid penetrant, ultrasonic thickness calibration, pneumatic and hydrostatic testing tanks, etc.', 'Non-Destructive Testing', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-01-24 20:55:30', '2019-01-24 20:55:30', '', 118, 'http://varaderos.gomserver.net/cms/2019/01/24/118-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2019-01-24 20:56:57', '2019-01-24 20:56:57', 'Some of the work done in Varaderos Zavala were', 'Featured projects', '', 'publish', 'closed', 'open', '', 'featured-projects', '', '', '2019-02-23 05:33:09', '2019-02-23 05:33:09', '', 0, 'http://varaderos.gomserver.net/cms/?p=120', 0, 'post', '', 0),
(121, 1, '2019-01-24 20:56:57', '2019-01-24 20:56:57', 'Some of the work done in Varaderos Zavala were', 'Featured projects', '', 'inherit', 'closed', 'closed', '', '120-revision-v1', '', '', '2019-01-24 20:56:57', '2019-01-24 20:56:57', '', 120, 'http://varaderos.gomserver.net/cms/2019/01/24/120-revision-v1/', 0, 'revision', '', 0),
(122, 1, '2019-01-24 20:59:00', '2019-01-24 20:59:00', 'Repair and maintenance of the PEMEX XVL tugboat, for Pemex Refinación.\n\nRepair and mayor maintenance to CHALAN PEMEX 581, for Pemex Refinación.\n\nDecoupling, maintenance, installation of motorcycle pumps and work to ensure the operational reliability of the CHALAN PEMEX 571.', 'PEMEX', '', 'publish', 'closed', 'open', '', 'pemex-2', '', '', '2019-02-27 03:42:47', '2019-02-27 03:42:47', '', 0, 'http://varaderos.gomserver.net/cms/?p=122', 0, 'post', '', 0),
(123, 1, '2019-01-24 20:59:00', '2019-01-24 20:59:00', 'Repair and maintenance of the PEMEX XVL tugboat, for Pemex Refinación.\n\nRepair and mayor maintenance to CHALAN PEMEX 581, for Pemex Refinación.\n\nDecoupling, maintenance, installation of motorcycle pumps and work to ensure the operational reliability of the CHALAN PEMEX 571.', 'PEMEX', '', 'inherit', 'closed', 'closed', '', '122-revision-v1', '', '', '2019-01-24 20:59:00', '2019-01-24 20:59:00', '', 122, 'http://varaderos.gomserver.net/cms/2019/01/24/122-revision-v1/', 0, 'revision', '', 0),
(124, 1, '2019-01-24 20:59:51', '2019-01-24 20:59:51', 'Enactment of Amethist and Turquoise mud vessels for the Marinsa Company: Armed of structures, Enabled of process lines, Enabled of mud pumps, Installation of desalination plant, Installation of sludge plant, Manufacture and installation of aluminum shed, Installation of mud agitators.\n\nDry Rehabilitation, crew boat with aluminum helmet ZACATAL and TILA of the company Marinsa.', 'Marinsa', '', 'publish', 'closed', 'open', '', 'marinsa-2', '', '', '2019-02-27 03:43:02', '2019-02-27 03:43:02', '', 0, 'http://varaderos.gomserver.net/cms/?p=124', 0, 'post', '', 0),
(125, 1, '2019-01-24 20:59:51', '2019-01-24 20:59:51', 'Enactment of Amethist and Turquoise mud vessels for the Marinsa Company: Armed of structures, Enabled of process lines, Enabled of mud pumps, Installation of desalination plant, Installation of sludge plant, Manufacture and installation of aluminum shed, Installation of mud agitators.\n\nDry Rehabilitation, crew boat with aluminum helmet ZACATAL and TILA of the company Marinsa.', 'Marinsa', '', 'inherit', 'closed', 'closed', '', '124-revision-v1', '', '', '2019-01-24 20:59:51', '2019-01-24 20:59:51', '', 124, 'http://varaderos.gomserver.net/cms/2019/01/24/124-revision-v1/', 0, 'revision', '', 0),
(126, 1, '2019-01-24 21:01:22', '2019-01-24 21:01:22', 'Dry repair and maintenance of the propulsive and anticorrosive system to the pirate ship PERLA NEGRA, of the Riviera Holiday Company of Cancun, Quintana Roo.\n\nDry repair and maintenance of the propulsion system to the pirate ship JOLLY ROGER, of the company, Pirates How Cancun, Cancún Quintana Roo.', 'Varios', '', 'publish', 'closed', 'open', '', 'varios-2', '', '', '2019-02-27 03:41:30', '2019-02-27 03:41:30', '', 0, 'http://varaderos.gomserver.net/cms/?p=126', 0, 'post', '', 0),
(127, 1, '2019-01-24 21:01:22', '2019-01-24 21:01:22', 'Dry repair and maintenance of the propulsive and anticorrosive system to the pirate ship PERLA NEGRA, of the Riviera Holiday Company of Cancun, Quintana Roo.\n\nDry repair and maintenance of the propulsion system to the pirate ship JOLLY ROGER, of the company, Pirates How Cancun, Cancún Quintana Roo.', 'Varios', '', 'inherit', 'closed', 'closed', '', '126-revision-v1', '', '', '2019-01-24 21:01:22', '2019-01-24 21:01:22', '', 126, 'http://varaderos.gomserver.net/cms/2019/01/24/126-revision-v1/', 0, 'revision', '', 0),
(128, 1, '2019-01-24 21:01:47', '2019-01-24 21:01:47', 'Our executives will provide service and advice\nto your company, quickly, punctually and professionally.\nIf you want more information, do not hesitate to contact us.', 'Contact us', '', 'publish', 'closed', 'open', '', 'contact-us', '', '', '2019-02-23 05:33:09', '2019-02-23 05:33:09', '', 0, 'http://varaderos.gomserver.net/cms/?p=128', 0, 'post', '', 0),
(129, 1, '2019-01-24 21:01:47', '2019-01-24 21:01:47', 'Our executives will provide service and advice to your company, quickly, punctually and professionally. If you want more information, do not hesitate to contact us.', 'Contact us', '', 'inherit', 'closed', 'closed', '', '128-revision-v1', '', '', '2019-01-24 21:01:47', '2019-01-24 21:01:47', '', 128, 'http://varaderos.gomserver.net/cms/2019/01/24/128-revision-v1/', 0, 'revision', '', 0),
(130, 1, '2019-01-24 21:03:32', '2019-01-24 21:03:32', 'Our executives will provide service and advice to your company, quickly, punctually and professionally.\nIf you want more information, do not hesitate to contact us.', 'Contact us', '', 'inherit', 'closed', 'closed', '', '128-revision-v1', '', '', '2019-01-24 21:03:32', '2019-01-24 21:03:32', '', 128, 'http://varaderos.gomserver.net/cms/2019/01/24/128-revision-v1/', 0, 'revision', '', 0),
(131, 1, '2019-01-24 21:03:59', '2019-01-24 21:03:59', 'Our executives will provide service and advice\nto your company, quickly, punctually and professionally.\nIf you want more information, do not hesitate to contact us.', 'Contact us', '', 'inherit', 'closed', 'closed', '', '128-revision-v1', '', '', '2019-01-24 21:03:59', '2019-01-24 21:03:59', '', 128, 'http://varaderos.gomserver.net/cms/2019/01/24/128-revision-v1/', 0, 'revision', '', 0),
(137, 1, '2019-02-02 02:13:02', '2019-02-02 02:13:02', '+ 52 01 (938) 124 8686', 'Contacto Telefono 3', '', 'publish', 'closed', 'open', '', 'contacto-telefono-3', '', '', '2019-02-23 05:33:08', '2019-02-23 05:33:08', '', 0, 'http://varaderos.gomserver.net/cms/?p=137', 0, 'post', '', 0),
(133, 1, '2019-01-24 21:06:27', '2019-01-24 21:06:27', 'https://www.facebook.com/pages/Astilleros-y-Varaderos-Zavala-SA-de-CV/345102779289151', 'Facebook', '', 'publish', 'closed', 'open', '', 'facebook', '', '', '2019-02-23 05:33:09', '2019-02-23 05:33:09', '', 0, 'http://varaderos.gomserver.net/cms/?p=133', 0, 'post', '', 0),
(134, 1, '2019-01-24 21:06:27', '2019-01-24 21:06:27', 'https://www.facebook.com/pages/Astilleros-y-Varaderos-Zavala-SA-de-CV/345102779289151', 'Facebook', '', 'inherit', 'closed', 'closed', '', '133-revision-v1', '', '', '2019-01-24 21:06:27', '2019-01-24 21:06:27', '', 133, 'http://varaderos.gomserver.net/cms/2019/01/24/133-revision-v1/', 0, 'revision', '', 0),
(135, 1, '2019-01-24 21:06:46', '2019-01-24 21:06:46', 'https://mx.linkedin.com/company/corporativo-cemza', 'Linkedin', '', 'publish', 'closed', 'open', '', 'linkedin', '', '', '2019-02-23 05:33:09', '2019-02-23 05:33:09', '', 0, 'http://varaderos.gomserver.net/cms/?p=135', 0, 'post', '', 0),
(136, 1, '2019-01-24 21:06:46', '2019-01-24 21:06:46', 'https://mx.linkedin.com/company/corporativo-cemza', 'Linkedin', '', 'inherit', 'closed', 'closed', '', '135-revision-v1', '', '', '2019-01-24 21:06:46', '2019-01-24 21:06:46', '', 135, 'http://varaderos.gomserver.net/cms/2019/01/24/135-revision-v1/', 0, 'revision', '', 0),
(140, 1, '2019-02-02 02:18:47', '2019-02-02 02:18:47', '+ 52 01 (938) 124 8686', 'Contacto Telefono 3', '', 'inherit', 'closed', 'closed', '', '137-revision-v1', '', '', '2019-02-02 02:18:47', '2019-02-02 02:18:47', '', 137, 'http://varaderos.gomserver.net/cms/2019/02/02/137-revision-v1/', 0, 'revision', '', 0),
(141, 1, '2019-02-02 02:20:27', '2019-02-02 02:20:27', '+ 52 (938) 137 8482', 'Contacto Telefono 4', '', 'publish', 'closed', 'open', '', 'contacto-telefono-4', '', '', '2019-02-23 05:33:08', '2019-02-23 05:33:08', '', 0, 'http://varaderos.gomserver.net/cms/?p=141', 0, 'post', '', 0),
(143, 1, '2019-02-02 02:21:29', '2019-02-02 02:21:29', '+ 52 (938) 137 8482', 'Contacto Telefono 4', '', 'inherit', 'closed', 'closed', '', '141-revision-v1', '', '', '2019-02-02 02:21:29', '2019-02-02 02:21:29', '', 141, 'http://varaderos.gomserver.net/cms/2019/02/02/141-revision-v1/', 0, 'revision', '', 0),
(142, 1, '2019-02-02 02:20:27', '2019-02-02 02:20:27', '<!-- wp:paragraph -->\n<p>+ 52 (938) 137 8482</p>\n<!-- /wp:paragraph -->', 'Contacto Telefono 4', '', 'inherit', 'closed', 'closed', '', '141-revision-v1', '', '', '2019-02-02 02:20:27', '2019-02-02 02:20:27', '', 141, 'http://varaderos.gomserver.net/cms/2019/02/02/141-revision-v1/', 0, 'revision', '', 0),
(144, 1, '2019-02-02 03:02:34', '2019-02-02 03:02:34', 'avazquez@varaderoszavala.com', 'Contacto - Email 2', '', 'publish', 'closed', 'open', '', 'contacto-email-2', '', '', '2019-02-23 05:33:08', '2019-02-23 05:33:08', '', 0, 'http://varaderos.gomserver.net/cms/?p=144', 0, 'post', '', 0),
(145, 1, '2019-02-02 03:02:34', '2019-02-02 03:02:34', 'avazquez@varaderoszavala.com', 'Contacto - Email 2', '', 'inherit', 'closed', 'closed', '', '144-revision-v1', '', '', '2019-02-02 03:02:34', '2019-02-02 03:02:34', '', 144, 'http://varaderos.gomserver.net/cms/2019/02/02/144-revision-v1/', 0, 'revision', '', 0),
(147, 1, '2019-02-23 05:44:40', '2019-02-23 05:44:40', '<!-- wp:paragraph -->\n<p>Esta es una página de ejemplo. Es diferente a una entrada del blog porque permanecerá en un solo lugar y aparecerá en la navegación de su sitio (en la mayoría de los temas). La mayoría de las personas comienzan con una página «Acerca de» que les presenta a los visitantes potenciales del sitio. Podría decir algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>¡Bienvenido! Soy camarero de día, aspirante a actor de noche y esta es mi web. Vivo en Mairena del Alcor, tengo un perro que se llama Firulais y me gusta el rebujito. (Y las tardes largas con café)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…o algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La empresa Mariscos Recio fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco a hoteles y restaurantes, pero poco a poco se ha ido transformando en un gran imperio. Mariscos Recio, el mar al mejor precio.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como nuevo usuario de WordPress, deberías ir a <a href=\"http://varaderos.gomserver.net/cms/wp-admin/\">tu escritorio</a> para borrar esta página y crear nuevas páginas para tu contenido. ¡Pásalo bien!</p>\n<!-- /wp:paragraph -->', 'Página de ejemplo', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-02-23 05:44:40', '2019-02-23 05:44:40', '', 2, 'http://varaderos.gomserver.net/cms/2019/02/23/2-revision-v1/', 0, 'revision', '', 0),
(148, 1, '2019-02-23 05:44:40', '2019-02-23 05:44:40', '<!-- wp:heading --><h2>Quiénes somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>La dirección de nuestra web es: http://varaderos.gomserver.net/cms.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Qué datos personales recogemos y por qué los recogemos</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comentarios</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Cuando los visitantes dejan comentarios en la web, recopilamos los datos que se muestran en el formulario de comentarios, así como la dirección IP del visitante y la cadena de agentes de usuario del navegador para ayudar a la detección de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Una cadena anónima creada a partir de tu dirección de correo electrónico (también llamada hash) puede ser proporcionada al servicio de Gravatar para ver si la estás usando. La política de privacidad del servicio Gravatar está disponible aquí: https://automattic.com/privacy/. Después de la aprobación de tu comentario, la imagen de tu perfil es visible para el público en el contexto de su comentario.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Medios</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si subes imágenes a la web deberías evitar subir imágenes con datos de ubicación (GPS EXIF) incluidos. Los visitantes de la web pueden descargar y extraer cualquier dato de localización de las imágenes de la web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formularios de contacto</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si dejas un comentario en nuestro sitio puedes elegir guardar tu nombre, dirección de correo electrónico y web en cookies. Esto es para tu comodidad, para que no tengas que volver a rellenar tus datos cuando dejes otro comentario. Estas cookies tendrán una duración de un año.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si tienes una cuenta y te conectas a este sitio, instalaremos una cookie temporal para determinar si tu navegador acepta cookies. Esta cookie no contiene datos personales y se elimina al cerrar el navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Cuando inicias sesión, también instalaremos varias cookies para guardar tu información de inicio de sesión y tus opciones de visualización de pantalla. Las cookies de inicio de sesión duran dos días, y las cookies de opciones de pantalla duran un año. Si seleccionas &quot;Recordarme&quot;, tu inicio de sesión perdurará durante dos semanas. Si sales de tu cuenta, las cookies de inicio de sesión se eliminarán.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si editas o publicas un artículo se guardará una cookie adicional en tu navegador. Esta cookie no incluye datos personales y simplemente indica el ID del artículo que acabas de editar. Caduca después de 1 día.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contenido incrustado de otros sitios web</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Los artículos de este sitio pueden incluir contenido incrustado (por ejemplo, vídeos, imágenes, artículos, etc.). El contenido incrustado de otras web se comporta exactamente de la misma manera que si el visitante hubiera visitado la otra web.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estas web pueden recopilar datos sobre ti, utilizar cookies, incrustar un seguimiento adicional de terceros, y supervisar tu interacción con ese contenido incrustado, incluido el seguimiento de tu interacción con el contenido incrustado si tienes una cuenta y estás conectado a esa web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analítica</h3><!-- /wp:heading --><!-- wp:heading --><h2>Con quién compartimos tus datos</h2><!-- /wp:heading --><!-- wp:heading --><h2>Cuánto tiempo conservamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si dejas un comentario, el comentario y sus metadatos se conservan indefinidamente. Esto es para que podamos reconocer y aprobar comentarios sucesivos automáticamente en lugar de mantenerlos en una cola de moderación.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>De los usuarios que se registran en nuestra web (si los hay), también almacenamos la información personal que proporcionan en su perfil de usuario. Todos los usuarios pueden ver, editar o eliminar su información personal en cualquier momento (excepto que no pueden cambiar su nombre de usuario). Los administradores de la web también pueden ver y editar esa información.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Qué derechos tienes sobre tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si tienes una cuenta o has dejado comentarios en esta web, puedes solicitar recibir un archivo de exportación de los datos personales que tenemos sobre ti, incluyendo cualquier dato que nos hayas proporcionado. También puedes solicitar que eliminemos cualquier dato personal que tengamos sobre ti. Esto no incluye ningún dato que estemos obligados a conservar con fines administrativos, legales o de seguridad.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Dónde enviamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Los comentarios de los visitantes puede que los revise un servicio de detección automática de spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Tu información de contacto</h2><!-- /wp:heading --><!-- wp:heading --><h2>Información adicional</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cómo protegemos tus datos</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Qué procedimientos utilizamos contra las brechas de datos</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>De qué terceros recibimos datos</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Qué tipo de toma de decisiones automatizada y/o perfilado hacemos con los datos del usuario</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Requerimientos regulatorios de revelación de información del sector</h3><!-- /wp:heading -->', 'Política de privacidad', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2019-02-23 05:44:40', '2019-02-23 05:44:40', '', 3, 'http://varaderos.gomserver.net/cms/2019/02/23/3-revision-v1/', 0, 'revision', '', 0),
(150, 1, '2019-02-27 03:41:12', '2019-02-27 03:41:12', '', 'proyecto-varios', '', 'inherit', 'closed', 'closed', '', 'proyecto-varios', '', '', '2019-02-27 03:41:12', '2019-02-27 03:41:12', '', 126, 'http://varaderos.gomserver.net/cms/wp-content/uploads/2019/01/proyecto-varios.jpg', 0, 'attachment', 'image/jpeg', 0),
(151, 1, '2019-02-27 03:41:19', '2019-02-27 03:41:19', '', 'proyecto-marinsa', '', 'inherit', 'closed', 'closed', '', 'proyecto-marinsa', '', '', '2019-02-27 03:41:19', '2019-02-27 03:41:19', '', 126, 'http://varaderos.gomserver.net/cms/wp-content/uploads/2019/01/proyecto-marinsa.jpg', 0, 'attachment', 'image/jpeg', 0),
(152, 1, '2019-02-27 03:41:20', '2019-02-27 03:41:20', '', 'proyecto-pemex', '', 'inherit', 'closed', 'closed', '', 'proyecto-pemex', '', '', '2019-02-27 03:41:20', '2019-02-27 03:41:20', '', 126, 'http://varaderos.gomserver.net/cms/wp-content/uploads/2019/01/proyecto-pemex.jpg', 0, 'attachment', 'image/jpeg', 0);

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
(2, 'Ingles', 'ingles', 0),
(3, 'proyectos', 'proyectos', 0),
(4, 'projects', 'projects', 0);

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
(6, 1, 0),
(8, 1, 0),
(10, 1, 0),
(12, 1, 0),
(17, 1, 0),
(23, 1, 0),
(26, 1, 0),
(28, 1, 0),
(33, 1, 0),
(36, 1, 0),
(38, 1, 0),
(40, 1, 0),
(42, 1, 0),
(44, 1, 0),
(46, 1, 0),
(48, 1, 0),
(50, 1, 0),
(52, 1, 0),
(54, 3, 0),
(56, 3, 0),
(61, 1, 0),
(70, 1, 0),
(72, 1, 0),
(74, 1, 0),
(76, 1, 0),
(78, 1, 0),
(80, 1, 0),
(82, 1, 0),
(85, 1, 0),
(87, 1, 0),
(96, 1, 0),
(98, 1, 0),
(100, 1, 0),
(102, 1, 0),
(104, 1, 0),
(106, 1, 0),
(108, 1, 0),
(110, 1, 0),
(112, 1, 0),
(114, 1, 0),
(116, 1, 0),
(118, 1, 0),
(120, 1, 0),
(124, 4, 0),
(122, 4, 0),
(58, 3, 0),
(128, 1, 0),
(133, 1, 0),
(135, 1, 0),
(137, 1, 0),
(141, 1, 0),
(144, 1, 0),
(126, 4, 0);

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
(1, 1, 'category', '', 0, 47),
(2, 2, 'category', '', 0, 0),
(3, 3, 'category', '', 0, 3),
(4, 4, 'category', '', 0, 3);

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
(1, 1, 'nickname', 'varaderoszavala'),
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
(16, 1, 'session_tokens', 'a:1:{s:64:\"136f93578a9746645876a0c0fe4703e287456279b7368ab52dff3cb818db7c3e\";a:4:{s:10:\"expiration\";i:1551411495;s:2:\"ip\";s:14:\"189.129.40.125\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36\";s:5:\"login\";i:1551238695;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '146'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:13:\"201.151.106.0\";}'),
(19, 1, 'enable_custom_fields', '1'),
(20, 1, 'default_password_nag', ''),
(21, 1, 'manageedit-postcolumnshidden', 'a:0:{}'),
(22, 1, 'wp_user-settings', 'libraryContent=browse'),
(23, 1, 'wp_user-settings-time', '1551238886');

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
(1, 'varaderoszavala', '$P$BpGvu5.m2Y8bT8N4UqFAseBA4.wxIl/', 'varaderoszavala', 'zutfreddy@gmail.com', '', '2019-01-23 22:49:02', '', 0, 'varaderoszavala');

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
-- Indices de la tabla `wp_hidemysiteSecure`
--
ALTER TABLE `wp_hidemysiteSecure`
  ADD UNIQUE KEY `id` (`id`);

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
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `wp_hidemysiteSecure`
--
ALTER TABLE `wp_hidemysiteSecure`
  MODIFY `id` mediumint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=741;

--
-- AUTO_INCREMENT de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=509;

--
-- AUTO_INCREMENT de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
