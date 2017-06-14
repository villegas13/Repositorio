-- phpMyAdmin SQL Dump
-- version 2.11.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 24, 2017 at 02:25 PM
-- Server version: 5.1.58
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `a3264877_gcm`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_commentmeta`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` VALUES(1, 1, 'Sr WordPress', '', 'https://wordpress.org/', '', '2014-08-26 17:58:17', '2014-08-26 17:58:17', 'Hola, esto es un comentario.\nPara borrar un comentario simplemente accede y revisa los comentarios de la entrada. Ahí tendrás la opción de editarlo o borrarlo.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_links`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=779 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` VALUES(1, 'siteurl', 'http://gcm.comeze.com/', 'yes');
INSERT INTO `wp_options` VALUES(2, 'blogname', '', 'yes');
INSERT INTO `wp_options` VALUES(3, 'blogdescription', 'Otro sitio realizado con WordPress', 'yes');
INSERT INTO `wp_options` VALUES(4, 'users_can_register', '0', 'yes');
INSERT INTO `wp_options` VALUES(5, 'admin_email', 'info@roka.es', 'yes');
INSERT INTO `wp_options` VALUES(6, 'start_of_week', '1', 'yes');
INSERT INTO `wp_options` VALUES(7, 'use_balanceTags', '0', 'yes');
INSERT INTO `wp_options` VALUES(8, 'use_smilies', '1', 'yes');
INSERT INTO `wp_options` VALUES(9, 'require_name_email', '1', 'yes');
INSERT INTO `wp_options` VALUES(10, 'comments_notify', '1', 'yes');
INSERT INTO `wp_options` VALUES(11, 'posts_per_rss', '10', 'yes');
INSERT INTO `wp_options` VALUES(12, 'rss_use_excerpt', '0', 'yes');
INSERT INTO `wp_options` VALUES(13, 'mailserver_url', 'mail.example.com', 'yes');
INSERT INTO `wp_options` VALUES(14, 'mailserver_login', 'login@example.com', 'yes');
INSERT INTO `wp_options` VALUES(15, 'mailserver_pass', 'password', 'yes');
INSERT INTO `wp_options` VALUES(16, 'mailserver_port', '110', 'yes');
INSERT INTO `wp_options` VALUES(17, 'default_category', '1', 'yes');
INSERT INTO `wp_options` VALUES(18, 'default_comment_status', 'open', 'yes');
INSERT INTO `wp_options` VALUES(19, 'default_ping_status', 'open', 'yes');
INSERT INTO `wp_options` VALUES(20, 'default_pingback_flag', '1', 'yes');
INSERT INTO `wp_options` VALUES(21, 'posts_per_page', '10', 'yes');
INSERT INTO `wp_options` VALUES(22, 'date_format', 'j F, Y', 'yes');
INSERT INTO `wp_options` VALUES(23, 'time_format', 'g:i a', 'yes');
INSERT INTO `wp_options` VALUES(24, 'links_updated_date_format', 'j F, Y g:i a', 'yes');
INSERT INTO `wp_options` VALUES(25, 'comment_moderation', '0', 'yes');
INSERT INTO `wp_options` VALUES(26, 'moderation_notify', '1', 'yes');
INSERT INTO `wp_options` VALUES(27, 'permalink_structure', '', 'yes');
INSERT INTO `wp_options` VALUES(28, 'gzipcompression', '0', 'yes');
INSERT INTO `wp_options` VALUES(29, 'hack_file', '0', 'yes');
INSERT INTO `wp_options` VALUES(30, 'blog_charset', 'UTF-8', 'yes');
INSERT INTO `wp_options` VALUES(31, 'moderation_keys', '', 'no');
INSERT INTO `wp_options` VALUES(32, 'active_plugins', 'a:2:{i:0;s:23:"ml-slider/ml-slider.php";i:1;s:35:"nav-menu-images/nav-menu-images.php";}', 'yes');
INSERT INTO `wp_options` VALUES(33, 'home', 'http://roka.es/webs/gcm', 'yes');
INSERT INTO `wp_options` VALUES(34, 'category_base', '', 'yes');
INSERT INTO `wp_options` VALUES(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes');
INSERT INTO `wp_options` VALUES(36, 'advanced_edit', '0', 'yes');
INSERT INTO `wp_options` VALUES(37, 'comment_max_links', '2', 'yes');
INSERT INTO `wp_options` VALUES(38, 'gmt_offset', '0', 'yes');
INSERT INTO `wp_options` VALUES(39, 'default_email_category', '1', 'yes');
INSERT INTO `wp_options` VALUES(40, 'recently_edited', '', 'no');
INSERT INTO `wp_options` VALUES(41, 'template', 'GCM', 'yes');
INSERT INTO `wp_options` VALUES(42, 'stylesheet', 'GCM', 'yes');
INSERT INTO `wp_options` VALUES(43, 'comment_whitelist', '1', 'yes');
INSERT INTO `wp_options` VALUES(44, 'blacklist_keys', '', 'no');
INSERT INTO `wp_options` VALUES(45, 'comment_registration', '0', 'yes');
INSERT INTO `wp_options` VALUES(46, 'html_type', 'text/html', 'yes');
INSERT INTO `wp_options` VALUES(47, 'use_trackback', '0', 'yes');
INSERT INTO `wp_options` VALUES(48, 'default_role', 'subscriber', 'yes');
INSERT INTO `wp_options` VALUES(49, 'db_version', '27918', 'yes');
INSERT INTO `wp_options` VALUES(50, 'uploads_use_yearmonth_folders', '1', 'yes');
INSERT INTO `wp_options` VALUES(51, 'upload_path', '', 'yes');
INSERT INTO `wp_options` VALUES(52, 'blog_public', '1', 'yes');
INSERT INTO `wp_options` VALUES(53, 'default_link_category', '2', 'yes');
INSERT INTO `wp_options` VALUES(54, 'show_on_front', 'page', 'yes');
INSERT INTO `wp_options` VALUES(55, 'tag_base', '', 'yes');
INSERT INTO `wp_options` VALUES(56, 'show_avatars', '1', 'yes');
INSERT INTO `wp_options` VALUES(57, 'avatar_rating', 'G', 'yes');
INSERT INTO `wp_options` VALUES(58, 'upload_url_path', '', 'yes');
INSERT INTO `wp_options` VALUES(59, 'thumbnail_size_w', '150', 'yes');
INSERT INTO `wp_options` VALUES(60, 'thumbnail_size_h', '150', 'yes');
INSERT INTO `wp_options` VALUES(61, 'thumbnail_crop', '1', 'yes');
INSERT INTO `wp_options` VALUES(62, 'medium_size_w', '300', 'yes');
INSERT INTO `wp_options` VALUES(63, 'medium_size_h', '300', 'yes');
INSERT INTO `wp_options` VALUES(64, 'avatar_default', 'mystery', 'yes');
INSERT INTO `wp_options` VALUES(65, 'large_size_w', '1024', 'yes');
INSERT INTO `wp_options` VALUES(66, 'large_size_h', '1024', 'yes');
INSERT INTO `wp_options` VALUES(67, 'image_default_link_type', 'file', 'yes');
INSERT INTO `wp_options` VALUES(68, 'image_default_size', '', 'yes');
INSERT INTO `wp_options` VALUES(69, 'image_default_align', '', 'yes');
INSERT INTO `wp_options` VALUES(70, 'close_comments_for_old_posts', '0', 'yes');
INSERT INTO `wp_options` VALUES(71, 'close_comments_days_old', '14', 'yes');
INSERT INTO `wp_options` VALUES(72, 'thread_comments', '1', 'yes');
INSERT INTO `wp_options` VALUES(73, 'thread_comments_depth', '5', 'yes');
INSERT INTO `wp_options` VALUES(74, 'page_comments', '0', 'yes');
INSERT INTO `wp_options` VALUES(75, 'comments_per_page', '50', 'yes');
INSERT INTO `wp_options` VALUES(76, 'default_comments_page', 'newest', 'yes');
INSERT INTO `wp_options` VALUES(77, 'comment_order', 'asc', 'yes');
INSERT INTO `wp_options` VALUES(78, 'sticky_posts', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES(80, 'widget_text', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES(81, 'widget_rss', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES(82, 'uninstall_plugins', 'a:0:{}', 'no');
INSERT INTO `wp_options` VALUES(83, 'timezone_string', '', 'yes');
INSERT INTO `wp_options` VALUES(84, 'page_for_posts', '0', 'yes');
INSERT INTO `wp_options` VALUES(85, 'page_on_front', '68', 'yes');
INSERT INTO `wp_options` VALUES(86, 'default_post_format', '0', 'yes');
INSERT INTO `wp_options` VALUES(87, 'link_manager_enabled', '0', 'yes');
INSERT INTO `wp_options` VALUES(88, 'initial_db_version', '27916', 'yes');
INSERT INTO `wp_options` VALUES(89, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes');
INSERT INTO `wp_options` VALUES(90, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES(91, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES(92, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES(93, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES(94, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES(95, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes');
INSERT INTO `wp_options` VALUES(96, 'cron', 'a:4:{i:1492510403;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1492511210;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1492520840;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes');
INSERT INTO `wp_options` VALUES(746, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:10:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:65:"https://downloads.wordpress.org/release/es_ES/wordpress-4.7.3.zip";s:6:"locale";s:5:"es_ES";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/es_ES/wordpress-4.7.3.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.7.3";s:7:"version";s:5:"4.7.3";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.7.3.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.7.3.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.7.3-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.7.3-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.7.3";s:7:"version";s:5:"4.7.3";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}i:2;O:8:"stdClass":10:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.7.3.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.7.3.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.7.3-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.7.3-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.7.3";s:7:"version";s:5:"4.7.3";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}i:3;O:8:"stdClass":10:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.6.4.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.6.4.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.6.4-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.6.4-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.6.4";s:7:"version";s:5:"4.6.4";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}i:4;O:8:"stdClass":10:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.5.7.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.5.7.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.5.7-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.5.7-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.5.7";s:7:"version";s:5:"4.5.7";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}i:5;O:8:"stdClass":10:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.4.8.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.4.8.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.4.8-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.4.8-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.4.8";s:7:"version";s:5:"4.4.8";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}i:6;O:8:"stdClass":10:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.3.9.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.3.9.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.3.9-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.3.9-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.3.9";s:7:"version";s:5:"4.3.9";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}i:7;O:8:"stdClass":10:{s:8:"response";s:10:"autoupdate";s:8:"download";s:60:"https://downloads.wordpress.org/release/wordpress-4.2.13.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:60:"https://downloads.wordpress.org/release/wordpress-4.2.13.zip";s:10:"no_content";s:71:"https://downloads.wordpress.org/release/wordpress-4.2.13-no-content.zip";s:11:"new_bundled";s:72:"https://downloads.wordpress.org/release/wordpress-4.2.13-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:6:"4.2.13";s:7:"version";s:6:"4.2.13";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}i:8;O:8:"stdClass":10:{s:8:"response";s:10:"autoupdate";s:8:"download";s:60:"https://downloads.wordpress.org/release/wordpress-4.1.16.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:60:"https://downloads.wordpress.org/release/wordpress-4.1.16.zip";s:10:"no_content";s:71:"https://downloads.wordpress.org/release/wordpress-4.1.16-no-content.zip";s:11:"new_bundled";s:72:"https://downloads.wordpress.org/release/wordpress-4.1.16-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:6:"4.1.16";s:7:"version";s:6:"4.1.16";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}i:9;O:8:"stdClass":10:{s:8:"response";s:10:"autoupdate";s:8:"download";s:60:"https://downloads.wordpress.org/release/wordpress-4.0.16.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:60:"https://downloads.wordpress.org/release/wordpress-4.0.16.zip";s:10:"no_content";s:71:"https://downloads.wordpress.org/release/wordpress-4.0.16-no-content.zip";s:11:"new_bundled";s:72:"https://downloads.wordpress.org/release/wordpress-4.0.16-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:6:"4.0.16";s:7:"version";s:6:"4.0.16";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1492493784;s:15:"version_checked";s:6:"3.9.17";s:12:"translations";a:0:{}}', 'yes');
INSERT INTO `wp_options` VALUES(775, '_site_transient_timeout_theme_roots', '1492495585', 'yes');
INSERT INTO `wp_options` VALUES(776, '_site_transient_theme_roots', 'a:4:{s:3:"GCM";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";s:12:"twentytwelve";s:7:"/themes";}', 'yes');
INSERT INTO `wp_options` VALUES(108, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:12:"info@roka.es";s:7:"version";s:6:"3.9.17";s:9:"timestamp";i:1488866444;}', 'yes');
INSERT INTO `wp_options` VALUES(415, 'db_upgraded', '1', 'yes');
INSERT INTO `wp_options` VALUES(129, 'theme_mods_twentyfourteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1409135277;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes');
INSERT INTO `wp_options` VALUES(130, 'current_theme', 'Mitema', 'yes');
INSERT INTO `wp_options` VALUES(131, 'theme_mods_GCM', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:7:{s:6:"main-1";i:0;s:6:"menu-1";i:4;s:6:"menu-2";i:0;s:6:"menu_1";i:4;s:6:"menu_2";i:0;s:6:"menu_s";i:0;s:6:"menu_p";i:4;}}', 'yes');
INSERT INTO `wp_options` VALUES(132, 'theme_switched', '', 'yes');
INSERT INTO `wp_options` VALUES(138, 'recently_activated', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES(139, 'metaslider_systemcheck', 'a:2:{s:16:"wordPressVersion";b:0;s:12:"imageLibrary";b:0;}', 'yes');
INSERT INTO `wp_options` VALUES(140, 'ml-slider_children', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES(145, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes');
INSERT INTO `wp_options` VALUES(777, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1492493787;s:7:"checked";a:4:{s:3:"GCM";s:3:"1.0";s:14:"twentyfourteen";s:3:"1.1";s:14:"twentythirteen";s:3:"1.2";s:12:"twentytwelve";s:3:"1.4";}s:8:"response";a:3:{s:14:"twentyfourteen";a:4:{s:5:"theme";s:14:"twentyfourteen";s:11:"new_version";s:3:"1.9";s:3:"url";s:44:"https://wordpress.org/themes/twentyfourteen/";s:7:"package";s:60:"https://downloads.wordpress.org/theme/twentyfourteen.1.9.zip";}s:14:"twentythirteen";a:4:{s:5:"theme";s:14:"twentythirteen";s:11:"new_version";s:3:"2.1";s:3:"url";s:44:"https://wordpress.org/themes/twentythirteen/";s:7:"package";s:60:"https://downloads.wordpress.org/theme/twentythirteen.2.1.zip";}s:12:"twentytwelve";a:4:{s:5:"theme";s:12:"twentytwelve";s:11:"new_version";s:3:"2.2";s:3:"url";s:42:"https://wordpress.org/themes/twentytwelve/";s:7:"package";s:58:"https://downloads.wordpress.org/theme/twentytwelve.2.2.zip";}}s:12:"translations";a:0:{}}', 'yes');
INSERT INTO `wp_options` VALUES(778, '_site_transient_update_plugins', 'O:8:"stdClass":3:{s:12:"last_checked";i:1492493786;s:8:"response";a:3:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:3:"3.3";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:54:"https://downloads.wordpress.org/plugin/akismet.3.3.zip";}s:23:"ml-slider/ml-slider.php";O:8:"stdClass":6:{s:2:"id";s:5:"38583";s:4:"slug";s:9:"ml-slider";s:6:"plugin";s:23:"ml-slider/ml-slider.php";s:11:"new_version";s:3:"3.5";s:3:"url";s:40:"https://wordpress.org/plugins/ml-slider/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/ml-slider.3.5.zip";}s:35:"nav-menu-images/nav-menu-images.php";O:8:"stdClass":6:{s:2:"id";s:5:"35367";s:4:"slug";s:15:"nav-menu-images";s:6:"plugin";s:35:"nav-menu-images/nav-menu-images.php";s:11:"new_version";s:3:"3.4";s:3:"url";s:46:"https://wordpress.org/plugins/nav-menu-images/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/nav-menu-images.3.4.zip";}}s:12:"translations";a:0:{}}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=512 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` VALUES(2, 4, 'ml-slider_settings', 'a:35:{s:4:"type";s:4:"nivo";s:6:"random";s:5:"false";s:8:"cssClass";s:0:"";s:8:"printCss";s:4:"true";s:7:"printJs";s:4:"true";s:5:"width";s:4:"1024";s:6:"height";s:3:"373";s:3:"spw";s:1:"7";s:3:"sph";s:1:"5";s:5:"delay";s:4:"4500";s:6:"sDelay";i:30;s:7:"opacity";d:0.6999999999999999555910790149937383830547332763671875;s:10:"titleSpeed";i:500;s:6:"effect";s:4:"fade";s:10:"navigation";s:5:"false";s:5:"links";s:4:"true";s:10:"hoverPause";s:4:"true";s:5:"theme";s:7:"default";s:9:"direction";s:10:"horizontal";s:7:"reverse";s:5:"false";s:14:"animationSpeed";s:3:"600";s:8:"prevText";s:1:"<";s:8:"nextText";s:1:">";s:6:"slices";s:2:"15";s:6:"center";s:5:"false";s:9:"smartCrop";s:4:"true";s:12:"carouselMode";s:5:"false";s:14:"carouselMargin";s:1:"5";s:6:"easing";s:6:"linear";s:8:"autoPlay";s:4:"true";s:11:"thumb_width";i:150;s:12:"thumb_height";i:100;s:9:"fullWidth";s:5:"false";s:10:"noConflict";s:5:"false";s:12:"smoothHeight";s:5:"false";}');
INSERT INTO `wp_postmeta` VALUES(3, 5, '_wp_attached_file', '2014/08/Sin-título-6.png');
INSERT INTO `wp_postmeta` VALUES(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:373;s:4:"file";s:25:"2014/08/Sin-título-6.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"Sin-título-6-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:25:"Sin-título-6-300x109.png";s:5:"width";i:300;s:6:"height";i:109;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"Sin-título-6-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}');
INSERT INTO `wp_postmeta` VALUES(5, 6, '_wp_attached_file', '2014/08/inicio-1.png');
INSERT INTO `wp_postmeta` VALUES(6, 6, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:373;s:4:"file";s:20:"2014/08/inicio-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"inicio-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:20:"inicio-1-300x109.png";s:5:"width";i:300;s:6:"height";i:109;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:20:"inicio-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}');
INSERT INTO `wp_postmeta` VALUES(7, 7, '_wp_attached_file', '2014/08/inicio-5.png');
INSERT INTO `wp_postmeta` VALUES(8, 7, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:373;s:4:"file";s:20:"2014/08/inicio-5.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"inicio-5-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:20:"inicio-5-300x109.png";s:5:"width";i:300;s:6:"height";i:109;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:20:"inicio-5-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}');
INSERT INTO `wp_postmeta` VALUES(9, 8, '_wp_attached_file', '2014/08/inicio-6.png');
INSERT INTO `wp_postmeta` VALUES(10, 8, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:373;s:4:"file";s:20:"2014/08/inicio-6.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"inicio-6-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:20:"inicio-6-300x109.png";s:5:"width";i:300;s:6:"height";i:109;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:20:"inicio-6-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}');
INSERT INTO `wp_postmeta` VALUES(11, 9, '_wp_attached_file', '2014/08/inicio-7.png');
INSERT INTO `wp_postmeta` VALUES(12, 9, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:373;s:4:"file";s:20:"2014/08/inicio-7.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"inicio-7-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:20:"inicio-7-300x109.png";s:5:"width";i:300;s:6:"height";i:109;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:20:"inicio-7-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}');
INSERT INTO `wp_postmeta` VALUES(13, 5, 'ml-slider_type', 'image');
INSERT INTO `wp_postmeta` VALUES(14, 6, 'ml-slider_type', 'image');
INSERT INTO `wp_postmeta` VALUES(15, 7, 'ml-slider_type', 'image');
INSERT INTO `wp_postmeta` VALUES(16, 8, 'ml-slider_type', 'image');
INSERT INTO `wp_postmeta` VALUES(17, 9, 'ml-slider_type', 'image');
INSERT INTO `wp_postmeta` VALUES(18, 5, '_wp_attachment_backup_sizes', 'a:1:{s:15:"resized-700x300";a:5:{s:4:"path";s:93:"/mnt/webo/c0/89/54131789/htdocs/webs/gcm/wp-content/uploads/2014/08/Sin-título-6-700x300.png";s:4:"file";s:25:"Sin-título-6-700x300.png";s:5:"width";i:700;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}');
INSERT INTO `wp_postmeta` VALUES(19, 6, '_wp_attachment_backup_sizes', 'a:1:{s:15:"resized-700x300";a:5:{s:4:"path";s:88:"/mnt/webo/c0/89/54131789/htdocs/webs/gcm/wp-content/uploads/2014/08/inicio-1-700x300.png";s:4:"file";s:20:"inicio-1-700x300.png";s:5:"width";i:700;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}');
INSERT INTO `wp_postmeta` VALUES(20, 7, '_wp_attachment_backup_sizes', 'a:1:{s:15:"resized-700x300";a:5:{s:4:"path";s:88:"/mnt/webo/c0/89/54131789/htdocs/webs/gcm/wp-content/uploads/2014/08/inicio-5-700x300.png";s:4:"file";s:20:"inicio-5-700x300.png";s:5:"width";i:700;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}');
INSERT INTO `wp_postmeta` VALUES(21, 8, '_wp_attachment_backup_sizes', 'a:1:{s:15:"resized-700x300";a:5:{s:4:"path";s:88:"/mnt/webo/c0/89/54131789/htdocs/webs/gcm/wp-content/uploads/2014/08/inicio-6-700x300.png";s:4:"file";s:20:"inicio-6-700x300.png";s:5:"width";i:700;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}');
INSERT INTO `wp_postmeta` VALUES(22, 9, '_wp_attachment_backup_sizes', 'a:1:{s:15:"resized-700x300";a:5:{s:4:"path";s:88:"/mnt/webo/c0/89/54131789/htdocs/webs/gcm/wp-content/uploads/2014/08/inicio-7-700x300.png";s:4:"file";s:20:"inicio-7-700x300.png";s:5:"width";i:700;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}');
INSERT INTO `wp_postmeta` VALUES(23, 5, 'ml-slider_crop_position', 'center-center');
INSERT INTO `wp_postmeta` VALUES(24, 5, '_wp_attachment_image_alt', '');
INSERT INTO `wp_postmeta` VALUES(25, 6, 'ml-slider_crop_position', 'center-center');
INSERT INTO `wp_postmeta` VALUES(26, 6, '_wp_attachment_image_alt', '');
INSERT INTO `wp_postmeta` VALUES(27, 7, 'ml-slider_crop_position', 'center-center');
INSERT INTO `wp_postmeta` VALUES(28, 7, '_wp_attachment_image_alt', '');
INSERT INTO `wp_postmeta` VALUES(29, 8, 'ml-slider_crop_position', 'center-center');
INSERT INTO `wp_postmeta` VALUES(30, 8, '_wp_attachment_image_alt', '');
INSERT INTO `wp_postmeta` VALUES(31, 9, 'ml-slider_crop_position', 'center-center');
INSERT INTO `wp_postmeta` VALUES(32, 9, '_wp_attachment_image_alt', '');
INSERT INTO `wp_postmeta` VALUES(35, 11, '_menu_item_type', 'custom');
INSERT INTO `wp_postmeta` VALUES(36, 11, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(37, 11, '_menu_item_object_id', '11');
INSERT INTO `wp_postmeta` VALUES(38, 11, '_menu_item_object', 'custom');
INSERT INTO `wp_postmeta` VALUES(39, 11, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(40, 11, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(41, 11, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(42, 11, '_menu_item_url', 'http://roka.es/webs/gcm/');
INSERT INTO `wp_postmeta` VALUES(43, 11, '_menu_item_orphaned', '1409144749');
INSERT INTO `wp_postmeta` VALUES(55, 15, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(56, 15, '_edit_lock', '1409443622:1');
INSERT INTO `wp_postmeta` VALUES(57, 17, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(58, 17, '_edit_lock', '1409314150:1');
INSERT INTO `wp_postmeta` VALUES(59, 20, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(60, 20, '_edit_lock', '1409314035:1');
INSERT INTO `wp_postmeta` VALUES(61, 22, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(62, 22, '_edit_lock', '1409317791:1');
INSERT INTO `wp_postmeta` VALUES(63, 24, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(64, 24, '_edit_lock', '1409318928:1');
INSERT INTO `wp_postmeta` VALUES(65, 26, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(66, 26, '_edit_lock', '1409316882:1');
INSERT INTO `wp_postmeta` VALUES(67, 28, '_menu_item_type', 'custom');
INSERT INTO `wp_postmeta` VALUES(68, 28, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(69, 28, '_menu_item_object_id', '28');
INSERT INTO `wp_postmeta` VALUES(70, 28, '_menu_item_object', 'custom');
INSERT INTO `wp_postmeta` VALUES(71, 28, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(72, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(73, 28, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(74, 28, '_menu_item_url', 'http://roka.es/webs/gcm/');
INSERT INTO `wp_postmeta` VALUES(75, 28, '_menu_item_orphaned', '1409147836');
INSERT INTO `wp_postmeta` VALUES(76, 29, '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES(77, 29, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(78, 29, '_menu_item_object_id', '15');
INSERT INTO `wp_postmeta` VALUES(79, 29, '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES(80, 29, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(81, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(82, 29, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(83, 29, '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES(84, 29, '_menu_item_orphaned', '1409147836');
INSERT INTO `wp_postmeta` VALUES(85, 30, '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES(86, 30, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(87, 30, '_menu_item_object_id', '26');
INSERT INTO `wp_postmeta` VALUES(88, 30, '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES(89, 30, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(90, 30, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(91, 30, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(92, 30, '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES(93, 30, '_menu_item_orphaned', '1409147836');
INSERT INTO `wp_postmeta` VALUES(94, 31, '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES(95, 31, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(96, 31, '_menu_item_object_id', '20');
INSERT INTO `wp_postmeta` VALUES(97, 31, '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES(98, 31, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(99, 31, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(100, 31, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(101, 31, '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES(102, 31, '_menu_item_orphaned', '1409147837');
INSERT INTO `wp_postmeta` VALUES(103, 32, '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES(104, 32, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(105, 32, '_menu_item_object_id', '24');
INSERT INTO `wp_postmeta` VALUES(106, 32, '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES(107, 32, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(108, 32, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(109, 32, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(110, 32, '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES(111, 32, '_menu_item_orphaned', '1409147837');
INSERT INTO `wp_postmeta` VALUES(112, 33, '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES(113, 33, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(114, 33, '_menu_item_object_id', '22');
INSERT INTO `wp_postmeta` VALUES(115, 33, '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES(116, 33, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(117, 33, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(118, 33, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(119, 33, '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES(120, 33, '_menu_item_orphaned', '1409147837');
INSERT INTO `wp_postmeta` VALUES(121, 34, '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES(122, 34, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(123, 34, '_menu_item_object_id', '17');
INSERT INTO `wp_postmeta` VALUES(124, 34, '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES(125, 34, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(126, 34, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(127, 34, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(128, 34, '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES(129, 34, '_menu_item_orphaned', '1409147837');
INSERT INTO `wp_postmeta` VALUES(130, 35, '_menu_item_type', 'custom');
INSERT INTO `wp_postmeta` VALUES(131, 35, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(132, 35, '_menu_item_object_id', '35');
INSERT INTO `wp_postmeta` VALUES(133, 35, '_menu_item_object', 'custom');
INSERT INTO `wp_postmeta` VALUES(134, 35, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(135, 35, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(136, 35, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(137, 35, '_menu_item_url', 'http://roka.es/webs/gcm/');
INSERT INTO `wp_postmeta` VALUES(138, 35, '_menu_item_orphaned', '1409148870');
INSERT INTO `wp_postmeta` VALUES(139, 36, '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES(140, 36, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(141, 36, '_menu_item_object_id', '15');
INSERT INTO `wp_postmeta` VALUES(142, 36, '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES(143, 36, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(144, 36, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(145, 36, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(146, 36, '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES(147, 36, '_menu_item_orphaned', '1409148870');
INSERT INTO `wp_postmeta` VALUES(148, 37, '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES(149, 37, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(150, 37, '_menu_item_object_id', '26');
INSERT INTO `wp_postmeta` VALUES(151, 37, '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES(152, 37, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(153, 37, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(154, 37, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(155, 37, '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES(156, 37, '_menu_item_orphaned', '1409148870');
INSERT INTO `wp_postmeta` VALUES(157, 38, '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES(158, 38, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(159, 38, '_menu_item_object_id', '20');
INSERT INTO `wp_postmeta` VALUES(160, 38, '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES(161, 38, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(162, 38, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(163, 38, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(164, 38, '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES(165, 38, '_menu_item_orphaned', '1409148870');
INSERT INTO `wp_postmeta` VALUES(166, 39, '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES(167, 39, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(168, 39, '_menu_item_object_id', '24');
INSERT INTO `wp_postmeta` VALUES(169, 39, '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES(170, 39, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(171, 39, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(172, 39, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(173, 39, '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES(174, 39, '_menu_item_orphaned', '1409148870');
INSERT INTO `wp_postmeta` VALUES(175, 40, '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES(176, 40, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(177, 40, '_menu_item_object_id', '22');
INSERT INTO `wp_postmeta` VALUES(178, 40, '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES(179, 40, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(180, 40, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(181, 40, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(182, 40, '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES(183, 40, '_menu_item_orphaned', '1409148870');
INSERT INTO `wp_postmeta` VALUES(184, 41, '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES(185, 41, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(186, 41, '_menu_item_object_id', '17');
INSERT INTO `wp_postmeta` VALUES(187, 41, '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES(188, 41, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(189, 41, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(190, 41, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(191, 41, '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES(192, 41, '_menu_item_orphaned', '1409148870');
INSERT INTO `wp_postmeta` VALUES(193, 42, '_menu_item_type', 'custom');
INSERT INTO `wp_postmeta` VALUES(194, 42, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(195, 42, '_menu_item_object_id', '42');
INSERT INTO `wp_postmeta` VALUES(196, 42, '_menu_item_object', 'custom');
INSERT INTO `wp_postmeta` VALUES(197, 42, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(198, 42, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(199, 42, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(200, 42, '_menu_item_url', 'http://roka.es/webs/gcm/');
INSERT INTO `wp_postmeta` VALUES(201, 42, '_menu_item_orphaned', '1409149458');
INSERT INTO `wp_postmeta` VALUES(202, 43, '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES(203, 43, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(204, 43, '_menu_item_object_id', '15');
INSERT INTO `wp_postmeta` VALUES(205, 43, '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES(206, 43, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(207, 43, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(208, 43, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(209, 43, '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES(210, 43, '_menu_item_orphaned', '1409149458');
INSERT INTO `wp_postmeta` VALUES(211, 44, '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES(212, 44, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(213, 44, '_menu_item_object_id', '26');
INSERT INTO `wp_postmeta` VALUES(214, 44, '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES(215, 44, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(216, 44, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(217, 44, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(218, 44, '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES(219, 44, '_menu_item_orphaned', '1409149458');
INSERT INTO `wp_postmeta` VALUES(220, 45, '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES(221, 45, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(222, 45, '_menu_item_object_id', '20');
INSERT INTO `wp_postmeta` VALUES(223, 45, '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES(224, 45, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(225, 45, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(226, 45, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(227, 45, '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES(228, 45, '_menu_item_orphaned', '1409149458');
INSERT INTO `wp_postmeta` VALUES(229, 46, '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES(230, 46, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(231, 46, '_menu_item_object_id', '24');
INSERT INTO `wp_postmeta` VALUES(232, 46, '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES(233, 46, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(234, 46, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(235, 46, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(236, 46, '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES(237, 46, '_menu_item_orphaned', '1409149458');
INSERT INTO `wp_postmeta` VALUES(238, 47, '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES(239, 47, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(240, 47, '_menu_item_object_id', '22');
INSERT INTO `wp_postmeta` VALUES(241, 47, '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES(242, 47, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(243, 47, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(244, 47, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(245, 47, '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES(246, 47, '_menu_item_orphaned', '1409149458');
INSERT INTO `wp_postmeta` VALUES(247, 48, '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES(248, 48, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(249, 48, '_menu_item_object_id', '17');
INSERT INTO `wp_postmeta` VALUES(250, 48, '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES(251, 48, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(252, 48, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(253, 48, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(254, 48, '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES(255, 48, '_menu_item_orphaned', '1409149458');
INSERT INTO `wp_postmeta` VALUES(443, 144, '_wp_attached_file', '2014/08/boton-extraccion-y-ventilacion1.png');
INSERT INTO `wp_postmeta` VALUES(308, 56, '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES(307, 56, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(306, 56, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(305, 56, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(284, 52, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:83;s:6:"height";i:71;s:4:"file";s:38:"2014/08/boton-aires-acondicionados.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}');
INSERT INTO `wp_postmeta` VALUES(303, 56, '_menu_item_object_id', '20');
INSERT INTO `wp_postmeta` VALUES(302, 56, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(301, 56, '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES(449, 146, '_wp_attached_file', '2014/08/boton-fontaneria1.png');
INSERT INTO `wp_postmeta` VALUES(299, 55, '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES(298, 55, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(297, 55, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(296, 55, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(295, 55, '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES(294, 55, '_menu_item_object_id', '15');
INSERT INTO `wp_postmeta` VALUES(293, 55, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(283, 52, '_wp_attached_file', '2014/08/boton-aires-acondicionados.png');
INSERT INTO `wp_postmeta` VALUES(304, 56, '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES(286, 53, '_wp_attached_file', '2014/08/boton-extraccion-y-ventilacion.png');
INSERT INTO `wp_postmeta` VALUES(287, 53, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:83;s:6:"height";i:70;s:4:"file";s:42:"2014/08/boton-extraccion-y-ventilacion.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}');
INSERT INTO `wp_postmeta` VALUES(289, 54, '_wp_attached_file', '2014/08/boton-fontaneria.png');
INSERT INTO `wp_postmeta` VALUES(290, 54, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:83;s:6:"height";i:70;s:4:"file";s:28:"2014/08/boton-fontaneria.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}');
INSERT INTO `wp_postmeta` VALUES(292, 55, '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES(310, 57, '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES(311, 57, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(312, 57, '_menu_item_object_id', '24');
INSERT INTO `wp_postmeta` VALUES(313, 57, '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES(314, 57, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(315, 57, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(316, 57, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(317, 57, '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES(385, 67, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:83;s:6:"height";i:70;s:4:"file";s:35:"2014/08/boton-insonorizaciones1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}');
INSERT INTO `wp_postmeta` VALUES(373, 65, '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES(372, 65, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(350, 61, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:83;s:6:"height";i:70;s:4:"file";s:34:"2014/08/boton-insonorizaciones.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}');
INSERT INTO `wp_postmeta` VALUES(370, 65, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(369, 65, '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES(368, 65, '_menu_item_object_id', '22');
INSERT INTO `wp_postmeta` VALUES(367, 65, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(366, 65, '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES(365, 64, '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES(364, 64, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(363, 64, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(362, 64, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(361, 64, '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES(360, 64, '_menu_item_object_id', '17');
INSERT INTO `wp_postmeta` VALUES(359, 64, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(349, 61, '_wp_attached_file', '2014/08/boton-insonorizaciones.png');
INSERT INTO `wp_postmeta` VALUES(371, 65, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(352, 62, '_wp_attached_file', '2014/08/boton-instalaciones-electricas.png');
INSERT INTO `wp_postmeta` VALUES(353, 62, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:83;s:6:"height";i:70;s:4:"file";s:42:"2014/08/boton-instalaciones-electricas.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}');
INSERT INTO `wp_postmeta` VALUES(355, 63, '_wp_attached_file', '2014/08/boletines-NO-ES-BOTON.png');
INSERT INTO `wp_postmeta` VALUES(356, 63, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:83;s:6:"height";i:70;s:4:"file";s:33:"2014/08/boletines-NO-ES-BOTON.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}');
INSERT INTO `wp_postmeta` VALUES(358, 64, '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES(510, 154, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:85;s:4:"file";s:21:"2014/09/boletines.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}');
INSERT INTO `wp_postmeta` VALUES(384, 67, '_wp_attached_file', '2014/08/boton-insonorizaciones1.png');
INSERT INTO `wp_postmeta` VALUES(440, 143, '_wp_attached_file', '2014/08/boton-insonorizaciones2.png');
INSERT INTO `wp_postmeta` VALUES(446, 145, '_wp_attached_file', '2014/08/boton-instalaciones-electricas1.png');
INSERT INTO `wp_postmeta` VALUES(452, 147, '_wp_attached_file', '2014/08/boletines.png');
INSERT INTO `wp_postmeta` VALUES(389, 68, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(390, 68, '_edit_lock', '1409313898:1');
INSERT INTO `wp_postmeta` VALUES(391, 68, '_wp_page_template', 'index.php');
INSERT INTO `wp_postmeta` VALUES(392, 15, '_wp_page_template', 'page-aires.php');
INSERT INTO `wp_postmeta` VALUES(393, 17, '_wp_page_template', 'page-isonorizaciones.php');
INSERT INTO `wp_postmeta` VALUES(394, 20, '_wp_page_template', 'page-extraccion.php');
INSERT INTO `wp_postmeta` VALUES(395, 22, '_wp_page_template', 'page-instalaciones.php');
INSERT INTO `wp_postmeta` VALUES(396, 24, '_wp_page_template', 'page-fontaneria.php');
INSERT INTO `wp_postmeta` VALUES(397, 134, '_wp_attached_file', '2014/08/inicio-8.png');
INSERT INTO `wp_postmeta` VALUES(398, 134, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:373;s:4:"file";s:20:"2014/08/inicio-8.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"inicio-8-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:20:"inicio-8-300x109.png";s:5:"width";i:300;s:6:"height";i:109;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:20:"inicio-8-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}');
INSERT INTO `wp_postmeta` VALUES(399, 135, '_wp_attached_file', '2014/08/inicio-9.png');
INSERT INTO `wp_postmeta` VALUES(400, 135, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:373;s:4:"file";s:20:"2014/08/inicio-9.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"inicio-9-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:20:"inicio-9-300x109.png";s:5:"width";i:300;s:6:"height";i:109;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:20:"inicio-9-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}');
INSERT INTO `wp_postmeta` VALUES(401, 134, 'ml-slider_type', 'image');
INSERT INTO `wp_postmeta` VALUES(402, 135, 'ml-slider_type', 'image');
INSERT INTO `wp_postmeta` VALUES(403, 136, '_wp_attached_file', '2014/08/inicio-10.png');
INSERT INTO `wp_postmeta` VALUES(404, 136, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:373;s:4:"file";s:21:"2014/08/inicio-10.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"inicio-10-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:21:"inicio-10-300x109.png";s:5:"width";i:300;s:6:"height";i:109;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:21:"inicio-10-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}');
INSERT INTO `wp_postmeta` VALUES(405, 136, 'ml-slider_type', 'image');
INSERT INTO `wp_postmeta` VALUES(406, 134, 'ml-slider_crop_position', 'center-center');
INSERT INTO `wp_postmeta` VALUES(407, 134, '_wp_attachment_image_alt', '');
INSERT INTO `wp_postmeta` VALUES(408, 135, 'ml-slider_crop_position', 'center-center');
INSERT INTO `wp_postmeta` VALUES(409, 135, '_wp_attachment_image_alt', '');
INSERT INTO `wp_postmeta` VALUES(410, 136, 'ml-slider_crop_position', 'center-center');
INSERT INTO `wp_postmeta` VALUES(411, 136, '_wp_attachment_image_alt', '');
INSERT INTO `wp_postmeta` VALUES(412, 137, '_menu_item_type', 'custom');
INSERT INTO `wp_postmeta` VALUES(413, 137, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(414, 137, '_menu_item_object_id', '137');
INSERT INTO `wp_postmeta` VALUES(415, 137, '_menu_item_object', 'custom');
INSERT INTO `wp_postmeta` VALUES(416, 137, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(417, 137, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(418, 137, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(419, 137, '_menu_item_url', 'http://index.php');
INSERT INTO `wp_postmeta` VALUES(420, 137, '_menu_item_orphaned', '1409318005');
INSERT INTO `wp_postmeta` VALUES(421, 138, '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES(422, 138, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(423, 138, '_menu_item_object_id', '26');
INSERT INTO `wp_postmeta` VALUES(424, 138, '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES(425, 138, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(426, 138, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(427, 138, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(428, 138, '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES(429, 138, '_menu_item_orphaned', '1409318030');
INSERT INTO `wp_postmeta` VALUES(432, 140, '_wp_attached_file', '2014/08/boton-aires-acondicionados1.png');
INSERT INTO `wp_postmeta` VALUES(433, 140, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:85;s:4:"file";s:39:"2014/08/boton-aires-acondicionados1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}');
INSERT INTO `wp_postmeta` VALUES(437, 142, '_wp_attached_file', '2014/08/boton-aires-acondicionados3.png');
INSERT INTO `wp_postmeta` VALUES(435, 141, '_wp_attached_file', '2014/08/boton-aires-acondicionados2.png');
INSERT INTO `wp_postmeta` VALUES(436, 141, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:85;s:4:"file";s:39:"2014/08/boton-aires-acondicionados2.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}');
INSERT INTO `wp_postmeta` VALUES(438, 142, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:85;s:4:"file";s:39:"2014/08/boton-aires-acondicionados3.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}');
INSERT INTO `wp_postmeta` VALUES(439, 55, '_thumbnail_id', '142');
INSERT INTO `wp_postmeta` VALUES(441, 143, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:85;s:4:"file";s:35:"2014/08/boton-insonorizaciones2.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}');
INSERT INTO `wp_postmeta` VALUES(442, 64, '_thumbnail_id', '143');
INSERT INTO `wp_postmeta` VALUES(444, 144, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:85;s:4:"file";s:43:"2014/08/boton-extraccion-y-ventilacion1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}');
INSERT INTO `wp_postmeta` VALUES(445, 56, '_thumbnail_id', '144');
INSERT INTO `wp_postmeta` VALUES(447, 145, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:85;s:4:"file";s:43:"2014/08/boton-instalaciones-electricas1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}');
INSERT INTO `wp_postmeta` VALUES(448, 65, '_thumbnail_id', '145');
INSERT INTO `wp_postmeta` VALUES(450, 146, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:85;s:4:"file";s:29:"2014/08/boton-fontaneria1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}');
INSERT INTO `wp_postmeta` VALUES(451, 57, '_thumbnail_id', '146');
INSERT INTO `wp_postmeta` VALUES(453, 147, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:85;s:4:"file";s:21:"2014/08/boletines.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}');
INSERT INTO `wp_postmeta` VALUES(509, 154, '_wp_attached_file', '2014/09/boletines.png');
INSERT INTO `wp_postmeta` VALUES(455, 148, '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES(456, 148, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(457, 148, '_menu_item_object_id', '17');
INSERT INTO `wp_postmeta` VALUES(458, 148, '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES(459, 148, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(460, 148, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(461, 148, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(462, 148, '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES(463, 148, '_menu_item_orphaned', '1409323535');
INSERT INTO `wp_postmeta` VALUES(464, 149, '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES(465, 149, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(466, 149, '_menu_item_object_id', '15');
INSERT INTO `wp_postmeta` VALUES(467, 149, '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES(468, 149, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(469, 149, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(470, 149, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(471, 149, '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES(472, 149, '_menu_item_orphaned', '1409323559');
INSERT INTO `wp_postmeta` VALUES(473, 150, '_menu_item_type', 'custom');
INSERT INTO `wp_postmeta` VALUES(474, 150, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(475, 150, '_menu_item_object_id', '150');
INSERT INTO `wp_postmeta` VALUES(476, 150, '_menu_item_object', 'custom');
INSERT INTO `wp_postmeta` VALUES(477, 150, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(478, 150, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(479, 150, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(480, 150, '_menu_item_url', 'http://enlace');
INSERT INTO `wp_postmeta` VALUES(481, 150, '_menu_item_orphaned', '1409323862');
INSERT INTO `wp_postmeta` VALUES(482, 151, '_menu_item_type', 'custom');
INSERT INTO `wp_postmeta` VALUES(483, 151, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(484, 151, '_menu_item_object_id', '151');
INSERT INTO `wp_postmeta` VALUES(485, 151, '_menu_item_object', 'custom');
INSERT INTO `wp_postmeta` VALUES(486, 151, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(487, 151, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(488, 151, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(489, 151, '_menu_item_url', 'http://enlace');
INSERT INTO `wp_postmeta` VALUES(490, 151, '_menu_item_orphaned', '1409323862');
INSERT INTO `wp_postmeta` VALUES(491, 152, '_menu_item_type', 'custom');
INSERT INTO `wp_postmeta` VALUES(492, 152, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(493, 152, '_menu_item_object_id', '152');
INSERT INTO `wp_postmeta` VALUES(494, 152, '_menu_item_object', 'custom');
INSERT INTO `wp_postmeta` VALUES(495, 152, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(496, 152, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(497, 152, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(498, 152, '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES(500, 153, '_menu_item_type', 'custom');
INSERT INTO `wp_postmeta` VALUES(501, 153, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(502, 153, '_menu_item_object_id', '153');
INSERT INTO `wp_postmeta` VALUES(503, 153, '_menu_item_object', 'custom');
INSERT INTO `wp_postmeta` VALUES(504, 153, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(505, 153, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(506, 153, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(507, 153, '_menu_item_url', '#');
INSERT INTO `wp_postmeta` VALUES(508, 153, '_menu_item_orphaned', '1409568197');
INSERT INTO `wp_postmeta` VALUES(511, 152, '_thumbnail_id', '154');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=155 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` VALUES(1, 1, '2014-08-26 17:58:17', '2014-08-26 17:58:17', 'Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡y comienza a publicar!.', '¡Hola mundo!', '', 'publish', 'open', 'open', '', 'hola-mundo', '', '', '2014-08-26 17:58:17', '2014-08-26 17:58:17', '', 0, 'http://roka.es/webs/gcm/?p=1', 0, 'post', '', 1);
INSERT INTO `wp_posts` VALUES(4, 1, '2014-08-27 11:28:06', '2014-08-27 11:28:06', '', 'Nuevo pase', '', 'publish', 'open', 'open', '', 'nuevo-pase', '', '', '2014-08-29 12:41:16', '2014-08-29 12:41:16', '', 0, 'http://roka.es/webs/gcm/?post_type=ml-slider&#038;p=4', 0, 'ml-slider', '', 0);
INSERT INTO `wp_posts` VALUES(5, 1, '2014-08-27 11:30:05', '2014-08-27 11:30:05', '', 'Sin-título-6', '', 'inherit', 'open', 'open', '', 'sin-titulo-6', '', '', '2014-08-27 11:30:05', '2014-08-27 11:30:05', '', 0, 'http://roka.es/webs/gcm/wp-content/uploads/2014/08/Sin-título-6.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` VALUES(6, 1, '2014-08-27 11:30:40', '2014-08-27 11:30:40', '', 'inicio-1', '', 'inherit', 'open', 'open', '', 'inicio-1', '', '', '2014-08-27 11:30:40', '2014-08-27 11:30:40', '', 0, 'http://roka.es/webs/gcm/wp-content/uploads/2014/08/inicio-1.png', 1, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` VALUES(7, 1, '2014-08-27 11:32:00', '2014-08-27 11:32:00', '', 'inicio-5', '', 'inherit', 'open', 'open', '', 'inicio-5', '', '', '2014-08-27 11:32:00', '2014-08-27 11:32:00', '', 0, 'http://roka.es/webs/gcm/wp-content/uploads/2014/08/inicio-5.png', 2, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` VALUES(8, 1, '2014-08-27 11:32:37', '2014-08-27 11:32:37', '', 'inicio-6', '', 'inherit', 'open', 'open', '', 'inicio-6', '', '', '2014-08-27 11:32:37', '2014-08-27 11:32:37', '', 0, 'http://roka.es/webs/gcm/wp-content/uploads/2014/08/inicio-6.png', 3, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` VALUES(9, 1, '2014-08-27 11:33:04', '2014-08-27 11:33:04', '', 'inicio-7', '', 'inherit', 'open', 'open', '', 'inicio-7', '', '', '2014-08-27 11:33:04', '2014-08-27 11:33:04', '', 0, 'http://roka.es/webs/gcm/wp-content/uploads/2014/08/inicio-7.png', 2, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` VALUES(11, 1, '2014-08-27 13:05:49', '0000-00-00 00:00:00', '', 'Inicio', '', 'draft', 'open', 'open', '', '', '', '', '2014-08-27 13:05:49', '0000-00-00 00:00:00', '', 0, 'http://roka.es/webs/gcm/?p=11', 1, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(15, 1, '2014-08-27 13:07:41', '2014-08-27 13:07:41', '<div id="img_superior-aires">\r\n</div> \r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n<div onClick="javascript:window.location=''http://roka.es/webs/gcm/''" id="inicio"></div>\r\n <div class="tit_arti">\r\nAires acondicionados\r\n </div>\r\n <div class="txt_arti">\r\n Desarrollo de instalaciones de climatizaciones industriales, comerciales y domésticas basadas en la utilización de grandes grupos enfriadores, fancolis, climatizadores compactos, partidos y sistemas de Split de pared, techo, suelo y cassette, comercializando las marcas de mayor prestigio.\r\n\r\nReparación, instalación y servicio a aires acondicionados de variadas marcas, nuestro trabajo está garantizado y hecho con calidad.\r\n </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Aires acondicionados', '', 'publish', 'open', 'open', '', 'aires-acondicionados', '', '', '2014-08-29 12:07:48', '2014-08-29 12:07:48', '', 0, 'http://roka.es/webs/gcm/?page_id=15', 0, 'page', '', 0);
INSERT INTO `wp_posts` VALUES(16, 1, '2014-08-27 13:07:41', '2014-08-27 13:07:41', '', 'Aires acondicionados', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2014-08-27 13:07:41', '2014-08-27 13:07:41', '', 15, 'http://roka.es/webs/gcm/?p=16', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(17, 1, '2014-08-27 13:08:47', '2014-08-27 13:08:47', '<div id="img_superior-izono">\r\n</div> \r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n<div onClick="javascript:window.location=''http://roka.es/webs/gcm/''" id="inicio"></div>\r\n <div class="tit_arti">\r\nInsonorizaciones\r\n </div>\r\n <div class="txt_arti">\r\nAislamiento acuático de industrias, locales comerciales y viviendas, empleando las últimas novedades en aislantes, fabricación de silenciosos dispositivos y sistemas de filtros y absorbentes, apantallamientos y encapsulados. </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Izonorizaciones', '', 'publish', 'open', 'open', '', 'izonorizaciones', '', '', '2014-08-29 12:11:23', '2014-08-29 12:11:23', '', 0, 'http://roka.es/webs/gcm/?page_id=17', 0, 'page', '', 0);
INSERT INTO `wp_posts` VALUES(18, 1, '2014-08-27 13:08:47', '2014-08-27 13:08:47', '', 'Izonorizaciones', '', 'inherit', 'open', 'open', '', '17-revision-v1', '', '', '2014-08-27 13:08:47', '2014-08-27 13:08:47', '', 17, 'http://roka.es/webs/gcm/?p=18', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(20, 1, '2014-08-27 13:10:55', '2014-08-27 13:10:55', '<div id="img_superior-extrac">\r\n</div> \r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n<div onClick="javascript:window.location=''http://roka.es/webs/gcm/''" id="inicio"></div>\r\n <div class="tit_arti_dob">\r\nExtracción y ventilación\r\n </div>\r\n <div class="txt_arti">\r\nFabricación de conductos industriales en cualquier medida con sistema Pitsbur engatillado y Metu, construcción de campanas industriales en acero mate o brillo, con modelos personalizados e instalación de unidades de ventilación baja, media y alta presión para cualquier industria.\r\n\r\nReparación, instalación y servicio a aires acondicionados de variadas marcas, nuestro trabajo está garantizado y hecho con calidad. \r\n </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Extracción y Ventilación', '', 'publish', 'open', 'open', '', 'extraccion-y-ventilacion', '', '', '2014-08-29 12:09:24', '2014-08-29 12:09:24', '', 0, 'http://roka.es/webs/gcm/?page_id=20', 0, 'page', '', 0);
INSERT INTO `wp_posts` VALUES(21, 1, '2014-08-27 13:10:55', '2014-08-27 13:10:55', '', 'Extracción y Ventilación', '', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2014-08-27 13:10:55', '2014-08-27 13:10:55', '', 20, 'http://roka.es/webs/gcm/?p=21', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(22, 1, '2014-08-27 13:12:48', '2014-08-27 13:12:48', '<div id="img_superior-instala">\r\n</div> \r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n<div onClick="javascript:window.location=''http://roka.es/webs/gcm/''" id="inicio"></div>\r\n <div class="tit_arti_dob">\r\nInstalaciones Eléctricas\r\n </div>\r\n <div class="txt_arti">\r\nInstalaciones de electricidad industriales, comerciales y domésticas. Incluyendo un servicio de reparación y mantenimiento , trabajos para grandes industrias, comercios, comunidades, y residencias particulares. Boletines y certificados   \r\n </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Instalaciones eléctricas', '', 'publish', 'open', 'open', '', 'instalaciones-electricas', '', '', '2014-08-29 12:10:45', '2014-08-29 12:10:45', '', 0, 'http://roka.es/webs/gcm/?page_id=22', 0, 'page', '', 0);
INSERT INTO `wp_posts` VALUES(23, 1, '2014-08-27 13:12:48', '2014-08-27 13:12:48', '', 'Instalaciones eléctricas', '', 'inherit', 'open', 'open', '', '22-revision-v1', '', '', '2014-08-27 13:12:48', '2014-08-27 13:12:48', '', 22, 'http://roka.es/webs/gcm/?p=23', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(24, 1, '2014-08-27 13:13:52', '2014-08-27 13:13:52', '<div id="img_superior-fonta">\r\n</div> \r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n<div onClick="javascript:window.location=''http://roka.es/webs/gcm/''" id="inicio"></div>\r\n <div class="tit_arti">\r\nFontanería\r\n </div>\r\n <div class="txt_arti">\r\nTrabajos de fontanería en cualquier ámbito o espacio con las diferentes tecnologías del mercado actual, tales como Termofusión, Terrain, Cobre y otras múltiples. Instalación de sanitarios, termos y electrodomésticos, lavadoras, lavavajillas, griferías y cisternas. \r\n </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Fontanería', '', 'publish', 'open', 'open', '', 'fontaneria', '', '', '2014-08-29 12:10:07', '2014-08-29 12:10:07', '', 0, 'http://roka.es/webs/gcm/?page_id=24', 0, 'page', '', 0);
INSERT INTO `wp_posts` VALUES(25, 1, '2014-08-27 13:13:52', '2014-08-27 13:13:52', '', 'Fontanería', '', 'inherit', 'open', 'open', '', '24-revision-v1', '', '', '2014-08-27 13:13:52', '2014-08-27 13:13:52', '', 24, 'http://roka.es/webs/gcm/?p=25', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(26, 1, '2014-08-27 13:14:47', '2014-08-27 13:14:47', '', 'Boletines Oficiales', '', 'publish', 'open', 'open', '', 'boletines-oficiales', '', '', '2014-08-27 13:14:47', '2014-08-27 13:14:47', '', 0, 'http://roka.es/webs/gcm/?page_id=26', 0, 'page', '', 0);
INSERT INTO `wp_posts` VALUES(27, 1, '2014-08-27 13:14:47', '2014-08-27 13:14:47', '', 'Boletines Oficiales', '', 'inherit', 'open', 'open', '', '26-revision-v1', '', '', '2014-08-27 13:14:47', '2014-08-27 13:14:47', '', 26, 'http://roka.es/webs/gcm/?p=27', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(28, 1, '2014-08-27 13:57:16', '0000-00-00 00:00:00', '', 'Inicio', '', 'draft', 'open', 'open', '', '', '', '', '2014-08-27 13:57:16', '0000-00-00 00:00:00', '', 0, 'http://roka.es/webs/gcm/?p=28', 1, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(29, 1, '2014-08-27 13:57:16', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-08-27 13:57:16', '0000-00-00 00:00:00', '', 0, 'http://roka.es/webs/gcm/?p=29', 1, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(30, 1, '2014-08-27 13:57:16', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-08-27 13:57:16', '0000-00-00 00:00:00', '', 0, 'http://roka.es/webs/gcm/?p=30', 1, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(31, 1, '2014-08-27 13:57:16', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-08-27 13:57:16', '0000-00-00 00:00:00', '', 0, 'http://roka.es/webs/gcm/?p=31', 1, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(32, 1, '2014-08-27 13:57:17', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-08-27 13:57:17', '0000-00-00 00:00:00', '', 0, 'http://roka.es/webs/gcm/?p=32', 1, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(33, 1, '2014-08-27 13:57:17', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-08-27 13:57:17', '0000-00-00 00:00:00', '', 0, 'http://roka.es/webs/gcm/?p=33', 1, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(34, 1, '2014-08-27 13:57:17', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-08-27 13:57:17', '0000-00-00 00:00:00', '', 0, 'http://roka.es/webs/gcm/?p=34', 1, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(35, 1, '2014-08-27 14:14:30', '0000-00-00 00:00:00', '', 'Inicio', '', 'draft', 'open', 'open', '', '', '', '', '2014-08-27 14:14:30', '0000-00-00 00:00:00', '', 0, 'http://roka.es/webs/gcm/?p=35', 1, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(36, 1, '2014-08-27 14:14:30', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-08-27 14:14:30', '0000-00-00 00:00:00', '', 0, 'http://roka.es/webs/gcm/?p=36', 1, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(37, 1, '2014-08-27 14:14:30', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-08-27 14:14:30', '0000-00-00 00:00:00', '', 0, 'http://roka.es/webs/gcm/?p=37', 1, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(38, 1, '2014-08-27 14:14:30', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-08-27 14:14:30', '0000-00-00 00:00:00', '', 0, 'http://roka.es/webs/gcm/?p=38', 1, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(39, 1, '2014-08-27 14:14:30', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-08-27 14:14:30', '0000-00-00 00:00:00', '', 0, 'http://roka.es/webs/gcm/?p=39', 1, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(40, 1, '2014-08-27 14:14:30', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-08-27 14:14:30', '0000-00-00 00:00:00', '', 0, 'http://roka.es/webs/gcm/?p=40', 1, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(41, 1, '2014-08-27 14:14:30', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-08-27 14:14:30', '0000-00-00 00:00:00', '', 0, 'http://roka.es/webs/gcm/?p=41', 1, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(42, 1, '2014-08-27 14:24:18', '0000-00-00 00:00:00', '', 'Inicio', '', 'draft', 'open', 'open', '', '', '', '', '2014-08-27 14:24:18', '0000-00-00 00:00:00', '', 0, 'http://roka.es/webs/gcm/?p=42', 1, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(43, 1, '2014-08-27 14:24:18', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-08-27 14:24:18', '0000-00-00 00:00:00', '', 0, 'http://roka.es/webs/gcm/?p=43', 1, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(44, 1, '2014-08-27 14:24:18', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-08-27 14:24:18', '0000-00-00 00:00:00', '', 0, 'http://roka.es/webs/gcm/?p=44', 1, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(45, 1, '2014-08-27 14:24:18', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-08-27 14:24:18', '0000-00-00 00:00:00', '', 0, 'http://roka.es/webs/gcm/?p=45', 1, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(46, 1, '2014-08-27 14:24:18', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-08-27 14:24:18', '0000-00-00 00:00:00', '', 0, 'http://roka.es/webs/gcm/?p=46', 1, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(47, 1, '2014-08-27 14:24:18', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-08-27 14:24:18', '0000-00-00 00:00:00', '', 0, 'http://roka.es/webs/gcm/?p=47', 1, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(48, 1, '2014-08-27 14:24:18', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-08-27 14:24:18', '0000-00-00 00:00:00', '', 0, 'http://roka.es/webs/gcm/?p=48', 1, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(57, 1, '2014-08-27 16:12:22', '2014-08-27 16:12:22', ' ', '', '', 'publish', 'open', 'open', '', '57', '', '', '2014-09-01 10:44:05', '2014-09-01 10:44:05', '', 0, 'http://roka.es/webs/gcm/?p=57', 5, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(56, 1, '2014-08-27 16:12:22', '2014-08-27 16:12:22', ' ', '', '', 'publish', 'open', 'open', '', '56', '', '', '2014-09-01 10:44:05', '2014-09-01 10:44:05', '', 0, 'http://roka.es/webs/gcm/?p=56', 3, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(55, 1, '2014-08-27 16:12:22', '2014-08-27 16:12:22', ' ', '', '', 'publish', 'open', 'open', '', '55', '', '', '2014-09-01 10:44:05', '2014-09-01 10:44:05', '', 0, 'http://roka.es/webs/gcm/?p=55', 1, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(52, 1, '2014-08-27 14:32:44', '2014-08-27 14:32:44', '', 'boton-aires-acondicionados', '', 'inherit', 'open', 'open', '', 'boton-aires-acondicionados', '', '', '2014-08-27 14:32:44', '2014-08-27 14:32:44', '', 0, 'http://roka.es/webs/gcm/wp-content/uploads/2014/08/boton-aires-acondicionados.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` VALUES(53, 1, '2014-08-27 14:36:22', '2014-08-27 14:36:22', '', 'boton-extraccion-y-ventilacion', '', 'inherit', 'open', 'open', '', 'boton-extraccion-y-ventilacion', '', '', '2014-08-27 14:36:22', '2014-08-27 14:36:22', '', 0, 'http://roka.es/webs/gcm/wp-content/uploads/2014/08/boton-extraccion-y-ventilacion.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` VALUES(54, 1, '2014-08-27 14:37:55', '2014-08-27 14:37:55', '', 'boton-fontaneria', '', 'inherit', 'open', 'open', '', 'boton-fontaneria', '', '', '2014-08-27 14:37:55', '2014-08-27 14:37:55', '', 0, 'http://roka.es/webs/gcm/wp-content/uploads/2014/08/boton-fontaneria.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` VALUES(154, 1, '2014-09-01 10:43:55', '2014-09-01 10:43:55', '', 'boletines', '', 'inherit', 'open', 'open', '', 'boletines-2', '', '', '2014-09-01 10:43:55', '2014-09-01 10:43:55', '', 152, 'http://gcm.comeze.com/wp-content/uploads/2014/09/boletines.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` VALUES(65, 1, '2014-08-27 21:28:43', '2014-08-27 21:28:43', ' ', '', '', 'publish', 'open', 'open', '', '65', '', '', '2014-09-01 10:44:05', '2014-09-01 10:44:05', '', 0, 'http://roka.es/webs/gcm/?p=65', 4, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(64, 1, '2014-08-27 21:28:43', '2014-08-27 21:28:43', ' ', '', '', 'publish', 'open', 'open', '', '64', '', '', '2014-09-01 10:44:05', '2014-09-01 10:44:05', '', 0, 'http://roka.es/webs/gcm/?p=64', 2, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(61, 1, '2014-08-27 17:29:24', '2014-08-27 17:29:24', '', 'boton-insonorizaciones', '', 'inherit', 'open', 'open', '', 'boton-insonorizaciones', '', '', '2014-08-27 17:29:24', '2014-08-27 17:29:24', '', 0, 'http://roka.es/webs/gcm/wp-content/uploads/2014/08/boton-insonorizaciones.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` VALUES(62, 1, '2014-08-27 17:30:07', '2014-08-27 17:30:07', '', 'boton-instalaciones-electricas', '', 'inherit', 'open', 'open', '', 'boton-instalaciones-electricas', '', '', '2014-08-27 17:30:07', '2014-08-27 17:30:07', '', 0, 'http://roka.es/webs/gcm/wp-content/uploads/2014/08/boton-instalaciones-electricas.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` VALUES(63, 1, '2014-08-27 17:30:43', '2014-08-27 17:30:43', '', 'boletines-NO-ES-BOTON', '', 'inherit', 'open', 'open', '', 'boletines-no-es-boton', '', '', '2014-08-27 17:30:43', '2014-08-27 17:30:43', '', 0, 'http://roka.es/webs/gcm/wp-content/uploads/2014/08/boletines-NO-ES-BOTON.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` VALUES(67, 1, '2014-08-27 21:31:35', '2014-08-27 21:31:35', '', 'boton-insonorizaciones', '', 'inherit', 'open', 'open', '', 'boton-insonorizaciones-2', '', '', '2014-08-27 21:31:35', '2014-08-27 21:31:35', '', 64, 'http://roka.es/webs/gcm/wp-content/uploads/2014/08/boton-insonorizaciones1.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` VALUES(68, 1, '2014-08-28 09:46:14', '2014-08-28 09:46:14', '[metaslider id=4]\r\n\r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n <div onClick="javascript:window.location=''http://roka.es/webs/gcm/''" id="inicio"></div>\r\n <div class="tit_arti_dob">\r\nGrupo Canaria de Montajes\r\n </div>\r\n\r\n <div class="txt_arti-scroll">\r\nDesempeñamos tareas de instalaciones industriales a terceros, aportando los recursos humanos y materiales necesarios para implementar las operaciones y procedimientos consensuados con nuestros clientes en sus procesos logísticos y en las actividades complementarias a sus cadenas de producción.Compuesta en un 100% por capital canario, nuestro objetivo es conocer a fondo las necesidades de las empresas para poder ofrecer nuestros servicios de la manera mas satisfactoria, siempre contando con nuestra profesionalidad contrastada.\r\n\r\nNuestro poder reside en la cualificación profesional de nuestros trabajadores. Ellos son nuestro principal activo.\r\n </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Inicio', '', 'publish', 'open', 'open', '', 'inicio', '', '', '2014-08-29 12:03:26', '2014-08-29 12:03:26', '', 0, 'http://roka.es/webs/gcm/?page_id=68', 0, 'page', '', 0);
INSERT INTO `wp_posts` VALUES(69, 1, '2014-08-28 09:46:14', '2014-08-28 09:46:14', '', 'Inicio', '', 'inherit', 'open', 'open', '', '68-revision-v1', '', '', '2014-08-28 09:46:14', '2014-08-28 09:46:14', '', 68, 'http://roka.es/webs/gcm/?p=69', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(70, 1, '2014-08-29 11:27:05', '2014-08-29 11:27:05', '[metaslider id=4]\n\n<article>\n\n<div class="panel_inf_top"> \n <div class="panel_inf">\n<a href="http://roka.es/webs/gcm/" ><div id="inicio"></div></a>\n <div class="tit_arti_dob">\nGrupo Canaria de Montajes\n </div>\n\n <div class="txt_arti-scroll">\nDesempeñamos tareas de instalaciones industriales a terceros, aportando los recursos humanos y materiales necesarios para implementar las operaciones y procedimientos consensuados con nuestros clientes en sus procesos logísticos y en las actividades complementarias a sus cadenas de producción.Compuesta en un 100% por capital canario, nuestro objetivo es conocer a fondo las necesidades de las empresas para poder ofrecer nuestros servicios de la manera mas satisfactoria, siempre contando con nuestra profesionalidad contrastada.\n\nNuestro poder reside en la cualificación profesional de nuestros trabajadores. Ellos son nuestro principal activo.\n </div>\n <div id="lateral-sup">\n \n </div>', 'Inicio', '', 'inherit', 'open', 'open', '', '68-autosave-v1', '', '', '2014-08-29 11:27:05', '2014-08-29 11:27:05', '', 68, 'http://roka.es/webs/gcm/?p=70', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(103, 1, '2014-08-29 10:10:02', '2014-08-29 10:10:02', '[metaslider id=4]\r\n\r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n <div class="tit_arti">\r\nGrupo Canaria de Montajes\r\n </div>\r\n <div class="txt_arti">\r\nDesempeñamos tareas de instalaciones industriales a terceros, aportando los recursos humanos y materiales necesarios para implementar las operaciones y procedimientos consensuados con nuestros clientes en sus procesos logísticos y en las actividades complementarias a sus cadenas de producción.Compuesta en un 100% por capital canario, nuestro objetivo es conocer a fondo las necesidades de las empresas para poder ofrecer nuestros servicios de la manera mas satisfactoria, siempre contando con nuestra profesionalidad contrastada.\r\n\r\nNuestro poder reside en la cualificación profesional de nuestros trabajadores. Ellos son nuestro principal activo.\r\n </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Inicio', '', 'inherit', 'open', 'open', '', '68-revision-v1', '', '', '2014-08-29 10:10:02', '2014-08-29 10:10:02', '', 68, 'http://roka.es/webs/gcm/?p=103', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(100, 1, '2014-08-29 09:58:52', '2014-08-29 09:58:52', '[metaslider id=4]\r\n\r\n<article>\r\n<div class="panel_inf_top">\r\n<div class="panel_inf">\r\n<div class="tit_arti_dob">Grupo Canaria de Montajes</div>\r\n<a href="http://roka.es/webs/gcm/"><div id="inicio"></div></a>\r\n<div class="txt_arti-scroll">Desempeñamos tareas de instalaciones industriales a terceros, aportando los recursos humanos y materiales necesarios para implementar las operaciones y procedimientos consensuados con nuestros clientes en sus procesos logísticos y en las actividades complementarias a sus cadenas de producción.Compuesta en un 100% por capital canario, nuestro objetivo es conocer a fondo las necesidades de las empresas para poder ofrecer nuestros servicios de la manera mas satisfactoria, siempre contando con nuestra profesionalidad contrastada.\r\n\r\nNuestro poder reside en la cualificación profesional de nuestros trabajadores. Ellos son nuestro principal activo.\r\n\r\n</div>\r\n<div id="lateral-sup"></div>\r\n</div>\r\n</div>\r\n</article>', 'Inicio', '', 'inherit', 'open', 'open', '', '68-revision-v1', '', '', '2014-08-29 09:58:52', '2014-08-29 09:58:52', '', 68, 'http://roka.es/webs/gcm/?p=100', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(73, 1, '2014-08-28 09:58:14', '2014-08-28 09:58:14', '[metaslider id=4]\r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n <div class="tit_arti">\r\n Grupo Canaria de Montajes\r\n </div>\r\n <div class="txt_arti">\r\n Desempeñamos tareas de instalaciones industriales a terceros, aportando los recursos humanos y materiales necesarios para implementar las operaciones y procedimientos consensuados con nuestros clientes en sus procesos logísticos y en las actividades complementarias a sus cadenas de producción.<br />\r\n compuesta en un 100% por capital canario, nuestro objetivo es conocer a fondo las necesidades de las empresas para poder ofrecer nuestros servicios de la manera mas satisfactoria, siempre contando con nuestra profesionalidad  contrastada.<br />\r\n Nuestro poder reside en la cualificación profesional de nuestros trabajadores. Ellos son nuestro principal activo.\r\n </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Inicio', '', 'inherit', 'open', 'open', '', '68-revision-v1', '', '', '2014-08-28 09:58:14', '2014-08-28 09:58:14', '', 68, 'http://roka.es/webs/gcm/?p=73', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(71, 1, '2014-08-28 09:47:54', '2014-08-28 09:47:54', '   [metaslider id=4]\r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n <div class="tit_arti">\r\n Grupo Canaria de Montajes\r\n </div>\r\n <div class="txt_arti">\r\n Desempeñamos tareas de instalaciones industriales a terceros, aportando los recursos humanos y materiales necesarios para implementar las operaciones y procedimientos consensuados con nuestros clientes en sus procesos logísticos y en las actividades complementarias a sus cadenas de producción.<br />\r\n compuesta en un 100% por capital canario, nuestro objetivo es conocer a fondo las necesidades de las empresas para poder ofrecer nuestros servicios de la manera mas satisfactoria, siempre contando con nuestra profesionalidad  contrastada.<br />\r\n Nuestro poder reside en la cualificación profesional de nuestros trabajadores. Ellos son nuestro principal activo.\r\n </div>\r\n <div id="lateral-sup">\r\n \r\n </div>\r\n\r\n <div id="lateral-inf">\r\n 	<div id="menu1">\r\n< pre lang="php" >\r\nwp_nav_menu( array(''menu'' => ''Primero'' ));\r\n< /pre >\r\n    \r\n    </div>\r\n      \r\n \r\n </div>\r\n \r\n </div>\r\n</div>\r\n  \r\n  \r\n</article>  ', 'Inicio', '', 'inherit', 'open', 'open', '', '68-revision-v1', '', '', '2014-08-28 09:47:54', '2014-08-28 09:47:54', '', 68, 'http://roka.es/webs/gcm/?p=71', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(72, 1, '2014-08-28 09:54:27', '2014-08-28 09:54:27', '[metaslider id=4]\r\n<article>\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n <div class="tit_arti">\r\n Grupo Canaria de Montajes\r\n </div>\r\n <div class="txt_arti">\r\n Desempeñamos tareas de instalaciones industriales a terceros, aportando los recursos humanos y materiales necesarios para implementar las operaciones y procedimientos consensuados con nuestros clientes en sus procesos logísticos y en las actividades complementarias a sus cadenas de producción.<br />\r\n compuesta en un 100% por capital canario, nuestro objetivo es conocer a fondo las necesidades de las empresas para poder ofrecer nuestros servicios de la manera mas satisfactoria, siempre contando con nuestra profesionalidad  contrastada.<br />\r\n Nuestro poder reside en la cualificación profesional de nuestros trabajadores. Ellos son nuestro principal activo.\r\n </div>\r\n <div id="lateral-sup">\r\n </div>\r\n\r\n <div id="lateral-inf">\r\n 	<div id="menu1">\r\n< pre lang="php" >\r\nwp_nav_menu( array(''menu'' => ''Primero'' ));\r\n< /pre >\r\n    \r\n    </div>\r\n      \r\n \r\n </div>\r\n \r\n </div>\r\n</div>\r\n  \r\n  \r\n</article>  ', 'Inicio', '', 'inherit', 'open', 'open', '', '68-revision-v1', '', '', '2014-08-28 09:54:27', '2014-08-28 09:54:27', '', 68, 'http://roka.es/webs/gcm/?p=72', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(78, 1, '2014-08-28 10:30:28', '2014-08-28 10:30:28', '<div id="img_superior-aires">\r\n</div> \r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n <div class="tit_arti">\r\nAires acondicionados\r\n </div>\r\n <div class="txt_arti">\r\n Desarrollo de instalaciones de climatizaciones industriales, comerciales y domésticas basadas en la utilización de grandes grupos enfriadores, fancolis, climatizadores compactos, partidos y sistemas de Split de pared, techo, suelo y cassette, comercializando las marcas de mayor prestigio.\r\n\r\nReparación, instalación y servicio a aires acondicionados de variadas marcas, nuestro trabajo está garantizado y hecho con calidad.\r\n </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Aires acondicionados', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2014-08-28 10:30:28', '2014-08-28 10:30:28', '', 15, 'http://roka.es/webs/gcm/?p=78', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(74, 1, '2014-08-28 10:07:00', '2014-08-28 10:07:00', '<div id="img_superior-aires">\r\n</div> \r\n\r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n <div class="tit_arti">\r\n Grupo Canaria de Montajes\r\n </div>\r\n <div class="txt_arti">\r\n Desempeñamos tareas de instalaciones industriales a terceros, aportando los recursos humanos y materiales necesarios para implementar las operaciones y procedimientos consensuados con nuestros clientes en sus procesos logísticos y en las actividades complementarias a sus cadenas de producción.<br />\r\n compuesta en un 100% por capital canario, nuestro objetivo es conocer a fondo las necesidades de las empresas para poder ofrecer nuestros servicios de la manera mas satisfactoria, siempre contando con nuestra profesionalidad  contrastada.<br />\r\n Nuestro poder reside en la cualificación profesional de nuestros trabajadores. Ellos son nuestro principal activo.\r\n </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Aires acondicionados', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2014-08-28 10:07:00', '2014-08-28 10:07:00', '', 15, 'http://roka.es/webs/gcm/?p=74', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(75, 1, '2014-08-28 10:16:05', '2014-08-28 10:16:05', '\r\n\r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n <div class="tit_arti">\r\n Grupo Canaria de Montajes\r\n </div>\r\n <div class="txt_arti">\r\n Desempeñamos tareas de instalaciones industriales a terceros, aportando los recursos humanos y materiales necesarios para implementar las operaciones y procedimientos consensuados con nuestros clientes en sus procesos logísticos y en las actividades complementarias a sus cadenas de producción.<br />\r\n compuesta en un 100% por capital canario, nuestro objetivo es conocer a fondo las necesidades de las empresas para poder ofrecer nuestros servicios de la manera mas satisfactoria, siempre contando con nuestra profesionalidad  contrastada.<br />\r\n Nuestro poder reside en la cualificación profesional de nuestros trabajadores. Ellos son nuestro principal activo.\r\n </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Aires acondicionados', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2014-08-28 10:16:05', '2014-08-28 10:16:05', '', 15, 'http://roka.es/webs/gcm/?p=75', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(76, 1, '2014-08-28 10:28:56', '2014-08-28 10:28:56', '<div id="img_superior-aires">\n</div> \n<article>\n\n<div class="panel_inf_top"> \n <div class="panel_inf">\n <div class="tit_arti">\nAires acondicionados\n </div>\n <div class="txt_arti">\n Desarrollo de instalaciones de climatizaciones industriales, comerciales y domésticas basadas en la utilización de grandes grupos enfriadores, fancolis, climatizadores compactos, partidos y sistemas de Split de pared, techo, suelo y cassette, comercializando las marcas de mayor prestigio.\n\nReparación, instalaci\n \n </div>\n <div id="lateral-sup">\n \n </div>', 'Aires acondicionados', '', 'inherit', 'open', 'open', '', '15-autosave-v1', '', '', '2014-08-28 10:28:56', '2014-08-28 10:28:56', '', 15, 'http://roka.es/webs/gcm/?p=76', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(77, 1, '2014-08-28 10:18:43', '2014-08-28 10:18:43', '<div id="img_superior-aires">\r\n</div> \r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n <div class="tit_arti">\r\n Grupo Canaria de Montajes\r\n </div>\r\n <div class="txt_arti">\r\n Desempeñamos tareas de instalaciones industriales a terceros, aportando los recursos humanos y materiales necesarios para implementar las operaciones y procedimientos consensuados con nuestros clientes en sus procesos logísticos y en las actividades complementarias a sus cadenas de producción.<br />\r\n compuesta en un 100% por capital canario, nuestro objetivo es conocer a fondo las necesidades de las empresas para poder ofrecer nuestros servicios de la manera mas satisfactoria, siempre contando con nuestra profesionalidad  contrastada.<br />\r\n Nuestro poder reside en la cualificación profesional de nuestros trabajadores. Ellos son nuestro principal activo.\r\n </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Aires acondicionados', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2014-08-28 10:18:43', '2014-08-28 10:18:43', '', 15, 'http://roka.es/webs/gcm/?p=77', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(81, 1, '2014-08-28 11:05:26', '2014-08-28 11:05:26', '<div id="img_superior-izono">\r\n</div> \r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n <div class="tit_arti">\r\nInsonorizaciones\r\n </div>\r\n <div class="txt_arti">\r\nAislamiento acuático de industrias, locales comerciales y viviendas, empleando las últimas novedades en aislantes, fabricación de silenciosos dispositivos y sistemas de filtros y absorbentes, apantallamientos y encapsulados. </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Izonorizaciones', '', 'inherit', 'open', 'open', '', '17-revision-v1', '', '', '2014-08-28 11:05:26', '2014-08-28 11:05:26', '', 17, 'http://roka.es/webs/gcm/?p=81', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(79, 1, '2014-08-28 10:44:43', '2014-08-28 10:44:43', '<div id="img_superior-izono">\r\n</div> \r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n <div class="tit_arti">\r\nAires acondicionados\r\n </div>\r\n <div class="txt_arti">\r\n Desarrollo de instalaciones de climatizaciones industriales, comerciales y domésticas basadas en la utilización de grandes grupos enfriadores, fancolis, climatizadores compactos, partidos y sistemas de Split de pared, techo, suelo y cassette, comercializando las marcas de mayor prestigio.\r\n\r\nReparación, instalación y servicio a aires acondicionados de variadas marcas, nuestro trabajo está garantizado y hecho con calidad.\r\n </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Izonorizaciones', '', 'inherit', 'open', 'open', '', '17-revision-v1', '', '', '2014-08-28 10:44:43', '2014-08-28 10:44:43', '', 17, 'http://roka.es/webs/gcm/?p=79', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(80, 1, '2014-08-28 11:04:14', '2014-08-28 11:04:14', '<div id="img_superior-izono">\n</div> \n<article>\n\n<div class="panel_inf_top"> \n <div class="panel_inf">\n <div class="tit_arti">\nInsonorizaciones\n </div>\n <div class="txt_arti">\nAislamiento acuático de industrias, locales comerciales y viviendas, empleando las últimas novedades en aislantes, fabricación de silenciosos dispositivos y sistemas de filtros </div>\n <div id="lateral-sup">\n \n </div>', 'Izonorizaciones', '', 'inherit', 'open', 'open', '', '17-autosave-v1', '', '', '2014-08-28 11:04:14', '2014-08-28 11:04:14', '', 17, 'http://roka.es/webs/gcm/?p=80', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(82, 1, '2014-08-28 11:19:55', '2014-08-28 11:19:55', '<div id="img_superior-extrac">\n</div> \n<article>\n\n<div class="panel_inf_top"> \n <div class="panel_inf">\n <div class="tit_arti">\nExtracción y ventilación\n </div>\n <div class="txt_arti">\nFabricación de conductos industriales en cualquier medida con sistema Pitsbur engatillado y Metu, construcción de campanas industriales en acero mate o brillo, con modelos personalizados e instalación de unidades de ventilación baja, media y alta presión para cualquier industria.\n\n \n\n </div>\n <div id="lateral-sup">\n \n </div>', 'Extracción y Ventilación', '', 'inherit', 'open', 'open', '', '20-autosave-v1', '', '', '2014-08-28 11:19:55', '2014-08-28 11:19:55', '', 20, 'http://roka.es/webs/gcm/?p=82', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(83, 1, '2014-08-28 11:14:46', '2014-08-28 11:14:46', '<div id="img_superior-extrac">\r\n</div> \r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n <div class="tit_arti">\r\nInsonorizaciones\r\n </div>\r\n <div class="txt_arti">\r\nAislamiento acuático de industrias, locales comerciales y viviendas, empleando las últimas novedades en aislantes, fabricación de silenciosos dispositivos y sistemas de filtros y absorbentes, apantallamientos y encapsulados. </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Extracción y Ventilación', '', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2014-08-28 11:14:46', '2014-08-28 11:14:46', '', 20, 'http://roka.es/webs/gcm/?p=83', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(84, 1, '2014-08-28 11:21:36', '2014-08-28 11:21:36', '<div id="img_superior-extrac">\r\n</div> \r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n <div class="tit_arti">\r\nExtracción y ventilación\r\n </div>\r\n <div class="txt_arti">\r\nFabricación de conductos industriales en cualquier medida con sistema Pitsbur engatillado y Metu, construcción de campanas industriales en acero mate o brillo, con modelos personalizados e instalación de unidades de ventilación baja, media y alta presión para cualquier industria.\r\n\r\nReparación, instalación y servicio a aires acondicionados de variadas marcas, nuestro trabajo está garantizado y hecho con calidad. \r\n </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Extracción y Ventilación', '', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2014-08-28 11:21:36', '2014-08-28 11:21:36', '', 20, 'http://roka.es/webs/gcm/?p=84', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(85, 1, '2014-08-28 11:55:03', '2014-08-28 11:55:03', '<div id="img_superior-instala">\n</div> \n<article>\n\n<div class="panel_inf_top"> \n <div class="panel_inf">\n <div class="tit_arti">\nInstalaciones Eléctricas\n </div>\n <div class="txt_arti">\nInstalaciones de electricidad industriales, comerciales y domésticas. Incluyendo un servicio de reparación y mantenimiento , trabajos para grandes industrias, comercios, comuniades  \n </div>\n <div id="lateral-sup">\n \n </div>', 'Instalaciones eléctricas', '', 'inherit', 'open', 'open', '', '22-autosave-v1', '', '', '2014-08-28 11:55:03', '2014-08-28 11:55:03', '', 22, 'http://roka.es/webs/gcm/?p=85', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(87, 1, '2014-08-28 11:55:47', '2014-08-28 11:55:47', '<div id="img_superior-instala">\r\n</div> \r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n <div class="tit_arti">\r\nInstalaciones Eléctricas\r\n </div>\r\n <div class="txt_arti">\r\nInstalaciones de electricidad industriales, comerciales y domésticas. Incluyendo un servicio de reparación y mantenimiento , trabajos para grandes industrias, comercios, comunidades, y residencias particulares. Boletines y certificados   \r\n </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Instalaciones eléctricas', '', 'inherit', 'open', 'open', '', '22-revision-v1', '', '', '2014-08-28 11:55:47', '2014-08-28 11:55:47', '', 22, 'http://roka.es/webs/gcm/?p=87', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(86, 1, '2014-08-28 11:48:46', '2014-08-28 11:48:46', '<div id="img_superior-instala">\r\n</div> \r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n <div class="tit_arti">\r\nExtracción y ventilación\r\n </div>\r\n <div class="txt_arti">\r\nFabricación de conductos industriales en cualquier medida con sistema Pitsbur engatillado y Metu, construcción de campanas industriales en acero mate o brillo, con modelos personalizados e instalación de unidades de ventilación baja, media y alta presión para cualquier industria.\r\n\r\nReparación, instalación y servicio a aires acondicionados de variadas marcas, nuestro trabajo está garantizado y hecho con calidad. \r\n </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Instalaciones eléctricas', '', 'inherit', 'open', 'open', '', '22-revision-v1', '', '', '2014-08-28 11:48:46', '2014-08-28 11:48:46', '', 22, 'http://roka.es/webs/gcm/?p=86', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(90, 1, '2014-08-28 12:12:59', '2014-08-28 12:12:59', '<div id="img_superior-fonta"></div>\r\n<article>\r\n<div class="panel_inf_top">\r\n<div class="panel_inf">\r\n<div class="tit_arti">Fontanería</div>\r\n<div class="txt_arti">Trabajos de fontanería en cualquier ámbito o espacio con las diferentes tecnologías del mercado actual, tales como Termofusión, Terrain, Cobre y otras múltiples. Instalación de sanitarios, termos y electrodomésticos, lavadoras, lavavajillas, griferías y cisternas.       \r\n</div>\r\n<div id="lateral-sup"></div>\r\n</div>\r\n</div>\r\n</article>', 'Fontanería', '', 'inherit', 'open', 'open', '', '24-revision-v1', '', '', '2014-08-28 12:12:59', '2014-08-28 12:12:59', '', 24, 'http://roka.es/webs/gcm/?p=90', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(88, 1, '2014-08-28 12:04:44', '2014-08-28 12:04:44', '<div id="img_superior-fonta"></div>\r\n<article>\r\n<div class="panel_inf_top">\r\n<div class="panel_inf">\r\n<div class="tit_arti">Aires acondicionados</div>\r\n<div class="txt_arti">Desarrollo de instalaciones de climatizaciones industriales, comerciales y domésticas basadas en la utilización de grandes grupos enfriadores, fancolis, climatizadores compactos, partidos y sistemas de Split de pared, techo, suelo y cassette, comercializando las marcas de mayor prestigio.Reparación, instalación y servicio a aires acondicionados de variadas marcas, nuestro trabajo está garantizado y hecho con calidad.\r\n\r\n</div>\r\n<div id="lateral-sup"></div>\r\n</div>\r\n</div>\r\n</article>', 'Fontanería', '', 'inherit', 'open', 'open', '', '24-revision-v1', '', '', '2014-08-28 12:04:44', '2014-08-28 12:04:44', '', 24, 'http://roka.es/webs/gcm/?p=88', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(89, 1, '2014-08-28 12:11:45', '2014-08-28 12:11:45', '<div id="img_superior-fonta"></div>\n<article>\n<div class="panel_inf_top">\n<div class="panel_inf">\n<div class="tit_arti">Fontanería</div>\n<div class="txt_arti">Trabajos de fontanería en cualquier ámbito o espacio con las diferentes tecnologías del mercado actual, tales como Termofusión, Terrain, Cobre y otras múltiples. Instalación de sanitarios, termos      \n\n</div>\n<div id="lateral-sup"></div>\n</div>\n</div>\n</article>', 'Fontanería', '', 'inherit', 'open', 'open', '', '24-autosave-v1', '', '', '2014-08-28 12:11:45', '2014-08-28 12:11:45', '', 24, 'http://roka.es/webs/gcm/?p=89', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(91, 1, '2014-08-28 12:20:39', '2014-08-28 12:20:39', '<div id="img_superior-fonta">\r\n</div> \r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n <div class="tit_arti">\r\nFontanería\r\n </div>\r\n <div class="txt_arti">\r\nTrabajos de fontanería en cualquier ámbito o espacio con las diferentes tecnologías del mercado actual, tales como Termofusión, Terrain, Cobre y otras múltiples. Instalación de sanitarios, termos y electrodomésticos, lavadoras, lavavajillas, griferías y cisternas. \r\n </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Fontanería', '', 'inherit', 'open', 'open', '', '24-revision-v1', '', '', '2014-08-28 12:20:39', '2014-08-28 12:20:39', '', 24, 'http://roka.es/webs/gcm/?p=91', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(92, 1, '2014-08-28 16:14:46', '2014-08-28 16:14:46', '[metaslider id=4]\r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n <div class="txt_arti-scroll">\r\n Grupo Canaria de Montajes\r\n </div>\r\n <div class="txt_arti">\r\n Desempeñamos tareas de instalaciones industriales a terceros, aportando los recursos humanos y materiales necesarios para implementar las operaciones y procedimientos consensuados con nuestros clientes en sus procesos logísticos y en las actividades complementarias a sus cadenas de producción.<br />\r\n compuesta en un 100% por capital canario, nuestro objetivo es conocer a fondo las necesidades de las empresas para poder ofrecer nuestros servicios de la manera mas satisfactoria, siempre contando con nuestra profesionalidad  contrastada.<br />\r\n Nuestro poder reside en la cualificación profesional de nuestros trabajadores. Ellos son nuestro principal activo.\r\n </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Inicio', '', 'inherit', 'open', 'open', '', '68-revision-v1', '', '', '2014-08-28 16:14:46', '2014-08-28 16:14:46', '', 68, 'http://roka.es/webs/gcm/?p=92', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(93, 1, '2014-08-28 16:15:53', '2014-08-28 16:15:53', '[metaslider id=4]\r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n <div class="tit-arti">\r\n Grupo Canaria de Montajes\r\n </div>\r\n <div class="txt_arti-scroll">\r\n Desempeñamos tareas de instalaciones industriales a terceros, aportando los recursos humanos y materiales necesarios para implementar las operaciones y procedimientos consensuados con nuestros clientes en sus procesos logísticos y en las actividades complementarias a sus cadenas de producción.<br />\r\n compuesta en un 100% por capital canario, nuestro objetivo es conocer a fondo las necesidades de las empresas para poder ofrecer nuestros servicios de la manera mas satisfactoria, siempre contando con nuestra profesionalidad  contrastada.<br />\r\n Nuestro poder reside en la cualificación profesional de nuestros trabajadores. Ellos son nuestro principal activo.\r\n </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Inicio', '', 'inherit', 'open', 'open', '', '68-revision-v1', '', '', '2014-08-28 16:15:53', '2014-08-28 16:15:53', '', 68, 'http://roka.es/webs/gcm/?p=93', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(94, 1, '2014-08-28 16:17:08', '2014-08-28 16:17:08', '[metaslider id=4]\r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n <div class="tit_arti">\r\n Grupo Canaria de Montajes\r\n </div>\r\n <div class="txt_arti-scroll">\r\n Desempeñamos tareas de instalaciones industriales a terceros, aportando los recursos humanos y materiales necesarios para implementar las operaciones y procedimientos consensuados con nuestros clientes en sus procesos logísticos y en las actividades complementarias a sus cadenas de producción.<br />\r\n compuesta en un 100% por capital canario, nuestro objetivo es conocer a fondo las necesidades de las empresas para poder ofrecer nuestros servicios de la manera mas satisfactoria, siempre contando con nuestra profesionalidad  contrastada.<br />\r\n Nuestro poder reside en la cualificación profesional de nuestros trabajadores. Ellos son nuestro principal activo.\r\n </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Inicio', '', 'inherit', 'open', 'open', '', '68-revision-v1', '', '', '2014-08-28 16:17:08', '2014-08-28 16:17:08', '', 68, 'http://roka.es/webs/gcm/?p=94', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(95, 1, '2014-08-28 16:28:44', '2014-08-28 16:28:44', '[metaslider id=4]\r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n <div class="tit_arti_dob">\r\n Grupo Canaria de Montajes\r\n </div>\r\n <div class="txt_arti-scroll">\r\n Desempeñamos tareas de instalaciones industriales a terceros, aportando los recursos humanos y materiales necesarios para implementar las operaciones y procedimientos consensuados con nuestros clientes en sus procesos logísticos y en las actividades complementarias a sus cadenas de producción.<br />\r\n compuesta en un 100% por capital canario, nuestro objetivo es conocer a fondo las necesidades de las empresas para poder ofrecer nuestros servicios de la manera mas satisfactoria, siempre contando con nuestra profesionalidad  contrastada.<br />\r\n Nuestro poder reside en la cualificación profesional de nuestros trabajadores. Ellos son nuestro principal activo.\r\n </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Inicio', '', 'inherit', 'open', 'open', '', '68-revision-v1', '', '', '2014-08-28 16:28:44', '2014-08-28 16:28:44', '', 68, 'http://roka.es/webs/gcm/?p=95', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(96, 1, '2014-08-28 16:34:02', '2014-08-28 16:34:02', '<div id="img_superior-extrac">\r\n</div> \r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n <div class="tit_arti_dob">\r\nExtracción y ventilación\r\n </div>\r\n <div class="txt_arti">\r\nFabricación de conductos industriales en cualquier medida con sistema Pitsbur engatillado y Metu, construcción de campanas industriales en acero mate o brillo, con modelos personalizados e instalación de unidades de ventilación baja, media y alta presión para cualquier industria.\r\n\r\nReparación, instalación y servicio a aires acondicionados de variadas marcas, nuestro trabajo está garantizado y hecho con calidad. \r\n </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Extracción y Ventilación', '', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2014-08-28 16:34:02', '2014-08-28 16:34:02', '', 20, 'http://roka.es/webs/gcm/?p=96', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(97, 1, '2014-08-28 16:35:40', '2014-08-28 16:35:40', '<div id="img_superior-instala">\r\n</div> \r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n <div class="tit_arti_dob">\r\nInstalaciones Eléctricas\r\n </div>\r\n <div class="txt_arti">\r\nInstalaciones de electricidad industriales, comerciales y domésticas. Incluyendo un servicio de reparación y mantenimiento , trabajos para grandes industrias, comercios, comunidades, y residencias particulares. Boletines y certificados   \r\n </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Instalaciones eléctricas', '', 'inherit', 'open', 'open', '', '22-revision-v1', '', '', '2014-08-28 16:35:40', '2014-08-28 16:35:40', '', 22, 'http://roka.es/webs/gcm/?p=97', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(98, 1, '2014-08-28 16:38:01', '2014-08-28 16:38:01', '[metaslider id=4]\r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n <div class="tit_arti_dob">\r\n Grupo Canaria de Montajes\r\n </div>\r\n <div class="txt_arti-scroll">\r\n Desempeñamos tareas de instalaciones industriales a terceros, aportando los recursos humanos y materiales necesarios para implementar las operaciones y procedimientos consensuados con nuestros clientes en sus procesos logísticos y en las actividades complementarias a sus cadenas de producción.\r\n\r\nCompuesta en un 100% por capital canario, nuestro objetivo es conocer a fondo las necesidades de las empresas para poder ofrecer nuestros servicios de la manera mas satisfactoria, siempre contando con nuestra profesionalidad  contrastada.\r\n\r\nNuestro poder reside en la cualificación profesional de nuestros trabajadores. Ellos son nuestro principal activo.\r\n </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Inicio', '', 'inherit', 'open', 'open', '', '68-revision-v1', '', '', '2014-08-28 16:38:01', '2014-08-28 16:38:01', '', 68, 'http://roka.es/webs/gcm/?p=98', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(99, 1, '2014-08-29 09:42:45', '2014-08-29 09:42:45', '[metaslider id=4]\r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n <div class="tit_arti_dob">\r\n Grupo Canaria de Montajes\r\n </div>\r\n <div id="inicio">\r\n \r\n </div>\r\n <div class="txt_arti-scroll">\r\n Desempeñamos tareas de instalaciones industriales a terceros, aportando los recursos humanos y materiales necesarios para implementar las operaciones y procedimientos consensuados con nuestros clientes en sus procesos logísticos y en las actividades complementarias a sus cadenas de producción.\r\n\r\nCompuesta en un 100% por capital canario, nuestro objetivo es conocer a fondo las necesidades de las empresas para poder ofrecer nuestros servicios de la manera mas satisfactoria, siempre contando con nuestra profesionalidad  contrastada.\r\n\r\nNuestro poder reside en la cualificación profesional de nuestros trabajadores. Ellos son nuestro principal activo.\r\n </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Inicio', '', 'inherit', 'open', 'open', '', '68-revision-v1', '', '', '2014-08-29 09:42:45', '2014-08-29 09:42:45', '', 68, 'http://roka.es/webs/gcm/?p=99', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(102, 1, '2014-08-29 10:01:52', '2014-08-29 10:01:52', '[metaslider id=4]\r\n\r\n<article>\r\n<div class="panel_inf_top">\r\n<div class="panel_inf">\r\n<div class="tit_arti_dob">Grupo Canaria de Montajes</div>\r\n<div class="txt_arti-scroll">Desempeñamos tareas de instalaciones industriales a terceros, aportando los recursos humanos y materiales necesarios para implementar las operaciones y procedimientos consensuados con nuestros clientes en sus procesos logísticos y en las actividades complementarias a sus cadenas de producción.Compuesta en un 100% por capital canario, nuestro objetivo es conocer a fondo las necesidades de las empresas para poder ofrecer nuestros servicios de la manera mas satisfactoria, siempre contando con nuestra profesionalidad contrastada.\r\n\r\nNuestro poder reside en la cualificación profesional de nuestros trabajadores. Ellos son nuestro principal activo.\r\n\r\n</div>\r\n<div id="lateral-sup"></div>\r\n</div>\r\n</div>\r\n</article>', 'Inicio', '', 'inherit', 'open', 'open', '', '68-revision-v1', '', '', '2014-08-29 10:01:52', '2014-08-29 10:01:52', '', 68, 'http://roka.es/webs/gcm/?p=102', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(101, 1, '2014-08-29 09:59:48', '2014-08-29 09:59:48', '[metaslider id=4]\r\n\r\n<article>\r\n<div class="panel_inf_top">\r\n<div class="panel_inf">\r\n<div class="tit_arti_dob">Grupo Canaria de Montajes</div>\r\n<a href="http://roka.es/webs/gcm/" style="cursor:pointer"><div id="inicio"></div></a>\r\n<div class="txt_arti-scroll">Desempeñamos tareas de instalaciones industriales a terceros, aportando los recursos humanos y materiales necesarios para implementar las operaciones y procedimientos consensuados con nuestros clientes en sus procesos logísticos y en las actividades complementarias a sus cadenas de producción.Compuesta en un 100% por capital canario, nuestro objetivo es conocer a fondo las necesidades de las empresas para poder ofrecer nuestros servicios de la manera mas satisfactoria, siempre contando con nuestra profesionalidad contrastada.\r\n\r\nNuestro poder reside en la cualificación profesional de nuestros trabajadores. Ellos son nuestro principal activo.\r\n\r\n</div>\r\n<div id="lateral-sup"></div>\r\n</div>\r\n</div>\r\n</article>', 'Inicio', '', 'inherit', 'open', 'open', '', '68-revision-v1', '', '', '2014-08-29 09:59:48', '2014-08-29 09:59:48', '', 68, 'http://roka.es/webs/gcm/?p=101', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(104, 1, '2014-08-29 10:10:50', '2014-08-29 10:10:50', '[metaslider id=4]\r\n\r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n <div class="tit_arti_dob">\r\nGrupo Canaria de Montajes\r\n </div>\r\n <div class="txt_arti">\r\nDesempeñamos tareas de instalaciones industriales a terceros, aportando los recursos humanos y materiales necesarios para implementar las operaciones y procedimientos consensuados con nuestros clientes en sus procesos logísticos y en las actividades complementarias a sus cadenas de producción.Compuesta en un 100% por capital canario, nuestro objetivo es conocer a fondo las necesidades de las empresas para poder ofrecer nuestros servicios de la manera mas satisfactoria, siempre contando con nuestra profesionalidad contrastada.\r\n\r\nNuestro poder reside en la cualificación profesional de nuestros trabajadores. Ellos son nuestro principal activo.\r\n </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Inicio', '', 'inherit', 'open', 'open', '', '68-revision-v1', '', '', '2014-08-29 10:10:50', '2014-08-29 10:10:50', '', 68, 'http://roka.es/webs/gcm/?p=104', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(105, 1, '2014-08-29 10:11:40', '2014-08-29 10:11:40', '[metaslider id=4]\r\n\r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n <div class="tit_arti_dob">\r\nGrupo Canaria de Montajes\r\n </div>\r\n<div id="inicio"></div>\r\n <div class="txt_arti">\r\nDesempeñamos tareas de instalaciones industriales a terceros, aportando los recursos humanos y materiales necesarios para implementar las operaciones y procedimientos consensuados con nuestros clientes en sus procesos logísticos y en las actividades complementarias a sus cadenas de producción.Compuesta en un 100% por capital canario, nuestro objetivo es conocer a fondo las necesidades de las empresas para poder ofrecer nuestros servicios de la manera mas satisfactoria, siempre contando con nuestra profesionalidad contrastada.\r\n\r\nNuestro poder reside en la cualificación profesional de nuestros trabajadores. Ellos son nuestro principal activo.\r\n </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Inicio', '', 'inherit', 'open', 'open', '', '68-revision-v1', '', '', '2014-08-29 10:11:40', '2014-08-29 10:11:40', '', 68, 'http://roka.es/webs/gcm/?p=105', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(108, 1, '2014-08-29 10:19:09', '2014-08-29 10:19:09', '[metaslider id=4]\r\n\r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n <div class="tit_arti_dob">\r\nGrupo Canaria de Montajes\r\n </div>\r\n\r\n <div class="txt_arti">\r\nDesempeñamos tareas de instalaciones industriales a terceros, aportando los recursos humanos y materiales necesarios para implementar las operaciones y procedimientos consensuados con nuestros clientes en sus procesos logísticos y en las actividades complementarias a sus cadenas de producción.Compuesta en un 100% por capital canario, nuestro objetivo es conocer a fondo las necesidades de las empresas para poder ofrecer nuestros servicios de la manera mas satisfactoria, siempre contando con nuestra profesionalidad contrastada.\r\n\r\nNuestro poder reside en la cualificación profesional de nuestros trabajadores. Ellos son nuestro principal activo.\r\n </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Inicio', '', 'inherit', 'open', 'open', '', '68-revision-v1', '', '', '2014-08-29 10:19:09', '2014-08-29 10:19:09', '', 68, 'http://roka.es/webs/gcm/?p=108', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(106, 1, '2014-08-29 10:13:37', '2014-08-29 10:13:37', '[metaslider id=4]\r\n\r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n <div class="tit_arti_dob">\r\nGrupo Canaria de Montajes\r\n </div>\r\n<a href="http://roka.es/webs/gcm/">\r\n<div id="inicio"></div></a>\r\n <div class="txt_arti">\r\nDesempeñamos tareas de instalaciones industriales a terceros, aportando los recursos humanos y materiales necesarios para implementar las operaciones y procedimientos consensuados con nuestros clientes en sus procesos logísticos y en las actividades complementarias a sus cadenas de producción.Compuesta en un 100% por capital canario, nuestro objetivo es conocer a fondo las necesidades de las empresas para poder ofrecer nuestros servicios de la manera mas satisfactoria, siempre contando con nuestra profesionalidad contrastada.\r\n\r\nNuestro poder reside en la cualificación profesional de nuestros trabajadores. Ellos son nuestro principal activo.\r\n </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Inicio', '', 'inherit', 'open', 'open', '', '68-revision-v1', '', '', '2014-08-29 10:13:37', '2014-08-29 10:13:37', '', 68, 'http://roka.es/webs/gcm/?p=106', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(107, 1, '2014-08-29 10:18:24', '2014-08-29 10:18:24', '[metaslider id=4]\r\n\r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n <div class="tit_arti_dob">\r\nGrupo Canaria de Montajes\r\n </div>\r\n<a href="http://roka.es/webs/gcm/" id="inicio"></a>\r\n <div class="txt_arti">\r\nDesempeñamos tareas de instalaciones industriales a terceros, aportando los recursos humanos y materiales necesarios para implementar las operaciones y procedimientos consensuados con nuestros clientes en sus procesos logísticos y en las actividades complementarias a sus cadenas de producción.Compuesta en un 100% por capital canario, nuestro objetivo es conocer a fondo las necesidades de las empresas para poder ofrecer nuestros servicios de la manera mas satisfactoria, siempre contando con nuestra profesionalidad contrastada.\r\n\r\nNuestro poder reside en la cualificación profesional de nuestros trabajadores. Ellos son nuestro principal activo.\r\n </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Inicio', '', 'inherit', 'open', 'open', '', '68-revision-v1', '', '', '2014-08-29 10:18:24', '2014-08-29 10:18:24', '', 68, 'http://roka.es/webs/gcm/?p=107', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(109, 1, '2014-08-29 10:20:21', '2014-08-29 10:20:21', '[metaslider id=4]\r\n\r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n <div class="tit_arti_dob">\r\nGrupo Canaria de Montajes\r\n </div>\r\n\r\n <div class="txt_arti-scroll">\r\nDesempeñamos tareas de instalaciones industriales a terceros, aportando los recursos humanos y materiales necesarios para implementar las operaciones y procedimientos consensuados con nuestros clientes en sus procesos logísticos y en las actividades complementarias a sus cadenas de producción.Compuesta en un 100% por capital canario, nuestro objetivo es conocer a fondo las necesidades de las empresas para poder ofrecer nuestros servicios de la manera mas satisfactoria, siempre contando con nuestra profesionalidad contrastada.\r\n\r\nNuestro poder reside en la cualificación profesional de nuestros trabajadores. Ellos son nuestro principal activo.\r\n </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Inicio', '', 'inherit', 'open', 'open', '', '68-revision-v1', '', '', '2014-08-29 10:20:21', '2014-08-29 10:20:21', '', 68, 'http://roka.es/webs/gcm/?p=109', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(110, 1, '2014-08-29 10:25:16', '2014-08-29 10:25:16', '[metaslider id=4]\r\n\r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n<div id="inicio"></div>\r\n <div class="tit_arti_dob">\r\nGrupo Canaria de Montajes\r\n </div>\r\n\r\n <div class="txt_arti-scroll">\r\nDesempeñamos tareas de instalaciones industriales a terceros, aportando los recursos humanos y materiales necesarios para implementar las operaciones y procedimientos consensuados con nuestros clientes en sus procesos logísticos y en las actividades complementarias a sus cadenas de producción.Compuesta en un 100% por capital canario, nuestro objetivo es conocer a fondo las necesidades de las empresas para poder ofrecer nuestros servicios de la manera mas satisfactoria, siempre contando con nuestra profesionalidad contrastada.\r\n\r\nNuestro poder reside en la cualificación profesional de nuestros trabajadores. Ellos son nuestro principal activo.\r\n </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Inicio', '', 'inherit', 'open', 'open', '', '68-revision-v1', '', '', '2014-08-29 10:25:16', '2014-08-29 10:25:16', '', 68, 'http://roka.es/webs/gcm/?p=110', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(112, 1, '2014-08-29 10:27:00', '2014-08-29 10:27:00', '[metaslider id=4]\r\n\r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n<div id="inicio"></div>\r\n <div class="tit_arti_dob">\r\nGrupo Canaria de Montajes\r\n </div>\r\n\r\n <div class="txt_arti-scroll">\r\nDesempeñamos tareas de instalaciones industriales a terceros, aportando los recursos humanos y materiales necesarios para implementar las operaciones y procedimientos consensuados con nuestros clientes en sus procesos logísticos y en las actividades complementarias a sus cadenas de producción.Compuesta en un 100% por capital canario, nuestro objetivo es conocer a fondo las necesidades de las empresas para poder ofrecer nuestros servicios de la manera mas satisfactoria, siempre contando con nuestra profesionalidad contrastada.\r\n\r\nNuestro poder reside en la cualificación profesional de nuestros trabajadores. Ellos son nuestro principal activo.\r\n </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Inicio', '', 'inherit', 'open', 'open', '', '68-revision-v1', '', '', '2014-08-29 10:27:00', '2014-08-29 10:27:00', '', 68, 'http://roka.es/webs/gcm/?p=112', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(111, 1, '2014-08-29 10:26:10', '2014-08-29 10:26:10', '[metaslider id=4]\r\n\r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n<a href="http://roka.es/webs/gcm/"><div id="inicio"></div></a>\r\n <div class="tit_arti_dob">\r\nGrupo Canaria de Montajes\r\n </div>\r\n\r\n <div class="txt_arti-scroll">\r\nDesempeñamos tareas de instalaciones industriales a terceros, aportando los recursos humanos y materiales necesarios para implementar las operaciones y procedimientos consensuados con nuestros clientes en sus procesos logísticos y en las actividades complementarias a sus cadenas de producción.Compuesta en un 100% por capital canario, nuestro objetivo es conocer a fondo las necesidades de las empresas para poder ofrecer nuestros servicios de la manera mas satisfactoria, siempre contando con nuestra profesionalidad contrastada.\r\n\r\nNuestro poder reside en la cualificación profesional de nuestros trabajadores. Ellos son nuestro principal activo.\r\n </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Inicio', '', 'inherit', 'open', 'open', '', '68-revision-v1', '', '', '2014-08-29 10:26:10', '2014-08-29 10:26:10', '', 68, 'http://roka.es/webs/gcm/?p=111', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(113, 1, '2014-08-29 10:28:04', '2014-08-29 10:28:04', '[metaslider id=4]\r\n\r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n<div id="inicio"><a href="http://roka.es/webs/gcm/"></a></div>\r\n <div class="tit_arti_dob">\r\nGrupo Canaria de Montajes\r\n </div>\r\n\r\n <div class="txt_arti-scroll">\r\nDesempeñamos tareas de instalaciones industriales a terceros, aportando los recursos humanos y materiales necesarios para implementar las operaciones y procedimientos consensuados con nuestros clientes en sus procesos logísticos y en las actividades complementarias a sus cadenas de producción.Compuesta en un 100% por capital canario, nuestro objetivo es conocer a fondo las necesidades de las empresas para poder ofrecer nuestros servicios de la manera mas satisfactoria, siempre contando con nuestra profesionalidad contrastada.\r\n\r\nNuestro poder reside en la cualificación profesional de nuestros trabajadores. Ellos son nuestro principal activo.\r\n </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Inicio', '', 'inherit', 'open', 'open', '', '68-revision-v1', '', '', '2014-08-29 10:28:04', '2014-08-29 10:28:04', '', 68, 'http://roka.es/webs/gcm/?p=113', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(115, 1, '2014-08-29 10:32:36', '2014-08-29 10:32:36', '[metaslider id=4]\r\n\r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n<div id="inicio"></div>\r\n <div class="tit_arti_dob">\r\nGrupo Canaria de Montajes\r\n </div>\r\n\r\n <div class="txt_arti-scroll">\r\nDesempeñamos tareas de instalaciones industriales a terceros, aportando los recursos humanos y materiales necesarios para implementar las operaciones y procedimientos consensuados con nuestros clientes en sus procesos logísticos y en las actividades complementarias a sus cadenas de producción.Compuesta en un 100% por capital canario, nuestro objetivo es conocer a fondo las necesidades de las empresas para poder ofrecer nuestros servicios de la manera mas satisfactoria, siempre contando con nuestra profesionalidad contrastada.\r\n\r\nNuestro poder reside en la cualificación profesional de nuestros trabajadores. Ellos son nuestro principal activo.\r\n </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Inicio', '', 'inherit', 'open', 'open', '', '68-revision-v1', '', '', '2014-08-29 10:32:36', '2014-08-29 10:32:36', '', 68, 'http://roka.es/webs/gcm/?p=115', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(114, 1, '2014-08-29 10:29:08', '2014-08-29 10:29:08', '[metaslider id=4]\r\n\r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n<div id="inicio"><a href="http://roka.es/webs/gcm/" class="iniciobt"></a></div>\r\n <div class="tit_arti_dob">\r\nGrupo Canaria de Montajes\r\n </div>\r\n\r\n <div class="txt_arti-scroll">\r\nDesempeñamos tareas de instalaciones industriales a terceros, aportando los recursos humanos y materiales necesarios para implementar las operaciones y procedimientos consensuados con nuestros clientes en sus procesos logísticos y en las actividades complementarias a sus cadenas de producción.Compuesta en un 100% por capital canario, nuestro objetivo es conocer a fondo las necesidades de las empresas para poder ofrecer nuestros servicios de la manera mas satisfactoria, siempre contando con nuestra profesionalidad contrastada.\r\n\r\nNuestro poder reside en la cualificación profesional de nuestros trabajadores. Ellos son nuestro principal activo.\r\n </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Inicio', '', 'inherit', 'open', 'open', '', '68-revision-v1', '', '', '2014-08-29 10:29:08', '2014-08-29 10:29:08', '', 68, 'http://roka.es/webs/gcm/?p=114', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(118, 1, '2014-08-29 10:38:49', '2014-08-29 10:38:49', '[metaslider id=4]\r\n\r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n<div id="inicio"></div>\r\n <div class="tit_arti_dob">\r\nGrupo Canaria de Montajes\r\n </div>\r\n\r\n <div class="txt_arti-scroll">\r\nDesempeñamos tareas de instalaciones industriales a terceros, aportando los recursos humanos y materiales necesarios para implementar las operaciones y procedimientos consensuados con nuestros clientes en sus procesos logísticos y en las actividades complementarias a sus cadenas de producción.Compuesta en un 100% por capital canario, nuestro objetivo es conocer a fondo las necesidades de las empresas para poder ofrecer nuestros servicios de la manera mas satisfactoria, siempre contando con nuestra profesionalidad contrastada.\r\n\r\nNuestro poder reside en la cualificación profesional de nuestros trabajadores. Ellos son nuestro principal activo.\r\n </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Inicio', '', 'inherit', 'open', 'open', '', '68-revision-v1', '', '', '2014-08-29 10:38:49', '2014-08-29 10:38:49', '', 68, 'http://roka.es/webs/gcm/?p=118', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(116, 1, '2014-08-29 10:34:16', '2014-08-29 10:34:16', '[metaslider id=4]\r\n\r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n<a href="http://roka.es/webs/gcm/" id="inicio"><div ></div></a>\r\n <div class="tit_arti_dob">\r\nGrupo Canaria de Montajes\r\n </div>\r\n\r\n <div class="txt_arti-scroll">\r\nDesempeñamos tareas de instalaciones industriales a terceros, aportando los recursos humanos y materiales necesarios para implementar las operaciones y procedimientos consensuados con nuestros clientes en sus procesos logísticos y en las actividades complementarias a sus cadenas de producción.Compuesta en un 100% por capital canario, nuestro objetivo es conocer a fondo las necesidades de las empresas para poder ofrecer nuestros servicios de la manera mas satisfactoria, siempre contando con nuestra profesionalidad contrastada.\r\n\r\nNuestro poder reside en la cualificación profesional de nuestros trabajadores. Ellos son nuestro principal activo.\r\n </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Inicio', '', 'inherit', 'open', 'open', '', '68-revision-v1', '', '', '2014-08-29 10:34:16', '2014-08-29 10:34:16', '', 68, 'http://roka.es/webs/gcm/?p=116', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(117, 1, '2014-08-29 10:37:57', '2014-08-29 10:37:57', '[metaslider id=4]\r\n\r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n<a href="http://roka.es/webs/gcm/" id="inicio"></a>\r\n <div class="tit_arti_dob">\r\nGrupo Canaria de Montajes\r\n </div>\r\n\r\n <div class="txt_arti-scroll">\r\nDesempeñamos tareas de instalaciones industriales a terceros, aportando los recursos humanos y materiales necesarios para implementar las operaciones y procedimientos consensuados con nuestros clientes en sus procesos logísticos y en las actividades complementarias a sus cadenas de producción.Compuesta en un 100% por capital canario, nuestro objetivo es conocer a fondo las necesidades de las empresas para poder ofrecer nuestros servicios de la manera mas satisfactoria, siempre contando con nuestra profesionalidad contrastada.\r\n\r\nNuestro poder reside en la cualificación profesional de nuestros trabajadores. Ellos son nuestro principal activo.\r\n </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Inicio', '', 'inherit', 'open', 'open', '', '68-revision-v1', '', '', '2014-08-29 10:37:57', '2014-08-29 10:37:57', '', 68, 'http://roka.es/webs/gcm/?p=117', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(121, 1, '2014-08-29 10:44:19', '2014-08-29 10:44:19', '[metaslider id=4]\r\n\r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n<div id="inicio"></div>\r\n <div class="tit_arti_dob">\r\nGrupo Canaria de Montajes\r\n </div>\r\n\r\n <div class="txt_arti-scroll">\r\nDesempeñamos tareas de instalaciones industriales a terceros, aportando los recursos humanos y materiales necesarios para implementar las operaciones y procedimientos consensuados con nuestros clientes en sus procesos logísticos y en las actividades complementarias a sus cadenas de producción.Compuesta en un 100% por capital canario, nuestro objetivo es conocer a fondo las necesidades de las empresas para poder ofrecer nuestros servicios de la manera mas satisfactoria, siempre contando con nuestra profesionalidad contrastada.\r\n\r\nNuestro poder reside en la cualificación profesional de nuestros trabajadores. Ellos son nuestro principal activo.\r\n </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Inicio', '', 'inherit', 'open', 'open', '', '68-revision-v1', '', '', '2014-08-29 10:44:19', '2014-08-29 10:44:19', '', 68, 'http://roka.es/webs/gcm/?p=121', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(119, 1, '2014-08-29 10:41:53', '2014-08-29 10:41:53', '[metaslider id=4]\r\n\r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n<a href="http://roka.es/webs/gcm/"><div id="inicio"></div></a>\r\n <div class="tit_arti_dob">\r\nGrupo Canaria de Montajes\r\n </div>\r\n\r\n <div class="txt_arti-scroll">\r\nDesempeñamos tareas de instalaciones industriales a terceros, aportando los recursos humanos y materiales necesarios para implementar las operaciones y procedimientos consensuados con nuestros clientes en sus procesos logísticos y en las actividades complementarias a sus cadenas de producción.Compuesta en un 100% por capital canario, nuestro objetivo es conocer a fondo las necesidades de las empresas para poder ofrecer nuestros servicios de la manera mas satisfactoria, siempre contando con nuestra profesionalidad contrastada.\r\n\r\nNuestro poder reside en la cualificación profesional de nuestros trabajadores. Ellos son nuestro principal activo.\r\n </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Inicio', '', 'inherit', 'open', 'open', '', '68-revision-v1', '', '', '2014-08-29 10:41:53', '2014-08-29 10:41:53', '', 68, 'http://roka.es/webs/gcm/?p=119', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(120, 1, '2014-08-29 10:42:52', '2014-08-29 10:42:52', '[metaslider id=4]\r\n\r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n<a href="http://roka.es/webs/gcm/"></a>\r\n <div class="tit_arti_dob">\r\nGrupo Canaria de Montajes\r\n </div>\r\n\r\n <div class="txt_arti-scroll">\r\nDesempeñamos tareas de instalaciones industriales a terceros, aportando los recursos humanos y materiales necesarios para implementar las operaciones y procedimientos consensuados con nuestros clientes en sus procesos logísticos y en las actividades complementarias a sus cadenas de producción.Compuesta en un 100% por capital canario, nuestro objetivo es conocer a fondo las necesidades de las empresas para poder ofrecer nuestros servicios de la manera mas satisfactoria, siempre contando con nuestra profesionalidad contrastada.\r\n\r\nNuestro poder reside en la cualificación profesional de nuestros trabajadores. Ellos son nuestro principal activo.\r\n </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Inicio', '', 'inherit', 'open', 'open', '', '68-revision-v1', '', '', '2014-08-29 10:42:52', '2014-08-29 10:42:52', '', 68, 'http://roka.es/webs/gcm/?p=120', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(123, 1, '2014-08-29 10:48:24', '2014-08-29 10:48:24', '[metaslider id=4]\r\n\r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n<div id="inicio"></div>\r\n <div class="tit_arti_dob">\r\nGrupo Canaria de Montajes\r\n </div>\r\n\r\n <div class="txt_arti-scroll">\r\nDesempeñamos tareas de instalaciones industriales a terceros, aportando los recursos humanos y materiales necesarios para implementar las operaciones y procedimientos consensuados con nuestros clientes en sus procesos logísticos y en las actividades complementarias a sus cadenas de producción.Compuesta en un 100% por capital canario, nuestro objetivo es conocer a fondo las necesidades de las empresas para poder ofrecer nuestros servicios de la manera mas satisfactoria, siempre contando con nuestra profesionalidad contrastada.\r\n\r\nNuestro poder reside en la cualificación profesional de nuestros trabajadores. Ellos son nuestro principal activo.\r\n </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Inicio', '', 'inherit', 'open', 'open', '', '68-revision-v1', '', '', '2014-08-29 10:48:24', '2014-08-29 10:48:24', '', 68, 'http://roka.es/webs/gcm/?p=123', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(122, 1, '2014-08-29 10:44:42', '2014-08-29 10:44:42', '[metaslider id=4]\r\n\r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n<a href="http://roka.es/webs/gcm/"></a>\r\n <div class="tit_arti_dob">\r\nGrupo Canaria de Montajes\r\n </div>\r\n\r\n <div class="txt_arti-scroll">\r\nDesempeñamos tareas de instalaciones industriales a terceros, aportando los recursos humanos y materiales necesarios para implementar las operaciones y procedimientos consensuados con nuestros clientes en sus procesos logísticos y en las actividades complementarias a sus cadenas de producción.Compuesta en un 100% por capital canario, nuestro objetivo es conocer a fondo las necesidades de las empresas para poder ofrecer nuestros servicios de la manera mas satisfactoria, siempre contando con nuestra profesionalidad contrastada.\r\n\r\nNuestro poder reside en la cualificación profesional de nuestros trabajadores. Ellos son nuestro principal activo.\r\n </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Inicio', '', 'inherit', 'open', 'open', '', '68-revision-v1', '', '', '2014-08-29 10:44:42', '2014-08-29 10:44:42', '', 68, 'http://roka.es/webs/gcm/?p=122', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(125, 1, '2014-08-29 11:44:48', '2014-08-29 11:44:48', '[metaslider id=4]\r\n\r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n<div id="inicio"></div>\r\n <div class="tit_arti_dob">\r\nGrupo Canaria de Montajes\r\n </div>\r\n\r\n <div class="txt_arti-scroll">\r\nDesempeñamos tareas de instalaciones industriales a terceros, aportando los recursos humanos y materiales necesarios para implementar las operaciones y procedimientos consensuados con nuestros clientes en sus procesos logísticos y en las actividades complementarias a sus cadenas de producción.Compuesta en un 100% por capital canario, nuestro objetivo es conocer a fondo las necesidades de las empresas para poder ofrecer nuestros servicios de la manera mas satisfactoria, siempre contando con nuestra profesionalidad contrastada.\r\n\r\nNuestro poder reside en la cualificación profesional de nuestros trabajadores. Ellos son nuestro principal activo.\r\n </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Inicio', '', 'inherit', 'open', 'open', '', '68-revision-v1', '', '', '2014-08-29 11:44:48', '2014-08-29 11:44:48', '', 68, 'http://roka.es/webs/gcm/?p=125', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(124, 1, '2014-08-29 10:49:35', '2014-08-29 10:49:35', '[metaslider id=4]\r\n\r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n<a href="http://roka.es/webs/gcm/"><div id="inicio"></div></a>\r\n <div class="tit_arti_dob">\r\nGrupo Canaria de Montajes\r\n </div>\r\n\r\n <div class="txt_arti-scroll">\r\nDesempeñamos tareas de instalaciones industriales a terceros, aportando los recursos humanos y materiales necesarios para implementar las operaciones y procedimientos consensuados con nuestros clientes en sus procesos logísticos y en las actividades complementarias a sus cadenas de producción.Compuesta en un 100% por capital canario, nuestro objetivo es conocer a fondo las necesidades de las empresas para poder ofrecer nuestros servicios de la manera mas satisfactoria, siempre contando con nuestra profesionalidad contrastada.\r\n\r\nNuestro poder reside en la cualificación profesional de nuestros trabajadores. Ellos son nuestro principal activo.\r\n </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Inicio', '', 'inherit', 'open', 'open', '', '68-revision-v1', '', '', '2014-08-29 10:49:35', '2014-08-29 10:49:35', '', 68, 'http://roka.es/webs/gcm/?p=124', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(126, 1, '2014-08-29 11:45:54', '2014-08-29 11:45:54', '[metaslider id=4]\r\n\r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n <a href="http://roka.es/webs/gcm/"></a>\r\n <div class="tit_arti_dob">\r\nGrupo Canaria de Montajes\r\n </div>\r\n\r\n <div class="txt_arti-scroll">\r\nDesempeñamos tareas de instalaciones industriales a terceros, aportando los recursos humanos y materiales necesarios para implementar las operaciones y procedimientos consensuados con nuestros clientes en sus procesos logísticos y en las actividades complementarias a sus cadenas de producción.Compuesta en un 100% por capital canario, nuestro objetivo es conocer a fondo las necesidades de las empresas para poder ofrecer nuestros servicios de la manera mas satisfactoria, siempre contando con nuestra profesionalidad contrastada.\r\n\r\nNuestro poder reside en la cualificación profesional de nuestros trabajadores. Ellos son nuestro principal activo.\r\n </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Inicio', '', 'inherit', 'open', 'open', '', '68-revision-v1', '', '', '2014-08-29 11:45:54', '2014-08-29 11:45:54', '', 68, 'http://roka.es/webs/gcm/?p=126', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(127, 1, '2014-08-29 12:00:40', '2014-08-29 12:00:40', '[metaslider id=4]\r\n\r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n <div onClick="javascript:window.location=''http://roka.es/webs/gcm/''" id="inicio">\r\n <div class="tit_arti_dob">\r\nGrupo Canaria de Montajes\r\n </div>\r\n\r\n <div class="txt_arti-scroll">\r\nDesempeñamos tareas de instalaciones industriales a terceros, aportando los recursos humanos y materiales necesarios para implementar las operaciones y procedimientos consensuados con nuestros clientes en sus procesos logísticos y en las actividades complementarias a sus cadenas de producción.Compuesta en un 100% por capital canario, nuestro objetivo es conocer a fondo las necesidades de las empresas para poder ofrecer nuestros servicios de la manera mas satisfactoria, siempre contando con nuestra profesionalidad contrastada.\r\n\r\nNuestro poder reside en la cualificación profesional de nuestros trabajadores. Ellos son nuestro principal activo.\r\n </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Inicio', '', 'inherit', 'open', 'open', '', '68-revision-v1', '', '', '2014-08-29 12:00:40', '2014-08-29 12:00:40', '', 68, 'http://roka.es/webs/gcm/?p=127', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(128, 1, '2014-08-29 12:03:26', '2014-08-29 12:03:26', '[metaslider id=4]\r\n\r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n <div onClick="javascript:window.location=''http://roka.es/webs/gcm/''" id="inicio"></div>\r\n <div class="tit_arti_dob">\r\nGrupo Canaria de Montajes\r\n </div>\r\n\r\n <div class="txt_arti-scroll">\r\nDesempeñamos tareas de instalaciones industriales a terceros, aportando los recursos humanos y materiales necesarios para implementar las operaciones y procedimientos consensuados con nuestros clientes en sus procesos logísticos y en las actividades complementarias a sus cadenas de producción.Compuesta en un 100% por capital canario, nuestro objetivo es conocer a fondo las necesidades de las empresas para poder ofrecer nuestros servicios de la manera mas satisfactoria, siempre contando con nuestra profesionalidad contrastada.\r\n\r\nNuestro poder reside en la cualificación profesional de nuestros trabajadores. Ellos son nuestro principal activo.\r\n </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Inicio', '', 'inherit', 'open', 'open', '', '68-revision-v1', '', '', '2014-08-29 12:03:26', '2014-08-29 12:03:26', '', 68, 'http://roka.es/webs/gcm/?p=128', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(129, 1, '2014-08-29 12:07:48', '2014-08-29 12:07:48', '<div id="img_superior-aires">\r\n</div> \r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n<div onClick="javascript:window.location=''http://roka.es/webs/gcm/''" id="inicio"></div>\r\n <div class="tit_arti">\r\nAires acondicionados\r\n </div>\r\n <div class="txt_arti">\r\n Desarrollo de instalaciones de climatizaciones industriales, comerciales y domésticas basadas en la utilización de grandes grupos enfriadores, fancolis, climatizadores compactos, partidos y sistemas de Split de pared, techo, suelo y cassette, comercializando las marcas de mayor prestigio.\r\n\r\nReparación, instalación y servicio a aires acondicionados de variadas marcas, nuestro trabajo está garantizado y hecho con calidad.\r\n </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Aires acondicionados', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2014-08-29 12:07:48', '2014-08-29 12:07:48', '', 15, 'http://roka.es/webs/gcm/?p=129', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(130, 1, '2014-08-29 12:09:24', '2014-08-29 12:09:24', '<div id="img_superior-extrac">\r\n</div> \r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n<div onClick="javascript:window.location=''http://roka.es/webs/gcm/''" id="inicio"></div>\r\n <div class="tit_arti_dob">\r\nExtracción y ventilación\r\n </div>\r\n <div class="txt_arti">\r\nFabricación de conductos industriales en cualquier medida con sistema Pitsbur engatillado y Metu, construcción de campanas industriales en acero mate o brillo, con modelos personalizados e instalación de unidades de ventilación baja, media y alta presión para cualquier industria.\r\n\r\nReparación, instalación y servicio a aires acondicionados de variadas marcas, nuestro trabajo está garantizado y hecho con calidad. \r\n </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Extracción y Ventilación', '', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2014-08-29 12:09:24', '2014-08-29 12:09:24', '', 20, 'http://roka.es/webs/gcm/?p=130', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(131, 1, '2014-08-29 12:10:07', '2014-08-29 12:10:07', '<div id="img_superior-fonta">\r\n</div> \r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n<div onClick="javascript:window.location=''http://roka.es/webs/gcm/''" id="inicio"></div>\r\n <div class="tit_arti">\r\nFontanería\r\n </div>\r\n <div class="txt_arti">\r\nTrabajos de fontanería en cualquier ámbito o espacio con las diferentes tecnologías del mercado actual, tales como Termofusión, Terrain, Cobre y otras múltiples. Instalación de sanitarios, termos y electrodomésticos, lavadoras, lavavajillas, griferías y cisternas. \r\n </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Fontanería', '', 'inherit', 'open', 'open', '', '24-revision-v1', '', '', '2014-08-29 12:10:07', '2014-08-29 12:10:07', '', 24, 'http://roka.es/webs/gcm/?p=131', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(132, 1, '2014-08-29 12:10:45', '2014-08-29 12:10:45', '<div id="img_superior-instala">\r\n</div> \r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n<div onClick="javascript:window.location=''http://roka.es/webs/gcm/''" id="inicio"></div>\r\n <div class="tit_arti_dob">\r\nInstalaciones Eléctricas\r\n </div>\r\n <div class="txt_arti">\r\nInstalaciones de electricidad industriales, comerciales y domésticas. Incluyendo un servicio de reparación y mantenimiento , trabajos para grandes industrias, comercios, comunidades, y residencias particulares. Boletines y certificados   \r\n </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Instalaciones eléctricas', '', 'inherit', 'open', 'open', '', '22-revision-v1', '', '', '2014-08-29 12:10:45', '2014-08-29 12:10:45', '', 22, 'http://roka.es/webs/gcm/?p=132', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(133, 1, '2014-08-29 12:11:23', '2014-08-29 12:11:23', '<div id="img_superior-izono">\r\n</div> \r\n<article>\r\n\r\n<div class="panel_inf_top"> \r\n <div class="panel_inf">\r\n<div onClick="javascript:window.location=''http://roka.es/webs/gcm/''" id="inicio"></div>\r\n <div class="tit_arti">\r\nInsonorizaciones\r\n </div>\r\n <div class="txt_arti">\r\nAislamiento acuático de industrias, locales comerciales y viviendas, empleando las últimas novedades en aislantes, fabricación de silenciosos dispositivos y sistemas de filtros y absorbentes, apantallamientos y encapsulados. </div>\r\n <div id="lateral-sup">\r\n \r\n </div>', 'Izonorizaciones', '', 'inherit', 'open', 'open', '', '17-revision-v1', '', '', '2014-08-29 12:11:23', '2014-08-29 12:11:23', '', 17, 'http://roka.es/webs/gcm/?p=133', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(134, 1, '2014-08-29 12:37:24', '2014-08-29 12:37:24', '', 'inicio-8', '', 'inherit', 'open', 'open', '', 'inicio-8', '', '', '2014-08-29 12:37:24', '2014-08-29 12:37:24', '', 0, 'http://roka.es/webs/gcm/wp-content/uploads/2014/08/inicio-8.png', 3, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` VALUES(135, 1, '2014-08-29 12:38:11', '2014-08-29 12:38:11', '', 'inicio-9', '', 'inherit', 'open', 'open', '', 'inicio-9', '', '', '2014-08-29 12:38:11', '2014-08-29 12:38:11', '', 0, 'http://roka.es/webs/gcm/wp-content/uploads/2014/08/inicio-9.png', 4, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` VALUES(136, 1, '2014-08-29 12:39:43', '2014-08-29 12:39:43', '', 'inicio-10', '', 'inherit', 'open', 'open', '', 'inicio-10', '', '', '2014-08-29 12:39:43', '2014-08-29 12:39:43', '', 0, 'http://roka.es/webs/gcm/wp-content/uploads/2014/08/inicio-10.png', 5, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` VALUES(137, 1, '2014-08-29 13:13:25', '0000-00-00 00:00:00', '', 'Boletines oficiales', '', 'draft', 'open', 'open', '', '', '', '', '2014-08-29 13:13:25', '0000-00-00 00:00:00', '', 0, 'http://roka.es/webs/gcm/?p=137', 1, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(138, 1, '2014-08-29 13:13:50', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-08-29 13:13:50', '0000-00-00 00:00:00', '', 0, 'http://roka.es/webs/gcm/?p=138', 1, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(140, 1, '2014-08-29 13:39:15', '2014-08-29 13:39:15', '', 'boton-aires-acondicionados', '', 'inherit', 'open', 'open', '', 'boton-aires-acondicionados-2', '', '', '2014-08-29 13:39:15', '2014-08-29 13:39:15', '', 55, 'http://roka.es/webs/gcm/wp-content/uploads/2014/08/boton-aires-acondicionados1.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` VALUES(141, 1, '2014-08-29 13:40:01', '2014-08-29 13:40:01', '', 'boton-aires-acondicionados', '', 'inherit', 'open', 'open', '', 'boton-aires-acondicionados-3', '', '', '2014-08-29 13:40:01', '2014-08-29 13:40:01', '', 64, 'http://roka.es/webs/gcm/wp-content/uploads/2014/08/boton-aires-acondicionados2.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` VALUES(142, 1, '2014-08-29 14:05:37', '2014-08-29 14:05:37', '', 'boton-aires-acondicionados', '', 'inherit', 'open', 'open', '', 'boton-aires-acondicionados-4', '', '', '2014-08-29 14:05:37', '2014-08-29 14:05:37', '', 55, 'http://roka.es/webs/gcm/wp-content/uploads/2014/08/boton-aires-acondicionados3.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` VALUES(143, 1, '2014-08-29 14:09:49', '2014-08-29 14:09:49', '', 'boton-insonorizaciones', '', 'inherit', 'open', 'open', '', 'boton-insonorizaciones-3', '', '', '2014-08-29 14:09:49', '2014-08-29 14:09:49', '', 64, 'http://roka.es/webs/gcm/wp-content/uploads/2014/08/boton-insonorizaciones2.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` VALUES(144, 1, '2014-08-29 14:16:06', '2014-08-29 14:16:06', '', 'boton-extraccion-y-ventilacion', '', 'inherit', 'open', 'open', '', 'boton-extraccion-y-ventilacion-2', '', '', '2014-08-29 14:16:06', '2014-08-29 14:16:06', '', 56, 'http://roka.es/webs/gcm/wp-content/uploads/2014/08/boton-extraccion-y-ventilacion1.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` VALUES(145, 1, '2014-08-29 14:19:11', '2014-08-29 14:19:11', '', 'boton-instalaciones-electricas', '', 'inherit', 'open', 'open', '', 'boton-instalaciones-electricas-2', '', '', '2014-08-29 14:19:11', '2014-08-29 14:19:11', '', 65, 'http://roka.es/webs/gcm/wp-content/uploads/2014/08/boton-instalaciones-electricas1.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` VALUES(146, 1, '2014-08-29 14:21:17', '2014-08-29 14:21:17', '', 'boton-fontaneria', '', 'inherit', 'open', 'open', '', 'boton-fontaneria-2', '', '', '2014-08-29 14:21:17', '2014-08-29 14:21:17', '', 57, 'http://roka.es/webs/gcm/wp-content/uploads/2014/08/boton-fontaneria1.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` VALUES(147, 1, '2014-08-29 14:23:23', '2014-08-29 14:23:23', '', 'boletines', '', 'inherit', 'open', 'open', '', 'boletines', '', '', '2014-08-29 14:23:23', '2014-08-29 14:23:23', '', 0, 'http://roka.es/webs/gcm/wp-content/uploads/2014/08/boletines.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` VALUES(148, 1, '2014-08-29 14:45:35', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-08-29 14:45:35', '0000-00-00 00:00:00', '', 0, 'http://roka.es/webs/gcm/?p=148', 1, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(149, 1, '2014-08-29 14:45:59', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-08-29 14:45:59', '0000-00-00 00:00:00', '', 0, 'http://roka.es/webs/gcm/?p=149', 1, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(150, 1, '2014-08-29 14:51:02', '0000-00-00 00:00:00', '', 'Boletines Oficiales', '', 'draft', 'open', 'open', '', '', '', '', '2014-08-29 14:51:02', '0000-00-00 00:00:00', '', 0, 'http://roka.es/webs/gcm/?p=150', 1, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(151, 1, '2014-08-29 14:51:02', '0000-00-00 00:00:00', '', 'Boletines Oficiales', '', 'draft', 'open', 'open', '', '', '', '', '2014-08-29 14:51:02', '0000-00-00 00:00:00', '', 0, 'http://roka.es/webs/gcm/?p=151', 1, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(152, 1, '2014-09-01 10:43:26', '2014-09-01 10:43:26', '', 'Boletines Oficiales', '', 'publish', 'open', 'open', '', 'boletines-oficiales', '', '', '2014-09-01 10:44:05', '2014-09-01 10:44:05', '', 0, 'http://roka.es/webs/gcm/?p=152', 6, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(153, 1, '2014-09-01 10:43:17', '0000-00-00 00:00:00', '', 'Boletines Oficiales', '', 'draft', 'open', 'open', '', '', '', '', '2014-09-01 10:43:17', '0000-00-00 00:00:00', '', 0, 'http://roka.es/webs/gcm/?p=153', 1, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` VALUES(1, 'Sin categoría', 'sin-categoria', 0);
INSERT INTO `wp_terms` VALUES(2, '4', '4', 0);
INSERT INTO `wp_terms` VALUES(4, 'menu-principal-uno', 'menu-principal-uno', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` VALUES(1, 1, 0);
INSERT INTO `wp_term_relationships` VALUES(5, 2, 0);
INSERT INTO `wp_term_relationships` VALUES(6, 2, 0);
INSERT INTO `wp_term_relationships` VALUES(134, 2, 0);
INSERT INTO `wp_term_relationships` VALUES(135, 2, 0);
INSERT INTO `wp_term_relationships` VALUES(9, 2, 0);
INSERT INTO `wp_term_relationships` VALUES(57, 4, 0);
INSERT INTO `wp_term_relationships` VALUES(56, 4, 0);
INSERT INTO `wp_term_relationships` VALUES(55, 4, 0);
INSERT INTO `wp_term_relationships` VALUES(65, 4, 0);
INSERT INTO `wp_term_relationships` VALUES(64, 4, 0);
INSERT INTO `wp_term_relationships` VALUES(136, 2, 0);
INSERT INTO `wp_term_relationships` VALUES(152, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` VALUES(1, 1, 'category', '', 0, 1);
INSERT INTO `wp_term_taxonomy` VALUES(2, 2, 'ml-slider', '', 0, 0);
INSERT INTO `wp_term_taxonomy` VALUES(4, 4, 'nav_menu', '', 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` VALUES(1, 1, 'first_name', '');
INSERT INTO `wp_usermeta` VALUES(2, 1, 'last_name', '');
INSERT INTO `wp_usermeta` VALUES(3, 1, 'nickname', 'admin');
INSERT INTO `wp_usermeta` VALUES(4, 1, 'description', '');
INSERT INTO `wp_usermeta` VALUES(5, 1, 'rich_editing', 'true');
INSERT INTO `wp_usermeta` VALUES(6, 1, 'comment_shortcuts', 'false');
INSERT INTO `wp_usermeta` VALUES(7, 1, 'admin_color', 'fresh');
INSERT INTO `wp_usermeta` VALUES(8, 1, 'use_ssl', '0');
INSERT INTO `wp_usermeta` VALUES(9, 1, 'show_admin_bar_front', 'true');
INSERT INTO `wp_usermeta` VALUES(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}');
INSERT INTO `wp_usermeta` VALUES(11, 1, 'wp_user_level', '10');
INSERT INTO `wp_usermeta` VALUES(12, 1, 'dismissed_wp_pointers', 'wp350_media,wp360_revisions,wp360_locks,wp390_widgets');
INSERT INTO `wp_usermeta` VALUES(13, 1, 'show_welcome_panel', '1');
INSERT INTO `wp_usermeta` VALUES(14, 1, 'wp_dashboard_quick_press_last_post_id', '3');
INSERT INTO `wp_usermeta` VALUES(15, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce');
INSERT INTO `wp_usermeta` VALUES(16, 1, 'wp_user-settings-time', '1409443761');
INSERT INTO `wp_usermeta` VALUES(17, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}');
INSERT INTO `wp_usermeta` VALUES(18, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";}');
INSERT INTO `wp_usermeta` VALUES(19, 1, 'nav_menu_recently_edited', '4');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` VALUES(1, 'admin', '$P$BNw18crNmSrN6QAUTI0ugU2Uke2Gpc0', 'admin', 'info@roka.es', '', '2014-08-26 17:58:17', '', 0, 'admin');
