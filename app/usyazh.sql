-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 26, 2020 at 01:51 PM
-- Server version: 5.6.41
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `usyazh`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_alm`
--

CREATE TABLE `wp_alm` (
  `id` mediumint(9) NOT NULL,
  `name` text NOT NULL,
  `repeaterDefault` longtext NOT NULL,
  `repeaterType` text NOT NULL,
  `pluginVersion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_alm`
--

INSERT INTO `wp_alm` (`id`, `name`, `repeaterDefault`, `repeaterType`, `pluginVersion`) VALUES
(1, 'default', '<li <?php if (!has_post_thumbnail()) { ?> class=\"no-img\"<?php } ?>>\r\n   <?php if ( has_post_thumbnail() ) { the_post_thumbnail(\'alm-thumbnail\'); }?>\r\n   <h3><a href=\"<?php the_permalink(); ?>\" title=\"<?php the_title(); ?>\"><?php the_title(); ?></a></h3>\r\n   <p class=\"entry-meta\"><?php the_time(\"F d, Y\"); ?></p>\r\n   <?php the_excerpt(); ?>\r\n</li>', 'default', '5.3.0');

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
(1, 'siteurl', 'http://usyazh.loc', 'yes'),
(2, 'home', 'http://usyazh.loc', 'yes'),
(3, 'blogname', 'ОАО «ТБЗ Усяж»', 'yes'),
(4, 'blogdescription', 'Сайт ОАО «ТБЗ Усяж»', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'admin@admin.ru', 'yes'),
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
(21, 'default_pingback_flag', '', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%category%/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:8:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:33:\"ajax-load-more/ajax-load-more.php\";i:2;s:37:\"ajax-search-lite/ajax-search-lite.php\";i:3;s:53:\"button-visually-impaired/Button-visually-impaired.php\";i:4;s:33:\"classic-editor/classic-editor.php\";i:5;s:32:\"duplicate-page/duplicatepage.php\";i:6;s:24:\"wordpress-seo/wp-seo.php\";i:7;s:33:\"wp-translitera/wp-translitera.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:81:\"F:/Server/OSPanel/domains/usyazh.loc/app/wp-content/themes/starter_pack/style.css\";i:2;s:0:\"\";}', 'no'),
(40, 'template', 'starter_pack', 'yes'),
(41, 'stylesheet', 'starter_pack', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '47018', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '0', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '', 'yes'),
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
(81, 'uninstall_plugins', 'a:1:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '11', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1602858395', 'yes'),
(94, 'initial_db_version', '47018', 'yes'),
(95, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:38:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;s:23:\"view_site_health_checks\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'ru_RU', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:8:{i:1587900396;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1587910674;a:1:{s:19:\"wpseo-reindex-links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1587911196;a:4:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1587911211;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1587911213;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1587997596;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1588429074;a:1:{s:16:\"wpseo_ryte_fetch\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(117, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1587308485;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(133, 'can_compress_scripts', '1', 'no'),
(146, 'current_theme', 'starter_pack', 'yes'),
(147, 'theme_mods_starter_pack', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:12;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1587308506;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(148, 'theme_switched', '', 'yes'),
(152, 'recently_activated', 'a:1:{s:25:\"duplicator/duplicator.php\";i:1587824104;}', 'yes'),
(163, 'wp_translitera', 'a:1:{s:7:\"version\";s:6:\"p1.2.5\";}', 'yes'),
(170, 'acf_version', '5.8.9', 'yes'),
(243, '_transient_timeout_acf_plugin_updates', '1587996881', 'no'),
(244, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:0:{}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.8.9\";}}', 'no'),
(252, 'bvi_database', 'a:16:{s:10:\"bvi_active\";s:1:\"1\";s:19:\"bvi_script_location\";s:1:\"0\";s:9:\"bvi_theme\";s:5:\"black\";s:8:\"bvi_font\";s:5:\"arial\";s:13:\"bvi_font_size\";s:2:\"16\";s:18:\"bvi_letter_spacing\";s:6:\"normal\";s:15:\"bvi_line_height\";s:6:\"normal\";s:10:\"bvi_images\";s:1:\"1\";s:10:\"bvi_reload\";s:1:\"1\";s:7:\"bvi_tts\";s:1:\"1\";s:16:\"bvi_flash_iframe\";s:1:\"1\";s:8:\"bvi_hide\";s:1:\"0\";s:9:\"bvi_fixed\";s:1:\"1\";s:14:\"bvi_link_color\";s:7:\"#ffffff\";s:11:\"bvi_link_bg\";s:7:\"#e53935\";s:13:\"bvi_link_text\";s:55:\"Версия сайта для слабовидящих\";}', 'yes'),
(257, 'wpseo', 'a:20:{s:15:\"ms_defaults_set\";b:0;s:7:\"version\";s:4:\"13.5\";s:20:\"disableadvanced_meta\";b:1;s:17:\"ryte_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1587824274;s:13:\"myyoast-oauth\";b:0;}', 'yes'),
(258, 'wpseo_titles', 'a:74:{s:10:\"title_test\";i:0;s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:45:\"%%name%%, Автор в %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:64:\"Вы искали %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:57:\"Страница не найдена %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:84:\"Сообщение %%POSTLINK%% появились сначала на %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:1;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:1;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:1;s:18:\"disable-attachment\";b:1;s:23:\"is-media-purge-relevant\";b:0;s:20:\"breadcrumbs-404crumb\";s:54:\"Ошибка 404: страница не найдена\";s:29:\"breadcrumbs-display-blog-page\";b:0;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:19:\"Архивы для\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:14:\"Главная\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:17:\"Вы искали\";s:15:\"breadcrumbs-sep\";s:1:\"-\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:14:\"person_logo_id\";i:0;s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:15:\"company_logo_id\";i:0;s:12:\"company_name\";s:26:\"ОАО «ТБЗ Усяж»\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";b:0;s:17:\"stripcategorybase\";b:0;s:10:\"title-post\";s:30:\"%%title%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";s:8:\"category\";s:10:\"title-page\";s:30:\"%%title%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";s:1:\"0\";s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";s:1:\"0\";s:18:\"title-tax-category\";s:57:\"Архивы %%term_title%% %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:0;s:20:\"noindex-tax-category\";b:1;s:18:\"title-tax-post_tag\";s:57:\"Архивы %%term_title%% %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:0;s:20:\"noindex-tax-post_tag\";b:1;s:21:\"title-tax-post_format\";s:57:\"Архивы %%term_title%% %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:0;s:23:\"noindex-tax-post_format\";b:1;s:26:\"taxonomy-category-ptparent\";s:1:\"0\";s:26:\"taxonomy-post_tag-ptparent\";s:1:\"0\";s:29:\"taxonomy-post_format-ptparent\";s:1:\"0\";}', 'yes'),
(259, 'wpseo_social', 'a:19:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}', 'yes'),
(260, 'wpseo_flush_rewrite', '1', 'yes'),
(261, '_transient_timeout_wpseo_link_table_inaccessible', '1619360274', 'no'),
(262, '_transient_wpseo_link_table_inaccessible', '0', 'no'),
(263, '_transient_timeout_wpseo_meta_table_inaccessible', '1619360274', 'no'),
(264, '_transient_wpseo_meta_table_inaccessible', '0', 'no'),
(266, 'wpseo_ryte', 'a:2:{s:6:\"status\";i:-1;s:10:\"last_fetch\";i:1587824276;}', 'yes'),
(267, '_transient_timeout_yoast_i18n_wordpress-seo_ru_RU', '1587910685', 'no'),
(268, '_transient_yoast_i18n_wordpress-seo_ru_RU', 'O:8:\"stdClass\":12:{s:2:\"id\";s:6:\"396213\";s:4:\"name\";s:7:\"Russian\";s:4:\"slug\";s:7:\"default\";s:10:\"project_id\";s:4:\"3158\";s:6:\"locale\";s:2:\"ru\";s:13:\"current_count\";i:1087;s:18:\"untranslated_count\";i:29;s:13:\"waiting_count\";i:2;s:11:\"fuzzy_count\";i:0;s:18:\"percent_translated\";i:97;s:9:\"wp_locale\";s:5:\"ru_RU\";s:13:\"last_modified\";s:19:\"2020-03-07 10:03:34\";}', 'no'),
(271, 'alm_version', '5.3.0', 'yes'),
(272, 'alm-install-date', '2020-04-25', 'no'),
(275, 'duplicate_page_options', 'a:6:{s:25:\"duplicatepage_nonce_field\";s:10:\"7b05be8cf8\";s:16:\"_wp_http_referer\";s:58:\"/wp-admin/options-general.php?page=duplicate_page_settings\";s:21:\"duplicate_post_editor\";s:7:\"classic\";s:21:\"duplicate_post_status\";s:7:\"publish\";s:23:\"duplicate_post_redirect\";s:7:\"to_list\";s:21:\"duplicate_post_suffix\";s:0:\"\";}', 'yes'),
(280, 'wpseo_taxonomy_meta', 'a:1:{s:8:\"category\";a:4:{i:1;a:2:{s:13:\"wpseo_linkdex\";s:2:\"24\";s:19:\"wpseo_content_score\";s:1:\"0\";}i:4;a:2:{s:13:\"wpseo_linkdex\";s:2:\"24\";s:19:\"wpseo_content_score\";s:1:\"0\";}i:6;a:2:{s:13:\"wpseo_linkdex\";s:2:\"28\";s:19:\"wpseo_content_score\";s:1:\"0\";}i:7;a:2:{s:13:\"wpseo_linkdex\";s:2:\"24\";s:19:\"wpseo_content_score\";s:1:\"0\";}}}', 'yes'),
(394, 'new_admin_email', 'admin@admin.ru', 'yes'),
(397, 'classic-editor-replace', 'classic', 'yes'),
(398, 'classic-editor-allow-users', 'disallow', 'yes'),
(406, 'rewrite_rules', 'a:98:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:39:\"index.php?yoast-sitemap-xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=11&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:31:\".+?/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\".+?/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\".+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\".+?/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"(.+?)/([^/]+)/embed/?$\";s:63:\"index.php?category_name=$matches[1]&name=$matches[2]&embed=true\";s:26:\"(.+?)/([^/]+)/trackback/?$\";s:57:\"index.php?category_name=$matches[1]&name=$matches[2]&tb=1\";s:46:\"(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:41:\"(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:34:\"(.+?)/([^/]+)/page/?([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&paged=$matches[3]\";s:41:\"(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&cpage=$matches[3]\";s:30:\"(.+?)/([^/]+)(?:/([0-9]+))?/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&page=$matches[3]\";s:20:\".+?/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\".+?/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\".+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\".+?/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:14:\"(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:26:\"(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:33:\"(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&cpage=$matches[2]\";s:8:\"(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";}', 'yes'),
(410, '_site_transient_timeout_available_translations', '1587852642', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(411, '_site_transient_available_translations', 'a:121:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-03-31 13:46:18\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/5.4/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-01 01:35:47\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/5.4/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.7/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-22 18:59:07\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.13\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.13/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-22 10:57:09\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:22:\"Продължение\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:6:\"4.8.12\";s:7:\"updated\";s:19:\"2017-10-01 12:57:10\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.8.12/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-03-31 12:33:33\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/5.4/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"མུ་མཐུད།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-18 19:20:00\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-12 05:54:08\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/5.4/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-27 14:39:02\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-02 08:17:25\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/5.4/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-18 10:12:50\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Forts&#230;t\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-09 09:47:26\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.4/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-07 21:08:21\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-15 20:04:12\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-09 09:46:58\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-13 20:26:58\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/5.4/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-11 18:49:34\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/5.4/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-07 15:53:44\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-03-30 09:33:04\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-03-31 22:29:33\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-23 11:39:35\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-03-30 14:26:50\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-20 09:23:36\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/5.4/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-04 01:49:30\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-03-31 21:27:23\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-24 14:16:26\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-19 06:50:43\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-02-10 15:47:49\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-11-12 04:43:11\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:3:\"5.1\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.1/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-01 12:31:31\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-15 12:49:11\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-03-26 14:31:24\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:9:\"5.0-beta3\";s:7:\"updated\";s:19:\"2018-11-28 16:04:33\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.0-beta3/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-03-29 06:22:39\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/5.4/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-01 16:16:08\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-03-31 04:35:33\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/5.4/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-16 22:05:34\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-23 12:17:12\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-01-31 11:16:06\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.6/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-03-28 18:04:12\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-18 15:51:49\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"להמשיך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"4.9.7\";s:7:\"updated\";s:19:\"2018-06-17 09:33:44\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.7/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-04 10:17:08\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/5.4/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-03-24 17:30:39\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/translation/core/5.4/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"5.1.1\";s:7:\"updated\";s:19:\"2019-03-19 14:36:40\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.1.1/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Tovább\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-03-28 23:32:14\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.7.11\";s:7:\"updated\";s:19:\"2018-09-20 11:13:37\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.7.11/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-14 10:03:06\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-15 06:16:12\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/5.4/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-24 13:53:29\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nutugne\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-03-27 08:22:12\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-19 14:26:45\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/translation/core/5.4/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-12 08:08:32\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-09 07:34:10\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.3/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:6:\"4.9.13\";s:7:\"updated\";s:19:\"2019-12-04 12:22:34\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.13/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರೆಸಿ\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-11-05 01:54:57\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.5/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"4.9.9\";s:7:\"updated\";s:19:\"2018-12-18 14:32:44\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.9/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ຕໍ່\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-10-19 19:23:46\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.5/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:6:\"4.7.15\";s:7:\"updated\";s:19:\"2019-05-10 10:24:08\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.15/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-09-08 12:57:25\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:6:\"4.8.12\";s:7:\"updated\";s:19:\"2018-02-13 07:38:55\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.12/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-30 20:27:25\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ေဆာင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-03-31 23:44:30\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-27 10:30:26\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"जारीराख्नु \";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-01 15:32:20\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-15 20:22:22\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.3.2/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-01 08:16:51\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-01 08:53:00\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.3/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-14 17:01:13\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"دوام\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-03-30 09:19:21\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.4/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-24 18:28:53\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-19 21:22:13\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-14 08:20:00\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-18 07:09:57\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-24 18:56:42\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:3:\"5.3\";s:7:\"updated\";s:19:\"2019-11-12 04:37:38\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/translation/core/5.3/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:2:\"sd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-16 06:27:02\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-15 03:12:06\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/translation/core/5.4/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2018-01-04 13:33:13\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Nadaljujte\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-08 13:12:01\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/5.4/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-01 01:42:23\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-03-24 17:02:49\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-10-22 00:19:41\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.5/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-19 08:19:37\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.4/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-30 02:38:08\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-13 20:18:20\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-12 12:31:53\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-04-24 11:29:49\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/5.4/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"5.1.4\";s:7:\"updated\";s:19:\"2020-04-09 10:48:08\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.1.4/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:5:\"5.0.8\";s:7:\"updated\";s:19:\"2019-01-23 12:32:40\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.8/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-07 15:52:24\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-03-26 15:11:53\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-03-30 20:54:59\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-03-08 12:12:22\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'no'),
(418, 'category_children', 'a:2:{i:2;a:3:{i:0;i:3;i:1;i:6;i:2;i:7;}i:7;a:1:{i:0;i:8;}}', 'yes'),
(426, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(429, 'options_cf_phone_zakaz_list_0_phone_visible', '8 (017) 766-71-30', 'no'),
(430, '_options_cf_phone_zakaz_list_0_phone_visible', 'field_5ea49f34c3b15', 'no'),
(431, 'options_cf_phone_zakaz_list_0_phone_invisible', '8017667130', 'no'),
(432, '_options_cf_phone_zakaz_list_0_phone_invisible', 'field_5ea49f42c3b16', 'no'),
(433, 'options_cf_phone_zakaz_list_1_phone_visible', '8 (017) 76-67-146', 'no'),
(434, '_options_cf_phone_zakaz_list_1_phone_visible', 'field_5ea49f34c3b15', 'no'),
(435, 'options_cf_phone_zakaz_list_1_phone_invisible', '80177667146', 'no'),
(436, '_options_cf_phone_zakaz_list_1_phone_invisible', 'field_5ea49f42c3b16', 'no'),
(437, 'options_cf_phone_zakaz_list_2_phone_visible', '8 (029) 77-00-857', 'no'),
(438, '_options_cf_phone_zakaz_list_2_phone_visible', 'field_5ea49f34c3b15', 'no'),
(439, 'options_cf_phone_zakaz_list_2_phone_invisible', '80297700857', 'no'),
(440, '_options_cf_phone_zakaz_list_2_phone_invisible', 'field_5ea49f42c3b16', 'no'),
(441, 'options_cf_phone_zakaz_list', '3', 'no'),
(442, '_options_cf_phone_zakaz_list', 'field_5e9cf76f52441', 'no'),
(443, 'options_main_logo', '', 'no'),
(444, '_options_main_logo', 'field_5ea494e70780b', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(448, 'widget_bvi_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(456, '_site_transient_timeout_browser_952637548dc3e67d2638455ee5804af8', '1588457479', 'no'),
(457, '_site_transient_browser_952637548dc3e67d2638455ee5804af8', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"81.0.4044.122\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(458, '_site_transient_timeout_php_check_464f4068caea2f8f3edcc5ae59429c65', '1588457480', 'no'),
(459, '_site_transient_php_check_464f4068caea2f8f3edcc5ae59429c65', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(462, '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e', '1587895882', 'no'),
(463, '_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e', 'a:3:{s:9:\"sandboxed\";b:0;s:8:\"location\";a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}s:6:\"events\";a:1:{i:0;a:8:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:15:\"WordCamp Europe\";s:3:\"url\";s:33:\"https://2020.europe.wordcamp.org/\";s:6:\"meetup\";s:0:\"\";s:10:\"meetup_url\";s:0:\"\";s:4:\"date\";s:19:\"2020-06-04 00:00:00\";s:8:\"end_date\";s:19:\"2020-06-06 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"PT\";s:8:\"latitude\";d:41.1622022;s:9:\"longitude\";d:-8.6570588;}}}}', 'no'),
(465, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1587866485', 'no'),
(466, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4681;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:4051;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2667;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2548;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1961;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1804;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1786;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1482;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1473;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1470;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1447;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1418;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1405;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1301;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1185;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1184;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1121;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1110;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1088;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:987;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:875;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:871;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:868;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:855;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:786;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:769;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:766;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:762;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:749;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:744;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:715;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:713;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:704;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:698;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:684;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:658;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:648;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:647;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:644;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:635;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:625;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:622;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:583;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:580;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:577;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:572;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:571;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:565;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:552;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:546;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:546;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:539;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:535;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:532;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:529;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:520;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:510;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:504;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:498;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:497;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:494;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:487;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:486;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:475;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:475;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:471;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:465;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:438;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:436;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:435;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:429;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:426;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:425;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:422;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:422;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:421;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:409;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:405;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:404;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:395;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:395;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:393;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:383;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:382;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:378;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:377;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:372;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:370;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:368;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:357;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:357;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:355;}s:5:\"block\";a:3:{s:4:\"name\";s:5:\"block\";s:4:\"slug\";s:5:\"block\";s:5:\"count\";i:350;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:342;}s:8:\"shipping\";a:3:{s:4:\"name\";s:8:\"shipping\";s:4:\"slug\";s:8:\"shipping\";s:5:\"count\";i:341;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:337;}s:9:\"elementor\";a:3:{s:4:\"name\";s:9:\"elementor\";s:4:\"slug\";s:9:\"elementor\";s:5:\"count\";i:335;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:334;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:334;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:332;}}', 'no'),
(471, 'asl_options', 'a:163:{s:5:\"theme\";s:10:\"simple-red\";s:20:\"override_search_form\";s:1:\"0\";s:24:\"override_woo_search_form\";i:0;s:13:\"keyword_logic\";s:3:\"and\";s:23:\"trigger_on_facet_change\";s:1:\"1\";s:17:\"redirect_click_to\";s:12:\"results_page\";s:17:\"redirect_enter_to\";s:12:\"results_page\";s:21:\"click_action_location\";s:4:\"same\";s:22:\"return_action_location\";s:4:\"same\";s:19:\"custom_redirect_url\";s:11:\"?s={phrase}\";s:16:\"results_per_page\";s:2:\"10\";s:13:\"triggerontype\";s:1:\"1\";s:11:\"customtypes\";s:28:\"_decode_WyJwb3N0IiwicGFnZSJd\";s:13:\"searchintitle\";s:1:\"1\";s:15:\"searchincontent\";s:1:\"1\";s:15:\"searchinexcerpt\";s:1:\"1\";s:20:\"search_in_permalinks\";s:1:\"0\";s:13:\"search_in_ids\";s:1:\"0\";s:13:\"search_all_cf\";s:1:\"0\";s:12:\"customfields\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:24:\"override_default_results\";s:1:\"0\";s:15:\"override_method\";s:3:\"get\";s:9:\"exactonly\";s:1:\"0\";s:20:\"exact_match_location\";s:8:\"anywhere\";s:13:\"searchinterms\";s:1:\"0\";s:9:\"charcount\";s:1:\"0\";s:10:\"maxresults\";s:2:\"10\";s:10:\"itemscount\";s:1:\"4\";s:16:\"resultitemheight\";s:4:\"70px\";s:15:\"orderby_primary\";s:14:\"relevance DESC\";s:17:\"orderby_secondary\";s:9:\"date DESC\";s:11:\"show_images\";s:1:\"1\";s:18:\"image_transparency\";i:1;s:14:\"image_bg_color\";s:7:\"#FFFFFF\";s:11:\"image_width\";s:2:\"68\";s:12:\"image_height\";s:2:\"50\";s:25:\"image_parser_image_number\";s:1:\"1\";s:19:\"image_crop_location\";s:1:\"c\";s:27:\"image_crop_location_selects\";a:9:{i:0;a:2:{s:6:\"option\";s:13:\"In the center\";s:5:\"value\";s:1:\"c\";}i:1;a:2:{s:6:\"option\";s:9:\"Align top\";s:5:\"value\";s:1:\"t\";}i:2;a:2:{s:6:\"option\";s:15:\"Align top right\";s:5:\"value\";s:2:\"tr\";}i:3;a:2:{s:6:\"option\";s:14:\"Align top left\";s:5:\"value\";s:2:\"tl\";}i:4;a:2:{s:6:\"option\";s:12:\"Align bottom\";s:5:\"value\";s:1:\"b\";}i:5;a:2:{s:6:\"option\";s:18:\"Align bottom right\";s:5:\"value\";s:2:\"br\";}i:6;a:2:{s:6:\"option\";s:17:\"Align bottom left\";s:5:\"value\";s:2:\"bl\";}i:7;a:2:{s:6:\"option\";s:10:\"Align left\";s:5:\"value\";s:1:\"l\";}i:8;a:2:{s:6:\"option\";s:11:\"Align right\";s:5:\"value\";s:1:\"r\";}}s:13:\"image_sources\";a:7:{i:0;a:2:{s:6:\"option\";s:14:\"Featured image\";s:5:\"value\";s:8:\"featured\";}i:1;a:2:{s:6:\"option\";s:12:\"Post Content\";s:5:\"value\";s:7:\"content\";}i:2;a:2:{s:6:\"option\";s:12:\"Post Excerpt\";s:5:\"value\";s:7:\"excerpt\";}i:3;a:2:{s:6:\"option\";s:12:\"Custom field\";s:5:\"value\";s:6:\"custom\";}i:4;a:2:{s:6:\"option\";s:15:\"Page Screenshot\";s:5:\"value\";s:10:\"screenshot\";}i:5;a:2:{s:6:\"option\";s:13:\"Default image\";s:5:\"value\";s:7:\"default\";}i:6;a:2:{s:6:\"option\";s:8:\"Disabled\";s:5:\"value\";s:8:\"disabled\";}}s:13:\"image_source1\";s:8:\"featured\";s:13:\"image_source2\";s:7:\"content\";s:13:\"image_source3\";s:7:\"excerpt\";s:13:\"image_source4\";s:6:\"custom\";s:13:\"image_source5\";s:7:\"default\";s:13:\"image_default\";s:69:\"http://usyazh.loc/wp-content/plugins/ajax-search-lite/img/default.jpg\";s:21:\"image_source_featured\";s:8:\"original\";s:18:\"image_custom_field\";s:0:\"\";s:12:\"use_timthumb\";i:1;s:29:\"show_frontend_search_settings\";s:1:\"0\";s:16:\"showexactmatches\";s:1:\"1\";s:17:\"showsearchinposts\";s:1:\"1\";s:17:\"showsearchinpages\";s:1:\"1\";s:17:\"showsearchintitle\";s:1:\"1\";s:19:\"showsearchincontent\";s:1:\"1\";s:15:\"showcustomtypes\";s:0:\"\";s:20:\"showsearchincomments\";i:1;s:19:\"showsearchinexcerpt\";i:1;s:19:\"showsearchinbpusers\";i:0;s:20:\"showsearchinbpgroups\";i:0;s:20:\"showsearchinbpforums\";i:0;s:16:\"exactmatchestext\";s:18:\"Exact matches only\";s:17:\"searchinpoststext\";s:15:\"Search in posts\";s:17:\"searchinpagestext\";s:15:\"Search in pages\";s:17:\"searchintitletext\";s:15:\"Search in title\";s:19:\"searchincontenttext\";s:17:\"Search in content\";s:20:\"searchincommentstext\";s:18:\"Search in comments\";s:19:\"searchinexcerpttext\";s:17:\"Search in excerpt\";s:19:\"searchinbpuserstext\";s:15:\"Search in users\";s:20:\"searchinbpgroupstext\";s:16:\"Search in groups\";s:20:\"searchinbpforumstext\";s:16:\"Search in forums\";s:22:\"showsearchincategories\";s:1:\"0\";s:17:\"showuncategorised\";s:1:\"0\";s:20:\"exsearchincategories\";s:0:\"\";s:26:\"exsearchincategoriesheight\";i:200;s:22:\"showsearchintaxonomies\";i:1;s:9:\"showterms\";s:0:\"\";s:23:\"showseparatefilterboxes\";i:1;s:24:\"exsearchintaxonomiestext\";s:9:\"Filter by\";s:24:\"exsearchincategoriestext\";s:20:\"Filter by Categories\";s:9:\"box_width\";s:4:\"100%\";s:16:\"box_width_tablet\";s:4:\"100%\";s:15:\"box_width_phone\";s:4:\"100%\";s:10:\"box_margin\";s:22:\"||0px||0px||0px||0px||\";s:8:\"box_font\";s:7:\"inherit\";s:11:\"override_bg\";s:1:\"0\";s:17:\"override_bg_color\";s:22:\"rgba(255, 255, 255, 1)\";s:13:\"override_icon\";s:1:\"0\";s:22:\"override_icon_bg_color\";s:22:\"rgba(255, 255, 255, 1)\";s:19:\"override_icon_color\";s:16:\"rgba(0, 0, 0, 1)\";s:15:\"override_border\";s:1:\"0\";s:21:\"override_border_style\";s:59:\"border:1px none rgb(0, 0, 0);border-radius:0px 0px 0px 0px;\";s:15:\"resultstype_def\";a:4:{i:0;a:2:{s:6:\"option\";s:16:\"Vertical Results\";s:5:\"value\";s:8:\"vertical\";}i:1;a:2:{s:6:\"option\";s:18:\"Horizontal Results\";s:5:\"value\";s:10:\"horizontal\";}i:2;a:2:{s:6:\"option\";s:16:\"Isotopic Results\";s:5:\"value\";s:8:\"isotopic\";}i:3;a:2:{s:6:\"option\";s:22:\"Polaroid style Results\";s:5:\"value\";s:8:\"polaroid\";}}s:11:\"resultstype\";s:8:\"vertical\";s:19:\"resultsposition_def\";a:2:{i:0;a:2:{s:6:\"option\";s:20:\"Hover - over content\";s:5:\"value\";s:5:\"hover\";}i:1;a:2:{s:6:\"option\";s:22:\"Block - pushes content\";s:5:\"value\";s:5:\"block\";}}s:15:\"resultsposition\";s:5:\"hover\";s:16:\"resultsmargintop\";s:4:\"12px\";s:16:\"v_res_max_height\";s:4:\"none\";s:18:\"v_res_column_count\";s:1:\"1\";s:22:\"v_res_column_min_width\";s:5:\"200px\";s:29:\"v_res_column_min_width_tablet\";s:5:\"200px\";s:28:\"v_res_column_min_width_phone\";s:5:\"200px\";s:17:\"defaultsearchtext\";s:10:\"Поиск\";s:15:\"showmoreresults\";s:1:\"0\";s:19:\"showmoreresultstext\";s:15:\"More results...\";s:19:\"results_click_blank\";s:1:\"0\";s:17:\"scroll_to_results\";s:1:\"0\";s:19:\"resultareaclickable\";s:1:\"1\";s:23:\"close_on_document_click\";s:1:\"1\";s:15:\"show_close_icon\";s:1:\"1\";s:10:\"showauthor\";s:1:\"0\";s:8:\"showdate\";s:1:\"0\";s:15:\"showdescription\";s:1:\"1\";s:17:\"descriptionlength\";s:3:\"100\";s:19:\"description_context\";s:1:\"0\";s:13:\"noresultstext\";s:32:\"Ничего не найдено\";s:14:\"didyoumeantext\";s:42:\"Возможно вы искали это:\";s:12:\"kw_highlight\";s:1:\"0\";s:24:\"kw_highlight_whole_words\";s:1:\"1\";s:15:\"highlight_color\";s:20:\"rgba(217, 49, 43, 1)\";s:18:\"highlight_bg_color\";s:22:\"rgba(238, 238, 238, 1)\";s:10:\"custom_css\";s:0:\"\";s:12:\"autocomplete\";s:1:\"1\";s:14:\"kw_suggestions\";s:1:\"1\";s:9:\"kw_length\";s:2:\"60\";s:8:\"kw_count\";s:2:\"10\";s:14:\"kw_google_lang\";s:2:\"en\";s:13:\"kw_exceptions\";s:0:\"\";s:12:\"shortcode_op\";s:6:\"remove\";s:16:\"striptagsexclude\";s:0:\"\";s:12:\"runshortcode\";i:1;s:14:\"stripshortcode\";i:0;s:19:\"pageswithcategories\";i:0;s:10:\"titlefield\";s:1:\"0\";s:13:\"titlefield_cf\";s:0:\"\";s:16:\"descriptionfield\";s:1:\"0\";s:19:\"descriptionfield_cf\";s:0:\"\";s:22:\"woo_exclude_outofstock\";s:1:\"0\";s:18:\"exclude_woo_hidden\";s:1:\"1\";s:17:\"excludecategories\";s:0:\"\";s:12:\"excludeposts\";s:0:\"\";s:18:\"wpml_compatibility\";s:1:\"1\";s:22:\"polylang_compatibility\";s:1:\"1\";s:21:\"classname-customtypes\";s:23:\"wpdreamsCustomPostTypes\";s:7:\"wdcfs_9\";s:0:\"\";s:22:\"classname-customfields\";s:20:\"wpdreamsCustomFields\";s:10:\"asl_submit\";s:1:\"1\";s:10:\"submit_asl\";s:13:\"Save options!\";s:25:\"classname-showcustomtypes\";s:31:\"wpdreamsCustomPostTypesEditable\";s:30:\"classname-exsearchincategories\";s:18:\"wpdreamsCategories\";s:7:\"topleft\";s:3:\"0px\";s:11:\"bottomright\";s:3:\"0px\";s:8:\"topright\";s:3:\"0px\";s:10:\"bottomleft\";s:3:\"0px\";s:12:\"_colorpicker\";s:12:\"rgb(0, 0, 0)\";s:27:\"classname-excludecategories\";s:18:\"wpdreamsCategories\";s:10:\"sett_tabid\";s:1:\"4\";s:20:\"selected-customtypes\";a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}s:21:\"selected-customfields\";N;s:24:\"selected-showcustomtypes\";N;s:29:\"selected-exsearchincategories\";N;s:26:\"selected-excludecategories\";N;}', 'yes'),
(472, 'asl_version', '4738', 'yes'),
(473, 'widget_ajaxsearchlitewidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(474, 'asl_debug_data', 'a:2:{s:11:\"asl_options\";a:163:{s:5:\"theme\";s:10:\"simple-red\";s:20:\"override_search_form\";s:1:\"0\";s:24:\"override_woo_search_form\";i:0;s:13:\"keyword_logic\";s:3:\"and\";s:23:\"trigger_on_facet_change\";s:1:\"1\";s:17:\"redirect_click_to\";s:12:\"results_page\";s:17:\"redirect_enter_to\";s:12:\"results_page\";s:21:\"click_action_location\";s:4:\"same\";s:22:\"return_action_location\";s:4:\"same\";s:19:\"custom_redirect_url\";s:11:\"?s={phrase}\";s:16:\"results_per_page\";s:2:\"10\";s:13:\"triggerontype\";s:1:\"1\";s:11:\"customtypes\";s:28:\"_decode_WyJwb3N0IiwicGFnZSJd\";s:13:\"searchintitle\";s:1:\"1\";s:15:\"searchincontent\";s:1:\"1\";s:15:\"searchinexcerpt\";s:1:\"1\";s:20:\"search_in_permalinks\";s:1:\"0\";s:13:\"search_in_ids\";s:1:\"0\";s:13:\"search_all_cf\";s:1:\"0\";s:12:\"customfields\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:24:\"override_default_results\";s:1:\"0\";s:15:\"override_method\";s:3:\"get\";s:9:\"exactonly\";s:1:\"0\";s:20:\"exact_match_location\";s:8:\"anywhere\";s:13:\"searchinterms\";s:1:\"0\";s:9:\"charcount\";s:1:\"0\";s:10:\"maxresults\";s:2:\"10\";s:10:\"itemscount\";s:1:\"4\";s:16:\"resultitemheight\";s:4:\"70px\";s:15:\"orderby_primary\";s:14:\"relevance DESC\";s:17:\"orderby_secondary\";s:9:\"date DESC\";s:11:\"show_images\";s:1:\"1\";s:18:\"image_transparency\";i:1;s:14:\"image_bg_color\";s:7:\"#FFFFFF\";s:11:\"image_width\";s:2:\"68\";s:12:\"image_height\";s:2:\"50\";s:25:\"image_parser_image_number\";s:1:\"1\";s:19:\"image_crop_location\";s:1:\"c\";s:27:\"image_crop_location_selects\";a:9:{i:0;a:2:{s:6:\"option\";s:13:\"In the center\";s:5:\"value\";s:1:\"c\";}i:1;a:2:{s:6:\"option\";s:9:\"Align top\";s:5:\"value\";s:1:\"t\";}i:2;a:2:{s:6:\"option\";s:15:\"Align top right\";s:5:\"value\";s:2:\"tr\";}i:3;a:2:{s:6:\"option\";s:14:\"Align top left\";s:5:\"value\";s:2:\"tl\";}i:4;a:2:{s:6:\"option\";s:12:\"Align bottom\";s:5:\"value\";s:1:\"b\";}i:5;a:2:{s:6:\"option\";s:18:\"Align bottom right\";s:5:\"value\";s:2:\"br\";}i:6;a:2:{s:6:\"option\";s:17:\"Align bottom left\";s:5:\"value\";s:2:\"bl\";}i:7;a:2:{s:6:\"option\";s:10:\"Align left\";s:5:\"value\";s:1:\"l\";}i:8;a:2:{s:6:\"option\";s:11:\"Align right\";s:5:\"value\";s:1:\"r\";}}s:13:\"image_sources\";a:7:{i:0;a:2:{s:6:\"option\";s:14:\"Featured image\";s:5:\"value\";s:8:\"featured\";}i:1;a:2:{s:6:\"option\";s:12:\"Post Content\";s:5:\"value\";s:7:\"content\";}i:2;a:2:{s:6:\"option\";s:12:\"Post Excerpt\";s:5:\"value\";s:7:\"excerpt\";}i:3;a:2:{s:6:\"option\";s:12:\"Custom field\";s:5:\"value\";s:6:\"custom\";}i:4;a:2:{s:6:\"option\";s:15:\"Page Screenshot\";s:5:\"value\";s:10:\"screenshot\";}i:5;a:2:{s:6:\"option\";s:13:\"Default image\";s:5:\"value\";s:7:\"default\";}i:6;a:2:{s:6:\"option\";s:8:\"Disabled\";s:5:\"value\";s:8:\"disabled\";}}s:13:\"image_source1\";s:8:\"featured\";s:13:\"image_source2\";s:7:\"content\";s:13:\"image_source3\";s:7:\"excerpt\";s:13:\"image_source4\";s:6:\"custom\";s:13:\"image_source5\";s:7:\"default\";s:13:\"image_default\";s:69:\"http://usyazh.loc/wp-content/plugins/ajax-search-lite/img/default.jpg\";s:21:\"image_source_featured\";s:8:\"original\";s:18:\"image_custom_field\";s:0:\"\";s:12:\"use_timthumb\";i:1;s:29:\"show_frontend_search_settings\";s:1:\"0\";s:16:\"showexactmatches\";s:1:\"1\";s:17:\"showsearchinposts\";s:1:\"1\";s:17:\"showsearchinpages\";s:1:\"1\";s:17:\"showsearchintitle\";s:1:\"1\";s:19:\"showsearchincontent\";s:1:\"1\";s:15:\"showcustomtypes\";s:0:\"\";s:20:\"showsearchincomments\";i:1;s:19:\"showsearchinexcerpt\";i:1;s:19:\"showsearchinbpusers\";i:0;s:20:\"showsearchinbpgroups\";i:0;s:20:\"showsearchinbpforums\";i:0;s:16:\"exactmatchestext\";s:18:\"Exact matches only\";s:17:\"searchinpoststext\";s:15:\"Search in posts\";s:17:\"searchinpagestext\";s:15:\"Search in pages\";s:17:\"searchintitletext\";s:15:\"Search in title\";s:19:\"searchincontenttext\";s:17:\"Search in content\";s:20:\"searchincommentstext\";s:18:\"Search in comments\";s:19:\"searchinexcerpttext\";s:17:\"Search in excerpt\";s:19:\"searchinbpuserstext\";s:15:\"Search in users\";s:20:\"searchinbpgroupstext\";s:16:\"Search in groups\";s:20:\"searchinbpforumstext\";s:16:\"Search in forums\";s:22:\"showsearchincategories\";s:1:\"0\";s:17:\"showuncategorised\";s:1:\"0\";s:20:\"exsearchincategories\";s:0:\"\";s:26:\"exsearchincategoriesheight\";i:200;s:22:\"showsearchintaxonomies\";i:1;s:9:\"showterms\";s:0:\"\";s:23:\"showseparatefilterboxes\";i:1;s:24:\"exsearchintaxonomiestext\";s:9:\"Filter by\";s:24:\"exsearchincategoriestext\";s:20:\"Filter by Categories\";s:9:\"box_width\";s:4:\"100%\";s:16:\"box_width_tablet\";s:4:\"100%\";s:15:\"box_width_phone\";s:4:\"100%\";s:10:\"box_margin\";s:22:\"||0px||0px||0px||0px||\";s:8:\"box_font\";s:7:\"inherit\";s:11:\"override_bg\";s:1:\"0\";s:17:\"override_bg_color\";s:22:\"rgba(255, 255, 255, 1)\";s:13:\"override_icon\";s:1:\"0\";s:22:\"override_icon_bg_color\";s:22:\"rgba(255, 255, 255, 1)\";s:19:\"override_icon_color\";s:16:\"rgba(0, 0, 0, 1)\";s:15:\"override_border\";s:1:\"0\";s:21:\"override_border_style\";s:59:\"border:1px none rgb(0, 0, 0);border-radius:0px 0px 0px 0px;\";s:15:\"resultstype_def\";a:4:{i:0;a:2:{s:6:\"option\";s:16:\"Vertical Results\";s:5:\"value\";s:8:\"vertical\";}i:1;a:2:{s:6:\"option\";s:18:\"Horizontal Results\";s:5:\"value\";s:10:\"horizontal\";}i:2;a:2:{s:6:\"option\";s:16:\"Isotopic Results\";s:5:\"value\";s:8:\"isotopic\";}i:3;a:2:{s:6:\"option\";s:22:\"Polaroid style Results\";s:5:\"value\";s:8:\"polaroid\";}}s:11:\"resultstype\";s:8:\"vertical\";s:19:\"resultsposition_def\";a:2:{i:0;a:2:{s:6:\"option\";s:20:\"Hover - over content\";s:5:\"value\";s:5:\"hover\";}i:1;a:2:{s:6:\"option\";s:22:\"Block - pushes content\";s:5:\"value\";s:5:\"block\";}}s:15:\"resultsposition\";s:5:\"hover\";s:16:\"resultsmargintop\";s:4:\"12px\";s:16:\"v_res_max_height\";s:4:\"none\";s:18:\"v_res_column_count\";s:1:\"1\";s:22:\"v_res_column_min_width\";s:5:\"200px\";s:29:\"v_res_column_min_width_tablet\";s:5:\"200px\";s:28:\"v_res_column_min_width_phone\";s:5:\"200px\";s:17:\"defaultsearchtext\";s:10:\"Поиск\";s:15:\"showmoreresults\";s:1:\"0\";s:19:\"showmoreresultstext\";s:15:\"More results...\";s:19:\"results_click_blank\";s:1:\"0\";s:17:\"scroll_to_results\";s:1:\"0\";s:19:\"resultareaclickable\";s:1:\"1\";s:23:\"close_on_document_click\";s:1:\"1\";s:15:\"show_close_icon\";s:1:\"1\";s:10:\"showauthor\";s:1:\"0\";s:8:\"showdate\";s:1:\"0\";s:15:\"showdescription\";s:1:\"1\";s:17:\"descriptionlength\";s:3:\"100\";s:19:\"description_context\";s:1:\"0\";s:13:\"noresultstext\";s:32:\"Ничего не найдено\";s:14:\"didyoumeantext\";s:42:\"Возможно вы искали это:\";s:12:\"kw_highlight\";s:1:\"0\";s:24:\"kw_highlight_whole_words\";s:1:\"1\";s:15:\"highlight_color\";s:20:\"rgba(217, 49, 43, 1)\";s:18:\"highlight_bg_color\";s:22:\"rgba(238, 238, 238, 1)\";s:10:\"custom_css\";s:0:\"\";s:12:\"autocomplete\";s:1:\"1\";s:14:\"kw_suggestions\";s:1:\"1\";s:9:\"kw_length\";s:2:\"60\";s:8:\"kw_count\";s:2:\"10\";s:14:\"kw_google_lang\";s:2:\"en\";s:13:\"kw_exceptions\";s:0:\"\";s:12:\"shortcode_op\";s:6:\"remove\";s:16:\"striptagsexclude\";s:0:\"\";s:12:\"runshortcode\";i:1;s:14:\"stripshortcode\";i:0;s:19:\"pageswithcategories\";i:0;s:10:\"titlefield\";s:1:\"0\";s:13:\"titlefield_cf\";s:0:\"\";s:16:\"descriptionfield\";s:1:\"0\";s:19:\"descriptionfield_cf\";s:0:\"\";s:22:\"woo_exclude_outofstock\";s:1:\"0\";s:18:\"exclude_woo_hidden\";s:1:\"1\";s:17:\"excludecategories\";s:0:\"\";s:12:\"excludeposts\";s:0:\"\";s:18:\"wpml_compatibility\";s:1:\"1\";s:22:\"polylang_compatibility\";s:1:\"1\";s:21:\"classname-customtypes\";s:23:\"wpdreamsCustomPostTypes\";s:7:\"wdcfs_9\";s:0:\"\";s:22:\"classname-customfields\";s:20:\"wpdreamsCustomFields\";s:10:\"asl_submit\";s:1:\"1\";s:10:\"submit_asl\";s:13:\"Save options!\";s:25:\"classname-showcustomtypes\";s:31:\"wpdreamsCustomPostTypesEditable\";s:30:\"classname-exsearchincategories\";s:18:\"wpdreamsCategories\";s:7:\"topleft\";s:3:\"0px\";s:11:\"bottomright\";s:3:\"0px\";s:8:\"topright\";s:3:\"0px\";s:10:\"bottomleft\";s:3:\"0px\";s:12:\"_colorpicker\";s:12:\"rgb(0, 0, 0)\";s:27:\"classname-excludecategories\";s:18:\"wpdreamsCategories\";s:10:\"sett_tabid\";s:1:\"4\";s:20:\"selected-customtypes\";a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}s:21:\"selected-customfields\";N;s:24:\"selected-showcustomtypes\";N;s:29:\"selected-exsearchincategories\";N;s:26:\"selected-excludecategories\";N;}s:7:\"queries\";a:5:{i:0;a:4:{s:6:\"phrase\";s:12:\"статья\";s:7:\"options\";a:16:{s:15:\"qtranslate_lang\";s:1:\"0\";s:11:\"set_intitle\";b:1;s:13:\"set_incontent\";b:1;s:13:\"set_inexcerpt\";b:1;s:11:\"set_inposts\";b:1;s:11:\"set_inpages\";b:1;s:13:\"set_exactonly\";b:0;s:14:\"set_incomments\";b:0;s:13:\"searchinterms\";b:0;s:13:\"set_inbpusers\";b:0;s:14:\"set_inbpgroups\";b:0;s:14:\"set_inbpforums\";b:0;s:10:\"maxresults\";s:2:\"10\";s:8:\"do_group\";b:1;s:11:\"categoryset\";a:0:{}s:7:\"termset\";a:0:{}}s:5:\"query\";s:1882:\"\r\n    	SELECT\r\n			\r\n			wp_posts.post_title as title,\r\n			wp_posts.ID as id,\r\n			wp_posts.post_date as date,\r\n			wp_posts.post_content as content,\r\n			wp_posts.post_excerpt as excerpt,\r\n			\'pagepost\' as content_type,\r\n			(SELECT\r\n				wp_users.display_name as author\r\n				FROM wp_users\r\n				WHERE wp_users.ID = wp_posts.post_author\r\n			) as author,\r\n			\'\' as ttid,\r\n			wp_posts.post_type as post_type,\r\n			((case when\r\n                    (wp_posts.post_title LIKE \'статья%\')\r\n                     then 20 else 0 end) + (case when\r\n                    (wp_posts.post_title LIKE \'%статья%\')\r\n                     then 10 else 0 end) + (case when\r\n                      (wp_posts.post_title LIKE \'%статья%\')\r\n                       then 10 else 0 end) + (case when\r\n                            (wp_posts.post_content LIKE \'%статья%\')\r\n                             then 10 else 0 end) + (case when\r\n                    (wp_posts.post_content LIKE \'%статья%\')\r\n                     then 10 else 0 end) + (case when\r\n                            (wp_posts.post_excerpt LIKE \'%статья%\')\r\n                             then 10 else 0 end) + (case when\r\n                    (wp_posts.post_excerpt LIKE \'%статья%\')\r\n                     then 10 else 0 end)) as relevance\r\n    	FROM wp_posts\r\n			\r\n			\r\n			\r\n    	WHERE\r\n                ( wp_posts.post_type IN (\'post\',\'page\') )\r\n                \r\n                \r\n            AND ( wp_posts.post_status IN (\'publish\') )\r\n            AND (1)\r\n            AND ( (( wp_posts.post_title LIKE \'%статья%\' ) OR ( wp_posts.post_content LIKE \'%статья%\' ) OR ( wp_posts.post_excerpt LIKE \'%статья%\' )) )\r\n            \r\n            AND ( (1) )\r\n            \r\n            \r\n        GROUP BY\r\n          	 wp_posts.ID\r\n        ORDER BY\r\n        	 relevance DESC, date DESC, id DESC\r\n        LIMIT 10\";s:7:\"results\";i:0;}i:1;a:4:{s:6:\"phrase\";s:10:\"стать\";s:7:\"options\";a:16:{s:15:\"qtranslate_lang\";s:1:\"0\";s:11:\"set_intitle\";b:1;s:13:\"set_incontent\";b:1;s:13:\"set_inexcerpt\";b:1;s:11:\"set_inposts\";b:1;s:11:\"set_inpages\";b:1;s:13:\"set_exactonly\";b:0;s:14:\"set_incomments\";b:0;s:13:\"searchinterms\";b:0;s:13:\"set_inbpusers\";b:0;s:14:\"set_inbpgroups\";b:0;s:14:\"set_inbpforums\";b:0;s:10:\"maxresults\";s:2:\"10\";s:8:\"do_group\";b:1;s:11:\"categoryset\";a:0:{}s:7:\"termset\";a:0:{}}s:5:\"query\";s:1862:\"\r\n    	SELECT\r\n			\r\n			wp_posts.post_title as title,\r\n			wp_posts.ID as id,\r\n			wp_posts.post_date as date,\r\n			wp_posts.post_content as content,\r\n			wp_posts.post_excerpt as excerpt,\r\n			\'pagepost\' as content_type,\r\n			(SELECT\r\n				wp_users.display_name as author\r\n				FROM wp_users\r\n				WHERE wp_users.ID = wp_posts.post_author\r\n			) as author,\r\n			\'\' as ttid,\r\n			wp_posts.post_type as post_type,\r\n			((case when\r\n                    (wp_posts.post_title LIKE \'стать%\')\r\n                     then 20 else 0 end) + (case when\r\n                    (wp_posts.post_title LIKE \'%стать%\')\r\n                     then 10 else 0 end) + (case when\r\n                      (wp_posts.post_title LIKE \'%стать%\')\r\n                       then 10 else 0 end) + (case when\r\n                            (wp_posts.post_content LIKE \'%стать%\')\r\n                             then 10 else 0 end) + (case when\r\n                    (wp_posts.post_content LIKE \'%стать%\')\r\n                     then 10 else 0 end) + (case when\r\n                            (wp_posts.post_excerpt LIKE \'%стать%\')\r\n                             then 10 else 0 end) + (case when\r\n                    (wp_posts.post_excerpt LIKE \'%стать%\')\r\n                     then 10 else 0 end)) as relevance\r\n    	FROM wp_posts\r\n			\r\n			\r\n			\r\n    	WHERE\r\n                ( wp_posts.post_type IN (\'post\',\'page\') )\r\n                \r\n                \r\n            AND ( wp_posts.post_status IN (\'publish\') )\r\n            AND (1)\r\n            AND ( (( wp_posts.post_title LIKE \'%стать%\' ) OR ( wp_posts.post_content LIKE \'%стать%\' ) OR ( wp_posts.post_excerpt LIKE \'%стать%\' )) )\r\n            \r\n            AND ( (1) )\r\n            \r\n            \r\n        GROUP BY\r\n          	 wp_posts.ID\r\n        ORDER BY\r\n        	 relevance DESC, date DESC, id DESC\r\n        LIMIT 10\";s:7:\"results\";i:0;}i:2;a:4:{s:6:\"phrase\";s:2:\"с\";s:7:\"options\";a:16:{s:15:\"qtranslate_lang\";s:1:\"0\";s:11:\"set_intitle\";b:1;s:13:\"set_incontent\";b:1;s:13:\"set_inexcerpt\";b:1;s:11:\"set_inposts\";b:1;s:11:\"set_inpages\";b:1;s:13:\"set_exactonly\";b:0;s:14:\"set_incomments\";b:0;s:13:\"searchinterms\";b:0;s:13:\"set_inbpusers\";b:0;s:14:\"set_inbpgroups\";b:0;s:14:\"set_inbpforums\";b:0;s:10:\"maxresults\";s:2:\"10\";s:8:\"do_group\";b:1;s:11:\"categoryset\";a:0:{}s:7:\"termset\";a:0:{}}s:5:\"query\";s:1782:\"\r\n    	SELECT\r\n			\r\n			wp_posts.post_title as title,\r\n			wp_posts.ID as id,\r\n			wp_posts.post_date as date,\r\n			wp_posts.post_content as content,\r\n			wp_posts.post_excerpt as excerpt,\r\n			\'pagepost\' as content_type,\r\n			(SELECT\r\n				wp_users.display_name as author\r\n				FROM wp_users\r\n				WHERE wp_users.ID = wp_posts.post_author\r\n			) as author,\r\n			\'\' as ttid,\r\n			wp_posts.post_type as post_type,\r\n			((case when\r\n                    (wp_posts.post_title LIKE \'с%\')\r\n                     then 20 else 0 end) + (case when\r\n                    (wp_posts.post_title LIKE \'%с%\')\r\n                     then 10 else 0 end) + (case when\r\n                      (wp_posts.post_title LIKE \'%с%\')\r\n                       then 10 else 0 end) + (case when\r\n                            (wp_posts.post_content LIKE \'%с%\')\r\n                             then 10 else 0 end) + (case when\r\n                    (wp_posts.post_content LIKE \'%с%\')\r\n                     then 10 else 0 end) + (case when\r\n                            (wp_posts.post_excerpt LIKE \'%с%\')\r\n                             then 10 else 0 end) + (case when\r\n                    (wp_posts.post_excerpt LIKE \'%с%\')\r\n                     then 10 else 0 end)) as relevance\r\n    	FROM wp_posts\r\n			\r\n			\r\n			\r\n    	WHERE\r\n                ( wp_posts.post_type IN (\'post\',\'page\') )\r\n                \r\n                \r\n            AND ( wp_posts.post_status IN (\'publish\') )\r\n            AND (1)\r\n            AND ( (( wp_posts.post_title LIKE \'%с%\' ) OR ( wp_posts.post_content LIKE \'%с%\' ) OR ( wp_posts.post_excerpt LIKE \'%с%\' )) )\r\n            \r\n            AND ( (1) )\r\n            \r\n            \r\n        GROUP BY\r\n          	 wp_posts.ID\r\n        ORDER BY\r\n        	 relevance DESC, date DESC, id DESC\r\n        LIMIT 10\";s:7:\"results\";i:10;}i:3;a:4:{s:6:\"phrase\";s:14:\"меропри\";s:7:\"options\";a:16:{s:15:\"qtranslate_lang\";s:1:\"0\";s:11:\"set_intitle\";b:1;s:13:\"set_incontent\";b:1;s:13:\"set_inexcerpt\";b:1;s:11:\"set_inposts\";b:1;s:11:\"set_inpages\";b:1;s:13:\"set_exactonly\";b:0;s:14:\"set_incomments\";b:0;s:13:\"searchinterms\";b:0;s:13:\"set_inbpusers\";b:0;s:14:\"set_inbpgroups\";b:0;s:14:\"set_inbpforums\";b:0;s:10:\"maxresults\";s:2:\"10\";s:8:\"do_group\";b:1;s:11:\"categoryset\";a:0:{}s:7:\"termset\";a:0:{}}s:5:\"query\";s:1902:\"\r\n    	SELECT\r\n			\r\n			wp_posts.post_title as title,\r\n			wp_posts.ID as id,\r\n			wp_posts.post_date as date,\r\n			wp_posts.post_content as content,\r\n			wp_posts.post_excerpt as excerpt,\r\n			\'pagepost\' as content_type,\r\n			(SELECT\r\n				wp_users.display_name as author\r\n				FROM wp_users\r\n				WHERE wp_users.ID = wp_posts.post_author\r\n			) as author,\r\n			\'\' as ttid,\r\n			wp_posts.post_type as post_type,\r\n			((case when\r\n                    (wp_posts.post_title LIKE \'меропри%\')\r\n                     then 20 else 0 end) + (case when\r\n                    (wp_posts.post_title LIKE \'%меропри%\')\r\n                     then 10 else 0 end) + (case when\r\n                      (wp_posts.post_title LIKE \'%меропри%\')\r\n                       then 10 else 0 end) + (case when\r\n                            (wp_posts.post_content LIKE \'%меропри%\')\r\n                             then 10 else 0 end) + (case when\r\n                    (wp_posts.post_content LIKE \'%меропри%\')\r\n                     then 10 else 0 end) + (case when\r\n                            (wp_posts.post_excerpt LIKE \'%меропри%\')\r\n                             then 10 else 0 end) + (case when\r\n                    (wp_posts.post_excerpt LIKE \'%меропри%\')\r\n                     then 10 else 0 end)) as relevance\r\n    	FROM wp_posts\r\n			\r\n			\r\n			\r\n    	WHERE\r\n                ( wp_posts.post_type IN (\'post\',\'page\') )\r\n                \r\n                \r\n            AND ( wp_posts.post_status IN (\'publish\') )\r\n            AND (1)\r\n            AND ( (( wp_posts.post_title LIKE \'%меропри%\' ) OR ( wp_posts.post_content LIKE \'%меропри%\' ) OR ( wp_posts.post_excerpt LIKE \'%меропри%\' )) )\r\n            \r\n            AND ( (1) )\r\n            \r\n            \r\n        GROUP BY\r\n          	 wp_posts.ID\r\n        ORDER BY\r\n        	 relevance DESC, date DESC, id DESC\r\n        LIMIT 10\";s:7:\"results\";i:5;}i:4;a:4:{s:6:\"phrase\";s:0:\"\";s:7:\"options\";a:16:{s:15:\"qtranslate_lang\";s:1:\"0\";s:11:\"set_intitle\";b:1;s:13:\"set_incontent\";b:1;s:13:\"set_inexcerpt\";b:1;s:11:\"set_inposts\";b:1;s:11:\"set_inpages\";b:1;s:13:\"set_exactonly\";b:0;s:14:\"set_incomments\";b:0;s:13:\"searchinterms\";b:0;s:13:\"set_inbpusers\";b:0;s:14:\"set_inbpgroups\";b:0;s:14:\"set_inbpforums\";b:0;s:10:\"maxresults\";s:2:\"10\";s:8:\"do_group\";b:1;s:11:\"categoryset\";a:0:{}s:7:\"termset\";a:0:{}}s:5:\"query\";s:853:\"\r\n    	SELECT\r\n			\r\n			wp_posts.post_title as title,\r\n			wp_posts.ID as id,\r\n			wp_posts.post_date as date,\r\n			wp_posts.post_content as content,\r\n			wp_posts.post_excerpt as excerpt,\r\n			\'pagepost\' as content_type,\r\n			(SELECT\r\n				wp_users.display_name as author\r\n				FROM wp_users\r\n				WHERE wp_users.ID = wp_posts.post_author\r\n			) as author,\r\n			\'\' as ttid,\r\n			wp_posts.post_type as post_type,\r\n			(1) as relevance\r\n    	FROM wp_posts\r\n			\r\n			\r\n			\r\n    	WHERE\r\n                ( wp_posts.post_type IN (\'post\',\'page\') )\r\n                \r\n                \r\n            AND ( wp_posts.post_status IN (\'publish\') )\r\n            AND (1)\r\n            AND (1)\r\n            \r\n            AND ( (1) )\r\n            \r\n            \r\n        GROUP BY\r\n          	 wp_posts.ID\r\n        ORDER BY\r\n        	 relevance DESC, date DESC, id DESC\r\n        LIMIT 10\";s:7:\"results\";i:10;}}}', 'yes'),
(476, 'asl_compatibility', 'a:12:{s:9:\"js_source\";s:3:\"min\";s:7:\"js_init\";s:7:\"dynamic\";s:14:\"load_scroll_js\";s:3:\"yes\";s:11:\"detect_ajax\";s:1:\"0\";s:18:\"js_retain_popstate\";s:1:\"0\";s:17:\"js_fix_duplicates\";s:1:\"1\";s:17:\"load_google_fonts\";s:1:\"0\";s:25:\"old_browser_compatibility\";s:1:\"1\";s:16:\"use_acf_getfield\";s:1:\"0\";s:13:\"db_force_case\";s:4:\"none\";s:16:\"db_force_unicode\";s:1:\"0\";s:18:\"db_force_utf8_like\";s:1:\"0\";}', 'yes'),
(479, '_site_transient_timeout_theme_roots', '1587899711', 'no'),
(480, '_site_transient_theme_roots', 'a:1:{s:12:\"starter_pack\";s:7:\"/themes\";}', 'no'),
(481, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.4.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.4.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.4\";s:7:\"version\";s:3:\"5.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1587897913;s:15:\"version_checked\";s:3:\"5.4\";s:12:\"translations\";a:0:{}}', 'no'),
(482, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1587897914;s:7:\"checked\";a:1:{s:12:\"starter_pack\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(483, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1587897914;s:7:\"checked\";a:8:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.8.9\";s:33:\"ajax-load-more/ajax-load-more.php\";s:5:\"5.3.0\";s:37:\"ajax-search-lite/ajax-search-lite.php\";s:5:\"4.8.1\";s:53:\"button-visually-impaired/Button-visually-impaired.php\";s:3:\"2.0\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";s:32:\"duplicate-page/duplicatepage.php\";s:3:\"4.2\";s:33:\"wp-translitera/wp-translitera.php\";s:6:\"p1.2.5\";s:24:\"wordpress-seo/wp-seo.php\";s:4:\"13.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:16:\"ajax-search-lite\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2018-06-06 16:05:28\";s:7:\"package\";s:83:\"https://downloads.wordpress.org/translation/plugin/ajax-search-lite/4.8.1/ru_RU.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:7:{s:33:\"ajax-load-more/ajax-load-more.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/ajax-load-more\";s:4:\"slug\";s:14:\"ajax-load-more\";s:6:\"plugin\";s:33:\"ajax-load-more/ajax-load-more.php\";s:11:\"new_version\";s:5:\"5.3.0\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/ajax-load-more/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/ajax-load-more.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/ajax-load-more/assets/icon-256x256.png?rev=1631559\";s:2:\"1x\";s:67:\"https://ps.w.org/ajax-load-more/assets/icon-128x128.png?rev=1667395\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/ajax-load-more/assets/banner-772x250.jpg?rev=2117690\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"ajax-search-lite/ajax-search-lite.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/ajax-search-lite\";s:4:\"slug\";s:16:\"ajax-search-lite\";s:6:\"plugin\";s:37:\"ajax-search-lite/ajax-search-lite.php\";s:11:\"new_version\";s:5:\"4.8.1\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/ajax-search-lite/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/ajax-search-lite.4.8.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/ajax-search-lite/assets/icon-256x256.png?rev=970684\";s:2:\"1x\";s:68:\"https://ps.w.org/ajax-search-lite/assets/icon-128x128.png?rev=970684\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:70:\"https://ps.w.org/ajax-search-lite/assets/banner-772x250.png?rev=963999\";}s:11:\"banners_rtl\";a:0:{}}s:53:\"button-visually-impaired/Button-visually-impaired.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/button-visually-impaired\";s:4:\"slug\";s:24:\"button-visually-impaired\";s:6:\"plugin\";s:53:\"button-visually-impaired/Button-visually-impaired.php\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/button-visually-impaired/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/button-visually-impaired.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/button-visually-impaired/assets/icon-256x256.jpg?rev=2282673\";s:2:\"1x\";s:77:\"https://ps.w.org/button-visually-impaired/assets/icon-256x256.jpg?rev=2282673\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:79:\"https://ps.w.org/button-visually-impaired/assets/banner-772x250.jpg?rev=2282673\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:32:\"duplicate-page/duplicatepage.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/duplicate-page\";s:4:\"slug\";s:14:\"duplicate-page\";s:6:\"plugin\";s:32:\"duplicate-page/duplicatepage.php\";s:11:\"new_version\";s:3:\"4.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/duplicate-page/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/duplicate-page.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:67:\"https://ps.w.org/duplicate-page/assets/icon-128x128.jpg?rev=1412874\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/duplicate-page/assets/banner-772x250.jpg?rev=1410328\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"wp-translitera/wp-translitera.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/wp-translitera\";s:4:\"slug\";s:14:\"wp-translitera\";s:6:\"plugin\";s:33:\"wp-translitera/wp-translitera.php\";s:11:\"new_version\";s:6:\"p1.2.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wp-translitera/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/wp-translitera.p1.2.5.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:58:\"https://s.w.org/plugins/geopattern-icon/wp-translitera.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:4:\"13.5\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wordpress-seo.13.5.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=1834347\";s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1843435\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1843435\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1843435\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1843435\";}}}}', 'no');

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
(7, 6, '_edit_lock', '1587306886:1'),
(14, 9, '_edit_lock', '1587308934:1'),
(17, 11, '_edit_last', '1'),
(18, 11, '_edit_lock', '1587842113:1'),
(19, 11, '_wp_page_template', 'main_page.php'),
(20, 16, '_edit_last', '1'),
(21, 16, '_edit_lock', '1587866418:1'),
(22, 19, '_menu_item_type', 'post_type'),
(23, 19, '_menu_item_menu_item_parent', '0'),
(24, 19, '_menu_item_object_id', '11'),
(25, 19, '_menu_item_object', 'page'),
(26, 19, '_menu_item_target', ''),
(27, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(28, 19, '_menu_item_xfn', ''),
(29, 19, '_menu_item_url', ''),
(30, 19, '_menu_item_orphaned', '1587426511'),
(31, 20, '_menu_item_type', 'post_type'),
(32, 20, '_menu_item_menu_item_parent', '0'),
(33, 20, '_menu_item_object_id', '11'),
(34, 20, '_menu_item_object', 'page'),
(35, 20, '_menu_item_target', ''),
(36, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(37, 20, '_menu_item_xfn', ''),
(38, 20, '_menu_item_url', ''),
(39, 20, '_menu_item_orphaned', '1587427009'),
(40, 21, '_edit_last', '1'),
(41, 21, '_wp_page_template', 'default'),
(42, 21, '_edit_lock', '1587824580:1'),
(43, 23, '_edit_last', '1'),
(44, 23, '_edit_lock', '1587824918:1'),
(46, 23, '_yoast_wpseo_primary_category', '1'),
(48, 25, '_edit_last', '1'),
(49, 25, '_edit_lock', '1587825387:1'),
(50, 25, '_yoast_wpseo_primary_category', '1'),
(54, 28, '_edit_last', '1'),
(55, 28, '_edit_lock', '1587825357:1'),
(56, 28, '_yoast_wpseo_primary_category', '1'),
(58, 28, '_wp_old_slug', 'istorija'),
(60, 30, '_edit_last', '1'),
(61, 30, '_edit_lock', '1587825374:1'),
(62, 30, '_yoast_wpseo_primary_category', '1'),
(64, 23, '_wp_old_slug', 'istoriya-razvitiya-predpriyatiya'),
(66, 32, '_edit_last', '1'),
(67, 32, '_edit_lock', '1587825088:1'),
(68, 32, '_yoast_wpseo_primary_category', '1'),
(69, 32, '_wp_old_slug', 'istoriya-razvitiya-predpriyatiya'),
(74, 32, '_wp_old_slug', 'rukovodstvo-2'),
(76, 35, '_edit_last', '1'),
(77, 35, '_edit_lock', '1587825313:1'),
(78, 35, '_yoast_wpseo_primary_category', '1'),
(79, 35, '_wp_old_slug', 'istoriya-razvitiya-predpriyatiya'),
(84, 35, '_wp_old_slug', 'rukovodstvo-2'),
(86, 37, '_edit_last', '1'),
(87, 37, '_edit_lock', '1587825343:1'),
(88, 37, '_yoast_wpseo_primary_category', '1'),
(89, 37, '_wp_old_slug', 'istoriya-razvitiya-predpriyatiya'),
(90, 37, '_wp_old_slug', 'rukovodstvo-2'),
(94, 37, '_wp_old_slug', 'vakansii-2'),
(100, 40, '_edit_last', '1'),
(101, 40, '_edit_lock', '1587825439:1'),
(102, 40, '_yoast_wpseo_primary_category', '1'),
(103, 40, '_wp_old_slug', 'istoriya-razvitiya-predpriyatiya'),
(108, 40, '_wp_old_slug', 'rukovodstvo-2'),
(110, 42, '_edit_last', '1'),
(111, 42, '_edit_lock', '1587825474:1'),
(112, 42, '_yoast_wpseo_primary_category', '1'),
(113, 42, '_wp_old_slug', 'istoriya-razvitiya-predpriyatiya'),
(114, 42, '_wp_old_slug', 'rukovodstvo-2'),
(118, 42, '_wp_old_slug', 'finansovaja-dejatelnost'),
(120, 44, '_edit_last', '1'),
(121, 44, '_edit_lock', '1587825515:1'),
(122, 44, '_yoast_wpseo_primary_category', '1'),
(123, 44, '_wp_old_slug', 'istoriya-razvitiya-predpriyatiya'),
(128, 44, '_wp_old_slug', 'rukovodstvo-2'),
(129, 46, '_edit_last', '1'),
(130, 46, '_edit_lock', '1587825435:1'),
(131, 46, '_wp_page_template', 'default'),
(132, 49, '_edit_last', '1'),
(133, 49, '_edit_lock', '1587825559:1'),
(134, 49, '_wp_page_template', 'default'),
(136, 51, '_edit_last', '1'),
(137, 51, '_edit_lock', '1587826724:1'),
(138, 51, '_yoast_wpseo_primary_category', '1'),
(139, 51, '_wp_old_slug', 'istoriya-razvitiya-predpriyatiya'),
(140, 51, '_wp_old_slug', 'rukovodstvo-2'),
(144, 51, '_wp_old_slug', 'partnery'),
(147, 51, '_wp_old_slug', 'proshedshie-meropriyatiya'),
(150, 53, '_edit_last', '1'),
(151, 53, '_edit_lock', '1587826736:1'),
(152, 53, '_yoast_wpseo_primary_category', '4'),
(153, 53, '_wp_old_slug', 'istoriya-razvitiya-predpriyatiya'),
(154, 53, '_wp_old_slug', 'rukovodstvo-2'),
(155, 53, '_wp_old_slug', 'partnery'),
(156, 53, '_wp_old_slug', 'proshedshie-meropriyatiya'),
(166, 53, '_wp_old_slug', 'obshhie-meroprijatija'),
(172, 55, '_edit_last', '1'),
(173, 55, '_edit_lock', '1587828779:1'),
(174, 55, '_yoast_wpseo_primary_category', '1'),
(175, 55, '_wp_old_slug', 'istoriya-razvitiya-predpriyatiya'),
(176, 55, '_wp_old_slug', 'rukovodstvo-2'),
(177, 55, '_wp_old_slug', 'partnery'),
(178, 55, '_wp_old_slug', 'proshedshie-meropriyatiya'),
(180, 55, '_wp_old_slug', 'obshhie-meroprijatija'),
(182, 57, '_edit_last', '1'),
(183, 57, '_edit_lock', '1587827427:1'),
(184, 57, '_yoast_wpseo_primary_category', '1'),
(185, 57, '_wp_old_slug', 'istoriya-razvitiya-predpriyatiya'),
(186, 57, '_wp_old_slug', 'rukovodstvo-2'),
(187, 57, '_wp_old_slug', 'partnery'),
(188, 57, '_wp_old_slug', 'proshedshie-meropriyatiya'),
(189, 57, '_wp_old_slug', 'obshhie-meroprijatija'),
(198, 57, '_wp_old_slug', 'ideologicheskaja-rabota'),
(203, 59, '_edit_last', '1'),
(204, 59, '_edit_lock', '1587828750:1'),
(205, 59, '_yoast_wpseo_primary_category', '1'),
(206, 59, '_wp_old_slug', 'istoriya-razvitiya-predpriyatiya'),
(207, 59, '_wp_old_slug', 'rukovodstvo-2'),
(208, 59, '_wp_old_slug', 'partnery'),
(209, 59, '_wp_old_slug', 'proshedshie-meropriyatiya'),
(210, 59, '_wp_old_slug', 'obshhie-meroprijatija'),
(219, 59, '_wp_old_slug', 'ideologicheskaja-rabota'),
(221, 61, '_edit_last', '1'),
(222, 61, '_edit_lock', '1587827703:1'),
(223, 61, '_yoast_wpseo_primary_category', '7'),
(224, 61, '_wp_old_slug', 'istoriya-razvitiya-predpriyatiya'),
(225, 61, '_wp_old_slug', 'rukovodstvo-2'),
(226, 61, '_wp_old_slug', 'partnery'),
(227, 61, '_wp_old_slug', 'proshedshie-meropriyatiya'),
(228, 61, '_wp_old_slug', 'obshhie-meroprijatija'),
(229, 61, '_wp_old_slug', 'ideologicheskaja-rabota'),
(238, 61, '_wp_old_slug', 'profsojuzy'),
(241, 64, '_edit_last', '1'),
(242, 64, '_edit_lock', '1587827883:1'),
(243, 64, '_yoast_wpseo_primary_category', '7'),
(244, 64, '_wp_old_slug', 'istoriya-razvitiya-predpriyatiya'),
(245, 64, '_wp_old_slug', 'rukovodstvo-2'),
(246, 64, '_wp_old_slug', 'partnery'),
(247, 64, '_wp_old_slug', 'proshedshie-meropriyatiya'),
(248, 64, '_wp_old_slug', 'obshhie-meroprijatija'),
(249, 64, '_wp_old_slug', 'ideologicheskaja-rabota'),
(250, 64, '_wp_old_slug', 'profsojuzy'),
(257, 64, '_wp_old_slug', 'profsojuznyj-aktiv'),
(259, 66, '_edit_last', '1'),
(260, 66, '_edit_lock', '1587828446:1'),
(261, 66, '_yoast_wpseo_primary_category', '7'),
(262, 66, '_wp_old_slug', 'istoriya-razvitiya-predpriyatiya'),
(263, 66, '_wp_old_slug', 'rukovodstvo-2'),
(264, 66, '_wp_old_slug', 'partnery'),
(265, 66, '_wp_old_slug', 'proshedshie-meropriyatiya'),
(266, 66, '_wp_old_slug', 'obshhie-meroprijatija'),
(267, 66, '_wp_old_slug', 'ideologicheskaja-rabota'),
(268, 66, '_wp_old_slug', 'profsojuzy'),
(269, 66, '_wp_old_slug', 'profsojuznyj-aktiv'),
(275, 67, '_edit_last', '1'),
(276, 67, '_edit_lock', '1587827883:1'),
(277, 67, '_yoast_wpseo_primary_category', '7'),
(278, 67, '_wp_old_slug', 'istoriya-razvitiya-predpriyatiya'),
(279, 67, '_wp_old_slug', 'rukovodstvo-2'),
(280, 67, '_wp_old_slug', 'partnery'),
(281, 67, '_wp_old_slug', 'proshedshie-meropriyatiya'),
(282, 67, '_wp_old_slug', 'obshhie-meroprijatija'),
(283, 67, '_wp_old_slug', 'ideologicheskaja-rabota'),
(284, 67, '_wp_old_slug', 'profsojuzy'),
(285, 67, '_wp_old_slug', 'profsojuznyj-aktiv'),
(290, 67, '_wp_trash_meta_status', 'publish'),
(291, 67, '_wp_trash_meta_time', '1587827925'),
(292, 67, '_wp_desired_post_slug', 'plan-raboty-2'),
(294, 66, '_wp_old_slug', 'plan-raboty'),
(296, 70, '_edit_last', '1'),
(297, 70, '_edit_lock', '1587828732:1'),
(299, 70, '_yoast_wpseo_primary_category', '7'),
(303, 75, '_edit_last', '1'),
(304, 75, '_wp_page_template', 'default'),
(305, 75, '_edit_lock', '1587828874:1'),
(306, 78, '_edit_last', '1'),
(307, 78, '_edit_lock', '1587829138:1'),
(309, 78, '_yoast_wpseo_primary_category', '9'),
(311, 78, '_wp_old_slug', 'profsojuznye-dokumenty'),
(313, 82, '_edit_last', '1'),
(314, 82, '_edit_lock', '1587829322:1'),
(315, 82, '_yoast_wpseo_primary_category', '9'),
(316, 82, '_wp_old_slug', 'profsojuznye-dokumenty'),
(321, 82, '_wp_old_slug', 'normativnye-dokumenty-2'),
(323, 84, '_edit_last', '1'),
(324, 84, '_edit_lock', '1587829366:1'),
(325, 84, '_yoast_wpseo_primary_category', '9'),
(326, 84, '_wp_old_slug', 'profsojuznye-dokumenty'),
(327, 84, '_wp_old_slug', 'normativnye-dokumenty-2'),
(331, 84, '_wp_old_slug', 'gorjachaja-linija-2'),
(332, 86, '_edit_last', '1'),
(333, 86, '_wp_page_template', 'default'),
(334, 86, '_edit_lock', '1587829239:1'),
(335, 88, '_menu_item_type', 'post_type'),
(336, 88, '_menu_item_menu_item_parent', '0'),
(337, 88, '_menu_item_object_id', '11'),
(338, 88, '_menu_item_object', 'page'),
(339, 88, '_menu_item_target', ''),
(340, 88, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(341, 88, '_menu_item_xfn', ''),
(342, 88, '_menu_item_url', ''),
(343, 88, '_menu_item_orphaned', '1587842259'),
(344, 89, '_menu_item_type', 'post_type'),
(345, 89, '_menu_item_menu_item_parent', '0'),
(346, 89, '_menu_item_object_id', '75'),
(347, 89, '_menu_item_object', 'page'),
(348, 89, '_menu_item_target', ''),
(349, 89, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(350, 89, '_menu_item_xfn', ''),
(351, 89, '_menu_item_url', ''),
(352, 89, '_menu_item_orphaned', '1587842259'),
(353, 90, '_menu_item_type', 'post_type'),
(354, 90, '_menu_item_menu_item_parent', '0'),
(355, 90, '_menu_item_object_id', '21'),
(356, 90, '_menu_item_object', 'page'),
(357, 90, '_menu_item_target', ''),
(358, 90, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(359, 90, '_menu_item_xfn', ''),
(360, 90, '_menu_item_url', ''),
(361, 90, '_menu_item_orphaned', '1587842259'),
(362, 91, '_menu_item_type', 'post_type'),
(363, 91, '_menu_item_menu_item_parent', '0'),
(364, 91, '_menu_item_object_id', '46'),
(365, 91, '_menu_item_object', 'page'),
(366, 91, '_menu_item_target', ''),
(367, 91, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(368, 91, '_menu_item_xfn', ''),
(369, 91, '_menu_item_url', ''),
(370, 91, '_menu_item_orphaned', '1587842259'),
(371, 92, '_menu_item_type', 'post_type'),
(372, 92, '_menu_item_menu_item_parent', '0'),
(373, 92, '_menu_item_object_id', '86'),
(374, 92, '_menu_item_object', 'page'),
(375, 92, '_menu_item_target', ''),
(376, 92, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(377, 92, '_menu_item_xfn', ''),
(378, 92, '_menu_item_url', ''),
(379, 92, '_menu_item_orphaned', '1587842259'),
(380, 93, '_menu_item_type', 'post_type'),
(381, 93, '_menu_item_menu_item_parent', '0'),
(382, 93, '_menu_item_object_id', '49'),
(383, 93, '_menu_item_object', 'page'),
(384, 93, '_menu_item_target', ''),
(385, 93, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(386, 93, '_menu_item_xfn', ''),
(387, 93, '_menu_item_url', ''),
(388, 93, '_menu_item_orphaned', '1587842259'),
(389, 94, '_edit_last', '1'),
(390, 94, '_edit_lock', '1587842446:1'),
(391, 94, '_wp_page_template', 'default'),
(392, 96, '_edit_last', '1'),
(393, 96, '_edit_lock', '1587842638:1'),
(394, 96, '_yoast_wpseo_primary_category', '10'),
(397, 98, '_edit_last', '1'),
(398, 98, '_edit_lock', '1587842479:1'),
(399, 98, '_yoast_wpseo_primary_category', '10'),
(401, 96, '_wp_old_slug', 'produkt-1'),
(403, 100, '_edit_last', '1'),
(404, 100, '_edit_lock', '1587842654:1'),
(405, 100, '_yoast_wpseo_primary_category', '10'),
(406, 100, '_wp_old_slug', 'produkt-1'),
(410, 100, '_wp_old_slug', 'produkt-2-2'),
(411, 102, '_edit_last', '1'),
(412, 102, '_edit_lock', '1587842615:1'),
(413, 102, '_wp_page_template', 'default'),
(415, 105, '_edit_last', '1'),
(416, 105, '_edit_lock', '1587842809:1'),
(417, 105, '_yoast_wpseo_primary_category', '10'),
(418, 105, '_wp_old_slug', 'produkt-1'),
(419, 105, '_wp_old_slug', 'produkt-2-2'),
(423, 105, '_wp_old_slug', 'produkt-3-2'),
(425, 107, '_edit_last', '1'),
(426, 107, '_edit_lock', '1587842826:1'),
(427, 107, '_yoast_wpseo_primary_category', '10'),
(428, 107, '_wp_old_slug', 'produkt-1'),
(429, 107, '_wp_old_slug', 'produkt-2-2'),
(430, 107, '_wp_old_slug', 'produkt-3-2'),
(433, 107, '_wp_old_slug', 'usluga-1-2'),
(435, 109, '_edit_last', '1'),
(436, 109, '_edit_lock', '1587842839:1'),
(437, 109, '_yoast_wpseo_primary_category', '10'),
(438, 109, '_wp_old_slug', 'produkt-1'),
(439, 109, '_wp_old_slug', 'produkt-2-2'),
(440, 109, '_wp_old_slug', 'produkt-3-2'),
(441, 109, '_wp_old_slug', 'usluga-1-2'),
(442, 109, '_wp_old_slug', 'usluga-2-2'),
(443, 111, '_menu_item_type', 'post_type'),
(444, 111, '_menu_item_menu_item_parent', '0'),
(445, 111, '_menu_item_object_id', '11'),
(446, 111, '_menu_item_object', 'page'),
(447, 111, '_menu_item_target', ''),
(448, 111, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(449, 111, '_menu_item_xfn', ''),
(450, 111, '_menu_item_url', ''),
(451, 111, '_menu_item_orphaned', '1587843301'),
(452, 112, '_menu_item_type', 'post_type'),
(453, 112, '_menu_item_menu_item_parent', '0'),
(454, 112, '_menu_item_object_id', '75'),
(455, 112, '_menu_item_object', 'page'),
(456, 112, '_menu_item_target', ''),
(457, 112, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(458, 112, '_menu_item_xfn', ''),
(459, 112, '_menu_item_url', ''),
(461, 113, '_menu_item_type', 'post_type'),
(462, 113, '_menu_item_menu_item_parent', '0'),
(463, 113, '_menu_item_object_id', '21'),
(464, 113, '_menu_item_object', 'page'),
(465, 113, '_menu_item_target', ''),
(466, 113, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(467, 113, '_menu_item_xfn', ''),
(468, 113, '_menu_item_url', ''),
(470, 114, '_menu_item_type', 'post_type'),
(471, 114, '_menu_item_menu_item_parent', '0'),
(472, 114, '_menu_item_object_id', '46'),
(473, 114, '_menu_item_object', 'page'),
(474, 114, '_menu_item_target', ''),
(475, 114, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(476, 114, '_menu_item_xfn', ''),
(477, 114, '_menu_item_url', ''),
(488, 116, '_menu_item_type', 'post_type'),
(489, 116, '_menu_item_menu_item_parent', '0'),
(490, 116, '_menu_item_object_id', '49'),
(491, 116, '_menu_item_object', 'page'),
(492, 116, '_menu_item_target', ''),
(493, 116, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(494, 116, '_menu_item_xfn', ''),
(495, 116, '_menu_item_url', ''),
(497, 117, '_menu_item_type', 'post_type'),
(498, 117, '_menu_item_menu_item_parent', '0'),
(499, 117, '_menu_item_object_id', '94'),
(500, 117, '_menu_item_object', 'page'),
(501, 117, '_menu_item_target', ''),
(502, 117, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(503, 117, '_menu_item_xfn', ''),
(504, 117, '_menu_item_url', ''),
(506, 118, '_menu_item_type', 'post_type'),
(507, 118, '_menu_item_menu_item_parent', '0'),
(508, 118, '_menu_item_object_id', '102'),
(509, 118, '_menu_item_object', 'page'),
(510, 118, '_menu_item_target', ''),
(511, 118, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(512, 118, '_menu_item_xfn', ''),
(513, 118, '_menu_item_url', '');

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
(4, 1, '2020-04-19 17:26:53', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-04-19 17:26:53', '0000-00-00 00:00:00', '', 0, 'http://usyazh.loc/?p=4', 0, 'post', '', 0),
(6, 1, '2020-04-19 17:36:59', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-04-19 17:36:59', '0000-00-00 00:00:00', '', 0, 'http://usyazh.loc/?p=6', 0, 'post', '', 0),
(9, 1, '2020-04-19 18:11:15', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-04-19 18:11:15', '0000-00-00 00:00:00', '', 0, 'http://usyazh.loc/?page_id=9', 0, 'page', '', 0),
(11, 1, '2020-04-19 18:30:34', '2020-04-19 15:30:34', '', 'Главная', '', 'publish', 'closed', 'closed', '', 'glavnaja', '', '', '2020-04-25 22:10:47', '2020-04-25 19:10:47', '', 0, 'http://usyazh.loc/?page_id=11', 0, 'page', '', 0),
(12, 1, '2020-04-19 18:30:34', '2020-04-19 15:30:34', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2020-04-19 18:30:34', '2020-04-19 15:30:34', '', 11, 'http://usyazh.loc/2020/04/19/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2020-04-20 04:08:49', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-04-20 04:08:49', '0000-00-00 00:00:00', '', 0, 'http://usyazh.loc/?post_type=acf-field-group&p=13', 0, 'acf-field-group', '', 0),
(14, 1, '2020-04-20 04:12:03', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-04-20 04:12:03', '0000-00-00 00:00:00', '', 0, 'http://usyazh.loc/?post_type=acf-field-group&p=14', 0, 'acf-field-group', '', 0),
(15, 1, '2020-04-20 04:13:22', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-04-20 04:13:22', '0000-00-00 00:00:00', '', 0, 'http://usyazh.loc/?post_type=acf-field-group&p=15', 0, 'acf-field-group', '', 0),
(16, 1, '2020-04-20 04:15:28', '2020-04-20 01:15:28', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"site-settings\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Общие поля сайта', 'obshhie-polja-sajta', 'publish', 'closed', 'closed', '', 'group_5e9cf74b1db4c', '', '', '2020-04-25 23:37:18', '2020-04-25 20:37:18', '', 0, 'http://usyazh.loc/?post_type=acf-field-group&#038;p=16', 0, 'acf-field-group', '', 0),
(17, 1, '2020-04-20 04:15:28', '2020-04-20 01:15:28', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Телефоны (заказать звонок)', 'cf_phone_zakaz_list', 'publish', 'closed', 'closed', '', 'field_5e9cf76f52441', '', '', '2020-04-25 23:37:00', '2020-04-25 20:37:00', '', 16, 'http://usyazh.loc/?post_type=acf-field&#038;p=17', 1, 'acf-field', '', 0),
(18, 1, '2020-04-20 04:15:28', '2020-04-20 01:15:28', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Контактные данные', 'контактные_данные', 'publish', 'closed', 'closed', '', 'field_5e9cf78e52442', '', '', '2020-04-20 04:15:33', '2020-04-20 01:15:33', '', 16, 'http://usyazh.loc/?post_type=acf-field&#038;p=18', 0, 'acf-field', '', 0),
(19, 1, '2020-04-21 02:48:31', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-04-21 02:48:31', '0000-00-00 00:00:00', '', 0, 'http://usyazh.loc/?p=19', 1, 'nav_menu_item', '', 0),
(20, 1, '2020-04-21 02:56:48', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-04-21 02:56:48', '0000-00-00 00:00:00', '', 0, 'http://usyazh.loc/?p=20', 1, 'nav_menu_item', '', 0),
(21, 1, '2020-04-25 17:22:20', '2020-04-25 14:22:20', '', 'Компания', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2020-04-25 17:23:00', '2020-04-25 14:23:00', '', 0, 'http://usyazh.loc/?page_id=21', 0, 'page', '', 0),
(22, 1, '2020-04-25 17:22:20', '2020-04-25 14:22:20', '', 'Компания', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2020-04-25 17:22:20', '2020-04-25 14:22:20', '', 21, 'http://usyazh.loc/2020/04/25/21-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2020-04-25 17:24:16', '2020-04-25 14:24:16', '', 'Руководство', '', 'publish', 'open', 'open', '', 'rukovodstvo', '', '', '2020-04-25 17:28:38', '2020-04-25 14:28:38', '', 0, 'http://usyazh.loc/?p=23', 0, 'post', '', 0),
(24, 1, '2020-04-25 17:24:16', '2020-04-25 14:24:16', '', 'istoriya-razvitiya-predpriyatiya', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2020-04-25 17:24:16', '2020-04-25 14:24:16', '', 23, 'http://usyazh.loc/2020/04/25/23-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2020-04-25 17:25:17', '2020-04-25 14:25:17', '', 'Гимн', '', 'publish', 'open', 'open', '', 'gimn-oao-tbz-usyazh', '', '', '2020-04-25 17:36:27', '2020-04-25 14:36:27', '', 0, 'http://usyazh.loc/?p=25', 0, 'post', '', 0),
(26, 1, '2020-04-25 17:26:53', '2020-04-25 14:26:53', '', 'Гимн ОАО «ТБЗ Усяж»', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2020-04-25 17:26:53', '2020-04-25 14:26:53', '', 25, 'http://usyazh.loc/about/25-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2020-04-25 17:27:10', '2020-04-25 14:27:10', '', 'История', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2020-04-25 17:27:10', '2020-04-25 14:27:10', '', 23, 'http://usyazh.loc/about/23-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2020-04-25 17:27:28', '2020-04-25 14:27:28', '', 'День сегодняшний', '', 'publish', 'open', 'open', '', 'den-segodnyashnij', '', '', '2020-04-25 17:35:57', '2020-04-25 14:35:57', '', 0, 'http://usyazh.loc/about/istorija/', 0, 'post', '', 0),
(29, 1, '2020-04-25 17:28:00', '2020-04-25 14:28:00', '', 'День сегодняшний', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2020-04-25 17:28:00', '2020-04-25 14:28:00', '', 28, 'http://usyazh.loc/about/28-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2020-04-25 17:28:13', '2020-04-25 14:28:13', '', 'История', '', 'publish', 'open', 'open', '', 'istorija', '', '', '2020-04-25 17:36:14', '2020-04-25 14:36:14', '', 0, 'http://usyazh.loc/about/istorija/', 0, 'post', '', 0),
(31, 1, '2020-04-25 17:28:38', '2020-04-25 14:28:38', '', 'Руководство', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2020-04-25 17:28:38', '2020-04-25 14:28:38', '', 23, 'http://usyazh.loc/about/23-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2020-04-25 17:31:11', '2020-04-25 14:31:11', '', 'Доска почета', '', 'publish', 'open', 'open', '', 'doska-pocheta', '', '', '2020-04-25 17:31:28', '2020-04-25 14:31:28', '', 0, 'http://usyazh.loc/about/rukovodstvo-2/', 0, 'post', '', 0),
(33, 1, '2020-04-25 17:31:28', '2020-04-25 14:31:28', '', 'Доска почета', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2020-04-25 17:31:28', '2020-04-25 14:31:28', '', 32, 'http://usyazh.loc/about/32-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2020-04-25 17:33:32', '2020-04-25 14:33:32', '', 'История', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2020-04-25 17:33:32', '2020-04-25 14:33:32', '', 30, 'http://usyazh.loc/about/30-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2020-04-25 17:35:00', '2020-04-25 14:35:00', '', 'Вакансии', '', 'publish', 'open', 'open', '', 'vakansii', '', '', '2020-04-25 17:35:13', '2020-04-25 14:35:13', '', 0, 'http://usyazh.loc/about/rukovodstvo-2/', 0, 'post', '', 0),
(36, 1, '2020-04-25 17:35:13', '2020-04-25 14:35:13', '', 'Вакансии', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2020-04-25 17:35:13', '2020-04-25 14:35:13', '', 35, 'http://usyazh.loc/about/35-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2020-04-25 17:35:24', '2020-04-25 14:35:24', '', 'Пресса о нас', '', 'publish', 'open', 'open', '', 'pressa', '', '', '2020-04-25 17:35:42', '2020-04-25 14:35:42', '', 0, 'http://usyazh.loc/about/vakansii-2/', 0, 'post', '', 0),
(38, 1, '2020-04-25 17:35:42', '2020-04-25 14:35:42', '', 'Пресса о нас', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2020-04-25 17:35:42', '2020-04-25 14:35:42', '', 37, 'http://usyazh.loc/about/37-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2020-04-25 17:36:27', '2020-04-25 14:36:27', '', 'Гимн', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2020-04-25 17:36:27', '2020-04-25 14:36:27', '', 25, 'http://usyazh.loc/about/25-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2020-04-25 17:37:04', '2020-04-25 14:37:04', '', 'Финансовая деятельность', '', 'publish', 'open', 'open', '', 'finansovo-xozyajstvennaya-deyatelnost', '', '', '2020-04-25 17:37:19', '2020-04-25 14:37:19', '', 0, 'http://usyazh.loc/about/rukovodstvo-2/', 0, 'post', '', 0),
(41, 1, '2020-04-25 17:37:19', '2020-04-25 14:37:19', '', 'Финансовая деятельность', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2020-04-25 17:37:19', '2020-04-25 14:37:19', '', 40, 'http://usyazh.loc/about/40-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2020-04-25 17:37:39', '2020-04-25 14:37:39', '', 'Закупки. Аренда.', '', 'publish', 'open', 'open', '', 'zakupki-arenda', '', '', '2020-04-25 17:37:54', '2020-04-25 14:37:54', '', 0, 'http://usyazh.loc/about/finansovaja-dejatelnost/', 0, 'post', '', 0),
(43, 1, '2020-04-25 17:37:54', '2020-04-25 14:37:54', '', 'Закупки. Аренда.', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2020-04-25 17:37:54', '2020-04-25 14:37:54', '', 42, 'http://usyazh.loc/about/42-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2020-04-25 17:38:19', '2020-04-25 14:38:19', '', 'Партнеры', '', 'publish', 'open', 'open', '', 'partners', '', '', '2020-04-25 17:38:35', '2020-04-25 14:38:35', '', 0, 'http://usyazh.loc/about/rukovodstvo-2/', 0, 'post', '', 0),
(45, 1, '2020-04-25 17:38:35', '2020-04-25 14:38:35', '', 'Партнеры', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2020-04-25 17:38:35', '2020-04-25 14:38:35', '', 44, 'http://usyazh.loc/about/44-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2020-04-25 17:39:30', '2020-04-25 14:39:30', '', 'Контакты', '', 'publish', 'closed', 'closed', '', 'contacts', '', '', '2020-04-25 17:39:30', '2020-04-25 14:39:30', '', 0, 'http://usyazh.loc/?page_id=46', 0, 'page', '', 0),
(47, 1, '2020-04-25 17:39:22', '2020-04-25 14:39:22', '', 'Контакты', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2020-04-25 17:39:22', '2020-04-25 14:39:22', '', 46, 'http://usyazh.loc/about/46-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2020-04-25 17:39:57', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-04-25 17:39:57', '0000-00-00 00:00:00', '', 0, 'http://usyazh.loc/?page_id=48', 0, 'page', '', 0),
(49, 1, '2020-04-25 17:41:07', '2020-04-25 14:41:07', '', 'Общественная жизнь', '', 'publish', 'closed', 'closed', '', 'obsh-zhizn', '', '', '2020-04-25 17:41:39', '2020-04-25 14:41:39', '', 0, 'http://usyazh.loc/?page_id=49', 0, 'page', '', 0),
(50, 1, '2020-04-25 17:41:07', '2020-04-25 14:41:07', '', 'Общественная жизнь', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2020-04-25 17:41:07', '2020-04-25 14:41:07', '', 49, 'http://usyazh.loc/about/49-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2020-04-25 17:41:53', '2020-04-25 14:41:53', '', 'Общие мероприятия', '', 'publish', 'open', 'open', '', 'vse-meropriyatiya', '', '', '2020-04-25 17:49:12', '2020-04-25 14:49:12', '', 0, 'http://usyazh.loc/about/partnery/', 0, 'post', '', 0),
(52, 1, '2020-04-25 17:43:00', '2020-04-25 14:43:00', '', 'Общие мероприятия', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2020-04-25 17:43:00', '2020-04-25 14:43:00', '', 51, 'http://usyazh.loc/about/51-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2020-04-25 17:54:09', '2020-04-25 14:54:09', '', 'Мероприятие', '', 'publish', 'open', 'open', '', 'meroprijatie', '', '', '2020-04-25 17:59:15', '2020-04-25 14:59:15', '', 0, 'http://usyazh.loc/about/obshhie-meroprijatija/', 0, 'post', '', 0),
(54, 1, '2020-04-25 17:54:52', '2020-04-25 14:54:52', '', 'Мероприятие', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2020-04-25 17:54:52', '2020-04-25 14:54:52', '', 53, 'http://usyazh.loc/about/53-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2020-04-25 18:03:31', '2020-04-25 15:03:31', '', 'Идеологическая работа (Архив)', '', 'publish', 'open', 'open', '', 'ideologicheskaya-rabota', '', '', '2020-04-25 18:32:59', '2020-04-25 15:32:59', '', 0, 'http://usyazh.loc/about/obshhie-meroprijatija/', 0, 'post', '', 0),
(56, 1, '2020-04-25 18:04:02', '2020-04-25 15:04:02', '', 'Идеологическая работа', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2020-04-25 18:04:02', '2020-04-25 15:04:02', '', 55, 'http://usyazh.loc/about/55-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2020-04-25 18:05:54', '2020-04-25 15:05:54', '', 'Идеологическое мероприятие', '', 'publish', 'open', 'open', '', 'ideologicheskoe-meropriyatie', '', '', '2020-04-25 18:11:28', '2020-04-25 15:11:28', '', 0, 'http://usyazh.loc/about/ideologicheskaja-rabota/', 0, 'post', '', 0),
(58, 1, '2020-04-25 18:06:25', '2020-04-25 15:06:25', '', 'Идеологическое мероприятие', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2020-04-25 18:06:25', '2020-04-25 15:06:25', '', 57, 'http://usyazh.loc/about/57-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2020-04-25 18:13:06', '2020-04-25 15:13:06', '', 'Профсоюзы (Архив)', '', 'publish', 'open', 'open', '', 'profkom', '', '', '2020-04-25 18:32:30', '2020-04-25 15:32:30', '', 0, 'http://usyazh.loc/about/ideologicheskaja-rabota/', 0, 'post', '', 0),
(60, 1, '2020-04-25 18:13:51', '2020-04-25 15:13:51', '', 'Профсоюзы', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2020-04-25 18:13:51', '2020-04-25 15:13:51', '', 59, 'http://usyazh.loc/about/59-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2020-04-25 18:15:22', '2020-04-25 15:15:22', '', 'Профсоюзный актив', '', 'publish', 'open', 'open', '', 'aktiv', '', '', '2020-04-25 18:17:12', '2020-04-25 15:17:12', '', 0, 'http://usyazh.loc/about/profsojuzy/', 0, 'post', '', 0),
(62, 1, '2020-04-25 18:16:06', '2020-04-25 15:16:06', '', 'Профсоюзы', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2020-04-25 18:16:06', '2020-04-25 15:16:06', '', 61, 'http://usyazh.loc/about/61-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2020-04-25 18:16:59', '2020-04-25 15:16:59', '', 'Профсоюзный актив', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2020-04-25 18:16:59', '2020-04-25 15:16:59', '', 61, 'http://usyazh.loc/about/61-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2020-04-25 18:17:36', '2020-04-25 15:17:36', '', 'План работы', '', 'publish', 'open', 'open', '', 'plany-raboty', '', '', '2020-04-25 18:18:03', '2020-04-25 15:18:03', '', 0, 'http://usyazh.loc/about/profsojuznyj-aktiv/', 0, 'post', '', 0),
(65, 1, '2020-04-25 18:18:03', '2020-04-25 15:18:03', '', 'План работы', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2020-04-25 18:18:03', '2020-04-25 15:18:03', '', 64, 'http://usyazh.loc/about/64-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2020-04-25 18:18:16', '2020-04-25 15:18:16', '', 'Профсоюзное мероприятие', '', 'publish', 'open', 'open', '', 'profsoyznoe_meropriyatie', '', '', '2020-04-25 18:28:18', '2020-04-25 15:28:18', '', 0, 'http://usyazh.loc/about/plan-raboty/', 0, 'post', '', 0),
(67, 1, '2020-04-25 18:18:39', '2020-04-25 15:18:39', '', 'План работы', '', 'trash', 'open', 'open', '', 'plan-raboty-2__trashed', '', '', '2020-04-25 18:18:45', '2020-04-25 15:18:45', '', 0, 'http://usyazh.loc/about/plan-raboty-2/', 0, 'post', '', 0),
(68, 1, '2020-04-25 18:18:45', '2020-04-25 15:18:45', '', 'План работы', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2020-04-25 18:18:45', '2020-04-25 15:18:45', '', 67, 'http://usyazh.loc/about/67-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2020-04-25 18:26:51', '2020-04-25 15:26:51', '', 'Профсоюзное мероприятие', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2020-04-25 18:26:51', '2020-04-25 15:26:51', '', 66, 'http://usyazh.loc/about/66-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2020-04-25 18:30:37', '2020-04-25 15:30:37', '', 'Профсоюзные мероприятия (Архив)', '', 'publish', 'open', 'open', '', 'profsoyznye-meropriyatiya', '', '', '2020-04-25 18:32:12', '2020-04-25 15:32:12', '', 0, 'http://usyazh.loc/?p=70', 0, 'post', '', 0),
(71, 1, '2020-04-25 18:30:37', '2020-04-25 15:30:37', '', 'Профсоюзные мероприятия', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2020-04-25 18:30:37', '2020-04-25 15:30:37', '', 70, 'http://usyazh.loc/about/70-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2020-04-25 18:32:12', '2020-04-25 15:32:12', '', 'Профсоюзные мероприятия (Архив)', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2020-04-25 18:32:12', '2020-04-25 15:32:12', '', 70, 'http://usyazh.loc/about/70-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2020-04-25 18:32:30', '2020-04-25 15:32:30', '', 'Профсоюзы (Архив)', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2020-04-25 18:32:30', '2020-04-25 15:32:30', '', 59, 'http://usyazh.loc/about/59-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2020-04-25 18:32:59', '2020-04-25 15:32:59', '', 'Идеологическая работа (Архив)', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2020-04-25 18:32:59', '2020-04-25 15:32:59', '', 55, 'http://usyazh.loc/about/55-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2020-04-25 18:36:36', '2020-04-25 15:36:36', '', 'Борьба с коррупцией', '', 'publish', 'closed', 'closed', '', 'borba-s-korrupciej', '', '', '2020-04-25 18:36:36', '2020-04-25 15:36:36', '', 0, 'http://usyazh.loc/?page_id=75', 0, 'page', '', 0),
(76, 1, '2020-04-25 18:36:16', '2020-04-25 15:36:16', '', 'borba-s-korrypciej', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2020-04-25 18:36:16', '2020-04-25 15:36:16', '', 75, 'http://usyazh.loc/about/75-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2020-04-25 18:36:36', '2020-04-25 15:36:36', '', 'Борьба с коррупцией', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2020-04-25 18:36:36', '2020-04-25 15:36:36', '', 75, 'http://usyazh.loc/about/75-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2020-04-25 18:40:33', '2020-04-25 15:40:33', '', 'Нормативные документы', '', 'publish', 'open', 'open', '', 'normativnye-dokumenty', '', '', '2020-04-25 18:41:08', '2020-04-25 15:41:08', '', 0, 'http://usyazh.loc/?p=78', 0, 'post', '', 0),
(79, 1, '2020-04-25 18:40:33', '2020-04-25 15:40:33', '', 'Профсоюзные документы', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2020-04-25 18:40:33', '2020-04-25 15:40:33', '', 78, 'http://usyazh.loc/about/78-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2020-04-25 18:41:08', '2020-04-25 15:41:08', '', 'Нормативные документы', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2020-04-25 18:41:08', '2020-04-25 15:41:08', '', 78, 'http://usyazh.loc/about/78-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2020-04-25 18:41:12', '2020-04-25 15:41:12', '', 'Нормативные документы', '', 'inherit', 'closed', 'closed', '', '78-autosave-v1', '', '', '2020-04-25 18:41:12', '2020-04-25 15:41:12', '', 78, 'http://usyazh.loc/about/78-autosave-v1/', 0, 'revision', '', 0),
(82, 1, '2020-04-25 18:41:28', '2020-04-25 15:41:28', '', 'Горячая линия', '', 'publish', 'open', 'open', '', 'gorjachaja-linija', '', '', '2020-04-25 18:42:02', '2020-04-25 15:42:02', '', 0, 'http://usyazh.loc/about/normativnye-dokumenty-2/', 0, 'post', '', 0),
(83, 1, '2020-04-25 18:42:02', '2020-04-25 15:42:02', '', 'Горячая линия', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2020-04-25 18:42:02', '2020-04-25 15:42:02', '', 82, 'http://usyazh.loc/about/82-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2020-04-25 18:42:10', '2020-04-25 15:42:10', '', 'Коммисия по профилактики коррупции', '', 'publish', 'open', 'open', '', 'kommisija-po-profilaktiki-korrupcii', '', '', '2020-04-25 18:42:27', '2020-04-25 15:42:27', '', 0, 'http://usyazh.loc/about/gorjachaja-linija-2/', 0, 'post', '', 0),
(85, 1, '2020-04-25 18:42:27', '2020-04-25 15:42:27', '', 'Коммисия по профилактики коррупции', '', 'inherit', 'closed', 'closed', '', '84-revision-v1', '', '', '2020-04-25 18:42:27', '2020-04-25 15:42:27', '', 84, 'http://usyazh.loc/about/84-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2020-04-25 18:42:55', '2020-04-25 15:42:55', '', 'Обращения граждан', '', 'publish', 'closed', 'closed', '', 'obrashhenija-grazhdan', '', '', '2020-04-25 18:42:55', '2020-04-25 15:42:55', '', 0, 'http://usyazh.loc/?page_id=86', 0, 'page', '', 0),
(87, 1, '2020-04-25 18:42:55', '2020-04-25 15:42:55', '', 'Обращения граждан', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2020-04-25 18:42:55', '2020-04-25 15:42:55', '', 86, 'http://usyazh.loc/about/86-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2020-04-25 22:17:39', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-04-25 22:17:39', '0000-00-00 00:00:00', '', 0, 'http://usyazh.loc/?p=88', 1, 'nav_menu_item', '', 0),
(89, 1, '2020-04-25 22:17:39', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-04-25 22:17:39', '0000-00-00 00:00:00', '', 0, 'http://usyazh.loc/?p=89', 1, 'nav_menu_item', '', 0),
(90, 1, '2020-04-25 22:17:39', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-04-25 22:17:39', '0000-00-00 00:00:00', '', 0, 'http://usyazh.loc/?p=90', 1, 'nav_menu_item', '', 0),
(91, 1, '2020-04-25 22:17:39', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-04-25 22:17:39', '0000-00-00 00:00:00', '', 0, 'http://usyazh.loc/?p=91', 1, 'nav_menu_item', '', 0),
(92, 1, '2020-04-25 22:17:39', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-04-25 22:17:39', '0000-00-00 00:00:00', '', 0, 'http://usyazh.loc/?p=92', 1, 'nav_menu_item', '', 0),
(93, 1, '2020-04-25 22:17:39', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-04-25 22:17:39', '0000-00-00 00:00:00', '', 0, 'http://usyazh.loc/?p=93', 1, 'nav_menu_item', '', 0),
(94, 1, '2020-04-25 22:23:06', '2020-04-25 19:23:06', '', 'Продукция', '', 'publish', 'closed', 'closed', '', 'produkcija', '', '', '2020-04-25 22:23:06', '2020-04-25 19:23:06', '', 0, 'http://usyazh.loc/?page_id=94', 0, 'page', '', 0),
(95, 1, '2020-04-25 22:20:49', '2020-04-25 19:20:49', '', 'Продукция', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2020-04-25 22:20:49', '2020-04-25 19:20:49', '', 94, 'http://usyazh.loc/about/94-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2020-04-25 22:23:39', '2020-04-25 19:23:39', '', 'Продукт 2', '', 'publish', 'open', 'open', '', 'produkt-2', '', '', '2020-04-25 22:23:58', '2020-04-25 19:23:58', '', 0, 'http://usyazh.loc/?p=96', 0, 'post', '', 0),
(97, 1, '2020-04-25 22:23:34', '2020-04-25 19:23:34', '', 'Продукт 1', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2020-04-25 22:23:34', '2020-04-25 19:23:34', '', 96, 'http://usyazh.loc/about/96-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2020-04-25 22:23:48', '2020-04-25 19:23:48', '', 'Продукт 1', '', 'publish', 'open', 'open', '', 'produkt-1-2', '', '', '2020-04-25 22:23:48', '2020-04-25 19:23:48', '', 0, 'http://usyazh.loc/about/produkt-1-2/', 0, 'post', '', 0),
(99, 1, '2020-04-25 22:23:58', '2020-04-25 19:23:58', '', 'Продукт 2', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2020-04-25 22:23:58', '2020-04-25 19:23:58', '', 96, 'http://usyazh.loc/about/96-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2020-04-25 22:24:01', '2020-04-25 19:24:01', '', 'Продукт 3', '', 'publish', 'open', 'open', '', 'produkt-3', '', '', '2020-04-25 22:24:13', '2020-04-25 19:24:13', '', 0, 'http://usyazh.loc/about/produkt-2-2/', 0, 'post', '', 0),
(101, 1, '2020-04-25 22:24:13', '2020-04-25 19:24:13', '', 'Продукт 3', '', 'inherit', 'closed', 'closed', '', '100-revision-v1', '', '', '2020-04-25 22:24:13', '2020-04-25 19:24:13', '', 100, 'http://usyazh.loc/about/100-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2020-04-25 22:25:51', '2020-04-25 19:25:51', '', 'Услуги', '', 'publish', 'closed', 'closed', '', 'uslugi', '', '', '2020-04-25 22:25:51', '2020-04-25 19:25:51', '', 0, 'http://usyazh.loc/?page_id=102', 0, 'page', '', 0),
(103, 1, '2020-04-25 22:25:51', '2020-04-25 19:25:51', '', 'Услуги', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2020-04-25 22:25:51', '2020-04-25 19:25:51', '', 102, 'http://usyazh.loc/about/102-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2020-04-25 22:26:01', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-04-25 22:26:01', '0000-00-00 00:00:00', '', 0, 'http://usyazh.loc/?p=104', 0, 'post', '', 0),
(105, 1, '2020-04-25 22:26:29', '2020-04-25 19:26:29', '', 'Услуга 1', '', 'publish', 'open', 'open', '', 'usluga-1', '', '', '2020-04-25 22:26:49', '2020-04-25 19:26:49', '', 0, 'http://usyazh.loc/about/produkt-3-2/', 0, 'post', '', 0),
(106, 1, '2020-04-25 22:26:49', '2020-04-25 19:26:49', '', 'Услуга 1', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2020-04-25 22:26:49', '2020-04-25 19:26:49', '', 105, 'http://usyazh.loc/about/105-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2020-04-25 22:26:53', '2020-04-25 19:26:53', '', 'Услуга 2', '', 'publish', 'open', 'open', '', 'usluga-2', '', '', '2020-04-25 22:27:06', '2020-04-25 19:27:06', '', 0, 'http://usyazh.loc/about/usluga-1-2/', 0, 'post', '', 0),
(108, 1, '2020-04-25 22:27:06', '2020-04-25 19:27:06', '', 'Услуга 2', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2020-04-25 22:27:06', '2020-04-25 19:27:06', '', 107, 'http://usyazh.loc/about/107-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2020-04-25 22:27:09', '2020-04-25 19:27:09', '', 'Услуга 3', '', 'publish', 'open', 'open', '', 'usluga-3', '', '', '2020-04-25 22:27:19', '2020-04-25 19:27:19', '', 0, 'http://usyazh.loc/about/usluga-2-2/', 0, 'post', '', 0),
(110, 1, '2020-04-25 22:27:19', '2020-04-25 19:27:19', '', 'Услуга 3', '', 'inherit', 'closed', 'closed', '', '109-revision-v1', '', '', '2020-04-25 22:27:19', '2020-04-25 19:27:19', '', 109, 'http://usyazh.loc/about/109-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2020-04-25 22:35:01', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-04-25 22:35:01', '0000-00-00 00:00:00', '', 0, 'http://usyazh.loc/?p=111', 1, 'nav_menu_item', '', 0),
(112, 1, '2020-04-25 22:36:12', '2020-04-25 19:36:12', ' ', '', '', 'publish', 'closed', 'closed', '', '112', '', '', '2020-04-26 01:11:48', '2020-04-25 22:11:48', '', 0, 'http://usyazh.loc/?p=112', 6, 'nav_menu_item', '', 0),
(113, 1, '2020-04-25 22:36:12', '2020-04-25 19:36:12', ' ', '', '', 'publish', 'closed', 'closed', '', '113', '', '', '2020-04-26 01:11:48', '2020-04-25 22:11:48', '', 0, 'http://usyazh.loc/?p=113', 3, 'nav_menu_item', '', 0),
(114, 1, '2020-04-25 22:36:12', '2020-04-25 19:36:12', ' ', '', '', 'publish', 'closed', 'closed', '', '114', '', '', '2020-04-26 01:11:48', '2020-04-25 22:11:48', '', 0, 'http://usyazh.loc/?p=114', 4, 'nav_menu_item', '', 0),
(116, 1, '2020-04-25 22:36:12', '2020-04-25 19:36:12', ' ', '', '', 'publish', 'closed', 'closed', '', '116', '', '', '2020-04-26 01:11:48', '2020-04-25 22:11:48', '', 0, 'http://usyazh.loc/?p=116', 5, 'nav_menu_item', '', 0),
(117, 1, '2020-04-25 22:36:12', '2020-04-25 19:36:12', ' ', '', '', 'publish', 'closed', 'closed', '', '117', '', '', '2020-04-26 01:11:48', '2020-04-25 22:11:48', '', 0, 'http://usyazh.loc/?p=117', 1, 'nav_menu_item', '', 0),
(118, 1, '2020-04-25 22:36:12', '2020-04-25 19:36:12', ' ', '', '', 'publish', 'closed', 'closed', '', '118', '', '', '2020-04-26 01:11:48', '2020-04-25 22:11:48', '', 0, 'http://usyazh.loc/?p=118', 2, 'nav_menu_item', '', 0),
(119, 1, '2020-04-25 22:51:27', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-04-25 22:51:27', '0000-00-00 00:00:00', '', 0, 'http://usyazh.loc/?post_type=acf-field-group&p=119', 0, 'acf-field-group', '', 0),
(120, 1, '2020-04-25 22:51:32', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-04-25 22:51:32', '0000-00-00 00:00:00', '', 0, 'http://usyazh.loc/?post_type=acf-field-group&p=120', 0, 'acf-field-group', '', 0),
(121, 1, '2020-04-25 22:52:42', '2020-04-25 19:52:42', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Логотипы и подписи', 'логотипы_и_подписи', 'publish', 'closed', 'closed', '', 'field_5ea494d20780a', '', '', '2020-04-25 22:52:42', '2020-04-25 19:52:42', '', 16, 'http://usyazh.loc/?post_type=acf-field&p=121', 2, 'acf-field', '', 0),
(122, 1, '2020-04-25 22:52:42', '2020-04-25 19:52:42', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Главный логотип', 'main_logo', 'publish', 'closed', 'closed', '', 'field_5ea494e70780b', '', '', '2020-04-25 23:34:36', '2020-04-25 20:34:36', '', 16, 'http://usyazh.loc/?post_type=acf-field&#038;p=122', 3, 'acf-field', '', 0),
(123, 1, '2020-04-25 23:37:00', '2020-04-25 20:37:00', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Телефон для вывода', 'phone_visible', 'publish', 'closed', 'closed', '', 'field_5ea49f34c3b15', '', '', '2020-04-25 23:37:00', '2020-04-25 20:37:00', '', 17, 'http://usyazh.loc/?post_type=acf-field&p=123', 0, 'acf-field', '', 0),
(124, 1, '2020-04-25 23:37:00', '2020-04-25 20:37:00', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Телефон для ссылки', 'phone_invisible', 'publish', 'closed', 'closed', '', 'field_5ea49f42c3b16', '', '', '2020-04-25 23:37:00', '2020-04-25 20:37:00', '', 17, 'http://usyazh.loc/?post_type=acf-field&p=124', 1, 'acf-field', '', 0);

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
(1, 'Компания', 'about', 0),
(2, 'Общественная жизнь', 'obsh-zhizn', 0),
(3, 'Обычное мероприятие', 'vse-meropriyatiya', 0),
(6, 'Идеологическое мероприятие', 'ideolog-meropriyat', 0),
(7, 'Профсоюз', 'profsoyz', 0),
(8, 'Профсоюзное мероприятие', 'profsoyznye-meropriyatiya', 0),
(9, 'Борьба с коррупцией', 'borba-s-korrypciej', 0),
(10, 'Продукция', 'produkcija', 0),
(11, 'Услуги', 'uslugi', 0),
(12, 'Menu 1', 'menu-1', 0);

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
(23, 1, 0),
(25, 1, 0),
(28, 1, 0),
(30, 1, 0),
(32, 1, 0),
(35, 1, 0),
(37, 1, 0),
(40, 1, 0),
(42, 1, 0),
(44, 1, 0),
(51, 2, 0),
(53, 3, 0),
(55, 2, 0),
(57, 6, 0),
(59, 2, 0),
(61, 7, 0),
(64, 7, 0),
(66, 8, 0),
(67, 7, 0),
(70, 7, 0),
(78, 9, 0),
(82, 9, 0),
(84, 9, 0),
(96, 10, 0),
(98, 10, 0),
(100, 10, 0),
(105, 11, 0),
(107, 11, 0),
(109, 11, 0),
(112, 12, 0),
(113, 12, 0),
(114, 12, 0),
(116, 12, 0),
(117, 12, 0),
(118, 12, 0);

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
(1, 1, 'category', '', 0, 10),
(2, 2, 'category', '', 0, 3),
(3, 3, 'category', '', 2, 1),
(6, 6, 'category', '', 2, 1),
(7, 7, 'category', '', 2, 3),
(8, 8, 'category', '', 7, 1),
(9, 9, 'category', '', 0, 3),
(10, 10, 'category', '', 0, 3),
(11, 11, 'category', '', 0, 3),
(12, 12, 'nav_menu', '', 0, 6);

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
(1, 1, 'nickname', 'admin'),
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
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"155a384e913928c0d31b923dcd8b6b03ea66afd37740d880d37e6365aade1ed4\";a:4:{s:10:\"expiration\";i:1588516011;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36\";s:5:\"login\";i:1587306411;}s:64:\"faba3e2512fbc97efd518ead0b25cdb357e2660f1356e0e38c45138adb2c5745\";a:4:{s:10:\"expiration\";i:1589033678;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1587824078;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:41:\"dashboard_site_health,dashboard_right_now\";s:4:\"side\";s:21:\"dashboard_quick_press\";s:7:\"column3\";s:18:\"dashboard_activity\";s:7:\"column4\";s:17:\"dashboard_primary\";}'),
(20, 1, 'closedpostboxes_dashboard', 'a:4:{i:0;s:21:\"dashboard_site_health\";i:1;s:21:\"dashboard_quick_press\";i:2;s:18:\"dashboard_activity\";i:3;s:17:\"dashboard_primary\";}'),
(21, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(22, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(24, 1, 'wp_yoast_notifications', 'a:1:{i:0;a:2:{s:7:\"message\";s:391:\"<strong>Серьёзная проблема для SEO: Вы блокируете доступ для поисковых роботов.</strong> Вы должны <a href=\"http://usyazh.loc/wp-admin/options-reading.php\">зайти в Настройки чтения</a> и убрать галочку рядом с пунктом \"Видимость для поисковых систем\".\";s:7:\"options\";a:10:{s:4:\"type\";s:5:\"error\";s:2:\"id\";s:32:\"wpseo-dismiss-blog-public-notice\";s:4:\"user\";O:7:\"WP_User\":8:{s:4:\"data\";O:8:\"stdClass\":10:{s:2:\"ID\";s:1:\"1\";s:10:\"user_login\";s:5:\"admin\";s:9:\"user_pass\";s:34:\"$P$B53P28KH4CpAXu6UQFKPXCqbChSFSi1\";s:13:\"user_nicename\";s:5:\"admin\";s:10:\"user_email\";s:14:\"admin@admin.ru\";s:8:\"user_url\";s:17:\"http://usyazh.loc\";s:15:\"user_registered\";s:19:\"2020-04-19 14:26:35\";s:19:\"user_activation_key\";s:0:\"\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:5:\"admin\";}s:2:\"ID\";i:1;s:4:\"caps\";a:1:{s:13:\"administrator\";b:1;}s:7:\"cap_key\";s:15:\"wp_capabilities\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:7:\"allcaps\";a:63:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;s:13:\"administrator\";b:1;}s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;}s:5:\"nonce\";N;s:8:\"priority\";i:1;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}'),
(25, 1, 'wp_wpseo-dismiss-blog-public-notice', 'seen'),
(26, 1, '_yoast_wpseo_profile_updated', '1587829510'),
(27, 1, 'nav_menu_recently_edited', '12');

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
(1, 'admin', '$P$B53P28KH4CpAXu6UQFKPXCqbChSFSi1', 'admin', 'admin@admin.ru', 'http://usyazh.loc', '2020-04-19 14:26:35', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_seo_links`
--

CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `target_post_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_seo_meta`
--

CREATE TABLE `wp_yoast_seo_meta` (
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `internal_link_count` int(10) UNSIGNED DEFAULT NULL,
  `incoming_link_count` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_yoast_seo_meta`
--

INSERT INTO `wp_yoast_seo_meta` (`object_id`, `internal_link_count`, `incoming_link_count`) VALUES
(11, 0, 0),
(21, 0, 0),
(23, 0, 0),
(25, 0, 0),
(28, 0, 0),
(30, 0, 0),
(32, 0, 0),
(35, 0, 0),
(37, 0, 0),
(40, 0, 0),
(42, 0, 0),
(44, 0, 0),
(46, 0, 0),
(49, 0, 0),
(51, 0, 0),
(53, 0, 0),
(55, 0, 0),
(57, 0, 0),
(59, 0, 0),
(61, 0, 0),
(64, 0, 0),
(66, 0, 0),
(67, 0, 0),
(70, 0, 0),
(75, 0, 0),
(78, 0, 0),
(82, 0, 0),
(84, 0, 0),
(86, 0, 0),
(94, 0, 0),
(96, 0, 0),
(98, 0, 0),
(100, 0, 0),
(102, 0, 0),
(105, 0, 0),
(107, 0, 0),
(109, 0, 0),
(115, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_alm`
--
ALTER TABLE `wp_alm`
  ADD UNIQUE KEY `id` (`id`);

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
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

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
-- Indexes for table `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`);

--
-- Indexes for table `wp_yoast_seo_meta`
--
ALTER TABLE `wp_yoast_seo_meta`
  ADD UNIQUE KEY `object_id` (`object_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_alm`
--
ALTER TABLE `wp_alm`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=484;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=514;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
