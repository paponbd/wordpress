-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2018 at 05:21 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wp`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_commentmeta`
--

INSERT INTO `wp_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 2, 'akismet_result', 'false'),
(2, 2, 'akismet_history', ''),
(3, 2, 'akismet_history', ''),
(4, 3, 'akismet_result', 'false'),
(5, 3, 'akismet_history', ''),
(6, 4, 'akismet_result', 'false'),
(7, 4, 'akismet_history', ''),
(8, 5, 'akismet_result', 'false'),
(9, 5, 'akismet_history', ''),
(10, 6, 'akismet_result', 'false'),
(11, 6, 'akismet_history', ''),
(12, 7, 'akismet_result', 'false'),
(13, 7, 'akismet_history', ''),
(14, 8, 'akismet_result', 'false'),
(15, 8, 'akismet_history', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(2, 19, 'papon', 'papon@yahoo.com', 'http://www.php.com', '::1', '2018-03-19 14:14:43', '2018-03-19 08:14:43', 'This is a test comment...', 0, '1', '', '', 0, 0),
(3, 78, 'admin', 'paponbd2016@gmail.com', '', '::1', '2018-03-18 16:25:18', '2018-03-18 10:25:18', 'This is great...', 0, '1', '', '', 0, 1),
(4, 78, 'admin', 'paponbd2016@gmail.com', '', '::1', '2018-03-18 16:25:51', '2018-03-18 10:25:51', 'dffdf', 0, '1', '', '', 0, 1),
(5, 78, 'admin', 'paponbd2016@gmail.com', '', '::1', '2018-03-18 16:25:56', '2018-03-18 10:25:56', 'dffdfd', 0, '1', '', '', 0, 1),
(6, 78, 'admin', 'paponbd2016@gmail.com', '', '::1', '2018-03-18 15:34:26', '2018-03-18 09:34:26', 'xcxcxcxcxc', 0, '1', '', '', 0, 1),
(7, 78, 'admin', 'paponbd2016@gmail.com', '', '::1', '2018-03-18 15:40:38', '2018-03-18 09:40:38', 'ইউএস বাংলা এয়ারলাইন্সের প্রধান নির্বাহী কর্মকর্তা ইমরান আসিফ আজ প্রথম আলোকে বলেন, ‘কাঠমান্ডু বিমানবন্দরে বিমান বিধ্বস্ত হওয়ার খবর', 0, '1', '', '', 3, 1),
(8, 78, 'admin', 'paponbd2016@gmail.com', '', '::1', '2018-03-18 15:41:15', '2018-03-18 09:41:15', 'ঢাকা', 0, '1', '', '', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_duplicator_packages`
--

CREATE TABLE `wp_duplicator_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `hash` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner` varchar(60) NOT NULL,
  `package` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/mywork/wordpress_project', 'yes'),
(2, 'home', 'http://localhost/mywork/wordpress_project', 'yes'),
(3, 'blogname', 'Wordpress Project', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'paponbd2016@gmail.com', 'yes'),
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
(22, 'posts_per_page', '5', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:158:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:38:\"blog_title/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"blog_title/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"blog_title/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"blog_title/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"blog_title/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"blog_title/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"blog_title/([^/]+)/embed/?$\";s:43:\"index.php?blog_title=$matches[1]&embed=true\";s:31:\"blog_title/([^/]+)/trackback/?$\";s:37:\"index.php?blog_title=$matches[1]&tb=1\";s:39:\"blog_title/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?blog_title=$matches[1]&paged=$matches[2]\";s:46:\"blog_title/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?blog_title=$matches[1]&cpage=$matches[2]\";s:35:\"blog_title/([^/]+)(?:/([0-9]+))?/?$\";s:49:\"index.php?blog_title=$matches[1]&page=$matches[2]\";s:27:\"blog_title/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"blog_title/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"blog_title/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"blog_title/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"blog_title/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"blog_title/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"wp_slider/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"wp_slider/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"wp_slider/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"wp_slider/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"wp_slider/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"wp_slider/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"wp_slider/([^/]+)/embed/?$\";s:42:\"index.php?wp_slider=$matches[1]&embed=true\";s:30:\"wp_slider/([^/]+)/trackback/?$\";s:36:\"index.php?wp_slider=$matches[1]&tb=1\";s:38:\"wp_slider/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?wp_slider=$matches[1]&paged=$matches[2]\";s:45:\"wp_slider/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?wp_slider=$matches[1]&cpage=$matches[2]\";s:34:\"wp_slider/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?wp_slider=$matches[1]&page=$matches[2]\";s:26:\"wp_slider/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"wp_slider/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"wp_slider/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"wp_slider/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"wp_slider/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"wp_slider/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"wp_feature/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"wp_feature/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"wp_feature/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"wp_feature/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"wp_feature/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"wp_feature/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"wp_feature/([^/]+)/embed/?$\";s:43:\"index.php?wp_feature=$matches[1]&embed=true\";s:31:\"wp_feature/([^/]+)/trackback/?$\";s:37:\"index.php?wp_feature=$matches[1]&tb=1\";s:39:\"wp_feature/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?wp_feature=$matches[1]&paged=$matches[2]\";s:46:\"wp_feature/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?wp_feature=$matches[1]&cpage=$matches[2]\";s:35:\"wp_feature/([^/]+)(?:/([0-9]+))?/?$\";s:49:\"index.php?wp_feature=$matches[1]&page=$matches[2]\";s:27:\"wp_feature/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"wp_feature/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"wp_feature/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"wp_feature/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"wp_feature/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"wp_feature/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"wp_works/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"wp_works/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"wp_works/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"wp_works/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"wp_works/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"wp_works/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"wp_works/([^/]+)/embed/?$\";s:41:\"index.php?wp_works=$matches[1]&embed=true\";s:29:\"wp_works/([^/]+)/trackback/?$\";s:35:\"index.php?wp_works=$matches[1]&tb=1\";s:37:\"wp_works/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?wp_works=$matches[1]&paged=$matches[2]\";s:44:\"wp_works/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?wp_works=$matches[1]&cpage=$matches[2]\";s:33:\"wp_works/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?wp_works=$matches[1]&page=$matches[2]\";s:25:\"wp_works/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"wp_works/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"wp_works/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"wp_works/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"wp_works/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"wp_works/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=6&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:36:\"contact-form-7/wp-contact-form-7.php\";i:1;s:25:\"duplicator/duplicator.php\";i:2;s:33:\"flickr_gallery/flickr_gallery.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'simple_wordpress', 'yes'),
(41, 'stylesheet', 'simple_wordpress', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '', 'yes'),
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
(63, 'avatar_default', 'gravatar_default', 'yes'),
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
(78, 'widget_categories', 'a:3:{i:2;a:4:{s:5:\"title\";s:15:\"Blog Categories\";s:5:\"count\";i:1;s:12:\"hierarchical\";i:1;s:8:\"dropdown\";i:0;}i:3;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:6:{i:1;a:0:{}i:5;a:4:{s:5:\"title\";s:7:\"Company\";s:4:\"text\";s:232:\"<a href=\"http://www.facebook.com\" target=\"_blank\" rel=\"noopener\">About us</a>\r\n<a href=\"http://www.facebook.com\">We are hiring</a>\r\n<a href=\"http://www.facebook.com\">Meet the team</a>\r\n<a href=\"http://www.facebook.com\">Copyright</a>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:6;a:4:{s:5:\"title\";s:7:\"Support\";s:4:\"text\";s:183:\"<a href=\"http://www.facebook.com\">Faq</a>\r\n<a href=\"http://www.facebook.com\">Blog</a>\r\n<a href=\"http://www.facebook.com\">Forum</a>\r\n<a href=\"http://www.facebook.com\">Documentation</a>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:7;a:4:{s:5:\"title\";s:14:\"Flickr Gallery\";s:4:\"text\";s:0:\"\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:8;a:4:{s:5:\"title\";s:10:\"Developers\";s:4:\"text\";s:233:\"<a href=\"http://www.facebook.com\" target=\"_blank\" rel=\"noopener\">Web Development</a>\r\n<a href=\"http://www.facebook.com\">SEO Marketing</a>\r\n<a href=\"http://www.facebook.com\">Theme</a>\r\n<a href=\"http://www.facebook.com\">Development</a>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '12', 'yes'),
(84, 'page_on_front', '6', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:3:{i:2;a:1:{s:5:\"title\";s:6:\"search\";}i:3;a:1:{s:5:\"title\";s:6:\"search\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:4:{i:2;a:3:{s:5:\"title\";s:11:\"Recent Post\";s:6:\"number\";i:5;s:9:\"show_date\";b:0;}i:3;a:3:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;s:9:\"show_date\";b:0;}i:4;a:3:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;s:9:\"show_date\";b:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:12:\"Blog Archive\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:6:{s:19:\"wp_inactive_widgets\";a:10:{i:0;s:6:\"text-7\";i:1;s:14:\"recent-posts-2\";i:2;s:15:\"media_gallery-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:8:\"search-2\";i:6;s:14:\"recent-posts-3\";i:7;s:15:\"media_gallery-4\";i:8;s:10:\"calendar-6\";i:9;s:13:\"media_image-4\";}s:13:\"footer_widget\";a:3:{i:0;s:6:\"text-5\";i:1;s:6:\"text-6\";i:2;s:6:\"text-8\";}s:9:\"sidebar_1\";a:5:{i:0;s:8:\"search-3\";i:1;s:14:\"recent-posts-4\";i:2;s:12:\"categories-3\";i:3;s:13:\"media_image-5\";i:4;s:15:\"media_gallery-7\";}s:9:\"sidebar_2\";a:0:{}s:9:\"sidebar_3\";a:2:{i:0;s:13:\"media_image-2\";i:1;s:15:\"media_gallery-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:2:{i:6;a:1:{s:5:\"title\";s:6:\"adadad\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:4:{i:2;a:15:{s:13:\"attachment_id\";i:236;s:3:\"url\";s:86:\"http://localhost/mywork/wordpress_project/wp-content/uploads/2018/04/item7-300x228.png\";s:5:\"title\";s:0:\"\";s:4:\"size\";s:6:\"medium\";s:5:\"width\";i:300;s:6:\"height\";i:228;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";}i:4;a:15:{s:13:\"attachment_id\";i:262;s:3:\"url\";s:86:\"http://localhost/mywork/wordpress_project/wp-content/uploads/2018/04/59f58ab335011.gif\";s:5:\"title\";s:0:\"\";s:4:\"size\";s:4:\"full\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";}i:5;a:15:{s:13:\"attachment_id\";i:283;s:3:\"url\";s:85:\"http://localhost/mywork/wordpress_project/wp-content/uploads/2018/04/300-X-600-PX.gif\";s:5:\"title\";s:0:\"\";s:4:\"size\";s:4:\"full\";s:5:\"width\";i:300;s:6:\"height\";i:600;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:5:{i:2;a:6:{s:5:\"title\";s:10:\"My Gallery\";s:7:\"columns\";i:3;s:4:\"size\";s:9:\"thumbnail\";s:9:\"link_type\";s:4:\"post\";s:14:\"orderby_random\";b:0;s:3:\"ids\";a:9:{i:0;i:236;i:1;i:237;i:2;i:234;i:3;i:235;i:4;i:232;i:5;i:233;i:6;i:231;i:7;i:230;i:8;i:218;}}i:4;a:6:{s:5:\"title\";s:0:\"\";s:7:\"columns\";i:3;s:4:\"size\";s:9:\"thumbnail\";s:9:\"link_type\";s:4:\"post\";s:14:\"orderby_random\";b:0;s:3:\"ids\";a:9:{i:0;i:249;i:1;i:248;i:2;i:247;i:3;i:236;i:4;i:237;i:5;i:234;i:6;i:235;i:7;i:233;i:8;i:232;}}i:6;a:6:{s:5:\"title\";s:7:\"fgffgfg\";s:7:\"columns\";i:3;s:4:\"size\";s:9:\"thumbnail\";s:9:\"link_type\";s:4:\"post\";s:14:\"orderby_random\";b:1;s:3:\"ids\";a:9:{i:0;i:231;i:1;i:232;i:2;i:233;i:3;i:235;i:4;i:234;i:5;i:230;i:6;i:237;i:7;i:236;i:8;i:254;}}i:7;a:5:{s:5:\"title\";s:0:\"\";s:7:\"columns\";i:3;s:4:\"size\";s:9:\"thumbnail\";s:9:\"link_type\";s:4:\"post\";s:14:\"orderby_random\";b:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'cron', 'a:5:{i:1531108761;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1531118096;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1531161307;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1531161879;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:3:\"top\";i:2;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1523213224;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(124, 'can_compress_scripts', '1', 'no'),
(139, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:21:\"paponbd2016@gmail.com\";s:7:\"version\";s:5:\"4.9.7\";s:9:\"timestamp\";i:1530989944;}', 'no'),
(145, 'theme_mods_simple_wordpress', 'a:4:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:8:\"top_menu\";i:2;}s:11:\"custom_logo\";i:275;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1523312527;s:4:\"data\";a:5:{s:19:\"wp_inactive_widgets\";a:4:{i:0;s:14:\"recent-posts-2\";i:1;s:15:\"media_gallery-2\";i:2;s:10:\"archives-2\";i:3;s:12:\"categories-2\";}s:13:\"footer_widget\";a:2:{i:0;s:6:\"text-5\";i:1;s:6:\"text-6\";}s:9:\"sidebar_1\";a:5:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-3\";i:2;s:15:\"media_gallery-4\";i:3;s:10:\"calendar-6\";i:4;s:13:\"media_image-4\";}s:9:\"sidebar_2\";a:2:{i:0;s:8:\"search-3\";i:1;s:13:\"media_image-5\";}s:9:\"sidebar_3\";a:3:{i:0;s:13:\"media_image-2\";i:1;s:6:\"text-7\";i:2;s:15:\"media_gallery-6\";}}}}', 'yes'),
(150, 'recently_activated', 'a:6:{s:38:\"flickr-Photo-Feed/flikr_photo_feed.php\";i:1523316954;s:33:\"Instagram_post/instagram_post.php\";i:1523305831;s:19:\"akismet/akismet.php\";i:1523297238;s:45:\"vertical-news-slider/vertical-news-slider.php\";i:1523297238;s:41:\"wordpress-importer/wordpress-importer.php\";i:1523297238;s:41:\"blue_image_gallery/blue_image_gallery.php\";i:1523263629;}', 'yes'),
(151, 'widget_akismet_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(154, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(156, 'current_theme', 'Simple Wordpress', 'yes'),
(157, 'theme_switched', '', 'yes'),
(162, 'category_children', 'a:0:{}', 'yes'),
(187, 'duplicator_version_plugin', '1.2.34', 'yes'),
(190, 'duplicator_exe_safe_mode', '0', 'yes'),
(219, 'theme_mods_zBoomMusic', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:8:\"top_menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1523312766;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:4:{i:0;s:14:\"recent-posts-2\";i:1;s:15:\"media_gallery-2\";i:2;s:10:\"archives-2\";i:3;s:12:\"categories-2\";}s:13:\"footer_widget\";a:2:{i:0;s:6:\"text-5\";i:1;s:6:\"text-6\";}s:11:\"right_bar_2\";a:2:{i:0;s:8:\"search-3\";i:1;s:13:\"media_image-5\";}s:13:\"new_sidebar_1\";a:8:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-3\";i:2;s:15:\"media_gallery-4\";i:3;s:10:\"calendar-6\";i:4;s:13:\"media_image-4\";i:5;s:13:\"media_image-2\";i:6;s:6:\"text-7\";i:7;s:15:\"media_gallery-6\";}}}}', 'yes'),
(244, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.0.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1523297349;s:7:\"version\";s:5:\"5.0.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(316, 'duplicator_settings', 'a:10:{s:7:\"version\";s:6:\"1.2.34\";s:18:\"uninstall_settings\";b:1;s:15:\"uninstall_files\";b:1;s:16:\"uninstall_tables\";b:1;s:13:\"package_debug\";b:0;s:17:\"package_mysqldump\";b:1;s:22:\"package_mysqldump_path\";s:0:\"\";s:24:\"package_phpdump_qrylimit\";s:3:\"100\";s:17:\"package_zip_flush\";b:0;s:20:\"storage_htaccess_off\";b:0;}', 'yes'),
(319, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.7.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.7.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.7-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.7-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.7\";s:7:\"version\";s:5:\"4.9.7\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1531106301;s:15:\"version_checked\";s:5:\"4.9.7\";s:12:\"translations\";a:0:{}}', 'no'),
(321, '_site_transient_timeout_browser_61082fc9c192de563bde4f89002ce53b', '1531594830', 'no'),
(322, '_site_transient_browser_61082fc9c192de563bde4f89002ce53b', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"61.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(337, '_site_transient_timeout_theme_roots', '1531108110', 'no'),
(338, '_site_transient_theme_roots', 'a:5:{s:16:\"simple_wordpress\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:10:\"zBoomMusic\";s:7:\"/themes\";}', 'no'),
(339, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1531106315;s:7:\"checked\";a:5:{s:16:\"simple_wordpress\";s:5:\"1.0.0\";s:13:\"twentyfifteen\";s:3:\"1.9\";s:15:\"twentyseventeen\";s:3:\"1.4\";s:13:\"twentysixteen\";s:3:\"1.4\";s:10:\"zBoomMusic\";s:6:\"1.0.0;\";}s:8:\"response\";a:3:{s:13:\"twentyfifteen\";a:4:{s:5:\"theme\";s:13:\"twentyfifteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfifteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentyfifteen.2.0.zip\";}s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.1.6.zip\";}s:13:\"twentysixteen\";a:4:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.1.5.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(340, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1531106317;s:7:\"checked\";a:7:{s:19:\"akismet/akismet.php\";s:5:\"4.0.3\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.0.1\";s:25:\"duplicator/duplicator.php\";s:6:\"1.2.34\";s:33:\"flickr_gallery/flickr_gallery.php\";s:3:\"1.0\";s:38:\"flickr-Photo-Feed/flikr_photo_feed.php\";s:3:\"1.0\";s:9:\"hello.php\";s:3:\"1.6\";s:41:\"wordpress-importer/wordpress-importer.php\";s:5:\"0.6.4\";}s:8:\"response\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.6\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.0.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.0.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.6\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:25:\"duplicator/duplicator.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:24:\"w.org/plugins/duplicator\";s:4:\"slug\";s:10:\"duplicator\";s:6:\"plugin\";s:25:\"duplicator/duplicator.php\";s:11:\"new_version\";s:6:\"1.2.40\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/duplicator/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/duplicator.1.2.40.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/duplicator/assets/icon-256x256.png?rev=1298463\";s:2:\"1x\";s:63:\"https://ps.w.org/duplicator/assets/icon-128x128.png?rev=1298463\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/duplicator/assets/banner-772x250.png?rev=1645055\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.6\";s:12:\"requires_php\";s:6:\"5.2.17\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:41:\"wordpress-importer/wordpress-importer.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/wordpress-importer\";s:4:\"slug\";s:18:\"wordpress-importer\";s:6:\"plugin\";s:41:\"wordpress-importer/wordpress-importer.php\";s:11:\"new_version\";s:5:\"0.6.4\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/wordpress-importer/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/wordpress-importer.0.6.4.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:69:\"https://s.w.org/plugins/geopattern-icon/wordpress-importer_5696b3.svg\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-importer/assets/banner-772x250.png?rev=547654\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'about_us.php'),
(6, 6, '_edit_last', '1'),
(7, 6, '_edit_lock', '1523217449:1'),
(8, 8, '_edit_last', '1'),
(9, 8, '_edit_lock', '1523338740:1'),
(10, 10, '_edit_last', '1'),
(11, 10, '_edit_lock', '1523338810:1'),
(12, 12, '_edit_last', '1'),
(13, 12, '_edit_lock', '1523254191:1'),
(14, 14, '_menu_item_type', 'post_type'),
(15, 14, '_menu_item_menu_item_parent', '0'),
(16, 14, '_menu_item_object_id', '12'),
(17, 14, '_menu_item_object', 'page'),
(18, 14, '_menu_item_target', ''),
(19, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(20, 14, '_menu_item_xfn', ''),
(21, 14, '_menu_item_url', ''),
(23, 15, '_menu_item_type', 'post_type'),
(24, 15, '_menu_item_menu_item_parent', '0'),
(25, 15, '_menu_item_object_id', '10'),
(26, 15, '_menu_item_object', 'page'),
(27, 15, '_menu_item_target', ''),
(28, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(29, 15, '_menu_item_xfn', ''),
(30, 15, '_menu_item_url', ''),
(32, 16, '_menu_item_type', 'post_type'),
(33, 16, '_menu_item_menu_item_parent', '0'),
(34, 16, '_menu_item_object_id', '8'),
(35, 16, '_menu_item_object', 'page'),
(36, 16, '_menu_item_target', ''),
(37, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(38, 16, '_menu_item_xfn', ''),
(39, 16, '_menu_item_url', ''),
(41, 17, '_menu_item_type', 'post_type'),
(42, 17, '_menu_item_menu_item_parent', '0'),
(43, 17, '_menu_item_object_id', '6'),
(44, 17, '_menu_item_object', 'page'),
(45, 17, '_menu_item_target', ''),
(46, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(47, 17, '_menu_item_xfn', ''),
(48, 17, '_menu_item_url', ''),
(52, 19, '_edit_last', '1'),
(53, 21, '_edit_last', '1'),
(54, 24, '_edit_last', '1'),
(55, 24, '_wp_old_slug', 'wheres-the-blueprint-for-crickets-future'),
(56, 24, '_yoast_wpseo_content_score', '30'),
(57, 24, '_yoast_wpseo_primary_category', ''),
(58, 27, '_edit_last', '1'),
(59, 27, '_yoast_wpseo_content_score', '30'),
(60, 27, '_yoast_wpseo_primary_category', ''),
(62, 48, '_edit_last', '1'),
(63, 48, '_thumbnail_id', '49'),
(64, 48, '_yoast_wpseo_content_score', '30'),
(65, 48, '_yoast_wpseo_primary_category', ''),
(116, 78, '_edit_last', '1'),
(117, 78, '_thumbnail_id', '80'),
(118, 78, '_yoast_wpseo_content_score', '30'),
(119, 78, '_yoast_wpseo_primary_category', ''),
(144, 6, '_wp_page_template', 'front_page.php'),
(145, 212, '_wp_attached_file', '2018/04/182470_cgWLW1geYOPDqkuHJdbH9oJjU.jpg'),
(146, 212, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:361;s:6:\"height\";i:408;s:4:\"file\";s:44:\"2018/04/182470_cgWLW1geYOPDqkuHJdbH9oJjU.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"182470_cgWLW1geYOPDqkuHJdbH9oJjU-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"182470_cgWLW1geYOPDqkuHJdbH9oJjU-265x300.jpg\";s:5:\"width\";i:265;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(153, 214, '_wp_attached_file', '2018/04/005.jpg'),
(154, 214, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1022;s:6:\"height\";i:752;s:4:\"file\";s:15:\"2018/04/005.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"005-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"005-300x221.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:221;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"005-768x565.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:565;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(158, 216, '_wp_attached_file', '2018/04/015.jpg'),
(159, 216, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:768;s:4:\"file\";s:15:\"2018/04/015.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"015-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"015-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"015-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"015-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(163, 218, '_wp_attached_file', '2018/04/46.jpg'),
(164, 218, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1200;s:4:\"file\";s:14:\"2018/04/46.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"46-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"46-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"46-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"46-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:10:\"still_down\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(168, 220, '_edit_last', '1'),
(169, 220, '_edit_lock', '1523261739:1'),
(170, 222, '_edit_last', '1'),
(171, 222, '_edit_lock', '1523217538:1'),
(172, 223, '_edit_last', '1'),
(173, 223, '_edit_lock', '1523217575:1'),
(174, 224, '_edit_last', '1'),
(175, 224, '_edit_lock', '1523217592:1'),
(176, 225, '_edit_last', '1'),
(177, 225, '_edit_lock', '1523217613:1'),
(178, 226, '_edit_last', '1'),
(179, 226, '_edit_lock', '1523217628:1'),
(180, 227, '_edit_last', '1'),
(181, 227, '_edit_lock', '1523218705:1'),
(188, 230, '_wp_attached_file', '2018/04/item1.png'),
(189, 230, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:455;s:4:\"file\";s:17:\"2018/04/item1.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"item1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"item1-300x228.png\";s:5:\"width\";i:300;s:6:\"height\";i:228;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(190, 231, '_wp_attached_file', '2018/04/item2.png'),
(191, 231, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:455;s:4:\"file\";s:17:\"2018/04/item2.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"item2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"item2-300x228.png\";s:5:\"width\";i:300;s:6:\"height\";i:228;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(192, 232, '_wp_attached_file', '2018/04/item3.png'),
(193, 232, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:455;s:4:\"file\";s:17:\"2018/04/item3.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"item3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"item3-300x228.png\";s:5:\"width\";i:300;s:6:\"height\";i:228;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(194, 233, '_wp_attached_file', '2018/04/item4.png'),
(195, 233, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:455;s:4:\"file\";s:17:\"2018/04/item4.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"item4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"item4-300x228.png\";s:5:\"width\";i:300;s:6:\"height\";i:228;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(196, 234, '_wp_attached_file', '2018/04/item5.png'),
(197, 234, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:455;s:4:\"file\";s:17:\"2018/04/item5.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"item5-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"item5-300x228.png\";s:5:\"width\";i:300;s:6:\"height\";i:228;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(198, 235, '_wp_attached_file', '2018/04/item6.png'),
(199, 235, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:455;s:4:\"file\";s:17:\"2018/04/item6.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"item6-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"item6-300x228.png\";s:5:\"width\";i:300;s:6:\"height\";i:228;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(200, 236, '_wp_attached_file', '2018/04/item7.png'),
(201, 236, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:455;s:4:\"file\";s:17:\"2018/04/item7.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"item7-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"item7-300x228.png\";s:5:\"width\";i:300;s:6:\"height\";i:228;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(202, 237, '_wp_attached_file', '2018/04/item8.png'),
(203, 237, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:455;s:4:\"file\";s:17:\"2018/04/item8.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"item8-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"item8-300x228.png\";s:5:\"width\";i:300;s:6:\"height\";i:228;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(204, 229, '_edit_last', '1'),
(205, 229, '_thumbnail_id', '237'),
(206, 229, '_edit_lock', '1523219091:1'),
(207, 238, '_edit_last', '1'),
(208, 238, '_thumbnail_id', '236'),
(209, 238, '_edit_lock', '1523219102:1'),
(210, 239, '_edit_last', '1'),
(211, 239, '_thumbnail_id', '234'),
(212, 239, '_edit_lock', '1523219110:1'),
(213, 240, '_edit_last', '1'),
(214, 240, '_thumbnail_id', '235'),
(215, 240, '_edit_lock', '1523219121:1'),
(216, 241, '_edit_last', '1'),
(217, 241, '_thumbnail_id', '232'),
(218, 241, '_edit_lock', '1523219130:1'),
(219, 242, '_edit_last', '1'),
(220, 242, '_thumbnail_id', '233'),
(221, 242, '_edit_lock', '1523219139:1'),
(222, 243, '_edit_last', '1'),
(223, 243, '_thumbnail_id', '231'),
(224, 243, '_edit_lock', '1523219151:1'),
(225, 244, '_edit_last', '1'),
(226, 244, '_thumbnail_id', '230'),
(227, 244, '_edit_lock', '1523219685:1'),
(228, 78, '_edit_lock', '1523228643:1'),
(240, 247, '_wp_attached_file', '2018/04/preview-banner-maker.png'),
(241, 247, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2746;s:6:\"height\";i:886;s:4:\"file\";s:32:\"2018/04/preview-banner-maker.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"preview-banner-maker-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"preview-banner-maker-300x97.png\";s:5:\"width\";i:300;s:6:\"height\";i:97;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"preview-banner-maker-768x248.png\";s:5:\"width\";i:768;s:6:\"height\";i:248;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"preview-banner-maker-1024x330.png\";s:5:\"width\";i:1024;s:6:\"height\";i:330;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(242, 248, '_wp_attached_file', '2018/04/HomepageBanners_SA.jpg'),
(243, 248, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:357;s:4:\"file\";s:30:\"2018/04/HomepageBanners_SA.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"HomepageBanners_SA-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"HomepageBanners_SA-300x112.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:112;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"HomepageBanners_SA-768x286.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:286;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(244, 249, '_wp_attached_file', '2018/04/youtube-channel-art-banner-business-plan-template-regarding-youtube-channel-art-banner-e1523232450811.jpg'),
(245, 249, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:563;s:4:\"file\";s:113:\"2018/04/youtube-channel-art-banner-business-plan-template-regarding-youtube-channel-art-banner-e1523232450811.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:113:\"youtube-channel-art-banner-business-plan-template-regarding-youtube-channel-art-banner-e1523232450811-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:113:\"youtube-channel-art-banner-business-plan-template-regarding-youtube-channel-art-banner-e1523232450811-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:113:\"youtube-channel-art-banner-business-plan-template-regarding-youtube-channel-art-banner-e1523232450811-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:99:\"youtube-channel-art-banner-business-plan-template-regarding-youtube-channel-art-banner-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(246, 249, '_wp_attachment_backup_sizes', 'a:6:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:3840;s:6:\"height\";i:2160;s:4:\"file\";s:90:\"youtube-channel-art-banner-business-plan-template-regarding-youtube-channel-art-banner.jpg\";}s:18:\"full-1523232450811\";a:3:{s:5:\"width\";i:1000;s:6:\"height\";i:563;s:4:\"file\";s:105:\"youtube-channel-art-banner-business-plan-template-regarding-youtube-channel-art-banner-e1523232428466.jpg\";}s:14:\"thumbnail-orig\";a:4:{s:4:\"file\";s:98:\"youtube-channel-art-banner-business-plan-template-regarding-youtube-channel-art-banner-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"medium-orig\";a:4:{s:4:\"file\";s:98:\"youtube-channel-art-banner-business-plan-template-regarding-youtube-channel-art-banner-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"medium_large-orig\";a:4:{s:4:\"file\";s:98:\"youtube-channel-art-banner-business-plan-template-regarding-youtube-channel-art-banner-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"large-orig\";a:4:{s:4:\"file\";s:99:\"youtube-channel-art-banner-business-plan-template-regarding-youtube-channel-art-banner-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(259, 252, '_wp_attached_file', '2018/04/banner-header-tapete-145002399028x-1.jpg'),
(260, 252, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:602;s:4:\"file\";s:48:\"2018/04/banner-header-tapete-145002399028x-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"banner-header-tapete-145002399028x-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"banner-header-tapete-145002399028x-1-300x94.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:94;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"banner-header-tapete-145002399028x-1-768x241.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:241;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"banner-header-tapete-145002399028x-1-1024x321.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:321;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(264, 254, '_wp_attached_file', '2018/04/slider_one.jpg'),
(265, 254, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1169;s:6:\"height\";i:487;s:4:\"file\";s:22:\"2018/04/slider_one.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"slider_one-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"slider_one-300x125.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"slider_one-768x320.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"slider_one-1024x427.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(269, 256, '_wp_attached_file', '2018/04/admin_slider_1.jpg'),
(270, 256, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1169;s:6:\"height\";i:487;s:4:\"file\";s:26:\"2018/04/admin_slider_1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"admin_slider_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"admin_slider_1-300x125.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"admin_slider_1-768x320.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"admin_slider_1-1024x427.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(271, 257, '_wp_attached_file', '2018/04/p02vdpfn-1169x487.jpg'),
(272, 257, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1169;s:6:\"height\";i:487;s:4:\"file\";s:29:\"2018/04/p02vdpfn-1169x487.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"p02vdpfn-1169x487-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"p02vdpfn-1169x487-300x125.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"p02vdpfn-1169x487-768x320.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"p02vdpfn-1169x487-1024x427.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:12:\"Getty Images\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:9:\"Open book\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:17:\"(c) Nicholas Rigg\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:9:\"173965547\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(273, 258, '_wp_attached_file', '2018/04/slider_two.jpg'),
(274, 258, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1169;s:6:\"height\";i:487;s:4:\"file\";s:22:\"2018/04/slider_two.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"slider_two-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"slider_two-300x125.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"slider_two-768x320.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"slider_two-1024x427.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(275, 255, '_edit_last', '1'),
(276, 255, '_thumbnail_id', '258'),
(277, 255, '_edit_lock', '1523233276:1'),
(287, 259, '_edit_last', '1'),
(288, 259, '_thumbnail_id', '256'),
(289, 259, '_edit_lock', '1523233299:1'),
(290, 260, '_edit_last', '1'),
(291, 260, '_thumbnail_id', '257'),
(292, 260, '_edit_lock', '1523234128:1'),
(295, 262, '_wp_attached_file', '2018/04/59f58ab335011.gif'),
(296, 262, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:250;s:4:\"file\";s:25:\"2018/04/59f58ab335011.gif\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"59f58ab335011-150x150.gif\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/gif\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"59f58ab335011-300x250.gif\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/gif\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(297, 263, '_wp_attached_file', '2018/04/93477322330024.png.gif'),
(298, 263, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:250;s:4:\"file\";s:30:\"2018/04/93477322330024.png.gif\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"93477322330024.png-150x150.gif\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/gif\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"93477322330024.png-300x250.gif\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/gif\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(299, 264, '_wp_attached_file', '2018/04/cropped-182470_cgWLW1geYOPDqkuHJdbH9oJjU.jpg'),
(300, 264, '_wp_attachment_context', 'custom-logo'),
(301, 264, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:150;s:4:\"file\";s:52:\"2018/04/cropped-182470_cgWLW1geYOPDqkuHJdbH9oJjU.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"cropped-182470_cgWLW1geYOPDqkuHJdbH9oJjU-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(304, 266, '_wp_attached_file', '2018/04/forposting4.png'),
(305, 266, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:628;s:4:\"file\";s:23:\"2018/04/forposting4.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"forposting4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"forposting4-300x157.png\";s:5:\"width\";i:300;s:6:\"height\";i:157;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"forposting4-768x402.png\";s:5:\"width\";i:768;s:6:\"height\";i:402;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"forposting4-1024x536.png\";s:5:\"width\";i:1024;s:6:\"height\";i:536;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(306, 267, '_wp_attached_file', '2018/04/cropped-forposting4.png'),
(307, 267, '_wp_attachment_context', 'custom-logo'),
(308, 267, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:150;s:4:\"file\";s:31:\"2018/04/cropped-forposting4.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"cropped-forposting4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(311, 269, '_wp_attached_file', '2018/04/cropped-forposting4-1.png'),
(312, 269, '_wp_attachment_context', 'custom-logo'),
(313, 269, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:150;s:4:\"file\";s:33:\"2018/04/cropped-forposting4-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"cropped-forposting4-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(317, 271, '_wp_attached_file', '2018/04/cropped-forposting4-2.png'),
(318, 271, '_wp_attachment_context', 'custom-logo'),
(319, 271, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:150;s:4:\"file\";s:33:\"2018/04/cropped-forposting4-2.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"cropped-forposting4-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(322, 273, '_wp_attached_file', '2018/04/cropped-forposting4-3.png'),
(323, 273, '_wp_attachment_context', 'custom-logo'),
(324, 273, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:150;s:4:\"file\";s:33:\"2018/04/cropped-forposting4-3.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"cropped-forposting4-3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(327, 275, '_wp_attached_file', '2018/04/igwebs_logo-final.jpg'),
(328, 275, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:80;s:4:\"file\";s:29:\"2018/04/igwebs_logo-final.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"igwebs_logo-final-150x80.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(329, 276, '_wp_attached_file', '2018/04/cropped-igwebs_logo-final.jpg'),
(330, 276, '_wp_attachment_context', 'custom-logo'),
(331, 276, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:150;s:4:\"file\";s:37:\"2018/04/cropped-igwebs_logo-final.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"cropped-igwebs_logo-final-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(336, 2, '_edit_lock', '1523349482:1'),
(337, 279, '_menu_item_type', 'post_type'),
(338, 279, '_menu_item_menu_item_parent', '0'),
(339, 279, '_menu_item_object_id', '2'),
(340, 279, '_menu_item_object', 'page'),
(341, 279, '_menu_item_target', ''),
(342, 279, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(343, 279, '_menu_item_xfn', ''),
(344, 279, '_menu_item_url', ''),
(346, 2, '_edit_last', '1'),
(347, 283, '_wp_attached_file', '2018/04/300-X-600-PX.gif'),
(348, 283, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:600;s:4:\"file\";s:24:\"2018/04/300-X-600-PX.gif\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"300-X-600-PX-150x150.gif\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/gif\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"300-X-600-PX-150x300.gif\";s:5:\"width\";i:150;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/gif\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(349, 10, '_wp_page_template', 'about_us.php'),
(356, 8, '_wp_page_template', 'contact.php'),
(359, 296, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]'),
(360, 296, '_mail', 'a:8:{s:7:\"subject\";s:34:\"Wordpress Project \"[your-subject]\"\";s:6:\"sender\";s:35:\"[your-name] <paponbd2016@gmail.com>\";s:4:\"body\";s:197:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Wordpress Project (http://localhost/mywork/wordpress_project)\";s:9:\"recipient\";s:21:\"paponbd2016@gmail.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(361, 296, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:34:\"Wordpress Project \"[your-subject]\"\";s:6:\"sender\";s:41:\"Wordpress Project <paponbd2016@gmail.com>\";s:4:\"body\";s:139:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Wordpress Project (http://localhost/mywork/wordpress_project)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:31:\"Reply-To: paponbd2016@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(362, 296, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";}'),
(363, 296, '_additional_settings', NULL),
(364, 296, '_locale', 'en_US'),
(365, 216, '_edit_lock', '1523349896:1'),
(366, 216, '_edit_last', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2018-04-08 18:34:54', '2018-04-08 18:34:54', '[flickgallery]', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-04-10 05:43:20', '2018-04-10 05:43:20', '', 0, 'http://localhost/mywork/wordpress_project/?page_id=2', 0, 'page', '', 0),
(6, 1, '2018-04-08 18:44:49', '2018-04-08 18:44:49', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-04-08 19:59:49', '2018-04-08 19:59:49', '', 0, 'http://localhost/mywork/wordpress_project/?page_id=6', 0, 'page', '', 0),
(7, 1, '2018-04-08 18:44:49', '2018-04-08 18:44:49', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-04-08 18:44:49', '2018-04-08 18:44:49', '', 6, 'http://localhost/mywork/wordpress_project/2018/04/08/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2018-04-08 18:45:01', '2018-04-08 18:45:01', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2018-04-10 04:50:27', '2018-04-10 04:50:27', '', 0, 'http://localhost/mywork/wordpress_project/?page_id=8', 0, 'page', '', 0),
(9, 1, '2018-04-08 18:45:01', '2018-04-08 18:45:01', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-04-08 18:45:01', '2018-04-08 18:45:01', '', 8, 'http://localhost/mywork/wordpress_project/2018/04/08/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2018-04-08 18:45:10', '2018-04-08 18:45:10', '<h1>About Us</h1>\r\n&nbsp;\r\n\r\n<img class=\"alignnone wp-image-254\" src=\"http://localhost/mywork/wordpress_project/wp-content/uploads/2018/04/slider_one-300x125.jpg\" alt=\"\" width=\"814\" height=\"339\" />\r\n<h2></h2>\r\nThis is an example page. It’s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this: Hi there! I’m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin’ caught in the rain.)\r\n…or something like this:\r\nThe XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.\r\nAs a new WordPress user, you should go to your dashboard to delete this page and create new pages for your content. Have fun!', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2018-04-10 05:41:55', '2018-04-10 05:41:55', '', 0, 'http://localhost/mywork/wordpress_project/?page_id=10', 0, 'page', '', 0),
(11, 1, '2018-04-08 18:45:10', '2018-04-08 18:45:10', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-04-08 18:45:10', '2018-04-08 18:45:10', '', 10, 'http://localhost/mywork/wordpress_project/2018/04/08/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2018-04-08 18:45:24', '2018-04-08 18:45:24', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2018-04-08 18:45:24', '2018-04-08 18:45:24', '', 0, 'http://localhost/mywork/wordpress_project/?page_id=12', 0, 'page', '', 0),
(13, 1, '2018-04-08 18:45:24', '2018-04-08 18:45:24', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2018-04-08 18:45:24', '2018-04-08 18:45:24', '', 12, 'http://localhost/mywork/wordpress_project/2018/04/08/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2018-04-08 18:46:45', '2018-04-08 18:46:45', ' ', '', '', 'publish', 'closed', 'closed', '', '14', '', '', '2018-04-09 08:02:12', '2018-04-09 08:02:12', '', 0, 'http://localhost/mywork/wordpress_project/?p=14', 3, 'nav_menu_item', '', 0),
(15, 1, '2018-04-08 18:46:45', '2018-04-08 18:46:45', ' ', '', '', 'publish', 'closed', 'closed', '', '15', '', '', '2018-04-09 08:02:12', '2018-04-09 08:02:12', '', 0, 'http://localhost/mywork/wordpress_project/?p=15', 2, 'nav_menu_item', '', 0),
(16, 1, '2018-04-08 18:46:46', '2018-04-08 18:46:46', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2018-04-09 08:02:12', '2018-04-09 08:02:12', '', 0, 'http://localhost/mywork/wordpress_project/?p=16', 4, 'nav_menu_item', '', 0),
(17, 1, '2018-04-08 18:46:45', '2018-04-08 18:46:45', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2018-04-09 08:02:12', '2018-04-09 08:02:12', '', 0, 'http://localhost/mywork/wordpress_project/?p=17', 1, 'nav_menu_item', '', 0),
(19, 1, '2018-03-04 09:34:03', '2018-03-04 09:34:03', '<img class=\"alignnone wp-image-18\" src=\"http://localhost/wordpress_494/wp-content/uploads/2018/03/i-300x169.jpg\" alt=\"\" width=\"523\" height=\"295\" />At the start of South Africa\'s second innings, the prospect of winning or saving the Test seemed slim. Twenty overs in, even taking the match into the fifth day looked like it might be beyond them. Set 417 for victory, which would be the second-highest successful chase in Test history, South Africa stumbled to lunch at 63 for 4. Opener Aiden Markram was still at the crease on 38, alongside Theunis de Bruyn on 2, and South Africa needed a further 354 for the fanciful prospect of victory.\n\nThe dismissal of AB de Villiers perhaps best summed up South Africa\'s struggle. Their top scorer from the first innings, de Villiers was yet to score when he took off for a single when Markram turned Nathan Lyon to square leg, was sent back when already halfway down the pitch, and stumbled his way back to the non-striker\'s end with no chance of making his ground safely. South Africa\'s best hope of pulling off a miracle was run out in ugly fashion.\n\nFaf du Plessis followed soon after when his off stump cartwheeled out of the ground as Pat Cummins found the gap between bat and pad, ending the innings of South Africa\'s captain on 4, and leaving them on 49 for 4. Earlier, Mitchell Starc had found the edge of Dean Elgar\'s bat to have him caught behind for 9, and Hashim Amla was trapped lbw by Josh Hazlewood for 8. By lunch, not a single batsman besides Markram had reached double-figures.\n\nThe morning had started with Australia on 213 for 9 and the last pair, Hazlewood and Cummins, added a further 14 before the innings ended on 227 when Cummins chopped on off the bowling of Keshav Maharaj. Maharaj finished the innings with four wickets, which meant a career-best Test-match haul of nine wickets.', 'Australia rip out top order after setting SA 417 to win', '', 'publish', 'open', 'open', '', 'australia-rip-out-top-order-after-setting-sa-417-to-win', '', '', '2018-03-04 09:34:03', '2018-03-04 09:34:03', '', 0, 'http://localhost/wordpress_494/?p=16', 0, 'post', '', 1),
(21, 1, '2018-03-04 09:42:48', '2018-03-04 09:42:48', '<img class=\"alignnone  wp-image-60\" src=\"http://localhost/wordpress_494/wp-content/uploads/2018/03/download.jpg\" alt=\"\" width=\"815\" height=\"458\" />\n\nHow had the ball he had just delivered - full and swinging in - missed Tim Paine\'s pad and bat? How had Australia got to 162 for 5, all of 351 runs ahead? And how many more would they get?\n\nBy the close of play, the answer to the last question was known: Australia finished with a lead of 402, more than what South Africa may contemplate chasing, but the other mysteries remain.\n\nHow did a contest that was supposed to be so close meander into such a one-sided affair?\n\nThe short answer is that not for the first time, South Africa\'s batsmen have let their bowlers down. A first-innings of deficit of 189 requires something special in response, something as dramatic as the 47 all out of 2011, something that can be produced on a pitch that is doing more than this one, by bowlers who have a little more spark and a little more luck than these.\n\nTake nothing away from the attack\'s persistence, which South Africans believe is ingrained into their DNA, because they kept at it, but they were frustrated by an Australian line-up that did the same. The visitors just kept coming, in that carefree and confident way they often do, and South Africa could not stop them.\n\nCameron Bancroft and David Warner scored at 4.3 runs an over, and seemed to face no menace against the new ball, against both pace and spin. A wicket had to come through a mistake and it did when Warner swiped one straight to mid-on. It was no surprise that Rabada took the opportunity to let off some steam. He gave Warner a send-off of sorts that the stump mics didn\'t pick up and the lip-readers say did not involve any expletives. He also cleverly passed his arm over his mouth as he said whatever he did, but it was unlikely to have been, \"have a nice afternoon.\" And it didn\'t do anything to calm Rabada down.\n\nThe rest of his morning spell contained a lot of huffing and puffing - impressive movement, a beeline to off stump, pace and the short ball - but he could not blow the Australian house down. His annoyance grew, as did South Africa\' desperation.\n\nAfter lunch, their on-field conferences multiplied. Former captains AB de Villiers and Hashim Amla offered numerous pieces of advice to Faf du Plessis and the bowlers. They tried a few things, as much as they could, given the resources of a four-man attack, like close catchers that they thought could help Keshav Maharaj create pressure, and they did not succeed. Then, even technology deserted them.\n\nMaharaj, a sensible and stoic cricketer almost all of the time, had Steven Smith playing for turn to an arm ball that flicked the front pad and wanted a review so badly, Faf du Plessis could not say no. Initially, it looked like a good call but the replays suggested umpire\'s call on impact. South Africa regarded it philosophically. \"We have got faith in the technology but we were disappointed that we didn\'t get the right call,\" Malinbongwe Maketa, the assistant coach, said. \"The technology is there and we back the technology. If it happens that you\'re on the wrong side, you have to suck it up\". At least, they didn\'t lose the review.<img class=\"alignnone size-medium wp-image-22\" src=\"http://localhost/wordpress_494/wp-content/uploads/2018/03/ai-300x169.jpg\" alt=\"\" width=\"300\" height=\"169\" />', 'South Africa left wondering \'how\' things went wrong', '', 'publish', 'open', 'open', '', 'south-africa-left-wondering-how-things-went-wrong', '', '', '2018-03-04 09:42:48', '2018-03-04 09:42:48', '', 0, 'http://localhost/wordpress_494/?p=21', 0, 'post', '', 0),
(24, 1, '2018-03-04 09:44:51', '2018-03-04 09:44:51', 'The fact that cricket\'s most prosperous - and therefore most powerful - administration, the BCCI, is beholden to a Committee of Administrators (CoA) is a black mark on the game. To then have the CoA overrule the BCCI\'s attempts to play a day-night Test against West Indies on the basis that any decision should include consultation with \"the players, the administrators and the fans\" is even more damning.<img class=\"alignnone wp-image-79\" src=\"http://localhost/wordpress_494/wp-content/uploads/2018/03/image_1-300x168.jpg\" alt=\"\" width=\"823\" height=\"461\" />\n\nAt a time when cricket needs clear-headed decision-making and long-term planning, confusion seems to be the prevalent emotion.\n\nConsider the following: Test cricket is a game in dire need of nurturing and one solution is to play matches under lights. So far the day-night Test experiment has proved worthwhile but it needs the support of its biggest stakeholder. India\'s current progress on scheduling a day-night Test appears to be more akin to \"fiddling while Rome burns\".\n\nIn recent weeks <a href=\"http://www.espncricinfo.com/story/_/id/22408785/t20-become-cricket-only-format-jos-buttler\">both Jos Buttler</a> and <a href=\"http://www.espncricinfo.com/story/_/id/22566221/test-cricket-lot-worry-eoin-morgan\">Eoin Morgan have implied</a> that Test cricket is in trouble. Buttler even predicted that down the road, cricket could become a purely T20 game.\n\nAs if to confirm Buttler\'s thoughts, <a href=\"http://www.espncricinfo.com/story/_/id/22510597/hales-joins-test-exodus-white-ball-nottinghamshire-contract\">England\'s Alex Hales and Adil Rashid then opted to take</a> white-ball-only contracts from their respective counties and eschew the longer form of the game.', 'Where\'s the blueprint for cricket\'s future?', '', 'publish', 'open', 'open', '', 'crickets-future', '', '', '2018-03-04 09:44:51', '2018-03-04 09:44:51', '', 0, 'http://localhost/wordpress_494/?p=24', 0, 'post', '', 0),
(27, 1, '2018-03-04 08:47:53', '2018-03-04 08:47:53', 'It\'s imperative the best players are regularly available to play international cricket. However, cricket is currently stuck in a rut, unsure whether the priority is the international or the franchise game, undecided about what form the game will take in the future.There appears to be no long-term blueprint for its future direction. The schedule is planned as though its a gam\n\n&nbsp;\n\n&nbsp;\n\ne of \"pin the tail on the donkey\". And the way T20 leagues pop up like mushrooms in a dank climate, it\'s safe to assume that many administrators are in agreement with Buttler\'s prediction.\n\nThe problems can\'t be resolved while the ICC runs part of the game and the individual boards control the rest. The words of former Australian Prime Minister Paul Keating, \"Always back self-interest because you know it\'s a goer\", ring true when the individual boards sit round the negotiating table.\n\n<img class=\" wp-image-28 alignleft\" src=\"http://localhost/wordpress_494/wp-content/uploads/2018/03/gfggi-300x169.jpg\" alt=\"\" width=\"563\" height=\"317\" />\n\n<article class=\"ad-300\">\n<div class=\"ad-center\">\n<div id=\"ad-slot-incontent2-210029\" class=\"ad-slot ad-slot-incontent2 ad-wrapper\" data-slot-type=\"incontent2\" data-exclude-bp=\"m\" data-slot-kvps=\"pos=incontent2\" data-independent=\"true\" data-kvpos=\"top\"></div>\n</div>\n</article>Rajshahi Kings have appointed <a href=\"http://www.espncricinfo.com/newzealand/content/player/38710.html\">Daniel Vettori</a> as their head coach for the 2018 and 2019 BPL. This will be the first time the former New Zealand captain will be working in Bangladesh.\n\n\"With his experience as a specialist coach in the T20 format, Daniel will not only help the team but the local youngsters to learn and excel in this very exciting format,\" Rajshahi Kings CEO Tahmeed Huq said.\n\nVettori is already the head coach of Royal Challengers Bangalore, Brisbane Heat and Middlesex in the domestic T20 leagues.\n\nEarlier, Sarwar Imran was Rajshahi\'s coach in 2016 and 2017 seasons. Rajshahi were the runners-up in 2016, but finished second last in the 2017 season.', 'Rajshahi Kings appoint Vettori as head coach', '', 'publish', 'open', 'open', '', 'rajshahi-kings-appoint-vettori-as-head-coach', '', '', '2018-03-04 08:47:53', '2018-03-04 08:47:53', '', 0, 'http://localhost/wordpress_494/?p=27', 0, 'post', '', 0),
(48, 1, '2018-03-05 09:26:17', '2018-03-05 09:26:17', 'কাস্টিং কাউচের প্রতিবাদ করার জন্য সবাইকে আহ্বান জানান উর্বশী রৌতেলা। ‘হেট স্টোরি ফোর’ ছবিতে অভিনয় করেছেন তিনি। এরটিক-থ্রিলার ধাঁচের ছবিটি নিয়ে এরই মধ্যে আলোচনায় এসেছেন ভারতের এই মডেল ও অভিনয়শিল্পী। হলিউড ও বলিউডের অনেক নারী এখন ‘কাস্টিং কাউচ’ সমস্যা নিয়ে কথা বলছেন, জনমত গঠন করছেন। উর্বশী রৌতেলা বলেন, ‘কেউ অন্যায় কোনো প্রস্তাব পেলে সঙ্গে সঙ্গে তার প্রতিবাদ করুন। এর মোকাবিলা করতে হবে কঠোরভাবে।’ আর নিজের ব্যাপারে তিনি বললেন, ‘আমি কখনো এই সমস্যার মুখোমুখি হইনি।’<img class=\"alignnone wp-image-22\" src=\"http://localhost/wordpress_494/wp-content/uploads/2018/03/ai-300x169.jpg\" alt=\"\" width=\"817\" height=\"460\" />\n\n‘হেট স্টোরি ফোর’ ছবিতে আছেন দুজন নায়ক—করন ওয়াহি আর ভিভান ভাটেনা। কিন্তু ছবির প্রচারণায় গুরুত্বের সঙ্গে স্থান পাচ্ছেন নায়িকা উর্বশী রৌতেলা। বললেন, ‘ছবিটা নিয়ে আমি আত্মবিশ্বাসী। কারণ, এই ছবির গল্পটা অন্য রকম। এখন তো বলিউডে নারীকেন্দ্রিক অনেক ছবি হচ্ছে। প্রিয়াঙ্কা চোপড়া, কঙ্গনা রনৌত, আনুশকা শর্মা এসব ছবিতে কাজ করছেন। এখন দর্শক আমাকে কীভাবে নেন, সেটা সময়ই বলবে।’\n\nবলিউডে উর্বশী রৌতেলার বন্ধু কে কে? তিনি বলেন, ‘এখানে প্রকৃত বন্ধু খুঁজে পাওয়া কঠিন। আমার সঙ্গে সবার কাজের সম্পর্ক। কাজের বাইরে সেভাবে কারও সঙ্গে সম্পর্ক নেই।’\n\nপ্রথম ‘হেট স্টোরি’ (২০১২) ছবিতে অভিনয় করেন পাওলি দাম। ‘হেট স্টোরি টু’ ছবিতে অভিনয় করেন সুরভিন চাওলা এবং ‘হেট স্টোরি থ্রি’ (২০১৫) ছবিতে জেরিন খান। এদিকে উর্বশী রৌতেলা ২০০৯ সালে ‘মিস টিন ইন্ডিয়া’ হন। তিনি ‘মিস এশিয়া সুপার মডেল’ হন ২০১১ সালে। একই বছর তিনি ‘মিস ট্যুরিজম কুইন অব দ্য ইয়ার ইন্টারন্যাশনাল ইন্ডিয়া’ হন। ‘মিস ইউনিভার্স’ প্রতিযোগিতায় ২০১৫ সালে ভারতের হয়ে প্রতিনিধিত্ব করেন।\n[dashboard_notes]', 'কাস্টিং কাউচের প্রতিবাদ করুন', 'কাস্টিং কাউচের প্রতিবাদ করার জন্য সবাইকে আহ্বান জানান উর্বশী রৌতেলা। ‘হেট স্টোরি ফোর’ ছবিতে অভিনয় করেছেন তিনি। এরটিক-থ্রিলার ধাঁচের ছবিটি নিয়ে এরই মধ্যে আলোচনায় এসেছেন', 'publish', 'open', 'open', '', '%e0%a6%aa%e0%a7%8d%e0%a6%b0%e0%a6%a4%e0%a6%bf%e0%a6%ac%e0%a6%be%e0%a6%a6', '', '', '2018-03-05 09:26:17', '2018-03-05 09:26:17', '', 0, 'http://localhost/wordpress_494/?p=48', 0, 'post', '', 0),
(78, 1, '2018-03-12 02:49:19', '2018-03-12 02:49:19', 'ঢাকা থেকে নেপালের উদ্দেশে ছেড়ে যাওয়া বেসরকারি বিমান সংস্থা ইউএস বাংলার একটি উড়োজাহাজ কাঠমান্ডুতে বিধ্বস্ত হয়েছে। আজ সোমবার কাঠমান্ডুর ত্রিভুবন আন্তর্জাতিক বিমানবন্দরের রানওয়েতে এই দুর্ঘটনা ঘটে বলে জানিয়েছে বিবিসি অনলাইন।\r\n\r\nইউএস বাংলা এয়ারলাইন্সের প্রধান নির্বাহী কর্মকর্তা ইমরান আসিফ আজ প্রথম আলোকে বলেন, ‘কাঠমান্ডু বিমানবন্দরে বিমান বিধ্বস্ত হওয়ার খবর পেয়েছি। আমরা ঢাকা থেকে যোগাযোগের চেষ্টা করছি। বিস্তারিত জানার চেষ্টায় আছি আমরা।’\r\n\r\n<!--more-->\r\n\r\n<img class=\"alignnone wp-image-82\" src=\"http://localhost/wordpress_494/wp-content/uploads/2018/03/image_4-300x199.jpg\" alt=\"\" width=\"627\" height=\"416\" />\r\n\r\n<img class=\"alignnone wp-image-79\" src=\"http://localhost/wordpress_494/wp-content/uploads/2018/03/image_1-300x168.jpg\" alt=\"\" width=\"612\" height=\"343\" />\r\n\r\nদুপুর ১২টা ৫১ মিনিটে ঢাকার হজরত শাহজালাল আন্তর্জাতিক বিমানবন্দর থেকে ৭১ জন আরোহী নিয়ে এটি ছেড়ে যায়। নেপালে পৌঁছানোর পর স্থানীয় সময় দুইটা ২০ মিনিটে (বাংলাদেশ সময় ৩টা ৫ মিনিট) এটি বিধ্বস্ত হয়। তবে প্রাথমিকভাবে বিধ্বস্ত হওয়ার কারণ জানা যায়নি।\r\n\r\nনেপালের ত্রিভুবন আন্তর্জাতিক বিমানবন্দর কর্তৃপক্ষ ধারণা করছে, অবতরণের সময় যান্ত্রিক গোলযোগের কারণে এই দুর্ঘটনা ঘটেছে।\r\n\r\nনেপালের পর্যটন মন্ত্রণালয়ের যুগ্ম সচিব সুরেশ আচার্য দেশটির ইংরেজি দৈনিক কাঠমান্ডু পোস্টকে বলেন, এ পর্যন্ত ১৭ জন যাত্রীকে উদ্ধার করে বিভিন্ন হাসপাতালে চিকিৎসার জন্য পাঠানো হয়েছে।\r\n\r\nত্রিভুবন আন্তর্জাতিক বিমানবন্দরের মুখপাত্র প্রেম নাথ ঠাকুর বলেন, অবতরণের সময় উড়োজাহাজটিতে আগুন ধরে যায়। পরে বিমানটি পাশের একটি ফুটবল মাঠে গিয়ে পড়ে।', 'নেপালে বিধ্বস্ত ইউএস বাংলার উড়োজাহাজ', 'ইউএস বাংলা এয়ারলাইন্সের প্রধান নির্বাহী কর্মকর্তা ইমরান আসিফ আজ প্রথম আলোকে বলেন, ‘কাঠমান্ডু বিমানবন্দরে বিমান বিধ্বস্ত হওয়ার খবর পেয়েছি। আমরা ঢাকা থেকে যোগাযোগের চেষ্টা করছি। বিস্তারিত জানার চেষ্টায় আছি আমরা।’', 'publish', 'open', 'open', '', '%e0%a6%a8%e0%a7%87%e0%a6%aa%e0%a6%be%e0%a6%b2%e0%a7%87-%e0%a6%ac%e0%a6%bf%e0%a6%a7%e0%a7%8d%e0%a6%ac%e0%a6%b8%e0%a7%8d%e0%a6%a4-%e0%a6%87%e0%a6%89%e0%a6%8f%e0%a6%b8-%e0%a6%ac%e0%a6%be%e0%a6%82', '', '', '2018-04-08 22:30:00', '2018-04-08 22:30:00', '', 0, 'http://localhost/wordpress_494/?p=78', 0, 'post', '', 6),
(212, 1, '2018-04-08 19:25:12', '2018-04-08 19:25:12', '', '182470_cgWLW1geYOPDqkuHJdbH9oJjU', '', 'inherit', 'open', 'closed', '', '182470_cgwlw1geyopdqkuhjdbh9ojju', '', '', '2018-04-08 19:25:12', '2018-04-08 19:25:12', '', 0, 'http://localhost/mywork/wordpress_project/wp-content/uploads/2018/04/182470_cgWLW1geYOPDqkuHJdbH9oJjU.jpg', 0, 'attachment', 'image/jpeg', 0),
(214, 1, '2018-04-08 19:29:34', '2018-04-08 19:29:34', '', '005', '', 'inherit', 'open', 'closed', '', '005', '', '', '2018-04-08 19:29:34', '2018-04-08 19:29:34', '', 0, 'http://localhost/mywork/wordpress_project/wp-content/uploads/2018/04/005.jpg', 0, 'attachment', 'image/jpeg', 0),
(216, 1, '2018-04-08 19:29:57', '2018-04-08 19:29:57', '', '015', '', 'inherit', 'open', 'closed', '', '015', '', '', '2018-04-10 08:45:40', '2018-04-10 08:45:40', '', 0, 'http://localhost/mywork/wordpress_project/wp-content/uploads/2018/04/015.jpg', 0, 'attachment', 'image/jpeg', 0),
(218, 1, '2018-04-08 19:30:23', '2018-04-08 19:30:23', '', '46', '', 'inherit', 'open', 'closed', '', '46', '', '', '2018-04-08 19:30:23', '2018-04-08 19:30:23', '', 0, 'http://localhost/mywork/wordpress_project/wp-content/uploads/2018/04/46.jpg', 0, 'attachment', 'image/jpeg', 0),
(220, 1, '2018-04-08 19:52:25', '2018-04-08 19:52:25', 'All you need is here for your knowledge', 'Blogs', '', 'publish', 'closed', 'closed', '', 'retina-ready', '', '', '2018-04-09 08:17:46', '2018-04-09 08:17:46', '', 0, 'http://localhost/mywork/wordpress_project/?post_type=blog_title&#038;p=220', 0, 'blog_title', '', 0),
(222, 1, '2018-04-08 19:56:28', '2018-04-08 19:56:28', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit', 'Retina ready', '', 'publish', 'closed', 'closed', '', 'retina-ready', '', '', '2018-04-08 19:56:28', '2018-04-08 19:56:28', '', 0, 'http://localhost/mywork/wordpress_project/?post_type=wp_feature&#038;p=222', 0, 'wp_feature', '', 0),
(223, 1, '2018-04-08 20:01:53', '2018-04-08 20:01:53', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit', 'Easy to customize', '', 'publish', 'closed', 'closed', '', 'easy-to-customize', '', '', '2018-04-08 20:01:53', '2018-04-08 20:01:53', '', 0, 'http://localhost/mywork/wordpress_project/?post_type=wp_feature&#038;p=223', 0, 'wp_feature', '', 0),
(224, 1, '2018-04-08 20:02:11', '2018-04-08 20:02:11', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit', 'Adipisicing elit', '', 'publish', 'closed', 'closed', '', 'adipisicing-elit', '', '', '2018-04-08 20:02:11', '2018-04-08 20:02:11', '', 0, 'http://localhost/mywork/wordpress_project/?post_type=wp_feature&#038;p=224', 0, 'wp_feature', '', 0),
(225, 1, '2018-04-08 20:02:28', '2018-04-08 20:02:28', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit', 'Sed do eiusmod', '', 'publish', 'closed', 'closed', '', 'sed-do-eiusmod', '', '', '2018-04-08 20:02:28', '2018-04-08 20:02:28', '', 0, 'http://localhost/mywork/wordpress_project/?post_type=wp_feature&#038;p=225', 0, 'wp_feature', '', 0),
(226, 1, '2018-04-08 20:02:50', '2018-04-08 20:02:50', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit', 'Labore et dolore', '', 'publish', 'closed', 'closed', '', 'labore-et-dolore', '', '', '2018-04-08 20:02:50', '2018-04-08 20:02:50', '', 0, 'http://localhost/mywork/wordpress_project/?post_type=wp_feature&#038;p=226', 0, 'wp_feature', '', 0),
(227, 1, '2018-04-08 20:03:29', '2018-04-08 20:03:29', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit', 'Fresh and Clean', '', 'publish', 'closed', 'closed', '', 'fresh-and-clean', '', '', '2018-04-08 20:03:29', '2018-04-08 20:03:29', '', 0, 'http://localhost/mywork/wordpress_project/?post_type=wp_feature&#038;p=227', 0, 'wp_feature', '', 0),
(229, 1, '2018-04-08 20:27:13', '2018-04-08 20:27:13', '', '', '', 'publish', 'closed', 'closed', '', '229', '', '', '2018-04-08 20:27:13', '2018-04-08 20:27:13', '', 0, 'http://localhost/mywork/wordpress_project/?post_type=wp_works&#038;p=229', 0, 'wp_works', '', 0),
(230, 1, '2018-04-08 20:27:04', '2018-04-08 20:27:04', '', 'item1', '', 'inherit', 'open', 'closed', '', 'item1', '', '', '2018-04-08 20:27:04', '2018-04-08 20:27:04', '', 229, 'http://localhost/mywork/wordpress_project/wp-content/uploads/2018/04/item1.png', 0, 'attachment', 'image/png', 0),
(231, 1, '2018-04-08 20:27:05', '2018-04-08 20:27:05', '', 'item2', '', 'inherit', 'open', 'closed', '', 'item2', '', '', '2018-04-08 20:27:05', '2018-04-08 20:27:05', '', 229, 'http://localhost/mywork/wordpress_project/wp-content/uploads/2018/04/item2.png', 0, 'attachment', 'image/png', 0),
(232, 1, '2018-04-08 20:27:06', '2018-04-08 20:27:06', '', 'item3', '', 'inherit', 'open', 'closed', '', 'item3', '', '', '2018-04-08 20:27:06', '2018-04-08 20:27:06', '', 229, 'http://localhost/mywork/wordpress_project/wp-content/uploads/2018/04/item3.png', 0, 'attachment', 'image/png', 0),
(233, 1, '2018-04-08 20:27:06', '2018-04-08 20:27:06', '', 'item4', '', 'inherit', 'open', 'closed', '', 'item4', '', '', '2018-04-08 20:27:06', '2018-04-08 20:27:06', '', 229, 'http://localhost/mywork/wordpress_project/wp-content/uploads/2018/04/item4.png', 0, 'attachment', 'image/png', 0),
(234, 1, '2018-04-08 20:27:07', '2018-04-08 20:27:07', '', 'item5', '', 'inherit', 'open', 'closed', '', 'item5', '', '', '2018-04-08 20:27:07', '2018-04-08 20:27:07', '', 229, 'http://localhost/mywork/wordpress_project/wp-content/uploads/2018/04/item5.png', 0, 'attachment', 'image/png', 0),
(235, 1, '2018-04-08 20:27:07', '2018-04-08 20:27:07', '', 'item6', '', 'inherit', 'open', 'closed', '', 'item6', '', '', '2018-04-08 20:27:07', '2018-04-08 20:27:07', '', 229, 'http://localhost/mywork/wordpress_project/wp-content/uploads/2018/04/item6.png', 0, 'attachment', 'image/png', 0),
(236, 1, '2018-04-08 20:27:08', '2018-04-08 20:27:08', '', 'item7', '', 'inherit', 'open', 'closed', '', 'item7', '', '', '2018-04-08 20:27:08', '2018-04-08 20:27:08', '', 229, 'http://localhost/mywork/wordpress_project/wp-content/uploads/2018/04/item7.png', 0, 'attachment', 'image/png', 0),
(237, 1, '2018-04-08 20:27:08', '2018-04-08 20:27:08', '', 'item8', '', 'inherit', 'open', 'closed', '', 'item8', '', '', '2018-04-08 20:27:08', '2018-04-08 20:27:08', '', 229, 'http://localhost/mywork/wordpress_project/wp-content/uploads/2018/04/item8.png', 0, 'attachment', 'image/png', 0),
(238, 1, '2018-04-08 20:27:24', '2018-04-08 20:27:24', '', '', '', 'publish', 'closed', 'closed', '', '238', '', '', '2018-04-08 20:27:24', '2018-04-08 20:27:24', '', 0, 'http://localhost/mywork/wordpress_project/?post_type=wp_works&#038;p=238', 0, 'wp_works', '', 0),
(239, 1, '2018-04-08 20:27:33', '2018-04-08 20:27:33', '', '', '', 'publish', 'closed', 'closed', '', '239', '', '', '2018-04-08 20:27:33', '2018-04-08 20:27:33', '', 0, 'http://localhost/mywork/wordpress_project/?post_type=wp_works&#038;p=239', 0, 'wp_works', '', 0),
(240, 1, '2018-04-08 20:27:42', '2018-04-08 20:27:42', '', '', '', 'publish', 'closed', 'closed', '', '240', '', '', '2018-04-08 20:27:42', '2018-04-08 20:27:42', '', 0, 'http://localhost/mywork/wordpress_project/?post_type=wp_works&#038;p=240', 0, 'wp_works', '', 0),
(241, 1, '2018-04-08 20:27:52', '2018-04-08 20:27:52', '', '', '', 'publish', 'closed', 'closed', '', '241', '', '', '2018-04-08 20:27:52', '2018-04-08 20:27:52', '', 0, 'http://localhost/mywork/wordpress_project/?post_type=wp_works&#038;p=241', 0, 'wp_works', '', 0),
(242, 1, '2018-04-08 20:28:01', '2018-04-08 20:28:01', '', '', '', 'publish', 'closed', 'closed', '', '242', '', '', '2018-04-08 20:28:01', '2018-04-08 20:28:01', '', 0, 'http://localhost/mywork/wordpress_project/?post_type=wp_works&#038;p=242', 0, 'wp_works', '', 0),
(243, 1, '2018-04-08 20:28:13', '2018-04-08 20:28:13', '', '', '', 'publish', 'closed', 'closed', '', '243', '', '', '2018-04-08 20:28:13', '2018-04-08 20:28:13', '', 0, 'http://localhost/mywork/wordpress_project/?post_type=wp_works&#038;p=243', 0, 'wp_works', '', 0),
(244, 1, '2018-04-08 20:28:23', '2018-04-08 20:28:23', '', '', '', 'publish', 'closed', 'closed', '', '244', '', '', '2018-04-08 20:28:23', '2018-04-08 20:28:23', '', 0, 'http://localhost/mywork/wordpress_project/?post_type=wp_works&#038;p=244', 0, 'wp_works', '', 0),
(245, 1, '2018-04-08 22:30:00', '2018-04-08 22:30:00', 'ঢাকা থেকে নেপালের উদ্দেশে ছেড়ে যাওয়া বেসরকারি বিমান সংস্থা ইউএস বাংলার একটি উড়োজাহাজ কাঠমান্ডুতে বিধ্বস্ত হয়েছে। আজ সোমবার কাঠমান্ডুর ত্রিভুবন আন্তর্জাতিক বিমানবন্দরের রানওয়েতে এই দুর্ঘটনা ঘটে বলে জানিয়েছে বিবিসি অনলাইন।\r\n\r\nইউএস বাংলা এয়ারলাইন্সের প্রধান নির্বাহী কর্মকর্তা ইমরান আসিফ আজ প্রথম আলোকে বলেন, ‘কাঠমান্ডু বিমানবন্দরে বিমান বিধ্বস্ত হওয়ার খবর পেয়েছি। আমরা ঢাকা থেকে যোগাযোগের চেষ্টা করছি। বিস্তারিত জানার চেষ্টায় আছি আমরা।’\r\n\r\n<!--more-->\r\n\r\n<img class=\"alignnone wp-image-82\" src=\"http://localhost/wordpress_494/wp-content/uploads/2018/03/image_4-300x199.jpg\" alt=\"\" width=\"627\" height=\"416\" />\r\n\r\n<img class=\"alignnone wp-image-79\" src=\"http://localhost/wordpress_494/wp-content/uploads/2018/03/image_1-300x168.jpg\" alt=\"\" width=\"612\" height=\"343\" />\r\n\r\nদুপুর ১২টা ৫১ মিনিটে ঢাকার হজরত শাহজালাল আন্তর্জাতিক বিমানবন্দর থেকে ৭১ জন আরোহী নিয়ে এটি ছেড়ে যায়। নেপালে পৌঁছানোর পর স্থানীয় সময় দুইটা ২০ মিনিটে (বাংলাদেশ সময় ৩টা ৫ মিনিট) এটি বিধ্বস্ত হয়। তবে প্রাথমিকভাবে বিধ্বস্ত হওয়ার কারণ জানা যায়নি।\r\n\r\nনেপালের ত্রিভুবন আন্তর্জাতিক বিমানবন্দর কর্তৃপক্ষ ধারণা করছে, অবতরণের সময় যান্ত্রিক গোলযোগের কারণে এই দুর্ঘটনা ঘটেছে।\r\n\r\nনেপালের পর্যটন মন্ত্রণালয়ের যুগ্ম সচিব সুরেশ আচার্য দেশটির ইংরেজি দৈনিক কাঠমান্ডু পোস্টকে বলেন, এ পর্যন্ত ১৭ জন যাত্রীকে উদ্ধার করে বিভিন্ন হাসপাতালে চিকিৎসার জন্য পাঠানো হয়েছে।\r\n\r\nত্রিভুবন আন্তর্জাতিক বিমানবন্দরের মুখপাত্র প্রেম নাথ ঠাকুর বলেন, অবতরণের সময় উড়োজাহাজটিতে আগুন ধরে যায়। পরে বিমানটি পাশের একটি ফুটবল মাঠে গিয়ে পড়ে।', 'নেপালে বিধ্বস্ত ইউএস বাংলার উড়োজাহাজ', 'ইউএস বাংলা এয়ারলাইন্সের প্রধান নির্বাহী কর্মকর্তা ইমরান আসিফ আজ প্রথম আলোকে বলেন, ‘কাঠমান্ডু বিমানবন্দরে বিমান বিধ্বস্ত হওয়ার খবর পেয়েছি। আমরা ঢাকা থেকে যোগাযোগের চেষ্টা করছি। বিস্তারিত জানার চেষ্টায় আছি আমরা।’', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2018-04-08 22:30:00', '2018-04-08 22:30:00', '', 78, 'http://localhost/mywork/wordpress_project/2018/04/08/78-revision-v1/', 0, 'revision', '', 0),
(247, 1, '2018-04-09 00:05:33', '2018-04-09 00:05:33', '', 'preview-banner-maker', '', 'inherit', 'open', 'closed', '', 'preview-banner-maker', '', '', '2018-04-09 00:05:33', '2018-04-09 00:05:33', '', 0, 'http://localhost/mywork/wordpress_project/wp-content/uploads/2018/04/preview-banner-maker.png', 0, 'attachment', 'image/png', 0),
(248, 1, '2018-04-09 00:05:52', '2018-04-09 00:05:52', '', 'HomepageBanners_SA', '', 'inherit', 'open', 'closed', '', 'homepagebanners_sa', '', '', '2018-04-09 00:05:52', '2018-04-09 00:05:52', '', 0, 'http://localhost/mywork/wordpress_project/wp-content/uploads/2018/04/HomepageBanners_SA.jpg', 0, 'attachment', 'image/jpeg', 0),
(249, 1, '2018-04-09 00:05:53', '2018-04-09 00:05:53', '', 'youtube-channel-art-banner-business-plan-template-regarding-youtube-channel-art-banner', '', 'inherit', 'open', 'closed', '', 'youtube-channel-art-banner-business-plan-template-regarding-youtube-channel-art-banner', '', '', '2018-04-09 00:05:53', '2018-04-09 00:05:53', '', 0, 'http://localhost/mywork/wordpress_project/wp-content/uploads/2018/04/youtube-channel-art-banner-business-plan-template-regarding-youtube-channel-art-banner.jpg', 0, 'attachment', 'image/jpeg', 0),
(252, 1, '2018-04-09 00:13:45', '2018-04-09 00:13:45', '', 'banner-header-tapete-145002399028x (1)', '', 'inherit', 'open', 'closed', '', 'banner-header-tapete-145002399028x-1', '', '', '2018-04-09 00:13:45', '2018-04-09 00:13:45', '', 0, 'http://localhost/mywork/wordpress_project/wp-content/uploads/2018/04/banner-header-tapete-145002399028x-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(254, 1, '2018-04-09 00:15:10', '2018-04-09 00:15:10', '', 'slider_one', '', 'inherit', 'open', 'closed', '', 'slider_one', '', '', '2018-04-09 00:15:10', '2018-04-09 00:15:10', '', 0, 'http://localhost/mywork/wordpress_project/wp-content/uploads/2018/04/slider_one.jpg', 0, 'attachment', 'image/jpeg', 0),
(255, 1, '2018-04-09 00:23:12', '2018-04-09 00:23:12', '', '', '', 'publish', 'closed', 'closed', '', '255', '', '', '2018-04-09 00:23:12', '2018-04-09 00:23:12', '', 0, 'http://localhost/mywork/wordpress_project/?post_type=wp_slider&#038;p=255', 0, 'wp_slider', '', 0),
(256, 1, '2018-04-09 00:23:05', '2018-04-09 00:23:05', '', 'admin_slider_1', '', 'inherit', 'open', 'closed', '', 'admin_slider_1', '', '', '2018-04-09 00:23:05', '2018-04-09 00:23:05', '', 255, 'http://localhost/mywork/wordpress_project/wp-content/uploads/2018/04/admin_slider_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(257, 1, '2018-04-09 00:23:05', '2018-04-09 00:23:05', '', 'p02vdpfn-1169x487', 'Open book', 'inherit', 'open', 'closed', '', 'p02vdpfn-1169x487', '', '', '2018-04-09 00:23:05', '2018-04-09 00:23:05', '', 255, 'http://localhost/mywork/wordpress_project/wp-content/uploads/2018/04/p02vdpfn-1169x487.jpg', 0, 'attachment', 'image/jpeg', 0),
(258, 1, '2018-04-09 00:23:06', '2018-04-09 00:23:06', '', 'slider_two', '', 'inherit', 'open', 'closed', '', 'slider_two', '', '', '2018-04-09 00:23:06', '2018-04-09 00:23:06', '', 255, 'http://localhost/mywork/wordpress_project/wp-content/uploads/2018/04/slider_two.jpg', 0, 'attachment', 'image/jpeg', 0),
(259, 1, '2018-04-09 00:23:56', '2018-04-09 00:23:56', '', '', '', 'publish', 'closed', 'closed', '', '259', '', '', '2018-04-09 00:23:56', '2018-04-09 00:23:56', '', 0, 'http://localhost/mywork/wordpress_project/?post_type=wp_slider&#038;p=259', 0, 'wp_slider', '', 0),
(260, 1, '2018-04-09 00:24:15', '2018-04-09 00:24:15', '', '', '', 'publish', 'closed', 'closed', '', '260', '', '', '2018-04-09 00:24:15', '2018-04-09 00:24:15', '', 0, 'http://localhost/mywork/wordpress_project/?post_type=wp_slider&#038;p=260', 0, 'wp_slider', '', 0),
(262, 1, '2018-04-09 06:07:47', '2018-04-09 06:07:47', '', '59f58ab335011', '', 'inherit', 'open', 'closed', '', '59f58ab335011', '', '', '2018-04-09 06:07:47', '2018-04-09 06:07:47', '', 0, 'http://localhost/mywork/wordpress_project/wp-content/uploads/2018/04/59f58ab335011.gif', 0, 'attachment', 'image/gif', 0),
(263, 1, '2018-04-09 06:07:48', '2018-04-09 06:07:48', '', '93477322330024.png', '', 'inherit', 'open', 'closed', '', '93477322330024-png', '', '', '2018-04-09 06:07:48', '2018-04-09 06:07:48', '', 0, 'http://localhost/mywork/wordpress_project/wp-content/uploads/2018/04/93477322330024.png.gif', 0, 'attachment', 'image/gif', 0),
(264, 1, '2018-04-09 06:53:32', '2018-04-09 06:53:32', 'http://localhost/mywork/wordpress_project/wp-content/uploads/2018/04/cropped-182470_cgWLW1geYOPDqkuHJdbH9oJjU.jpg', 'cropped-182470_cgWLW1geYOPDqkuHJdbH9oJjU.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-182470_cgwlw1geyopdqkuhjdbh9ojju-jpg', '', '', '2018-04-09 06:53:32', '2018-04-09 06:53:32', '', 0, 'http://localhost/mywork/wordpress_project/wp-content/uploads/2018/04/cropped-182470_cgWLW1geYOPDqkuHJdbH9oJjU.jpg', 0, 'attachment', 'image/jpeg', 0),
(266, 1, '2018-04-09 06:57:31', '2018-04-09 06:57:31', '', 'forposting4', '', 'inherit', 'open', 'closed', '', 'forposting4', '', '', '2018-04-09 06:57:31', '2018-04-09 06:57:31', '', 0, 'http://localhost/mywork/wordpress_project/wp-content/uploads/2018/04/forposting4.png', 0, 'attachment', 'image/png', 0),
(267, 1, '2018-04-09 06:57:45', '2018-04-09 06:57:45', 'http://localhost/mywork/wordpress_project/wp-content/uploads/2018/04/cropped-forposting4.png', 'cropped-forposting4.png', '', 'inherit', 'open', 'closed', '', 'cropped-forposting4-png', '', '', '2018-04-09 06:57:45', '2018-04-09 06:57:45', '', 0, 'http://localhost/mywork/wordpress_project/wp-content/uploads/2018/04/cropped-forposting4.png', 0, 'attachment', 'image/png', 0),
(269, 1, '2018-04-09 06:58:28', '2018-04-09 06:58:28', 'http://localhost/mywork/wordpress_project/wp-content/uploads/2018/04/cropped-forposting4-1.png', 'cropped-forposting4-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-forposting4-1-png', '', '', '2018-04-09 06:58:28', '2018-04-09 06:58:28', '', 0, 'http://localhost/mywork/wordpress_project/wp-content/uploads/2018/04/cropped-forposting4-1.png', 0, 'attachment', 'image/png', 0),
(271, 1, '2018-04-09 06:59:21', '2018-04-09 06:59:21', 'http://localhost/mywork/wordpress_project/wp-content/uploads/2018/04/cropped-forposting4-2.png', 'cropped-forposting4-2.png', '', 'inherit', 'open', 'closed', '', 'cropped-forposting4-2-png', '', '', '2018-04-09 06:59:21', '2018-04-09 06:59:21', '', 0, 'http://localhost/mywork/wordpress_project/wp-content/uploads/2018/04/cropped-forposting4-2.png', 0, 'attachment', 'image/png', 0),
(273, 1, '2018-04-09 07:00:01', '2018-04-09 07:00:01', 'http://localhost/mywork/wordpress_project/wp-content/uploads/2018/04/cropped-forposting4-3.png', 'cropped-forposting4-3.png', '', 'inherit', 'open', 'closed', '', 'cropped-forposting4-3-png', '', '', '2018-04-09 07:00:01', '2018-04-09 07:00:01', '', 0, 'http://localhost/mywork/wordpress_project/wp-content/uploads/2018/04/cropped-forposting4-3.png', 0, 'attachment', 'image/png', 0),
(275, 1, '2018-04-09 07:01:55', '2018-04-09 07:01:55', '', 'igwebs_logo-final', '', 'inherit', 'open', 'closed', '', 'igwebs_logo-final', '', '', '2018-04-09 07:01:55', '2018-04-09 07:01:55', '', 0, 'http://localhost/mywork/wordpress_project/wp-content/uploads/2018/04/igwebs_logo-final.jpg', 0, 'attachment', 'image/jpeg', 0),
(276, 1, '2018-04-09 07:02:14', '2018-04-09 07:02:14', 'http://localhost/mywork/wordpress_project/wp-content/uploads/2018/04/cropped-igwebs_logo-final.jpg', 'cropped-igwebs_logo-final.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-igwebs_logo-final-jpg', '', '', '2018-04-09 07:02:14', '2018-04-09 07:02:14', '', 0, 'http://localhost/mywork/wordpress_project/wp-content/uploads/2018/04/cropped-igwebs_logo-final.jpg', 0, 'attachment', 'image/jpeg', 0),
(279, 1, '2018-04-09 08:02:13', '2018-04-09 08:02:13', ' ', '', '', 'publish', 'closed', 'closed', '', '279', '', '', '2018-04-09 08:02:13', '2018-04-09 08:02:13', '', 0, 'http://localhost/mywork/wordpress_project/?p=279', 5, 'nav_menu_item', '', 0),
(280, 1, '2018-04-09 08:02:52', '2018-04-09 08:02:52', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href=\"http://localhost/mywork/wordpress_project/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-09 08:02:52', '2018-04-09 08:02:52', '', 2, 'http://localhost/mywork/wordpress_project/2018/04/09/2-revision-v1/', 0, 'revision', '', 0),
(281, 1, '2018-04-09 21:05:18', '2018-04-09 21:05:18', '\n[flickrsss]\nhgfhfhdfgf', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2018-04-09 21:05:18', '2018-04-09 21:05:18', '', 2, 'http://localhost/mywork/wordpress_project/2018/04/09/2-autosave-v1/', 0, 'revision', '', 0),
(282, 1, '2018-04-09 08:10:08', '2018-04-09 08:10:08', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\nHi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)\r\n...or something like this:\r\nThe XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.\r\nAs a new WordPress user, you should go to your dashboard to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-09 08:10:08', '2018-04-09 08:10:08', '', 2, 'http://localhost/mywork/wordpress_project/2018/04/09/2-revision-v1/', 0, 'revision', '', 0),
(283, 1, '2018-04-09 08:23:14', '2018-04-09 08:23:14', '', '300-X-600-PX', '', 'inherit', 'open', 'closed', '', '300-x-600-px', '', '', '2018-04-09 08:23:14', '2018-04-09 08:23:14', '', 0, 'http://localhost/mywork/wordpress_project/wp-content/uploads/2018/04/300-X-600-PX.gif', 0, 'attachment', 'image/gif', 0),
(284, 1, '2018-04-09 08:25:33', '2018-04-09 08:25:33', '<img class=\"alignnone size-medium wp-image-254\" src=\"http://localhost/mywork/wordpress_project/wp-content/uploads/2018/04/slider_one-300x125.jpg\" alt=\"\" width=\"300\" height=\"125\" />\r\n\r\nThis is an example page. It’s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\nHi there! I’m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin’ caught in the rain.)\r\n…or something like this:\r\nThe XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.\r\nAs a new WordPress user, you should go to your dashboard to delete this page and create new pages for your content. Have fun!', 'About Us', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-04-09 08:25:33', '2018-04-09 08:25:33', '', 10, 'http://localhost/mywork/wordpress_project/2018/04/09/10-revision-v1/', 0, 'revision', '', 0),
(285, 1, '2018-04-09 08:25:58', '2018-04-09 08:25:58', '<img class=\"alignnone  wp-image-254\" src=\"http://localhost/mywork/wordpress_project/wp-content/uploads/2018/04/slider_one-300x125.jpg\" alt=\"\" width=\"814\" height=\"339\" />\r\n\r\nThis is an example page. It’s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\nHi there! I’m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin’ caught in the rain.)\r\n…or something like this:\r\nThe XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.\r\nAs a new WordPress user, you should go to your dashboard to delete this page and create new pages for your content. Have fun!', 'About Us', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-04-09 08:25:58', '2018-04-09 08:25:58', '', 10, 'http://localhost/mywork/wordpress_project/2018/04/09/10-revision-v1/', 0, 'revision', '', 0),
(289, 1, '2018-04-09 08:45:53', '2018-04-09 08:45:53', '[news-slider]', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-04-09 08:45:53', '2018-04-09 08:45:53', '', 8, 'http://localhost/mywork/wordpress_project/2018/04/09/8-revision-v1/', 0, 'revision', '', 0),
(291, 1, '2018-04-09 07:51:36', '2018-04-09 07:51:36', '\n[gallery]', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '8-autosave-v1', '', '', '2018-04-09 07:51:36', '2018-04-09 07:51:36', '', 8, 'http://localhost/mywork/wordpress_project/2018/04/09/8-autosave-v1/', 0, 'revision', '', 0),
(292, 1, '2018-04-09 07:51:46', '2018-04-09 07:51:46', '\r\n[gallery]', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-04-09 07:51:46', '2018-04-09 07:51:46', '', 8, 'http://localhost/mywork/wordpress_project/2018/04/09/8-revision-v1/', 0, 'revision', '', 0),
(293, 1, '2018-04-09 07:51:51', '2018-04-09 07:51:51', '[gallery]', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-04-09 07:51:51', '2018-04-09 07:51:51', '', 8, 'http://localhost/mywork/wordpress_project/2018/04/09/8-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(294, 1, '2018-04-09 08:09:05', '2018-04-09 08:09:05', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\nHi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)\r\n...or something like this:\r\nThe XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.\r\nAs a new WordPress user, you should go to your dashboard to delete this page and create new pages for your content. Have fun!\r\nThis is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\nHi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)\r\n...or something like this:\r\nThe XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.\r\nAs a new WordPress user, you should go to your dashboard to delete this page and create new pages for your content. Have fun!\r\nThis is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\nHi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)\r\n...or something like this:\r\nThe XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.\r\nAs a new WordPress user, you should go to your dashboard to delete this page and create new pages for your content. Have fun!\r\nThis is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\nHi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)\r\n...or something like this:\r\nThe XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.\r\nAs a new WordPress user, you should go to your dashboard to delete this page and create new pages for your content. Have fun!\r\nThis is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\nHi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)\r\n...or something like this:\r\nThe XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.\r\nAs a new WordPress user, you should go to your dashboard to delete this page and create new pages for your content. Have fun!This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\nHi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)\r\n...or something like this:\r\nThe XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.\r\nAs a new WordPress user, you should go to your dashboard to delete this page and create new pages for your content. Have fun!This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\nHi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)\r\n...or something like this:\r\nThe XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.\r\nAs a new WordPress user, you should go to your dashboard to delete this page and create new pages for your content. Have fun!This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\nHi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)\r\n...or something like this:\r\nThe XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.\r\nAs a new WordPress user, you should go to your dashboard to delete this page and create new pages for your content. Have fun!This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\nHi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)\r\n...or something like this:\r\nThe XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.\r\nAs a new WordPress user, you should go to your dashboard to delete this page and create new pages for your content. Have fun!This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\nHi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)\r\n...or something like this:\r\nThe XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.\r\nAs a new WordPress user, you should go to your dashboard to delete this page and create new pages for your content. Have fun!This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\nHi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)\r\n...or something like this:\r\nThe XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.\r\nAs a new WordPress user, you should go to your dashboard to delete this page and create new pages for your content. Have fun!This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\nHi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)\r\n...or something like this:\r\nThe XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.\r\nAs a new WordPress user, you should go to your dashboard to delete this page and create new pages for your content. Have fun!This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\nHi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)\r\n...or something like this:\r\nThe XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.\r\nAs a new WordPress user, you should go to your dashboard to delete this page and create new pages for your content. Have fun!This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\nHi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)\r\n...or something like this:\r\nThe XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.\r\nAs a new WordPress user, you should go to your dashboard to delete this page and create new pages for your content. Have fun!This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\nHi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)\r\n...or something like this:\r\nThe XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.\r\nAs a new WordPress user, you should go to your dashboard to delete this page and create new pages for your content. Have fun!This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\nHi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)\r\n...or something like this:\r\nThe XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.\r\nAs a new WordPress user, you should go to your dashboard to delete this page and create new pages for your content. Have fun!This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\nHi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)\r\n...or something like this:\r\nThe XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.\r\nAs a new WordPress user, you should go to your dashboard to delete this page and create new pages for your content. Have fun!This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\nHi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)\r\n...or something like this:\r\nThe XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.\r\nAs a new WordPress user, you should go to your dashboard to delete this page and create new pages for your content. Have fun!This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\nHi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)\r\n...or something like this:\r\nThe XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.\r\nAs a new WordPress user, you should go to your dashboard to delete this page and create new pages for your content. Have fun!This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\nHi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)\r\n...or something like this:\r\nThe XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.\r\nAs a new WordPress user, you should go to your dashboard to delete this page and create new pages for your content. Have fun!This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\nHi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)\r\n...or something like this:\r\nThe XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.\r\nAs a new WordPress user, you should go to your dashboard to delete this page and create new pages for your content. Have fun!This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\nHi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)\r\n...or something like this:\r\nThe XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.\r\nAs a new WordPress user, you should go to your dashboard to delete this page and create new pages for your content. Have fun!This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\nHi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)\r\n...or something like this:\r\nThe XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.\r\nAs a new WordPress user, you should go to your dashboard to delete this page and create new pages for your content. Have fun!This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\nHi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)\r\n...or something like this:\r\nThe XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.\r\nAs a new WordPress user, you should go to your dashboard to delete this page and create new pages for your content. Have fun!This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\nHi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)\r\n...or something like this:\r\nThe XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.\r\nAs a new WordPress user, you should go to your dashboard to delete this page and create new pages for your content. Have fun!This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\nHi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)\r\n...or something like this:\r\nThe XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.\r\nAs a new WordPress user, you should go to your dashboard to delete this page and create new pages for your content. Have fun!This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\nHi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)\r\n...or something like this:\r\nThe XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.\r\nAs a new WordPress user, you should go to your dashboard to delete this page and create new pages for your content. Have fun!This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\nHi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)\r\n...or something like this:\r\nThe XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.\r\nAs a new WordPress user, you should go to your dashboard to delete this page and create new pages for your content. Have fun!This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\nHi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)\r\n...or something like this:\r\nThe XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.\r\nAs a new WordPress user, you should go to your dashboard to delete this page and create new pages for your content. Have fun!This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\nHi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)\r\n...or something like this:\r\nThe XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.\r\nAs a new WordPress user, you should go to your dashboard to delete this page and create new pages for your content. Have fun!This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\nHi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)\r\n...or something like this:\r\nThe XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.\r\nAs a new WordPress user, you should go to your dashboard to delete this page and create new pages for your content. Have fun!This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\nHi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)\r\n...or something like this:\r\nThe XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.\r\nAs a new WordPress user, you should go to your dashboard to delete this page and create new pages for your content. Have fun!This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\nHi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)\r\n...or something like this:\r\nThe XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.\r\nAs a new WordPress user, you should go to your dashboard to delete this page and create new pages for your content. Have fun!This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\nHi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)\r\n...or something like this:\r\nThe XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.\r\nAs a new WordPress user, you should go to your dashboard to delete this page and create new pages for your content. Have fun!This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\nHi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)\r\n...or something like this:\r\nThe XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.\r\nAs a new WordPress user, you should go to your dashboard to delete this page and create new pages for your content. Have fun!This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\nHi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)\r\n...or something like this:\r\nThe XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.\r\nAs a new WordPress user, you should go to your dashboard to delete this page and create new pages for your content. Have fun!This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\nHi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)\r\n...or something like this:\r\nThe XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.\r\nAs a new WordPress user, you should go to your dashboard to delete this page and create new pages for your content. Have fun!This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\nHi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)\r\n...or something like this:\r\nThe XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.\r\nAs a new WordPress user, you should go to your dashboard to delete this page and create new pages for your content. Have fun!This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\nHi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)\r\n...or something like this:\r\nThe XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.\r\nAs a new WordPress user, you should go to your dashboard to delete this page and create new pages for your content. Have fun!This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\nHi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)\r\n...or something like this:\r\nThe XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.\r\nAs a new WordPress user, you should go to your dashboard to delete this page and create new pages for your content. Have fun!This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\nHi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)\r\n...or something like this:\r\nThe XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.\r\nAs a new WordPress user, you should go to your dashboard to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-09 08:09:05', '2018-04-09 08:09:05', '', 2, 'http://localhost/mywork/wordpress_project/2018/04/09/2-revision-v1/', 0, 'revision', '', 0),
(295, 1, '2018-04-09 08:49:31', '2018-04-09 08:49:31', '[instagram]', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-04-09 08:49:31', '2018-04-09 08:49:31', '', 8, 'http://localhost/mywork/wordpress_project/2018/04/09/8-revision-v1/', 0, 'revision', '', 0),
(296, 1, '2018-04-09 18:09:09', '2018-04-09 18:09:09', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]\nWordpress Project \"[your-subject]\"\n[your-name] <paponbd2016@gmail.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Wordpress Project (http://localhost/mywork/wordpress_project)\npaponbd2016@gmail.com\nReply-To: [your-email]\n\n0\n0\n\nWordpress Project \"[your-subject]\"\nWordpress Project <paponbd2016@gmail.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Wordpress Project (http://localhost/mywork/wordpress_project)\n[your-email]\nReply-To: paponbd2016@gmail.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2018-04-09 18:09:09', '2018-04-09 18:09:09', '', 0, 'http://localhost/mywork/wordpress_project/?post_type=wpcf7_contact_form&p=296', 0, 'wpcf7_contact_form', '', 0),
(297, 1, '2018-04-09 18:10:23', '2018-04-09 18:10:23', '[contact-form-7 id=\"296\" title=\"Contact form 1\"]', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-04-09 18:10:23', '2018-04-09 18:10:23', '', 8, 'http://localhost/mywork/wordpress_project/2018/04/09/8-revision-v1/', 0, 'revision', '', 0),
(298, 1, '2018-04-09 18:28:01', '2018-04-09 18:28:01', '', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-09 18:28:01', '2018-04-09 18:28:01', '', 2, 'http://localhost/mywork/wordpress_project/2018/04/09/2-revision-v1/', 0, 'revision', '', 0),
(299, 1, '2018-04-09 18:28:21', '2018-04-09 18:28:21', '[instagram]', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-09 18:28:21', '2018-04-09 18:28:21', '', 2, 'http://localhost/mywork/wordpress_project/2018/04/09/2-revision-v1/', 0, 'revision', '', 0),
(300, 1, '2018-04-09 19:00:48', '2018-04-09 19:00:48', 'pahoto \r\n[instagram]', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-09 19:00:48', '2018-04-09 19:00:48', '', 2, 'http://localhost/mywork/wordpress_project/2018/04/09/2-revision-v1/', 0, 'revision', '', 0),
(301, 1, '2018-04-09 20:32:02', '2018-04-09 20:32:02', 'pahoto \r\n[flickr]', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-09 20:32:02', '2018-04-09 20:32:02', '', 2, 'http://localhost/mywork/wordpress_project/2018/04/09/2-revision-v1/', 0, 'revision', '', 0),
(302, 1, '2018-04-09 20:41:31', '2018-04-09 20:41:31', ' \r\n[flickr]', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-09 20:41:31', '2018-04-09 20:41:31', '', 2, 'http://localhost/mywork/wordpress_project/2018/04/09/2-revision-v1/', 0, 'revision', '', 0),
(303, 1, '2018-04-09 20:50:45', '2018-04-09 20:50:45', ' \r\n[flicrkr]', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-09 20:50:45', '2018-04-09 20:50:45', '', 2, 'http://localhost/mywork/wordpress_project/2018/04/09/2-revision-v1/', 0, 'revision', '', 0),
(304, 1, '2018-04-09 20:50:58', '2018-04-09 20:50:58', ' \r\n[flickr]', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-09 20:50:58', '2018-04-09 20:50:58', '', 2, 'http://localhost/mywork/wordpress_project/2018/04/09/2-revision-v1/', 0, 'revision', '', 0),
(305, 1, '2018-04-09 21:04:06', '2018-04-09 21:04:06', ' \r\n[flickrsss]', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-09 21:04:06', '2018-04-09 21:04:06', '', 2, 'http://localhost/mywork/wordpress_project/2018/04/09/2-revision-v1/', 0, 'revision', '', 0),
(306, 1, '2018-04-09 21:05:01', '2018-04-09 21:05:01', ' rrtgrtr\r\n[flickrsss]\r\nhgfhfhdfgf', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-09 21:05:01', '2018-04-09 21:05:01', '', 2, 'http://localhost/mywork/wordpress_project/2018/04/09/2-revision-v1/', 0, 'revision', '', 0),
(307, 1, '2018-04-09 21:05:23', '2018-04-09 21:05:23', '\r\n[flickrsss]\r\nhgfhfhdfgf', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-09 21:05:23', '2018-04-09 21:05:23', '', 2, 'http://localhost/mywork/wordpress_project/2018/04/09/2-revision-v1/', 0, 'revision', '', 0),
(309, 1, '2018-04-09 22:09:09', '2018-04-09 22:09:09', '', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-09 22:09:09', '2018-04-09 22:09:09', '', 2, 'http://localhost/mywork/wordpress_project/2018/04/09/2-revision-v1/', 0, 'revision', '', 0),
(310, 1, '2018-04-09 22:09:21', '2018-04-09 22:09:21', '[flickrsss]', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-09 22:09:21', '2018-04-09 22:09:21', '', 2, 'http://localhost/mywork/wordpress_project/2018/04/09/2-revision-v1/', 0, 'revision', '', 0),
(312, 1, '2018-04-09 23:36:33', '2018-04-09 23:36:33', '[flickgallery]', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-09 23:36:33', '2018-04-09 23:36:33', '', 2, 'http://localhost/mywork/wordpress_project/2018/04/09/2-revision-v1/', 0, 'revision', '', 0),
(313, 1, '2018-04-10 04:50:27', '2018-04-10 04:50:27', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-04-10 04:50:27', '2018-04-10 04:50:27', '', 8, 'http://localhost/mywork/wordpress_project/2018/04/10/8-revision-v1/', 0, 'revision', '', 0),
(314, 1, '2018-04-10 05:21:38', '2018-04-10 05:21:38', '<h1>About Us</h1>\n&nbsp;\n\n<img class=\"alignnone wp-image-254\" src=\"http://localhost/mywork/wordpress_project/wp-content/uploads/2018/04/slider_one-300x125.jpg\" alt=\"\" width=\"814\" height=\"339\" />\n<h2></h2>\nThis is an example page. It’s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this: Hi there! I’m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin’ caught in the rain.)\n…or something like this:\nThe XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.\nAs a new WordPress user, you should go to your dashboard to delete this page and create new pages for your content. Have fun!', 'About Us', '', 'inherit', 'closed', 'closed', '', '10-autosave-v1', '', '', '2018-04-10 05:21:38', '2018-04-10 05:21:38', '', 10, 'http://localhost/mywork/wordpress_project/2018/04/10/10-autosave-v1/', 0, 'revision', '', 0),
(315, 1, '2018-04-10 05:21:48', '2018-04-10 05:21:48', '<h1>About Us</h1>\r\n&nbsp;\r\n\r\n<img class=\"alignnone wp-image-254\" src=\"http://localhost/mywork/wordpress_project/wp-content/uploads/2018/04/slider_one-300x125.jpg\" alt=\"\" width=\"814\" height=\"339\" />\r\n<h2></h2>\r\nThis is an example page. It’s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this: Hi there! I’m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin’ caught in the rain.)\r\n…or something like this:\r\nThe XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.\r\nAs a new WordPress user, you should go to your dashboard to delete this page and create new pages for your content. Have fun!', 'About Us', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-04-10 05:21:48', '2018-04-10 05:21:48', '', 10, 'http://localhost/mywork/wordpress_project/2018/04/10/10-revision-v1/', 0, 'revision', '', 0),
(316, 1, '2018-04-10 05:22:03', '2018-04-10 05:22:03', '<h3>About Us</h3>\r\n&nbsp;\r\n\r\n<img class=\"alignnone wp-image-254\" src=\"http://localhost/mywork/wordpress_project/wp-content/uploads/2018/04/slider_one-300x125.jpg\" alt=\"\" width=\"814\" height=\"339\" />\r\n<h2></h2>\r\nThis is an example page. It’s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this: Hi there! I’m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin’ caught in the rain.)\r\n…or something like this:\r\nThe XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.\r\nAs a new WordPress user, you should go to your dashboard to delete this page and create new pages for your content. Have fun!', 'About Us', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-04-10 05:22:03', '2018-04-10 05:22:03', '', 10, 'http://localhost/mywork/wordpress_project/2018/04/10/10-revision-v1/', 0, 'revision', '', 0),
(317, 1, '2018-04-10 05:22:42', '2018-04-10 05:22:42', '<h1>About Us</h1>\r\n&nbsp;\r\n\r\n<img class=\"alignnone wp-image-254\" src=\"http://localhost/mywork/wordpress_project/wp-content/uploads/2018/04/slider_one-300x125.jpg\" alt=\"\" width=\"814\" height=\"339\" />\r\n<h2></h2>\r\nThis is an example page. It’s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this: Hi there! I’m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin’ caught in the rain.)\r\n…or something like this:\r\nThe XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.\r\nAs a new WordPress user, you should go to your dashboard to delete this page and create new pages for your content. Have fun!', 'About Us', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-04-10 05:22:42', '2018-04-10 05:22:42', '', 10, 'http://localhost/mywork/wordpress_project/2018/04/10/10-revision-v1/', 0, 'revision', '', 0),
(318, 1, '2018-07-07 19:00:31', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-07-07 19:00:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/mywork/wordpress_project/?p=318', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Primary Menu', 'primary-menu', 0),
(3, 'Cricket', 'cricket', 0),
(4, 'Sports', 'sports', 0),
(5, 'kopa', 'kopa', 0),
(6, 'National', 'national', 0),
(7, 'Media', 'media', 0),
(8, 'Video', 'post-format-video', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(14, 2, 0),
(15, 2, 0),
(16, 2, 0),
(17, 2, 0),
(19, 3, 0),
(19, 4, 0),
(21, 3, 0),
(21, 4, 0),
(24, 3, 0),
(24, 4, 0),
(27, 3, 0),
(27, 4, 0),
(48, 5, 0),
(48, 6, 0),
(78, 6, 0),
(279, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'category', '', 0, 4),
(4, 4, 'category', '', 0, 4),
(5, 5, 'post_tag', '', 0, 1),
(6, 6, 'category', '', 0, 2),
(7, 7, 'category', '', 0, 0),
(8, 8, 'post_format', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(14, 1, 'dismissed_wp_pointers', 'text_widget_custom_html'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '318'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(21, 1, 'nav_menu_recently_edited', '2'),
(22, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(23, 1, 'wp_user-settings-time', '1523340575');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bf4ljas.3133orQpso2tbsmwk3FglK/', 'admin', 'paponbd2016@gmail.com', '', '2018-04-08 18:34:54', '', 0, 'admin');

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
-- Indexes for table `wp_duplicator_packages`
--
ALTER TABLE `wp_duplicator_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hash` (`hash`);

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
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `wp_duplicator_packages`
--
ALTER TABLE `wp_duplicator_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=341;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=367;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=319;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
