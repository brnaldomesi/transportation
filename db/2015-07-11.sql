# WordPress MySQL database migration
#
# Generated: Sunday 12. July 2015 03:54 UTC
# Hostname: 127.0.0.1
# Database: `kstg`
# --------------------------------------------------------

/*!40101 SET NAMES utf8 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_comments`
#

#
# End of data contents of table `wp_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_gallery_albums`
#

DROP TABLE IF EXISTS `wp_gallery_albums`;


#
# Table structure of table `wp_gallery_albums`
#

CREATE TABLE `wp_gallery_albums` (
  `album_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `album_name` varchar(100) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `album_date` date DEFAULT NULL,
  `description` text,
  `album_order` int(10) DEFAULT NULL,
  PRIMARY KEY (`album_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_gallery_albums`
#
INSERT INTO `wp_gallery_albums` ( `album_id`, `album_name`, `author`, `album_date`, `description`, `album_order`) VALUES
(1, 'Demo Album', 'kstg', '2015-07-05', '', 1),
(2, 'Luxury Sedans', 'kstg', '2015-07-05', '[caption id=\\&quot;attachment_145\\&quot; align=\\&quot;alignnone\\&quot; width=\\&quot;306\\&quot;]&lt;a href=\\&quot;http://localhost:9000/wp-content/uploads/2015/07/Grid_2.png\\&quot;&gt;&lt;img class=\\&quot;size-full wp-image-145\\&quot; src=\\&quot;http://localhost:9000/wp-content/uploads/2015/07/Grid_2.png\\&quot; alt=\\&quot;Vehicle Name Two\\&quot; width=\\&quot;306\\&quot; height=\\&quot;153\\&quot; /&gt;&lt;/a&gt; Vehicle Name Two[/caption][caption id=\\&quot;attachment_144\\&quot; align=\\&quot;alignnone\\&quot; width=\\&quot;306\\&quot;]&lt;a href=\\&quot;http://localhost:9000/wp-content/uploads/2015/07/Grid_1.png\\&quot;&gt;&lt;img class=\\&quot;size-full wp-image-144\\&quot; src=\\&quot;http://localhost:9000/wp-content/uploads/2015/07/Grid_1.png\\&quot; alt=\\&quot;Vehicle Name One\\&quot; width=\\&quot;306\\&quot; height=\\&quot;153\\&quot; /&gt;&lt;/a&gt; Vehicle Name One[/caption]', 2) ;

#
# End of data contents of table `wp_gallery_albums`
# --------------------------------------------------------



#
# Delete any existing table `wp_gallery_pics`
#

DROP TABLE IF EXISTS `wp_gallery_pics`;


#
# Table structure of table `wp_gallery_pics`
#

CREATE TABLE `wp_gallery_pics` (
  `pic_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `album_id` int(10) unsigned NOT NULL,
  `title` text,
  `description` text,
  `thumbnail_url` text NOT NULL,
  `sorting_order` int(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `video` int(10) NOT NULL,
  `tags` text,
  `pic_name` text NOT NULL,
  `album_cover` int(1) NOT NULL,
  PRIMARY KEY (`pic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_gallery_pics`
#
INSERT INTO `wp_gallery_pics` ( `pic_id`, `album_id`, `title`, `description`, `thumbnail_url`, `sorting_order`, `date`, `url`, `video`, `tags`, `pic_name`, `album_cover`) VALUES
(1, 1, '', '', 'coffee.jpg', 1, '2015-07-05', 'http://', 0, '', 'coffee.jpg', 1),
(2, 1, '', '', 'hunter.jpg', 2, '2015-07-05', 'http://', 0, '', 'hunter.jpg', 0),
(3, 1, '', '', 'ice-cream.jpg', 3, '2015-07-05', 'http://', 0, '', 'ice-cream.jpg', 0),
(4, 1, '', '', 'like.jpg', 4, '2015-07-05', 'http://', 0, '', 'like.jpg', 0),
(5, 1, '', '', 'pawns.jpg', 5, '2015-07-05', 'http://', 0, '', 'pawns.jpg', 0),
(6, 1, '', '', 'wallpaper.jpg', 6, '2015-07-05', 'http://', 0, '', 'wallpaper.jpg', 0) ;

#
# End of data contents of table `wp_gallery_pics`
# --------------------------------------------------------



#
# Delete any existing table `wp_gallery_settings`
#

DROP TABLE IF EXISTS `wp_gallery_settings`;


#
# Table structure of table `wp_gallery_settings`
#

CREATE TABLE `wp_gallery_settings` (
  `setting_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `setting_key` varchar(100) NOT NULL,
  `setting_value` text NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_gallery_settings`
#
INSERT INTO `wp_gallery_settings` ( `setting_id`, `setting_key`, `setting_value`) VALUES
(1, 'thumbnails_custom_enable', '1'),
(2, 'thumbnails_width', '160'),
(3, 'thumbnails_height', '120'),
(4, 'thumbnails_opacity', '1'),
(5, 'thumbnails_border_size', '2'),
(6, 'thumbnails_border_radius', '2'),
(7, 'thumbnails_border_color', '#000000'),
(8, 'margin_btw_thumbnails', '5'),
(9, 'thumbnail_text_color', '#ffffff'),
(10, 'thumbnail_text_align', 'center'),
(11, 'thumbnail_font_family', 'Verdana'),
(12, 'heading_font_size', '16'),
(13, 'text_font_size', '12'),
(14, 'thumbnail_desc_length', '60'),
(15, 'cover_custom_enable', '1'),
(16, 'cover_thumbnail_width', '160'),
(17, 'cover_thumbnail_height', '120'),
(18, 'cover_thumbnail_opacity', '1'),
(19, 'cover_thumbnail_border_size', '2'),
(20, 'cover_thumbnail_border_radius', '2'),
(21, 'cover_thumbnail_border_color', '#000000'),
(22, 'margin_btw_cover_thumbnails', '5'),
(23, 'album_text_align', 'left'),
(24, 'album_font_family', 'Verdana'),
(25, 'album_heading_font_size', '16'),
(26, 'album_text_font_size', '12'),
(27, 'album_desc_length', '400'),
(28, 'lightbox_type', 'pretty_photo'),
(29, 'lightbox_overlay_opacity', '0.6'),
(30, 'lightbox_overlay_border_size', '5'),
(31, 'lightbox_overlay_border_radius', '5'),
(32, 'lightbox_text_color', '#ffffff'),
(33, 'lightbox_overlay_border_color', '#ffffff'),
(34, 'lightbox_inline_bg_color', '#ffffff'),
(35, 'lightbox_overlay_bg_color', '#000000'),
(36, 'lightbox_fade_in_time', '500'),
(37, 'lightbox_fade_out_time', '500'),
(38, 'lightbox_text_align', 'left'),
(39, 'lightbox_font_family', 'Verdana'),
(40, 'lightbox_heading_font_size', '16'),
(41, 'lightbox_text_font_size', '12'),
(42, 'facebook_comments', '0'),
(43, 'social_sharing', '0'),
(44, 'image_title_setting', '1'),
(45, 'image_desc_setting', '1'),
(46, 'autoplay_setting', '0'),
(47, 'slide_interval', '5'),
(48, 'pagination_setting', '0'),
(49, 'images_per_page', '10'),
(50, 'filters_setting', '0'),
(51, 'filter_font_family', 'Verdana'),
(52, 'filter_font_size', '12'),
(53, 'back_button_text', 'Back to Albums'),
(54, 'album_click_text', 'Click to View Album'),
(55, 'album_text_color', '#C0C0C0'),
(56, 'button_color', '#000000'),
(57, 'button_text_color', '#CCCCCC'),
(58, 'filters_color', '#2a83ed'),
(59, 'filters_text_color', '#ffffff'),
(60, 'album_seperator', '1'),
(61, 'back_button_font_family', 'Verdana'),
(62, 'back_button_font_size', '12'),
(63, 'admin_full_control', '1'),
(64, 'admin_read_control', '1'),
(65, 'admin_write_control', '1'),
(66, 'editor_full_control', '0'),
(67, 'editor_read_control', '1'),
(68, 'editor_write_control', '0'),
(69, 'author_full_control', '0'),
(70, 'author_read_control', '1'),
(71, 'author_write_control', '0'),
(72, 'contributor_full_control', '0'),
(73, 'contributor_read_control', '1'),
(74, 'contributor_write_control', '0'),
(75, 'subscriber_full_control', '0'),
(76, 'subscriber_read_control', '1'),
(77, 'subscriber_write_control', '0'),
(78, 'language_direction', 'inherit') ;

#
# End of data contents of table `wp_gallery_settings`
# --------------------------------------------------------



#
# Delete any existing table `wp_huge_itgallery_gallerys`
#

DROP TABLE IF EXISTS `wp_huge_itgallery_gallerys`;


#
# Table structure of table `wp_huge_itgallery_gallerys`
#

CREATE TABLE `wp_huge_itgallery_gallerys` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `sl_height` int(11) unsigned DEFAULT NULL,
  `sl_width` int(11) unsigned DEFAULT NULL,
  `pause_on_hover` text,
  `gallery_list_effects_s` text,
  `description` text,
  `param` text,
  `sl_position` text NOT NULL,
  `ordering` int(11) NOT NULL,
  `published` text,
  `huge_it_sl_effects` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_huge_itgallery_gallerys`
#
INSERT INTO `wp_huge_itgallery_gallerys` ( `id`, `name`, `sl_height`, `sl_width`, `pause_on_hover`, `gallery_list_effects_s`, `description`, `param`, `sl_position`, `ordering`, `published`, `huge_it_sl_effects`) VALUES
(2, 'Luxury Sedans', 375, 600, 'on', 'cubeH', '4000', '1000', 'center', 1, '300', '4'),
(3, 'Stretch Limousines', 375, 600, 'on', 'cubeH', '4000', '1000', 'center', 1, '300', '4') ;

#
# End of data contents of table `wp_huge_itgallery_gallerys`
# --------------------------------------------------------



#
# Delete any existing table `wp_huge_itgallery_images`
#

DROP TABLE IF EXISTS `wp_huge_itgallery_images`;


#
# Table structure of table `wp_huge_itgallery_images`
#

CREATE TABLE `wp_huge_itgallery_images` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `gallery_id` varchar(200) DEFAULT NULL,
  `description` text,
  `image_url` text,
  `sl_url` varchar(128) DEFAULT NULL,
  `sl_type` text NOT NULL,
  `link_target` text NOT NULL,
  `ordering` int(11) NOT NULL,
  `published` tinyint(4) unsigned DEFAULT NULL,
  `published_in_sl_width` tinyint(4) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_huge_itgallery_images`
#
INSERT INTO `wp_huge_itgallery_images` ( `id`, `name`, `gallery_id`, `description`, `image_url`, `sl_url`, `sl_type`, `link_target`, `ordering`, `published`, `published_in_sl_width`) VALUES
(1, 'Rocky Balboa', '1', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p><p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'http://localhost:9000/wp-content/plugins/gallery-images/Front_images/projects/1.jpg', 'http://huge-it.com/fields/order-website-maintenance/', 'image', 'on', 0, 1, NULL),
(2, 'Skiing alone', '1', '<ul><li>lorem ipsumdolor sit amet</li><li>lorem ipsum dolor sit amet</li></ul><p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'http://localhost:9000/wp-content/plugins/gallery-images/Front_images/projects/2.jpg', 'http://huge-it.com/fields/order-website-maintenance/', 'image', 'on', 1, 1, NULL),
(3, 'Summer dreams', '1', '<h6>Lorem Ipsum </h6><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p><p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><ul><li>lorem ipsum</li><li>dolor sit amet</li><li>lorem ipsum</li><li>dolor sit amet</li></ul>', 'http://localhost:9000/wp-content/plugins/gallery-images/Front_images/projects/3.jpg', 'http://huge-it.com/fields/order-website-maintenance/', 'image', 'on', 2, 1, NULL),
(4, 'Mr. Cosmo Kramer', '1', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p><h6>Dolor sit amet</h6><p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'http://localhost:9000/wp-content/plugins/gallery-images/Front_images/projects/4.jpg', 'http://huge-it.com/fields/order-website-maintenance/', 'image', 'on', 3, 1, NULL),
(5, 'Edgar Allan Poe', '1', '<h6>Lorem Ipsum</h6><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'http://localhost:9000/wp-content/plugins/gallery-images/Front_images/projects/5.jpg', 'http://huge-it.com/fields/order-website-maintenance/', 'image', 'on', 4, 1, NULL),
(6, 'Fix the moment !', '1', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p><p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'http://localhost:9000/wp-content/plugins/gallery-images/Front_images/projects/6.jpg', 'http://huge-it.com/fields/order-website-maintenance/', 'image', 'on', 5, 1, NULL),
(7, 'Lions eyes', '1', '<h6>Lorem Ipsum</h6><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p><p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'http://localhost:9000/wp-content/plugins/gallery-images/Front_images/projects/7.jpg', 'http://huge-it.com/fields/order-website-maintenance/', 'image', 'on', 6, 1, NULL),
(8, 'Photo with exposure', '1', '<h6>Lorem Ipsum </h6><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p><p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><ul><li>lorem ipsum</li><li>dolor sit amet</li><li>lorem ipsum</li><li>dolor sit amet</li></ul>', 'http://localhost:9000/wp-content/plugins/gallery-images/Front_images/projects/8.jpg', 'http://huge-it.com/fields/order-website-maintenance/', 'image', 'on', 7, 1, NULL),
(9, 'Travel with music', '1', '<h6>Lorem Ipsum </h6><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p><p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><ul><li>lorem ipsum</li><li>dolor sit amet</li><li>lorem ipsum</li><li>dolor sit amet</li></ul>', 'http://localhost:9000/wp-content/plugins/gallery-images/Front_images/projects/9.jpg', 'http://huge-it.com/fields/order-website-maintenance/', 'image', 'on', 7, 1, NULL),
(10, 'car 1', '2', '', 'http://localhost:9000/wp-content/uploads/2015/07/Grid_2.png', '', 'image', 'on', 0, 2, 1),
(11, 'car 2', '2', '', 'http://localhost:9000/wp-content/uploads/2015/07/Grid_1.png', '', 'image', 'on', 0, 2, 1),
(12, 'Car 1', '3', '', 'http://localhost:9000/wp-content/uploads/2015/07/Grid_1.png', '', 'image', 'on', 1, 2, 1),
(13, 'Car 2', '3', '', 'http://localhost:9000/wp-content/uploads/2015/07/Grid_2.png', '', 'image', 'on', 1, 2, 1),
(14, 'Car 3', '3', '', 'http://localhost:9000/wp-content/uploads/2015/07/Grid_1.png', '', 'image', 'on', 0, 2, 1),
(15, 'Car 4', '3', '', 'http://localhost:9000/wp-content/uploads/2015/07/Grid_2.png', '', 'image', 'on', 0, 2, 1) ;

#
# End of data contents of table `wp_huge_itgallery_images`
# --------------------------------------------------------



#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_ngg_album`
#

DROP TABLE IF EXISTS `wp_ngg_album`;


#
# Table structure of table `wp_ngg_album`
#

CREATE TABLE `wp_ngg_album` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `previewpic` bigint(20) NOT NULL DEFAULT '0',
  `albumdesc` mediumtext,
  `sortorder` longtext NOT NULL,
  `pageid` bigint(20) NOT NULL DEFAULT '0',
  `extras_post_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `extras_post_id_key` (`extras_post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_ngg_album`
#

#
# End of data contents of table `wp_ngg_album`
# --------------------------------------------------------



#
# Delete any existing table `wp_ngg_gallery`
#

DROP TABLE IF EXISTS `wp_ngg_gallery`;


#
# Table structure of table `wp_ngg_gallery`
#

CREATE TABLE `wp_ngg_gallery` (
  `gid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `path` mediumtext,
  `title` mediumtext,
  `galdesc` mediumtext,
  `pageid` bigint(20) NOT NULL DEFAULT '0',
  `previewpic` bigint(20) NOT NULL DEFAULT '0',
  `author` bigint(20) NOT NULL DEFAULT '0',
  `extras_post_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`gid`),
  KEY `extras_post_id_key` (`extras_post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_ngg_gallery`
#
INSERT INTO `wp_ngg_gallery` ( `gid`, `name`, `slug`, `path`, `title`, `galdesc`, `pageid`, `previewpic`, `author`, `extras_post_id`) VALUES
(1, 'fleet-overview', 'fleet-overview', '/wp-content/fleet-overview', 'Luxury Sedans', '', 177, 2, 1, 161),
(2, 'luxury-suvs', 'luxury-suvs', 'wp-content/luxury-suvs', 'Luxury SUVs', '', 177, 0, 1, 179) ;

#
# End of data contents of table `wp_ngg_gallery`
# --------------------------------------------------------



#
# Delete any existing table `wp_ngg_pictures`
#

DROP TABLE IF EXISTS `wp_ngg_pictures`;


#
# Table structure of table `wp_ngg_pictures`
#

CREATE TABLE `wp_ngg_pictures` (
  `pid` bigint(20) NOT NULL AUTO_INCREMENT,
  `image_slug` varchar(255) NOT NULL,
  `post_id` bigint(20) NOT NULL DEFAULT '0',
  `galleryid` bigint(20) NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL,
  `description` mediumtext,
  `alttext` mediumtext,
  `imagedate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `exclude` tinyint(4) DEFAULT '0',
  `sortorder` bigint(20) NOT NULL DEFAULT '0',
  `meta_data` longtext,
  `extras_post_id` bigint(20) NOT NULL DEFAULT '0',
  `updated_at` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `extras_post_id_key` (`extras_post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_ngg_pictures`
#
INSERT INTO `wp_ngg_pictures` ( `pid`, `image_slug`, `post_id`, `galleryid`, `filename`, `description`, `alttext`, `imagedate`, `exclude`, `sortorder`, `meta_data`, `extras_post_id`, `updated_at`) VALUES
(2, 'thumb-1', 0, 1, 'Thumb-1.jpg', 'Vehicle make and model', 'Thumb-1', '2015-07-06 01:17:27', 0, 0, 'eyJiYWNrdXAiOnsiZmlsZW5hbWUiOiJUaHVtYi0xLmpwZyIsIndpZHRoIjoyMDAsImhlaWdodCI6MTAwLCJnZW5lcmF0ZWQiOiIwLjU4MjE5ODAwIDE0MzYxNDU0NDcifSwid2lkdGgiOjIwMCwiaGVpZ2h0IjoxMDAsImZ1bGwiOnsid2lkdGgiOjIwMCwiaGVpZ2h0IjoxMDB9LCJ0aHVtYm5haWwiOnsid2lkdGgiOjIwMCwiaGVpZ2h0IjoxMDAsImZpbGVuYW1lIjoidGh1bWJzX1RodW1iLTEuanBnIiwiZ2VuZXJhdGVkIjoiMC42MjE5MzMwMCAxNDM2MTQ1NDQ3In0sImFwZXJ0dXJlIjpmYWxzZSwiY3JlZGl0IjpmYWxzZSwiY2FtZXJhIjpmYWxzZSwiY2FwdGlvbiI6ZmFsc2UsImNyZWF0ZWRfdGltZXN0YW1wIjpmYWxzZSwiY29weXJpZ2h0IjpmYWxzZSwiZm9jYWxfbGVuZ3RoIjpmYWxzZSwiaXNvIjpmYWxzZSwic2h1dHRlcl9zcGVlZCI6ZmFsc2UsImZsYXNoIjpmYWxzZSwidGl0bGUiOmZhbHNlLCJrZXl3b3JkcyI6ZmFsc2UsInNhdmVkIjp0cnVlfQ==', 164, 1436146079),
(3, 'thumb-2', 0, 1, 'Thumb-2.jpg', 'Vehicle make and model', 'Thumb-2', '2015-07-06 01:17:28', 0, 0, 'eyJiYWNrdXAiOnsiZmlsZW5hbWUiOiJUaHVtYi0yLmpwZyIsIndpZHRoIjoyMDAsImhlaWdodCI6MTAwLCJnZW5lcmF0ZWQiOiIwLjEzNzkxMDAwIDE0MzYxNDU0NDgifSwid2lkdGgiOjIwMCwiaGVpZ2h0IjoxMDAsImZ1bGwiOnsid2lkdGgiOjIwMCwiaGVpZ2h0IjoxMDB9LCJ0aHVtYm5haWwiOnsid2lkdGgiOjIwMCwiaGVpZ2h0IjoxMDAsImZpbGVuYW1lIjoidGh1bWJzX1RodW1iLTIuanBnIiwiZ2VuZXJhdGVkIjoiMC4xNzU5ODAwMCAxNDM2MTQ1NDQ4In0sImFwZXJ0dXJlIjpmYWxzZSwiY3JlZGl0IjpmYWxzZSwiY2FtZXJhIjpmYWxzZSwiY2FwdGlvbiI6ZmFsc2UsImNyZWF0ZWRfdGltZXN0YW1wIjpmYWxzZSwiY29weXJpZ2h0IjpmYWxzZSwiZm9jYWxfbGVuZ3RoIjpmYWxzZSwiaXNvIjpmYWxzZSwic2h1dHRlcl9zcGVlZCI6ZmFsc2UsImZsYXNoIjpmYWxzZSwidGl0bGUiOmZhbHNlLCJrZXl3b3JkcyI6ZmFsc2UsInNhdmVkIjp0cnVlfQ==', 166, 1436146079),
(4, 'thumb-3', 0, 1, 'Thumb-3.jpg', 'Vehicle make and model', 'Thumb-3', '2015-07-06 01:17:28', 0, 0, 'eyJiYWNrdXAiOnsiZmlsZW5hbWUiOiJUaHVtYi0zLmpwZyIsIndpZHRoIjoyMDAsImhlaWdodCI6MTAwLCJnZW5lcmF0ZWQiOiIwLjU5OTkxMzAwIDE0MzYxNDU0NDgifSwid2lkdGgiOjIwMCwiaGVpZ2h0IjoxMDAsImZ1bGwiOnsid2lkdGgiOjIwMCwiaGVpZ2h0IjoxMDB9LCJ0aHVtYm5haWwiOnsid2lkdGgiOjIwMCwiaGVpZ2h0IjoxMDAsImZpbGVuYW1lIjoidGh1bWJzX1RodW1iLTMuanBnIiwiZ2VuZXJhdGVkIjoiMC42Mzc4MTQwMCAxNDM2MTQ1NDQ4In0sImFwZXJ0dXJlIjpmYWxzZSwiY3JlZGl0IjpmYWxzZSwiY2FtZXJhIjpmYWxzZSwiY2FwdGlvbiI6ZmFsc2UsImNyZWF0ZWRfdGltZXN0YW1wIjpmYWxzZSwiY29weXJpZ2h0IjpmYWxzZSwiZm9jYWxfbGVuZ3RoIjpmYWxzZSwiaXNvIjpmYWxzZSwic2h1dHRlcl9zcGVlZCI6ZmFsc2UsImZsYXNoIjpmYWxzZSwidGl0bGUiOmZhbHNlLCJrZXl3b3JkcyI6ZmFsc2UsInNhdmVkIjp0cnVlfQ==', 168, 1436146079),
(6, 'grid_1-1', 0, 2, 'Grid_1.png', '', 'Grid_1', '2015-07-06 01:24:38', 0, 0, 'eyJiYWNrdXAiOnsiZmlsZW5hbWUiOiJHcmlkXzEucG5nIiwid2lkdGgiOjMwNiwiaGVpZ2h0IjoxNTMsImdlbmVyYXRlZCI6IjAuMjQyNTE4MDAgMTQzNjE0NTg3OCJ9LCJhcGVydHVyZSI6ZmFsc2UsImNyZWRpdCI6ZmFsc2UsImNhbWVyYSI6ZmFsc2UsImNhcHRpb24iOmZhbHNlLCJjcmVhdGVkX3RpbWVzdGFtcCI6ZmFsc2UsImNvcHlyaWdodCI6ZmFsc2UsImZvY2FsX2xlbmd0aCI6ZmFsc2UsImlzbyI6ZmFsc2UsInNodXR0ZXJfc3BlZWQiOmZhbHNlLCJmbGFzaCI6ZmFsc2UsInRpdGxlIjpmYWxzZSwia2V5d29yZHMiOmZhbHNlLCJ3aWR0aCI6MzA2LCJoZWlnaHQiOjE1Mywic2F2ZWQiOnRydWV9', 174, 1436146098),
(7, 'grid_2-1', 0, 2, 'Grid_2.png', '', 'Grid_2', '2015-07-06 01:25:02', 0, 0, 'eyJiYWNrdXAiOnsiZmlsZW5hbWUiOiJHcmlkXzIucG5nIiwid2lkdGgiOjMwNiwiaGVpZ2h0IjoxNTMsImdlbmVyYXRlZCI6IjAuNTAyMTUxMDAgMTQzNjE0NTkwMiJ9LCJhcGVydHVyZSI6ZmFsc2UsImNyZWRpdCI6ZmFsc2UsImNhbWVyYSI6ZmFsc2UsImNhcHRpb24iOmZhbHNlLCJjcmVhdGVkX3RpbWVzdGFtcCI6ZmFsc2UsImNvcHlyaWdodCI6ZmFsc2UsImZvY2FsX2xlbmd0aCI6ZmFsc2UsImlzbyI6ZmFsc2UsInNodXR0ZXJfc3BlZWQiOmZhbHNlLCJmbGFzaCI6ZmFsc2UsInRpdGxlIjpmYWxzZSwia2V5d29yZHMiOmZhbHNlLCJ3aWR0aCI6MzA2LCJoZWlnaHQiOjE1Mywic2F2ZWQiOnRydWV9', 176, 1436146098) ;

#
# End of data contents of table `wp_ngg_pictures`
# --------------------------------------------------------



#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=1428 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:9000', 'yes'),
(2, 'home', 'http://localhost:9000', 'yes'),
(3, 'blogname', 'Kevin Smith Transportation Group', 'yes'),
(4, 'blogdescription', 'Philadelphia&#039;s Newest Luxury Transportation Group', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'sarahlshowers@gmail.com', 'yes'),
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
(28, 'permalink_structure', '/index.php/%postname%/', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:38:"list-category-posts/list_cat_posts.php";i:2;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', 'a:2:{i:0;s:119:"/Users/sarahlshowers/Dropbox/Sarah/dev/kevin-smith-transpotation-group/app/wp-content/plugins/breadcrumb/breadcrumb.php";i:1;s:0:"";}', 'no'),
(41, 'template', 'kstg', 'yes'),
(42, 'stylesheet', 'kstg', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '33055', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'posts', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(82, 'uninstall_plugins', 'a:2:{s:37:"easy-photo-album/easy-photo-album.php";a:2:{i:0;s:14:"EasyPhotoAlbum";i:1;s:9:"uninstall";}s:29:"gallery-bank/gallery-bank.php";s:40:"plugin_uninstall_script_for_gallery_bank";}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '0', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '30133', 'yes'),
(89, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:81:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:24:"NextGEN Gallery overview";b:1;s:19:"NextGEN Use TinyMCE";b:1;s:21:"NextGEN Upload images";b:1;s:22:"NextGEN Manage gallery";b:1;s:19:"NextGEN Manage tags";b:1;s:29:"NextGEN Manage others gallery";b:1;s:18:"NextGEN Edit album";b:1;s:20:"NextGEN Change style";b:1;s:22:"NextGEN Change options";b:1;s:24:"NextGEN Attach Interface";b:1;s:10:"wppa_admin";b:1;s:11:"wppa_upload";b:1;s:11:"wppa_import";b:1;s:13:"wppa_moderate";b:1;s:11:"wppa_export";b:1;s:13:"wppa_settings";b:1;s:9:"wppa_potd";b:1;s:13:"wppa_comments";b:1;s:9:"wppa_help";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(90, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(91, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:8:"sidebar1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(96, 'cron', 'a:5:{i:1436680035;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1436686320;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1436715503;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1436715512;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(99, 'auth_key', 'N27~E9eb@B,LDhQy3uhb=8hjNH_b)_V,3F{&0#;@j]zZ4JbCVRLU~S{6eLN80*5w', 'yes'),
(100, 'auth_salt', 'Ji)O)|B2mNnGsVM/uz8~o[dn%p-v. h9NVgpFw9(9M/P+qIw:r6TVmlw &=ge0Y%', 'yes'),
(101, 'logged_in_key', 'LgS-y^Jt<KR+;z~H=_Dkku2iFi<>-x(JCO17FP}t*`|Ii+ka|0OpBp+7tP?[X=-o', 'yes'),
(102, 'logged_in_salt', 'V8|PnMy}(f^N{Vp%bvQoRsIO.[!CiHMu9BdgA/mWl*6!ieE/Q}*|NNGy>[H2O%n`', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(110, 'nonce_key', 'ngn)`>71+Yr[qsJ:VEe{L 0{( :)Y_Y4Db(MF4`t9jkJO/Zzgx^ .U0smqj:2 ^y', 'yes'),
(111, 'nonce_salt', 'W9kWJdP0)u(rN*3/WT-tbs}*oCW4:79hQi<(cq87}}P2=rZOMziQ%qr<P`d-k]a0', 'yes'),
(161, 'current_theme', 'Bones (Rename Me!)', 'yes'),
(162, 'theme_mods_kstg', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:8:"main-nav";i:8;}}', 'yes'),
(163, 'theme_switched', '', 'yes'),
(164, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1429071511;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(184, 'auto_core_update_notified', 'a:4:{s:4:"type";s:6:"manual";s:5:"email";s:23:"sarahlshowers@gmail.com";s:7:"version";s:5:"4.2.2";s:9:"timestamp";i:1431576268;}', 'yes'),
(320, 'recently_activated', 'a:8:{s:19:"akismet/akismet.php";i:1436238246;s:28:"wp-photo-album-plus/wppa.php";i:1436146904;s:29:"gallery-bank/gallery-bank.php";i:1436146592;s:41:"easy-media-gallery/easy-media-gallery.php";i:1436146425;s:29:"nextgen-gallery/nggallery.php";i:1436146194;s:37:"easy-photo-album/easy-photo-album.php";i:1436145067;s:31:"photo-gallery/photo-gallery.php";i:1436144467;s:43:"simple-photo-gallery/wppg-photo-gallery.php";i:1436144085;}', 'yes'),
(323, 'db_upgraded', '', 'yes'),
(326, 'widget_calendar', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(327, 'widget_nav_menu', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(328, 'widget_pages', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(330, 'widget_tag_cloud', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(337, 'acf_version', '4.4.2', 'yes'),
(338, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(410, 'breadcrumb_version', '1.2', 'yes'),
(411, 'breadcrumb_customer_type', 'free', 'yes'),
(412, 'breadcrumb_text', 'helloworld', 'yes'),
(413, 'breadcrumb_separator', '/', 'yes'),
(414, 'breadcrumb_font_size', '8px', 'yes'),
(415, 'breadcrumb_link_color', '#cccccc', 'yes'),
(416, 'breadcrumb_separator_color', '#cccccc', 'yes'),
(417, 'breadcrumb_themes', 'theme1', 'yes'),
(501, 'wp_photo_db_version', '1.3', 'yes'),
(502, 'wp_photo_configs', 'a:2:{s:25:"wppg_gallery_home_page_id";i:136;s:26:"wppg_photo_details_page_id";i:137;}', 'yes'),
(506, 'wd_bwg_theme_version', '1.0.0', 'no'),
(519, 'ngg_transient_groups', 'a:3:{s:9:"__counter";i:3;s:3:"MVC";a:2:{s:2:"id";i:2;s:7:"enabled";b:1;}s:27:"displayed_gallery_rendering";a:2:{s:2:"id";i:3;s:7:"enabled";b:1;}}', 'yes'),
(520, 'ngg_options', 'a:88:{s:11:"gallerypath";s:19:"wp-content/gallery/";s:11:"wpmuCSSfile";s:13:"nggallery.css";s:9:"wpmuStyle";b:0;s:9:"wpmuRoles";b:0;s:16:"wpmuImportFolder";b:0;s:13:"wpmuZipUpload";b:0;s:14:"wpmuQuotaCheck";b:0;s:17:"datamapper_driver";s:22:"custom_post_datamapper";s:21:"gallerystorage_driver";s:25:"ngglegacy_gallery_storage";s:20:"maximum_entity_count";s:3:"500";s:17:"router_param_slug";s:9:"nggallery";s:22:"router_param_separator";s:2:"--";s:19:"router_param_prefix";s:0:"";s:9:"deleteImg";s:1:"1";s:9:"swfUpload";b:1;s:13:"usePermalinks";b:0;s:13:"permalinkSlug";s:9:"nggallery";s:14:"graphicLibrary";s:2:"gd";s:14:"imageMagickDir";s:15:"/usr/local/bin/";s:11:"useMediaRSS";s:1:"0";s:18:"galleries_in_feeds";s:1:"0";s:12:"activateTags";s:1:"0";s:10:"appendType";s:4:"tags";s:9:"maxImages";s:1:"7";s:14:"relatedHeading";s:24:"<h3>Related Images:</h3>";s:10:"thumbwidth";s:3:"240";s:11:"thumbheight";s:3:"160";s:8:"thumbfix";s:1:"1";s:12:"thumbquality";i:100;s:8:"imgWidth";s:3:"610";s:9:"imgHeight";s:3:"300";s:10:"imgQuality";s:3:"100";s:9:"imgBackup";s:1:"1";s:13:"imgAutoResize";s:1:"0";s:9:"galImages";s:2:"20";s:17:"galPagedGalleries";i:0;s:10:"galColumns";i:0;s:12:"galShowSlide";b:1;s:12:"galTextSlide";s:16:"[Show slideshow]";s:14:"galTextGallery";s:17:"[Show thumbnails]";s:12:"galShowOrder";s:7:"gallery";s:7:"galSort";s:9:"sortorder";s:10:"galSortDir";s:3:"ASC";s:10:"galNoPages";b:1;s:13:"galImgBrowser";i:0;s:12:"galHiddenImg";i:0;s:10:"galAjaxNav";i:0;s:11:"thumbEffect";s:8:"fancybox";s:9:"thumbCode";s:41:"class="ngg-fancybox" rel="%GALLERY_NAME%"";s:18:"thumbEffectContext";s:14:"nextgen_images";s:5:"wmPos";s:8:"botRight";s:6:"wmXpos";s:1:"5";s:6:"wmYpos";s:1:"5";s:6:"wmType";s:5:"image";s:6:"wmPath";s:0:"";s:6:"wmFont";s:9:"arial.ttf";s:6:"wmSize";s:2:"10";s:6:"wmText";s:32:"Kevin Smith Transportation Group";s:7:"wmColor";s:7:"#000000";s:8:"wmOpaque";s:3:"100";s:8:"enableIR";i:0;s:7:"slideFx";s:4:"fade";s:5:"irURL";s:0:"";s:12:"irXHTMLvalid";i:0;s:7:"irAudio";s:0:"";s:7:"irWidth";i:600;s:8:"irHeight";i:400;s:9:"irShuffle";b:1;s:17:"irLinkfromdisplay";b:1;s:16:"irShownavigation";i:0;s:11:"irShowicons";i:0;s:11:"irWatermark";i:0;s:13:"irOverstretch";s:4:"True";s:12:"irRotatetime";i:10;s:12:"irTransition";s:6:"random";s:10:"irKenburns";i:0;s:11:"irBackcolor";s:6:"000000";s:12:"irFrontcolor";s:6:"FFFFFF";s:12:"irLightcolor";s:6:"CC0000";s:13:"irScreencolor";s:6:"000000";s:11:"activateCSS";s:1:"1";s:7:"CSSfile";s:13:"nggallery.css";s:22:"dynamic_thumbnail_slug";s:13:"nextgen-image";s:11:"installDate";i:1436145129;s:18:"thumbEffectScripts";a:1:{i:0;s:0:"";}s:17:"thumbEffectStyles";a:1:{i:0;s:0:"";}s:15:"thumbEffectCode";s:0:"";s:23:"dynamic_stylesheet_slug";s:12:"nextgen-dcss";}', 'yes'),
(522, 'photocrati_auto_update_admin_update_list', '', 'yes'),
(523, 'photocrati_auto_update_admin_check_date', '', 'yes'),
(524, 'ngg_db_version', '1.8.1', 'yes'),
(525, 'pope_module_list', 'a:32:{i:0;s:17:"photocrati-fs|0.4";i:1;s:19:"photocrati-i18n|0.1";i:2;s:25:"photocrati-validation|0.1";i:3;s:21:"photocrati-router|0.7";i:4;s:32:"photocrati-wordpress_routing|0.6";i:5;s:23:"photocrati-security|0.2";i:6;s:31:"photocrati-nextgen_settings|0.8";i:7;s:18:"photocrati-mvc|0.5";i:8;s:19:"photocrati-ajax|0.8";i:9;s:25:"photocrati-datamapper|0.8";i:10;s:30:"photocrati-nextgen-legacy|0.14";i:11;s:28:"photocrati-nextgen-data|0.10";i:12;s:33:"photocrati-dynamic_thumbnails|0.6";i:13;s:28:"photocrati-nextgen_admin|0.9";i:14;s:39:"photocrati-nextgen_gallery_display|0.13";i:15;s:34:"photocrati-frame_communication|0.4";i:16;s:30:"photocrati-attach_to_post|0.11";i:17;s:38:"photocrati-nextgen_addgallery_page|0.6";i:18;s:36:"photocrati-nextgen_other_options|0.8";i:19;s:33:"photocrati-nextgen_pagination|0.3";i:20;s:34:"photocrati-nextgen_pro_upgrade|0.4";i:21;s:20:"photocrati-cache|0.2";i:22;s:24:"photocrati-lightbox|0.14";i:23;s:38:"photocrati-nextgen_basic_templates|0.5";i:24;s:37:"photocrati-nextgen_basic_gallery|0.13";i:25;s:42:"photocrati-nextgen_basic_imagebrowser|0.10";i:26;s:39:"photocrati-nextgen_basic_singlepic|0.11";i:27;s:38:"photocrati-nextgen_basic_tagcloud|0.11";i:28;s:35:"photocrati-nextgen_basic_album|0.10";i:29;s:21:"photocrati-widget|0.5";i:30;s:33:"photocrati-third_party_compat|0.4";i:31;s:29:"photocrati-nextgen_xmlrpc|0.4";}', 'yes'),
(567, 'wppa_revision', '6116', 'yes'),
(568, 'wppa_prevrev', '100', 'yes'),
(569, 'wppa_max_users', '1000', 'yes'),
(570, 'wppa_i_responsive', 'yes', 'yes'),
(571, 'wppa_i_downsize', 'yes', 'yes'),
(572, 'wppa_i_source', 'yes', 'yes'),
(573, 'wppa_i_userupload', 'no', 'yes'),
(574, 'wppa_i_rating', 'no', 'yes'),
(575, 'wppa_i_comment', 'no', 'yes'),
(576, 'wppa_i_share', 'no', 'yes'),
(577, 'wppa_i_iptc', 'no', 'yes'),
(578, 'wppa_i_exif', 'no', 'yes'),
(579, 'wppa_i_gpx', 'no', 'yes'),
(580, 'wppa_i_fotomoto', 'no', 'yes'),
(581, 'wppa_i_video', 'no', 'yes'),
(582, 'wppa_i_done', 'done', 'yes'),
(583, 'wppa_colwidth', 'auto', 'yes'),
(584, 'wppa_initial_colwidth', '640', 'yes'),
(585, 'wppa_resize_on_upload', 'yes', 'yes'),
(586, 'wppa_resize_to', '1024x768', 'yes'),
(587, 'wppa_min_thumbs', '1', 'yes'),
(588, 'wppa_bwidth', '1', 'yes'),
(589, 'wppa_bradius', '6', 'yes'),
(590, 'wppa_box_spacing', '8', 'yes'),
(591, 'wppa_pagelinks_max', '7', 'yes'),
(592, 'wppa_max_filename_length', '0', 'yes'),
(593, 'wppa_max_photoname_length', '0', 'yes'),
(594, 'wppa_fullsize', '640', 'yes'),
(595, 'wppa_maxheight', '480', 'yes'),
(596, 'wppa_enlarge', 'no', 'yes'),
(597, 'wppa_fullimage_border_width', '', 'yes'),
(598, 'wppa_numbar_max', '10', 'yes'),
(599, 'wppa_share_size', '32', 'yes'),
(600, 'wppa_mini_treshold', '500', 'yes'),
(601, 'wppa_slideshow_pagesize', '0', 'yes'),
(602, 'wppa_thumbsize', '100', 'yes'),
(603, 'wppa_thumbsize_alt', '130', 'yes'),
(604, 'wppa_thumb_aspect', '0:0:none', 'yes'),
(605, 'wppa_tf_width', '100', 'yes'),
(606, 'wppa_tf_width_alt', '130', 'yes'),
(607, 'wppa_tf_height', '150', 'yes'),
(608, 'wppa_tf_height_alt', '180', 'yes'),
(609, 'wppa_tn_margin', '4', 'yes'),
(610, 'wppa_thumb_auto', 'yes', 'yes'),
(611, 'wppa_thumb_page_size', '0', 'yes'),
(612, 'wppa_popupsize', '150', 'yes'),
(613, 'wppa_use_thumbs_if_fit', 'yes', 'yes'),
(614, 'wppa_max_cover_width', '1024', 'yes'),
(615, 'wppa_cover_minheight', '0', 'yes'),
(616, 'wppa_head_and_text_frame_height', '0', 'yes'),
(617, 'wppa_text_frame_height', '54', 'yes'),
(618, 'wppa_smallsize', '150', 'yes'),
(619, 'wppa_smallsize_multi', '100', 'yes'),
(620, 'wppa_coversize_is_height', 'no', 'yes'),
(621, 'wppa_album_page_size', '0', 'yes'),
(622, 'wppa_rating_max', '5', 'yes'),
(623, 'wppa_rating_prec', '2', 'yes'),
(624, 'wppa_gravatar_size', '40', 'yes'),
(625, 'wppa_ratspacing', '30', 'yes'),
(626, 'wppa_topten_count', '10', 'yes'),
(627, 'wppa_topten_size', '86', 'yes'),
(628, 'wppa_comten_count', '10', 'yes'),
(629, 'wppa_comten_size', '86', 'yes'),
(630, 'wppa_featen_count', '10', 'yes'),
(631, 'wppa_featen_size', '86', 'yes'),
(632, 'wppa_thumbnail_widget_count', '10', 'yes'),
(633, 'wppa_thumbnail_widget_size', '86', 'yes'),
(634, 'wppa_lasten_count', '10', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(635, 'wppa_lasten_size', '86', 'yes'),
(636, 'wppa_album_widget_count', '10', 'yes'),
(637, 'wppa_album_widget_size', '86', 'yes'),
(638, 'wppa_related_count', '10', 'yes'),
(639, 'wppa_tagcloud_min', '8', 'yes'),
(640, 'wppa_tagcloud_max', '24', 'yes'),
(641, 'wppa_ovl_txt_lines', 'auto', 'yes'),
(642, 'wppa_magnifier', 'magnifier-small.png', 'yes'),
(643, 'wppa_video_width', '640', 'yes'),
(644, 'wppa_video_height', '480', 'yes'),
(645, 'wppa_show_bread_posts', 'yes', 'yes'),
(646, 'wppa_show_bread_pages', 'yes', 'yes'),
(647, 'wppa_bc_on_search', 'yes', 'yes'),
(648, 'wppa_bc_on_topten', 'yes', 'yes'),
(649, 'wppa_bc_on_lasten', 'yes', 'yes'),
(650, 'wppa_bc_on_comten', 'yes', 'yes'),
(651, 'wppa_bc_on_featen', 'yes', 'yes'),
(652, 'wppa_bc_on_tag', 'yes', 'yes'),
(653, 'wppa_bc_on_related', 'yes', 'yes'),
(654, 'wppa_show_home', 'yes', 'yes'),
(655, 'wppa_show_page', 'yes', 'yes'),
(656, 'wppa_bc_separator', 'raquo', 'yes'),
(657, 'wppa_bc_txt', '&lt;span style=&quot;color:red; font_size:24px;&quot;&gt;&amp;bull;&lt;/span&gt;', 'yes'),
(658, 'wppa_bc_url', 'http://localhost:9000/wp-content/plugins/wp-photo-album-plus/images/arrow.gif', 'yes'),
(659, 'wppa_pagelink_pos', 'bottom', 'yes'),
(660, 'wppa_bc_slide_thumblink', 'no', 'yes'),
(661, 'wppa_show_startstop_navigation', 'yes', 'yes'),
(662, 'wppa_show_browse_navigation', 'yes', 'yes'),
(663, 'wppa_filmstrip', 'yes', 'yes'),
(664, 'wppa_film_show_glue', 'yes', 'yes'),
(665, 'wppa_show_full_name', 'yes', 'yes'),
(666, 'wppa_show_full_owner', 'no', 'yes'),
(667, 'wppa_show_full_desc', 'yes', 'yes'),
(668, 'wppa_hide_when_empty', 'no', 'yes'),
(669, 'wppa_rating_on', 'no', 'yes'),
(670, 'wppa_dislike_mail_every', '5', 'yes'),
(671, 'wppa_dislike_set_pending', '0', 'yes'),
(672, 'wppa_dislike_delete', '0', 'yes'),
(673, 'wppa_dislike_show_count', 'yes', 'yes'),
(674, 'wppa_rating_display_type', 'graphic', 'yes'),
(675, 'wppa_show_avg_rating', 'yes', 'yes'),
(676, 'wppa_show_comments', 'no', 'yes'),
(677, 'wppa_comment_gravatar', 'monsterid', 'yes'),
(678, 'wppa_comment_gravatar_url', 'http://', 'yes'),
(679, 'wppa_show_bbb', 'no', 'yes'),
(680, 'wppa_show_ubb', 'no', 'yes'),
(681, 'wppa_custom_on', 'no', 'yes'),
(682, 'wppa_custom_content', '<div style="color:red; font-size:24px; font-weight:bold; text-align:center;">Hello world!</div><div style="text-align:center;" >You can change this text in Table II-B15</div>', 'yes'),
(683, 'wppa_show_slideshownumbar', 'no', 'yes'),
(684, 'wppa_show_iptc', 'no', 'yes'),
(685, 'wppa_show_iptc_open', 'no', 'yes'),
(686, 'wppa_show_exif', 'no', 'yes'),
(687, 'wppa_show_exif_open', 'no', 'yes'),
(688, 'wppa_share_on', 'no', 'yes'),
(689, 'wppa_share_hide_when_running', 'yes', 'yes'),
(690, 'wppa_share_on_widget', 'no', 'yes'),
(691, 'wppa_share_on_thumbs', 'no', 'yes'),
(692, 'wppa_share_on_lightbox', 'no', 'yes'),
(693, 'wppa_share_on_mphoto', 'no', 'yes'),
(694, 'wppa_share_qr', 'no', 'yes'),
(695, 'wppa_share_facebook', 'yes', 'yes'),
(696, 'wppa_share_twitter', 'yes', 'yes'),
(697, 'wppa_share_google', 'yes', 'yes'),
(698, 'wppa_share_pinterest', 'yes', 'yes'),
(699, 'wppa_share_linkedin', 'yes', 'yes'),
(700, 'wppa_facebook_comments', 'yes', 'yes'),
(701, 'wppa_facebook_like', 'yes', 'yes'),
(702, 'wppa_fb_display', 'standard', 'yes'),
(703, 'wppa_facebook_admin_id', '', 'yes'),
(704, 'wppa_facebook_app_id', '', 'yes'),
(705, 'wppa_load_facebook_sdk', 'yes', 'yes'),
(706, 'wppa_share_single_image', 'yes', 'yes'),
(707, 'wppa_thumb_text_name', 'yes', 'yes'),
(708, 'wppa_thumb_text_owner', 'no', 'yes'),
(709, 'wppa_thumb_text_desc', 'yes', 'yes'),
(710, 'wppa_thumb_text_rating', 'yes', 'yes'),
(711, 'wppa_thumb_text_viewcount', 'no', 'yes'),
(712, 'wppa_thumb_video', 'no', 'yes'),
(713, 'wppa_thumb_audio', 'yes', 'yes'),
(714, 'wppa_popup_text_name', 'yes', 'yes'),
(715, 'wppa_popup_text_owner', 'no', 'yes'),
(716, 'wppa_popup_text_desc', 'yes', 'yes'),
(717, 'wppa_popup_text_desc_strip', 'no', 'yes'),
(718, 'wppa_popup_text_rating', 'yes', 'yes'),
(719, 'wppa_popup_text_ncomments', 'yes', 'yes'),
(720, 'wppa_show_rating_count', 'no', 'yes'),
(721, 'wppa_albdesc_on_thumbarea', 'none', 'yes'),
(722, 'wppa_albname_on_thumbarea', 'none', 'yes'),
(723, 'wppa_show_empty_thumblist', 'no', 'yes'),
(724, 'wppa_edit_thumb', 'yes', 'yes'),
(725, 'wppa_show_cover_text', 'yes', 'yes'),
(726, 'wppa_enable_slideshow', 'yes', 'yes'),
(727, 'wppa_show_slideshowbrowselink', 'yes', 'yes'),
(728, 'wppa_show_viewlink', 'yes', 'yes'),
(729, 'wppa_show_treecount', 'no', 'yes'),
(730, 'wppa_show_cats', 'no', 'yes'),
(731, 'wppa_skip_empty_albums', 'yes', 'yes'),
(732, 'wppa_show_bbb_widget', 'no', 'yes'),
(733, 'wppa_show_ubb_widget', 'no', 'yes'),
(734, 'wppa_show_albwidget_tooltip', 'yes', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(735, 'wppa_ovl_close_txt', 'Close', 'yes'),
(736, 'wppa_ovl_theme', 'black', 'yes'),
(737, 'wppa_ovl_bgcolor', 'black', 'yes'),
(738, 'wppa_ovl_slide_name', 'no', 'yes'),
(739, 'wppa_ovl_slide_desc', 'yes', 'yes'),
(740, 'wppa_ovl_thumb_name', 'yes', 'yes'),
(741, 'wppa_ovl_thumb_desc', 'no', 'yes'),
(742, 'wppa_ovl_potd_name', 'yes', 'yes'),
(743, 'wppa_ovl_potd_desc', 'no', 'yes'),
(744, 'wppa_ovl_sphoto_name', 'yes', 'yes'),
(745, 'wppa_ovl_sphoto_desc', 'no', 'yes'),
(746, 'wppa_ovl_mphoto_name', 'yes', 'yes'),
(747, 'wppa_ovl_mphoto_desc', 'no', 'yes'),
(748, 'wppa_ovl_alw_name', 'yes', 'yes'),
(749, 'wppa_ovl_alw_desc', 'no', 'yes'),
(750, 'wppa_ovl_cover_name', 'yes', 'yes'),
(751, 'wppa_ovl_cover_desc', 'no', 'yes'),
(752, 'wppa_ovl_show_counter', 'yes', 'yes'),
(753, 'wppa_ovl_add_owner', 'no', 'yes'),
(754, 'wppa_ovl_show_startstop', 'yes', 'yes'),
(755, 'wppa_ovl_show_legenda', 'yes', 'yes'),
(756, 'wppa_show_zoomin', 'yes', 'yes'),
(757, 'wppa_owner_on_new_line', 'no', 'yes'),
(758, 'wppa_user_upload_on', 'no', 'yes'),
(759, 'wppa_user_upload_login', 'yes', 'yes'),
(760, 'wppa_ajax_upload', 'yes', 'yes'),
(761, 'wppa_copyright_on', 'yes', 'yes'),
(762, 'wppa_copyright_notice', '<span style="color:red" >Warning: Do not upload copyrighted material!</span>', 'yes'),
(763, 'wppa_watermark_user', 'no', 'yes'),
(764, 'wppa_name_user', 'yes', 'yes'),
(765, 'wppa_apply_newphoto_desc_user', 'no', 'yes'),
(766, 'wppa_desc_user', 'yes', 'yes'),
(767, 'wppa_fe_custom_fields', 'no', 'yes'),
(768, 'wppa_fe_upload_tags', 'no', 'yes'),
(769, 'wppa_up_tagselbox_on_1', 'yes', 'yes'),
(770, 'wppa_up_tagselbox_multi_1', 'yes', 'yes'),
(771, 'wppa_up_tagselbox_title_1', 'Select tags:', 'yes'),
(772, 'wppa_up_tagselbox_content_1', '', 'yes'),
(773, 'wppa_up_tagselbox_on_2', 'no', 'yes'),
(774, 'wppa_up_tagselbox_multi_2', 'yes', 'yes'),
(775, 'wppa_up_tagselbox_title_2', 'Select tags:', 'yes'),
(776, 'wppa_up_tagselbox_content_2', '', 'yes'),
(777, 'wppa_up_tagselbox_on_3', 'no', 'yes'),
(778, 'wppa_up_tagselbox_multi_3', 'yes', 'yes'),
(779, 'wppa_up_tagselbox_title_3', 'Select tags:', 'yes'),
(780, 'wppa_up_tagselbox_content_3', '', 'yes'),
(781, 'wppa_up_tag_input_on', 'yes', 'yes'),
(782, 'wppa_up_tag_input_title', 'Enter new tags:', 'yes'),
(783, 'wppa_up_tag_preview', 'yes', 'yes'),
(784, 'wppa_custom_fields', 'no', 'yes'),
(785, 'wppa_custom_caption_0', '', 'yes'),
(786, 'wppa_custom_visible_0', 'no', 'yes'),
(787, 'wppa_custom_caption_1', '', 'yes'),
(788, 'wppa_custom_visible_1', 'no', 'yes'),
(789, 'wppa_custom_caption_2', '', 'yes'),
(790, 'wppa_custom_visible_2', 'no', 'yes'),
(791, 'wppa_custom_caption_3', '', 'yes'),
(792, 'wppa_custom_visible_3', 'no', 'yes'),
(793, 'wppa_custom_caption_4', '', 'yes'),
(794, 'wppa_custom_visible_4', 'no', 'yes'),
(795, 'wppa_custom_caption_5', '', 'yes'),
(796, 'wppa_custom_visible_5', 'no', 'yes'),
(797, 'wppa_custom_caption_6', '', 'yes'),
(798, 'wppa_custom_visible_6', 'no', 'yes'),
(799, 'wppa_custom_caption_7', '', 'yes'),
(800, 'wppa_custom_visible_7', 'no', 'yes'),
(801, 'wppa_custom_caption_8', '', 'yes'),
(802, 'wppa_custom_visible_8', 'no', 'yes'),
(803, 'wppa_custom_caption_9', '', 'yes'),
(804, 'wppa_custom_visible_9', 'no', 'yes'),
(805, 'wppa_close_text', 'Close', 'yes'),
(806, 'wppa_bgcolor_even', '#eeeeee', 'yes'),
(807, 'wppa_bcolor_even', '#cccccc', 'yes'),
(808, 'wppa_bgcolor_alt', '#dddddd', 'yes'),
(809, 'wppa_bcolor_alt', '#bbbbbb', 'yes'),
(810, 'wppa_bgcolor_thumbnail', '#000000', 'yes'),
(811, 'wppa_bgcolor_nav', '#dddddd', 'yes'),
(812, 'wppa_bcolor_nav', '#bbbbbb', 'yes'),
(813, 'wppa_bgcolor_namedesc', '#dddddd', 'yes'),
(814, 'wppa_bcolor_namedesc', '#bbbbbb', 'yes'),
(815, 'wppa_bgcolor_com', '#dddddd', 'yes'),
(816, 'wppa_bcolor_com', '#bbbbbb', 'yes'),
(817, 'wppa_bgcolor_img', '#eeeeee', 'yes'),
(818, 'wppa_bcolor_img', '', 'yes'),
(819, 'wppa_bgcolor_fullimg', '#cccccc', 'yes'),
(820, 'wppa_bcolor_fullimg', '#777777', 'yes'),
(821, 'wppa_bgcolor_cus', '#dddddd', 'yes'),
(822, 'wppa_bcolor_cus', '#bbbbbb', 'yes'),
(823, 'wppa_bgcolor_numbar', '#cccccc', 'yes'),
(824, 'wppa_bcolor_numbar', '#cccccc', 'yes'),
(825, 'wppa_bgcolor_numbar_active', '#333333', 'yes'),
(826, 'wppa_bcolor_numbar_active', '#333333', 'yes'),
(827, 'wppa_bgcolor_iptc', '#dddddd', 'yes'),
(828, 'wppa_bcolor_iptc', '#bbbbbb', 'yes'),
(829, 'wppa_bgcolor_exif', '#dddddd', 'yes'),
(830, 'wppa_bcolor_exif', '#bbbbbb', 'yes'),
(831, 'wppa_bgcolor_share', '#dddddd', 'yes'),
(832, 'wppa_bcolor_share', '#bbbbbb', 'yes'),
(833, 'wppa_bgcolor_upload', '#dddddd', 'yes'),
(834, 'wppa_bcolor_upload', '#bbbbbb', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(835, 'wppa_bgcolor_multitag', '#dddddd', 'yes'),
(836, 'wppa_bcolor_multitag', '#bbbbbb', 'yes'),
(837, 'wppa_bgcolor_tagcloud', '#dddddd', 'yes'),
(838, 'wppa_bcolor_tagcloud', '#bbbbbb', 'yes'),
(839, 'wppa_bgcolor_superview', '#dddddd', 'yes'),
(840, 'wppa_bcolor_superview', '#bbbbbb', 'yes'),
(841, 'wppa_bgcolor_search', '#dddddd', 'yes'),
(842, 'wppa_bcolor_search', '#bbbbbb', 'yes'),
(843, 'wppa_bgcolor_bestof', '#dddddd', 'yes'),
(844, 'wppa_bcolor_bestof', '#bbbbbb', 'yes'),
(845, 'wppa_allow_ajax', 'yes', 'yes'),
(846, 'wppa_ajax_non_admin', 'yes', 'yes'),
(847, 'wppa_use_photo_names_in_urls', 'no', 'yes'),
(848, 'wppa_use_album_names_in_urls', 'no', 'yes'),
(849, 'wppa_use_short_qargs', 'yes', 'yes'),
(850, 'wppa_use_pretty_links', 'yes', 'yes'),
(851, 'wppa_update_addressline', 'yes', 'yes'),
(852, 'wppa_render_shortcode_always', 'no', 'yes'),
(853, 'wppa_track_viewcounts', 'yes', 'yes'),
(854, 'wppa_auto_page', 'no', 'yes'),
(855, 'wppa_auto_page_type', 'photo', 'yes'),
(856, 'wppa_auto_page_links', 'bottom', 'yes'),
(857, 'wppa_defer_javascript', 'no', 'yes'),
(858, 'wppa_inline_css', 'yes', 'yes'),
(859, 'wppa_custom_style', '', 'yes'),
(860, 'wppa_use_custom_style_file', 'no', 'yes'),
(861, 'wppa_use_custom_theme_file', 'no', 'yes'),
(862, 'wppa_cre_uploads_htaccess', 'no', 'yes'),
(863, 'wppa_debug_trace_on', 'no', 'yes'),
(864, 'wppa_lazy_or_htmlcomp', 'no', 'yes'),
(865, 'wppa_relative_urls', 'no', 'yes'),
(866, 'wppa_thumbs_first', 'no', 'yes'),
(867, 'wppa_login_links', 'yes', 'yes'),
(868, 'wppa_enable_video', 'no', 'yes'),
(869, 'wppa_enable_audio', 'no', 'yes'),
(870, 'wppa_fullvalign', 'center', 'yes'),
(871, 'wppa_fullhalign', 'center', 'yes'),
(872, 'wppa_start_slide', 'run', 'yes'),
(873, 'wppa_start_slideonly', 'yes', 'yes'),
(874, 'wppa_start_slide_video', 'no', 'yes'),
(875, 'wppa_start_slide_audio', 'no', 'yes'),
(876, 'wppa_animation_type', 'fadeover', 'yes'),
(877, 'wppa_slideshow_timeout', '2500', 'yes'),
(878, 'wppa_animation_speed', '800', 'yes'),
(879, 'wppa_slide_pause', 'no', 'yes'),
(880, 'wppa_slide_wrap', 'yes', 'yes'),
(881, 'wppa_fulldesc_align', 'center', 'yes'),
(882, 'wppa_clean_pbr', 'yes', 'yes'),
(883, 'wppa_run_wpautop_on_desc', 'no', 'yes'),
(884, 'wppa_auto_open_comments', 'yes', 'yes'),
(885, 'wppa_film_hover_goto', 'no', 'yes'),
(886, 'wppa_slide_swipe', 'no', 'yes'),
(887, 'wppa_slideshow_page_allow_ajax', 'yes', 'yes'),
(888, 'wppa_list_photos_by', '0', 'yes'),
(889, 'wppa_thumbtype', 'default', 'yes'),
(890, 'wppa_thumbphoto_left', 'no', 'yes'),
(891, 'wppa_valign', 'center', 'yes'),
(892, 'wppa_use_thumb_opacity', 'yes', 'yes'),
(893, 'wppa_thumb_opacity', '95', 'yes'),
(894, 'wppa_use_thumb_popup', 'yes', 'yes'),
(895, 'wppa_align_thumbtext', 'no', 'yes'),
(896, 'wppa_list_albums_by', '0', 'yes'),
(897, 'wppa_main_photo', '0', 'yes'),
(898, 'wppa_coverphoto_pos', 'right', 'yes'),
(899, 'wppa_use_cover_opacity', 'yes', 'yes'),
(900, 'wppa_cover_opacity', '85', 'yes'),
(901, 'wppa_cover_type', 'default', 'yes'),
(902, 'wppa_imgfact_count', '10', 'yes'),
(903, 'wppa_rating_login', 'yes', 'yes'),
(904, 'wppa_rating_change', 'yes', 'yes'),
(905, 'wppa_rating_multi', 'no', 'yes'),
(906, 'wppa_allow_owner_votes', 'yes', 'yes'),
(907, 'wppa_vote_needs_comment', 'no', 'yes'),
(908, 'wppa_dislike_value', '-5', 'yes'),
(909, 'wppa_next_on_callback', 'no', 'yes'),
(910, 'wppa_star_opacity', '20', 'yes'),
(911, 'wppa_vote_button_text', 'Vote for me!', 'yes'),
(912, 'wppa_voted_button_text', 'Voted for me', 'yes'),
(913, 'wppa_vote_thumb', 'no', 'yes'),
(914, 'wppa_medal_bronze_when', '5', 'yes'),
(915, 'wppa_medal_silver_when', '10', 'yes'),
(916, 'wppa_medal_gold_when', '15', 'yes'),
(917, 'wppa_medal_color', '2', 'yes'),
(918, 'wppa_medal_position', 'botright', 'yes'),
(919, 'wppa_topten_sortby', 'mean_rating', 'yes'),
(920, 'wppa_comment_login', 'no', 'yes'),
(921, 'wppa_comments_desc', 'no', 'yes'),
(922, 'wppa_comment_moderation', 'logout', 'yes'),
(923, 'wppa_comment_email_required', 'yes', 'yes'),
(924, 'wppa_comment_notify', 'none', 'yes'),
(925, 'wppa_com_notify_previous', 'no', 'yes'),
(926, 'wppa_comment_notify_added', 'yes', 'yes'),
(927, 'wppa_comten_alt_display', 'no', 'yes'),
(928, 'wppa_comten_alt_thumbsize', '75', 'yes'),
(929, 'wppa_comment_smiley_picker', 'no', 'yes'),
(930, 'wppa_mail_upl_email', 'yes', 'yes'),
(931, 'wppa_ovl_opacity', '80', 'yes'),
(932, 'wppa_ovl_onclick', 'none', 'yes'),
(933, 'wppa_ovl_anim', '300', 'yes'),
(934, 'wppa_ovl_slide', '5000', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(935, 'wppa_ovl_chrome_at_top', 'yes', 'yes'),
(936, 'wppa_lightbox_global', 'no', 'yes'),
(937, 'wppa_lightbox_global_set', 'no', 'yes'),
(938, 'wppa_lb_hres', 'no', 'yes'),
(939, 'wppa_ovl_video_start', 'yes', 'yes'),
(940, 'wppa_ovl_audio_start', 'yes', 'yes'),
(941, 'wppa_fontfamily_title', '', 'yes'),
(942, 'wppa_fontsize_title', '', 'yes'),
(943, 'wppa_fontcolor_title', '', 'yes'),
(944, 'wppa_fontweight_title', 'bold', 'yes'),
(945, 'wppa_fontfamily_fulldesc', '', 'yes'),
(946, 'wppa_fontsize_fulldesc', '', 'yes'),
(947, 'wppa_fontcolor_fulldesc', '', 'yes'),
(948, 'wppa_fontweight_fulldesc', 'normal', 'yes'),
(949, 'wppa_fontfamily_fulltitle', '', 'yes'),
(950, 'wppa_fontsize_fulltitle', '', 'yes'),
(951, 'wppa_fontcolor_fulltitle', '', 'yes'),
(952, 'wppa_fontweight_fulltitle', 'normal', 'yes'),
(953, 'wppa_fontfamily_nav', '', 'yes'),
(954, 'wppa_fontsize_nav', '', 'yes'),
(955, 'wppa_fontcolor_nav', '', 'yes'),
(956, 'wppa_fontweight_nav', 'normal', 'yes'),
(957, 'wppa_fontfamily_thumb', '', 'yes'),
(958, 'wppa_fontsize_thumb', '', 'yes'),
(959, 'wppa_fontcolor_thumb', '', 'yes'),
(960, 'wppa_fontweight_thumb', 'normal', 'yes'),
(961, 'wppa_fontfamily_box', '', 'yes'),
(962, 'wppa_fontsize_box', '', 'yes'),
(963, 'wppa_fontcolor_box', '', 'yes'),
(964, 'wppa_fontweight_box', 'normal', 'yes'),
(965, 'wppa_fontfamily_numbar', '', 'yes'),
(966, 'wppa_fontsize_numbar', '', 'yes'),
(967, 'wppa_fontcolor_numbar', '#777777', 'yes'),
(968, 'wppa_fontweight_numbar', 'normal', 'yes'),
(969, 'wppa_fontfamily_numbar_active', '', 'yes'),
(970, 'wppa_fontsize_numbar_active', '', 'yes'),
(971, 'wppa_fontcolor_numbar_active', '#777777', 'yes'),
(972, 'wppa_fontweight_numbar_active', 'bold', 'yes'),
(973, 'wppa_fontfamily_lightbox', '', 'yes'),
(974, 'wppa_fontsize_lightbox', '10', 'yes'),
(975, 'wppa_fontcolor_lightbox', '', 'yes'),
(976, 'wppa_fontweight_lightbox', 'bold', 'yes'),
(977, 'wppa_fontsize_widget_thumb', '9', 'yes'),
(978, 'wppa_sphoto_linktype', 'photo', 'yes'),
(979, 'wppa_sphoto_linkpage', '0', 'yes'),
(980, 'wppa_sphoto_blank', 'no', 'yes'),
(981, 'wppa_sphoto_overrule', 'no', 'yes'),
(982, 'wppa_mphoto_linktype', 'photo', 'yes'),
(983, 'wppa_mphoto_linkpage', '0', 'yes'),
(984, 'wppa_mphoto_blank', 'no', 'yes'),
(985, 'wppa_mphoto_overrule', 'no', 'yes'),
(986, 'wppa_thumb_linktype', 'photo', 'yes'),
(987, 'wppa_thumb_linkpage', '0', 'yes'),
(988, 'wppa_thumb_blank', 'no', 'yes'),
(989, 'wppa_thumb_overrule', 'no', 'yes'),
(990, 'wppa_topten_widget_linktype', 'photo', 'yes'),
(991, 'wppa_topten_widget_linkpage', '0', 'yes'),
(992, 'wppa_topten_blank', 'no', 'yes'),
(993, 'wppa_topten_overrule', 'no', 'yes'),
(994, 'wppa_topten_widget_album_linkpage', '0', 'yes'),
(995, 'wppa_featen_widget_linktype', 'photo', 'yes'),
(996, 'wppa_featen_widget_linkpage', '0', 'yes'),
(997, 'wppa_featen_blank', 'no', 'yes'),
(998, 'wppa_featen_overrule', 'no', 'yes'),
(999, 'wppa_slideonly_widget_linktype', 'widget', 'yes'),
(1000, 'wppa_slideonly_widget_linkpage', '0', 'yes'),
(1001, 'wppa_sswidget_blank', 'no', 'yes'),
(1002, 'wppa_sswidget_overrule', 'no', 'yes'),
(1003, 'wppa_widget_linktype', 'album', 'yes'),
(1004, 'wppa_widget_linkpage', '0', 'yes'),
(1005, 'wppa_potd_blank', 'no', 'yes'),
(1006, 'wppa_potdwidget_overrule', 'no', 'yes'),
(1007, 'wppa_coverimg_linktype', 'same', 'yes'),
(1008, 'wppa_coverimg_linkpage', '0', 'yes'),
(1009, 'wppa_coverimg_blank', 'no', 'yes'),
(1010, 'wppa_coverimg_overrule', 'no', 'yes'),
(1011, 'wppa_comment_widget_linktype', 'photo', 'yes'),
(1012, 'wppa_comment_widget_linkpage', '0', 'yes'),
(1013, 'wppa_comment_blank', 'no', 'yes'),
(1014, 'wppa_comment_overrule', 'no', 'yes'),
(1015, 'wppa_slideshow_linktype', 'none', 'yes'),
(1016, 'wppa_slideshow_linkpage', '0', 'yes'),
(1017, 'wppa_slideshow_blank', 'no', 'yes'),
(1018, 'wppa_slideshow_overrule', 'no', 'yes'),
(1019, 'wppa_thumbnail_widget_linktype', 'photo', 'yes'),
(1020, 'wppa_thumbnail_widget_linkpage', '0', 'yes'),
(1021, 'wppa_thumbnail_widget_overrule', 'no', 'yes'),
(1022, 'wppa_thumbnail_widget_blank', 'no', 'yes'),
(1023, 'wppa_film_linktype', 'slideshow', 'yes'),
(1024, 'wppa_film_blank', 'no', 'yes'),
(1025, 'wppa_film_overrule', 'no', 'yes'),
(1026, 'wppa_lasten_widget_linktype', 'photo', 'yes'),
(1027, 'wppa_lasten_widget_linkpage', '0', 'yes'),
(1028, 'wppa_lasten_blank', 'no', 'yes'),
(1029, 'wppa_lasten_overrule', 'no', 'yes'),
(1030, 'wppa_art_monkey_link', 'none', 'yes'),
(1031, 'wppa_art_monkey_popup_link', 'file', 'yes'),
(1032, 'wppa_artmonkey_use_source', 'no', 'yes'),
(1033, 'wppa_art_monkey_display', 'button', 'yes'),
(1034, 'wppa_art_monkey_on_lightbox', 'no', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1035, 'wppa_allow_download_album', 'no', 'yes'),
(1036, 'wppa_download_album_source', 'yes', 'yes'),
(1037, 'wppa_album_widget_linktype', 'content', 'yes'),
(1038, 'wppa_album_widget_linkpage', '0', 'yes'),
(1039, 'wppa_album_widget_blank', 'no', 'yes'),
(1040, 'wppa_tagcloud_linktype', 'album', 'yes'),
(1041, 'wppa_tagcloud_linkpage', '0', 'yes'),
(1042, 'wppa_tagcloud_blank', 'no', 'yes'),
(1043, 'wppa_multitag_linktype', 'album', 'yes'),
(1044, 'wppa_multitag_linkpage', '0', 'yes'),
(1045, 'wppa_multitag_blank', 'no', 'yes'),
(1046, 'wppa_super_view_linkpage', '0', 'yes'),
(1047, 'wppa_upldr_widget_linkpage', '0', 'yes'),
(1048, 'wppa_bestof_widget_linkpage', '0', 'yes'),
(1049, 'wppa_supersearch_linkpage', '0', 'yes'),
(1050, 'wppa_album_navigator_widget_linktype', 'thumbs', 'yes'),
(1051, 'wppa_album_navigator_widget_linkpage', '0', 'yes'),
(1052, 'wppa_owner_only', 'no', 'yes'),
(1053, 'wppa_upload_owner_only', 'no', 'yes'),
(1054, 'wppa_user_album_edit_on', 'no', 'yes'),
(1055, 'wppa_upload_moderate', 'no', 'yes'),
(1056, 'wppa_upload_edit', 'no', 'yes'),
(1057, 'wppa_owner_moderate_comment', 'no', 'yes'),
(1058, 'wppa_upload_notify', 'no', 'yes'),
(1059, 'wppa_upload_backend_notify', 'no', 'yes'),
(1060, 'wppa_upload_one_only', 'no', 'yes'),
(1061, 'wppa_memcheck_frontend', 'yes', 'yes'),
(1062, 'wppa_memcheck_admin', 'yes', 'yes'),
(1063, 'wppa_comment_captcha', 'no', 'yes'),
(1064, 'wppa_spam_maxage', 'none', 'yes'),
(1065, 'wppa_user_create_on', 'no', 'yes'),
(1066, 'wppa_user_create_login', 'yes', 'yes'),
(1067, 'wppa_user_destroy_on', 'no', 'yes'),
(1068, 'wppa_upload_fronend_maxsize', '0', 'yes'),
(1069, 'wppa_void_dups', 'no', 'yes'),
(1070, 'wppa_editor_upload_limit_count', '0', 'yes'),
(1071, 'wppa_editor_upload_limit_time', '0', 'yes'),
(1072, 'wppa_author_upload_limit_count', '0', 'yes'),
(1073, 'wppa_author_upload_limit_time', '0', 'yes'),
(1074, 'wppa_contributor_upload_limit_count', '0', 'yes'),
(1075, 'wppa_contributor_upload_limit_time', '0', 'yes'),
(1076, 'wppa_subscriber_upload_limit_count', '0', 'yes'),
(1077, 'wppa_subscriber_upload_limit_time', '0', 'yes'),
(1078, 'wppa_loggedout_upload_limit_count', '0', 'yes'),
(1079, 'wppa_loggedout_upload_limit_time', '0', 'yes'),
(1080, 'wppa_blacklist_user', '', 'yes'),
(1081, 'wppa_un_blacklist_user', '', 'yes'),
(1082, 'wppa_photo_owner_change', 'no', 'yes'),
(1083, 'wppa_setup', '', 'yes'),
(1084, 'wppa_backup', '', 'yes'),
(1085, 'wppa_load_skin', '', 'yes'),
(1086, 'wppa_skinfile', 'default', 'yes'),
(1087, 'wppa_regen_thumbs', '', 'yes'),
(1088, 'wppa_regen_thumbs_skip_one', '', 'yes'),
(1089, 'wppa_rerate', '', 'yes'),
(1090, 'wppa_cleanup', '', 'yes'),
(1091, 'wppa_recup', '', 'yes'),
(1092, 'wppa_file_system', 'flat', 'yes'),
(1093, 'wppa_remake', '', 'yes'),
(1094, 'wppa_remake_skip_one', '', 'yes'),
(1095, 'wppa_errorlog_purge', '', 'yes'),
(1096, 'wppa_comp_sizes', '', 'yes'),
(1097, 'wppa_rating_clear', 'no', 'yes'),
(1098, 'wppa_viewcount_clear', 'no', 'yes'),
(1099, 'wppa_iptc_clear', '', 'yes'),
(1100, 'wppa_exif_clear', '', 'yes'),
(1101, 'wppa_apply_new_photodesc_all', '', 'yes'),
(1102, 'wppa_remake_index', '', 'yes'),
(1103, 'wppa_extend_index', '', 'yes'),
(1104, 'wppa_list_index', '', 'yes'),
(1105, 'wppa_list_index_display_start', '', 'yes'),
(1106, 'wppa_append_text', '', 'yes'),
(1107, 'wppa_append_to_photodesc', '', 'yes'),
(1108, 'wppa_remove_text', '', 'yes'),
(1109, 'wppa_remove_from_photodesc', '', 'yes'),
(1110, 'wppa_remove_empty_albums', '', 'yes'),
(1111, 'wppa_watermark_all', '', 'yes'),
(1112, 'wppa_create_all_autopages', '', 'yes'),
(1113, 'wppa_readd_file_extensions', '', 'yes'),
(1114, 'wppa_zero_numbers', '5', 'yes'),
(1115, 'wppa_leading_zeros', '', 'yes'),
(1116, 'wppa_add_gpx_tag', '', 'yes'),
(1117, 'wppa_optimize_ewww', '', 'yes'),
(1118, 'wppa_tag_to_edit', '', 'yes'),
(1119, 'wppa_new_tag_value', '', 'yes'),
(1120, 'wppa_edit_tag', '', 'yes'),
(1121, 'wppa_maint_ignore_concurrency_error', 'no', 'yes'),
(1122, 'wppa_html', 'yes', 'yes'),
(1123, 'wppa_check_balance', 'no', 'yes'),
(1124, 'wppa_allow_debug', 'no', 'yes'),
(1125, 'wppa_filter_priority', '1001', 'yes'),
(1126, 'wppa_shortcode_priority', '11', 'yes'),
(1127, 'wppa_lightbox_name', 'wppa', 'yes'),
(1128, 'wppa_allow_foreign_shortcodes_general', 'no', 'yes'),
(1129, 'wppa_allow_foreign_shortcodes', 'no', 'yes'),
(1130, 'wppa_allow_foreign_shortcodes_thumbs', 'no', 'yes'),
(1131, 'wppa_arrow_color', 'black', 'yes'),
(1132, 'wppa_meta_page', 'yes', 'yes'),
(1133, 'wppa_meta_all', 'yes', 'yes'),
(1134, 'wppa_use_wp_editor', 'no', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1135, 'wppa_hier_albsel', 'yes', 'yes'),
(1136, 'wppa_hier_pagesel', 'no', 'yes'),
(1137, 'wppa_alt_type', 'fullname', 'yes'),
(1138, 'wppa_photo_admin_pagesize', '20', 'yes'),
(1139, 'wppa_comment_admin_pagesize', '10', 'yes'),
(1140, 'wppa_jpeg_quality', '95', 'yes'),
(1141, 'wppa_geo_edit', 'no', 'yes'),
(1142, 'wppa_auto_continue', 'yes', 'yes'),
(1143, 'wppa_max_execution_time', '30', 'yes'),
(1144, 'wppa_adminbarmenu_admin', 'yes', 'yes'),
(1145, 'wppa_adminbarmenu_frontend', 'yes', 'yes'),
(1146, 'wppa_feed_use_thumb', 'no', 'yes'),
(1147, 'wppa_enable_shortcode_wppa_set', 'no', 'yes'),
(1148, 'wppa_wppa_set_shortcodes', 'wppa_thumbtype,wppa_tn_margin', 'yes'),
(1149, 'wppa_og_tags_on', 'yes', 'yes'),
(1150, 'wppa_add_shortcode_to_post', 'no', 'yes'),
(1151, 'wppa_shortcode_to_add', '[wppa type="album" album="#related,desc"][/wppa]', 'yes'),
(1152, 'wppa_use_scripts_in_tinymce', 'no', 'yes'),
(1153, 'wppa_import_preview', 'yes', 'yes'),
(1154, 'wppa_audiostub_upload', '', 'yes'),
(1155, 'wppa_audiostub', 'audiostub.jpg', 'yes'),
(1156, 'wppa_max_album_newtime', '0', 'yes'),
(1157, 'wppa_max_photo_newtime', '0', 'yes'),
(1158, 'wppa_lasten_limit_new', 'no', 'yes'),
(1159, 'wppa_apply_newphoto_desc', 'no', 'yes'),
(1160, 'wppa_newphoto_description', '\r\n<a onClick="jQuery(\'.wppa-dtl\').css(\'display\', \'block\'); jQuery(\'.wppa-more\').css(\'display\', \'none\'); wppaOvlResize();">\r\n<div class="wppa-more">\r\nCamera info\r\n</div>\r\n</a>\r\n<a onClick="jQuery(\'.wppa-dtl\').css(\'display\', \'none\'); jQuery(\'.wppa-more\').css(\'display\', \'block\'); wppaOvlResize();">\r\n<div class="wppa-dtl" style="display:none;" >\r\nHide Camera info\r\n</div>\r\n</a>\r\n<div class="wppa-dtl" style="display:none;">\r\n<br />\r\n<style>\r\n.wppa-label { padding: 0 3px !important; border: none !important; }\r\n.wppa-value { padding: 0 3px 0 12px !important; border:none !important; }\r\n</style>\r\n<table style="margin:0; border:none;" >\r\n<tr><td class="wppa-label" >Date Time</td><td class="wppa-value" >E#0132</td></tr>\r\n<tr><td class="wppa-label" >Camera</td><td class="wppa-value" >E#0110</td></tr>\r\n<tr><td class="wppa-label" >Focal length</td><td class="wppa-value" >E#920A</td></tr>\r\n<tr><td class="wppa-label" >F-Stop</td><td class="wppa-value" >E#829D</td></tr>\r\n<tr><td class="wppa-label" >ISO Speed Rating</td><td class="wppa-value" >E#8827</td></tr>\r\n<tr><td class="wppa-label" >Exposure program</td><td class="wppa-value" >E#8822</td></tr>\r\n<tr><td class="wppa-label" >Metering mode</td><td class="wppa-value" >E#9207</td></tr>\r\n<tr><td class="wppa-label" >Flash</td><td class="wppa-value" >E#9209</td></tr>\r\n</table>\r\n</div>', 'yes'),
(1161, 'wppa_upload_limit_count', '0', 'yes'),
(1162, 'wppa_upload_limit_time', '0', 'yes'),
(1163, 'wppa_show_album_full', 'yes', 'yes'),
(1164, 'wppa_grant_an_album', 'no', 'yes'),
(1165, 'wppa_grant_name', 'display', 'yes'),
(1166, 'wppa_grant_parent', '0', 'yes'),
(1167, 'wppa_default_parent', '0', 'yes'),
(1168, 'wppa_default_parent_always', 'no', 'yes'),
(1169, 'wppa_max_albums', '0', 'yes'),
(1170, 'wppa_alt_is_restricted', 'no', 'yes'),
(1171, 'wppa_link_is_restricted', 'no', 'yes'),
(1172, 'wppa_covertype_is_restricted', 'no', 'yes'),
(1173, 'wppa_porder_restricted', 'no', 'yes'),
(1174, 'wppa_newphoto_name_method', 'filename', 'yes'),
(1175, 'wppa_default_coverimage_name', 'Coverphoto', 'yes'),
(1176, 'wppa_copy_timestamp', 'no', 'yes'),
(1177, 'wppa_copy_owner', 'no', 'yes'),
(1178, 'wppa_frontend_album_public', 'no', 'yes'),
(1179, 'wppa_optimize_new', 'no', 'yes'),
(1180, 'wppa_default_album_linktype', 'content', 'yes'),
(1181, 'wppa_search_linkpage', '0', 'yes'),
(1182, 'wppa_excl_sep', 'no', 'yes'),
(1183, 'wppa_search_tags', 'no', 'yes'),
(1184, 'wppa_search_cats', 'no', 'yes'),
(1185, 'wppa_search_comments', 'no', 'yes'),
(1186, 'wppa_photos_only', 'no', 'yes'),
(1187, 'wppa_max_search_photos', '250', 'yes'),
(1188, 'wppa_max_search_albums', '25', 'yes'),
(1189, 'wppa_tags_or_only', 'no', 'yes'),
(1190, 'wppa_wild_front', 'no', 'yes'),
(1191, 'wppa_search_display_type', 'content', 'yes'),
(1192, 'wppa_ss_name_max', '0', 'yes'),
(1193, 'wppa_ss_text_max', '0', 'yes'),
(1194, 'wppa_watermark_on', 'no', 'yes'),
(1195, 'wppa_watermark_file', 'specimen.png', 'yes'),
(1196, 'wppa_watermark_pos', 'cencen', 'yes'),
(1197, 'wppa_textual_watermark_type', 'tvstyle', 'yes'),
(1198, 'wppa_textual_watermark_text', 'Copyright (c) 2014 w#site \n w#filename (w#owner)', 'yes'),
(1199, 'wppa_textual_watermark_font', 'system', 'yes'),
(1200, 'wppa_textual_watermark_size', '10', 'yes'),
(1201, 'wppa_watermark_upload', '', 'yes'),
(1202, 'wppa_watermark_opacity', '20', 'yes'),
(1203, 'wppa_watermark_opacity_text', '80', 'yes'),
(1204, 'wppa_watermark_thumbs', 'no', 'yes'),
(1205, 'wppa_slide_order', '0,1,2,3,4,5,6,7,8,9,10', 'yes'),
(1206, 'wppa_slide_order_split', '0,1,2,3,4,5,6,7,8,9,10,11', 'yes'),
(1207, 'wppa_swap_namedesc', 'no', 'yes'),
(1208, 'wppa_split_namedesc', 'no', 'yes'),
(1209, 'wppa_keep_source_admin', 'yes', 'yes'),
(1210, 'wppa_keep_source_frontend', 'yes', 'yes'),
(1211, 'wppa_source_dir', '/Users/sarahlshowers/Dropbox/Sarah/dev/kevin-smith-transpotation-group/app/wp-content/uploads/wppa-source', 'yes'),
(1212, 'wppa_keep_sync', 'yes', 'yes'),
(1213, 'wppa_remake_add', 'yes', 'yes'),
(1214, 'wppa_save_iptc', 'no', 'yes'),
(1215, 'wppa_save_exif', 'no', 'yes'),
(1216, 'wppa_exif_max_array_size', '10', 'yes'),
(1217, 'wppa_chgsrc_is_restricted', 'no', 'yes'),
(1218, 'wppa_ext_status_restricted', 'no', 'yes'),
(1219, 'wppa_newpag_create', 'no', 'yes'),
(1220, 'wppa_newpag_content', '[wppa type="cover" album="w#album" align="center"][/wppa]', 'yes'),
(1221, 'wppa_newpag_type', 'page', 'yes'),
(1222, 'wppa_newpag_status', 'publish', 'yes'),
(1223, 'wppa_pl_dirname', 'wppa-pl', 'yes'),
(1224, 'wppa_cp_points_comment', '0', 'yes'),
(1225, 'wppa_cp_points_rating', '0', 'yes'),
(1226, 'wppa_cp_points_upload', '0', 'yes'),
(1227, 'wppa_use_scabn', 'no', 'yes'),
(1228, 'wppa_use_CMTooltipGlossary', 'no', 'yes'),
(1229, 'wppa_cdn_service', '', 'yes'),
(1230, 'wppa_cdn_cloud_name', '', 'yes'),
(1231, 'wppa_cdn_api_key', '', 'yes'),
(1232, 'wppa_cdn_api_secret', '', 'yes'),
(1233, 'wppa_cdn_service_update', 'no', 'yes'),
(1234, 'wppa_delete_all_from_cloudinary', '', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1235, 'wppa_gpx_implementation', 'none', 'yes'),
(1236, 'wppa_map_height', '300', 'yes'),
(1237, 'wppa_map_apikey', '', 'yes'),
(1238, 'wppa_gpx_shortcode', '[map style="width: auto; height:300px; margin:0; " marker="yes" lat="w#lat" lon="w#lon"]', 'yes'),
(1239, 'wppa_fotomoto_on', 'no', 'yes'),
(1240, 'wppa_fotomoto_fontsize', '', 'yes'),
(1241, 'wppa_fotomoto_hide_when_running', 'no', 'yes'),
(1242, 'wppa_fotomoto_min_width', '400', 'yes'),
(1243, 'wppa_widgettitle', 'Photo of the day', 'yes'),
(1244, 'wppa_widget_linkurl', 'Type your custom url here', 'yes'),
(1245, 'wppa_widget_linktitle', 'Type the title here', 'yes'),
(1246, 'wppa_widget_subtitle', 'none', 'yes'),
(1247, 'wppa_widget_album', '0', 'yes'),
(1248, 'wppa_widget_photo', '', 'yes'),
(1249, 'wppa_potd_align', 'center', 'yes'),
(1250, 'wppa_widget_method', '1', 'yes'),
(1251, 'wppa_widget_period', '168', 'yes'),
(1252, 'wppa_widget_width', '200', 'yes'),
(1253, 'wppa_potd_widget_width', '200', 'yes'),
(1254, 'wppa_toptenwidgettitle', 'Top Ten Photos', 'yes'),
(1255, 'wppa_thumbnailwidgettitle', 'Thumbnail Photos', 'yes'),
(1256, 'wppa_searchwidgettitle', 'Search photos', 'yes'),
(1257, 'wppa_comadmin_show', 'all', 'yes'),
(1258, 'wppa_comadmin_order', 'timestamp', 'yes'),
(1259, 'wppa_qr_size', '200', 'yes'),
(1260, 'wppa_qr_color', '#000000', 'yes'),
(1261, 'wppa_qr_bgcolor', '#FFFFFF', 'yes'),
(1270, 'gallery-bank-updation-check-url', 'http://tech-banker.com/wp-admin/admin-ajax.php', 'yes'),
(1271, 'gallery-bank-pro-edition', '3.1', 'yes'),
(1274, 'gallery-bank-demo', '1', 'yes'),
(1278, 'wppa_last_schedule_check', '1436146743', 'yes'),
(1279, 'wppa_wp_wppa_albums_lastkey', '1', 'no'),
(1281, 'wppa_wp_wppa_index_lastkey', '12', 'no'),
(1282, 'wppa_catlist', 'a:0:{}', 'yes'),
(1283, 'wppa_counts', 'a:0:{}', 'yes'),
(1284, 'wppa_counts_tree', 'a:0:{}', 'yes'),
(1293, 'wppa_wp_wppa_photos_lastkey', '1', 'no'),
(1294, 'wppa_upldr_cache', 'a:0:{}', 'yes'),
(1297, 'wppa_editor_album_limit_count', '0', 'yes'),
(1298, 'wppa_author_album_limit_count', '0', 'yes'),
(1299, 'wppa_contributor_album_limit_count', '0', 'yes'),
(1300, 'wppa_subscriber_album_limit_count', '0', 'yes'),
(1301, 'wppa_loggedout_album_limit_count', '0', 'yes'),
(1302, 'wppa_taglist', 'a:0:{}', 'yes'),
(1316, 'wppa_i_audio', 'no', 'yes'),
(1320, 'wppa_cached_options', 'a:695:{s:13:"wppa_revision";s:4:"6116";s:12:"wppa_prevrev";s:3:"100";s:14:"wppa_max_users";s:4:"1000";s:17:"wppa_i_responsive";s:3:"yes";s:15:"wppa_i_downsize";s:3:"yes";s:13:"wppa_i_source";s:3:"yes";s:17:"wppa_i_userupload";s:2:"no";s:13:"wppa_i_rating";s:2:"no";s:14:"wppa_i_comment";s:2:"no";s:12:"wppa_i_share";s:2:"no";s:11:"wppa_i_iptc";s:2:"no";s:11:"wppa_i_exif";s:2:"no";s:10:"wppa_i_gpx";s:2:"no";s:15:"wppa_i_fotomoto";s:2:"no";s:12:"wppa_i_video";s:2:"no";s:11:"wppa_i_done";s:4:"done";s:13:"wppa_colwidth";s:4:"auto";s:21:"wppa_initial_colwidth";s:3:"640";s:21:"wppa_resize_on_upload";s:3:"yes";s:14:"wppa_resize_to";s:8:"1024x768";s:15:"wppa_min_thumbs";s:1:"1";s:11:"wppa_bwidth";s:1:"1";s:12:"wppa_bradius";s:1:"6";s:16:"wppa_box_spacing";s:1:"8";s:18:"wppa_pagelinks_max";s:1:"7";s:24:"wppa_max_filename_length";s:1:"0";s:25:"wppa_max_photoname_length";s:1:"0";s:13:"wppa_fullsize";s:3:"640";s:14:"wppa_maxheight";s:3:"480";s:12:"wppa_enlarge";s:2:"no";s:27:"wppa_fullimage_border_width";s:0:"";s:15:"wppa_numbar_max";s:2:"10";s:15:"wppa_share_size";s:2:"32";s:18:"wppa_mini_treshold";s:3:"500";s:23:"wppa_slideshow_pagesize";s:1:"0";s:14:"wppa_thumbsize";s:3:"100";s:18:"wppa_thumbsize_alt";s:3:"130";s:17:"wppa_thumb_aspect";s:8:"0:0:none";s:13:"wppa_tf_width";s:3:"100";s:17:"wppa_tf_width_alt";s:3:"130";s:14:"wppa_tf_height";s:3:"150";s:18:"wppa_tf_height_alt";s:3:"180";s:14:"wppa_tn_margin";s:1:"4";s:15:"wppa_thumb_auto";s:3:"yes";s:20:"wppa_thumb_page_size";s:1:"0";s:14:"wppa_popupsize";s:3:"150";s:22:"wppa_use_thumbs_if_fit";s:3:"yes";s:20:"wppa_max_cover_width";s:4:"1024";s:20:"wppa_cover_minheight";s:1:"0";s:31:"wppa_head_and_text_frame_height";s:1:"0";s:22:"wppa_text_frame_height";s:2:"54";s:14:"wppa_smallsize";s:3:"150";s:20:"wppa_smallsize_multi";s:3:"100";s:24:"wppa_coversize_is_height";s:2:"no";s:20:"wppa_album_page_size";s:1:"0";s:15:"wppa_rating_max";s:1:"5";s:16:"wppa_rating_prec";s:1:"2";s:18:"wppa_gravatar_size";s:2:"40";s:15:"wppa_ratspacing";s:2:"30";s:17:"wppa_topten_count";s:2:"10";s:16:"wppa_topten_size";s:2:"86";s:17:"wppa_comten_count";s:2:"10";s:16:"wppa_comten_size";s:2:"86";s:17:"wppa_featen_count";s:2:"10";s:16:"wppa_featen_size";s:2:"86";s:27:"wppa_thumbnail_widget_count";s:2:"10";s:26:"wppa_thumbnail_widget_size";s:2:"86";s:17:"wppa_lasten_count";s:2:"10";s:16:"wppa_lasten_size";s:2:"86";s:23:"wppa_album_widget_count";s:2:"10";s:22:"wppa_album_widget_size";s:2:"86";s:18:"wppa_related_count";s:2:"10";s:17:"wppa_tagcloud_min";s:1:"8";s:17:"wppa_tagcloud_max";s:2:"24";s:18:"wppa_ovl_txt_lines";s:4:"auto";s:14:"wppa_magnifier";s:19:"magnifier-small.png";s:16:"wppa_video_width";s:3:"640";s:17:"wppa_video_height";s:3:"480";s:21:"wppa_show_bread_posts";s:3:"yes";s:21:"wppa_show_bread_pages";s:3:"yes";s:17:"wppa_bc_on_search";s:3:"yes";s:17:"wppa_bc_on_topten";s:3:"yes";s:17:"wppa_bc_on_lasten";s:3:"yes";s:17:"wppa_bc_on_comten";s:3:"yes";s:17:"wppa_bc_on_featen";s:3:"yes";s:14:"wppa_bc_on_tag";s:3:"yes";s:18:"wppa_bc_on_related";s:3:"yes";s:14:"wppa_show_home";s:3:"yes";s:14:"wppa_show_page";s:3:"yes";s:17:"wppa_bc_separator";s:5:"raquo";s:11:"wppa_bc_txt";s:80:"&lt;span style=&quot;color:red; font_size:24px;&quot;&gt;&amp;bull;&lt;/span&gt;";s:11:"wppa_bc_url";s:77:"http://localhost:9000/wp-content/plugins/wp-photo-album-plus/images/arrow.gif";s:17:"wppa_pagelink_pos";s:6:"bottom";s:23:"wppa_bc_slide_thumblink";s:2:"no";s:30:"wppa_show_startstop_navigation";s:3:"yes";s:27:"wppa_show_browse_navigation";s:3:"yes";s:14:"wppa_filmstrip";s:3:"yes";s:19:"wppa_film_show_glue";s:3:"yes";s:19:"wppa_show_full_name";s:3:"yes";s:20:"wppa_show_full_owner";s:2:"no";s:19:"wppa_show_full_desc";s:3:"yes";s:20:"wppa_hide_when_empty";s:2:"no";s:14:"wppa_rating_on";s:2:"no";s:23:"wppa_dislike_mail_every";s:1:"5";s:24:"wppa_dislike_set_pending";s:1:"0";s:19:"wppa_dislike_delete";s:1:"0";s:23:"wppa_dislike_show_count";s:3:"yes";s:24:"wppa_rating_display_type";s:7:"graphic";s:20:"wppa_show_avg_rating";s:3:"yes";s:18:"wppa_show_comments";s:2:"no";s:21:"wppa_comment_gravatar";s:9:"monsterid";s:25:"wppa_comment_gravatar_url";s:7:"http://";s:13:"wppa_show_bbb";s:2:"no";s:13:"wppa_show_ubb";s:2:"no";s:14:"wppa_custom_on";s:2:"no";s:19:"wppa_custom_content";s:174:"<div style="color:red; font-size:24px; font-weight:bold; text-align:center;">Hello world!</div><div style="text-align:center;" >You can change this text in Table II-B15</div>";s:25:"wppa_show_slideshownumbar";s:2:"no";s:14:"wppa_show_iptc";s:2:"no";s:19:"wppa_show_iptc_open";s:2:"no";s:14:"wppa_show_exif";s:2:"no";s:19:"wppa_show_exif_open";s:2:"no";s:13:"wppa_share_on";s:2:"no";s:28:"wppa_share_hide_when_running";s:3:"yes";s:20:"wppa_share_on_widget";s:2:"no";s:20:"wppa_share_on_thumbs";s:2:"no";s:22:"wppa_share_on_lightbox";s:2:"no";s:20:"wppa_share_on_mphoto";s:2:"no";s:13:"wppa_share_qr";s:2:"no";s:19:"wppa_share_facebook";s:3:"yes";s:18:"wppa_share_twitter";s:3:"yes";s:17:"wppa_share_google";s:3:"yes";s:20:"wppa_share_pinterest";s:3:"yes";s:19:"wppa_share_linkedin";s:3:"yes";s:22:"wppa_facebook_comments";s:3:"yes";s:18:"wppa_facebook_like";s:3:"yes";s:15:"wppa_fb_display";s:8:"standard";s:22:"wppa_facebook_admin_id";s:0:"";s:20:"wppa_facebook_app_id";s:0:"";s:22:"wppa_load_facebook_sdk";s:3:"yes";s:23:"wppa_share_single_image";s:3:"yes";s:20:"wppa_thumb_text_name";s:3:"yes";s:21:"wppa_thumb_text_owner";s:2:"no";s:20:"wppa_thumb_text_desc";s:3:"yes";s:22:"wppa_thumb_text_rating";s:3:"yes";s:25:"wppa_thumb_text_viewcount";s:2:"no";s:16:"wppa_thumb_video";s:2:"no";s:16:"wppa_thumb_audio";s:3:"yes";s:20:"wppa_popup_text_name";s:3:"yes";s:21:"wppa_popup_text_owner";s:2:"no";s:20:"wppa_popup_text_desc";s:3:"yes";s:26:"wppa_popup_text_desc_strip";s:2:"no";s:22:"wppa_popup_text_rating";s:3:"yes";s:25:"wppa_popup_text_ncomments";s:3:"yes";s:22:"wppa_show_rating_count";s:2:"no";s:25:"wppa_albdesc_on_thumbarea";s:4:"none";s:25:"wppa_albname_on_thumbarea";s:4:"none";s:25:"wppa_show_empty_thumblist";s:2:"no";s:15:"wppa_edit_thumb";s:3:"yes";s:20:"wppa_show_cover_text";s:3:"yes";s:21:"wppa_enable_slideshow";s:3:"yes";s:29:"wppa_show_slideshowbrowselink";s:3:"yes";s:18:"wppa_show_viewlink";s:3:"yes";s:19:"wppa_show_treecount";s:2:"no";s:14:"wppa_show_cats";s:2:"no";s:22:"wppa_skip_empty_albums";s:3:"yes";s:20:"wppa_show_bbb_widget";s:2:"no";s:20:"wppa_show_ubb_widget";s:2:"no";s:27:"wppa_show_albwidget_tooltip";s:3:"yes";s:18:"wppa_ovl_close_txt";s:5:"Close";s:14:"wppa_ovl_theme";s:5:"black";s:16:"wppa_ovl_bgcolor";s:5:"black";s:19:"wppa_ovl_slide_name";s:2:"no";s:19:"wppa_ovl_slide_desc";s:3:"yes";s:19:"wppa_ovl_thumb_name";s:3:"yes";s:19:"wppa_ovl_thumb_desc";s:2:"no";s:18:"wppa_ovl_potd_name";s:3:"yes";s:18:"wppa_ovl_potd_desc";s:2:"no";s:20:"wppa_ovl_sphoto_name";s:3:"yes";s:20:"wppa_ovl_sphoto_desc";s:2:"no";s:20:"wppa_ovl_mphoto_name";s:3:"yes";s:20:"wppa_ovl_mphoto_desc";s:2:"no";s:17:"wppa_ovl_alw_name";s:3:"yes";s:17:"wppa_ovl_alw_desc";s:2:"no";s:19:"wppa_ovl_cover_name";s:3:"yes";s:19:"wppa_ovl_cover_desc";s:2:"no";s:21:"wppa_ovl_show_counter";s:3:"yes";s:18:"wppa_ovl_add_owner";s:2:"no";s:23:"wppa_ovl_show_startstop";s:3:"yes";s:21:"wppa_ovl_show_legenda";s:3:"yes";s:16:"wppa_show_zoomin";s:3:"yes";s:22:"wppa_owner_on_new_line";s:2:"no";s:19:"wppa_user_upload_on";s:2:"no";s:22:"wppa_user_upload_login";s:3:"yes";s:16:"wppa_ajax_upload";s:3:"yes";s:17:"wppa_copyright_on";s:3:"yes";s:21:"wppa_copyright_notice";s:76:"<span style="color:red" >Warning: Do not upload copyrighted material!</span>";s:19:"wppa_watermark_user";s:2:"no";s:14:"wppa_name_user";s:3:"yes";s:29:"wppa_apply_newphoto_desc_user";s:2:"no";s:14:"wppa_desc_user";s:3:"yes";s:21:"wppa_fe_custom_fields";s:2:"no";s:19:"wppa_fe_upload_tags";s:2:"no";s:22:"wppa_up_tagselbox_on_1";s:3:"yes";s:25:"wppa_up_tagselbox_multi_1";s:3:"yes";s:25:"wppa_up_tagselbox_title_1";s:12:"Select tags:";s:27:"wppa_up_tagselbox_content_1";s:0:"";s:22:"wppa_up_tagselbox_on_2";s:2:"no";s:25:"wppa_up_tagselbox_multi_2";s:3:"yes";s:25:"wppa_up_tagselbox_title_2";s:12:"Select tags:";s:27:"wppa_up_tagselbox_content_2";s:0:"";s:22:"wppa_up_tagselbox_on_3";s:2:"no";s:25:"wppa_up_tagselbox_multi_3";s:3:"yes";s:25:"wppa_up_tagselbox_title_3";s:12:"Select tags:";s:27:"wppa_up_tagselbox_content_3";s:0:"";s:20:"wppa_up_tag_input_on";s:3:"yes";s:23:"wppa_up_tag_input_title";s:15:"Enter new tags:";s:19:"wppa_up_tag_preview";s:3:"yes";s:18:"wppa_custom_fields";s:2:"no";s:21:"wppa_custom_caption_0";s:0:"";s:21:"wppa_custom_visible_0";s:2:"no";s:21:"wppa_custom_caption_1";s:0:"";s:21:"wppa_custom_visible_1";s:2:"no";s:21:"wppa_custom_caption_2";s:0:"";s:21:"wppa_custom_visible_2";s:2:"no";s:21:"wppa_custom_caption_3";s:0:"";s:21:"wppa_custom_visible_3";s:2:"no";s:21:"wppa_custom_caption_4";s:0:"";s:21:"wppa_custom_visible_4";s:2:"no";s:21:"wppa_custom_caption_5";s:0:"";s:21:"wppa_custom_visible_5";s:2:"no";s:21:"wppa_custom_caption_6";s:0:"";s:21:"wppa_custom_visible_6";s:2:"no";s:21:"wppa_custom_caption_7";s:0:"";s:21:"wppa_custom_visible_7";s:2:"no";s:21:"wppa_custom_caption_8";s:0:"";s:21:"wppa_custom_visible_8";s:2:"no";s:21:"wppa_custom_caption_9";s:0:"";s:21:"wppa_custom_visible_9";s:2:"no";s:15:"wppa_close_text";s:5:"Close";s:17:"wppa_bgcolor_even";s:7:"#eeeeee";s:16:"wppa_bcolor_even";s:7:"#cccccc";s:16:"wppa_bgcolor_alt";s:7:"#dddddd";s:15:"wppa_bcolor_alt";s:7:"#bbbbbb";s:22:"wppa_bgcolor_thumbnail";s:7:"#000000";s:16:"wppa_bgcolor_nav";s:7:"#dddddd";s:15:"wppa_bcolor_nav";s:7:"#bbbbbb";s:21:"wppa_bgcolor_namedesc";s:7:"#dddddd";s:20:"wppa_bcolor_namedesc";s:7:"#bbbbbb";s:16:"wppa_bgcolor_com";s:7:"#dddddd";s:15:"wppa_bcolor_com";s:7:"#bbbbbb";s:16:"wppa_bgcolor_img";s:7:"#eeeeee";s:15:"wppa_bcolor_img";s:0:"";s:20:"wppa_bgcolor_fullimg";s:7:"#cccccc";s:19:"wppa_bcolor_fullimg";s:7:"#777777";s:16:"wppa_bgcolor_cus";s:7:"#dddddd";s:15:"wppa_bcolor_cus";s:7:"#bbbbbb";s:19:"wppa_bgcolor_numbar";s:7:"#cccccc";s:18:"wppa_bcolor_numbar";s:7:"#cccccc";s:26:"wppa_bgcolor_numbar_active";s:7:"#333333";s:25:"wppa_bcolor_numbar_active";s:7:"#333333";s:17:"wppa_bgcolor_iptc";s:7:"#dddddd";s:16:"wppa_bcolor_iptc";s:7:"#bbbbbb";s:17:"wppa_bgcolor_exif";s:7:"#dddddd";s:16:"wppa_bcolor_exif";s:7:"#bbbbbb";s:18:"wppa_bgcolor_share";s:7:"#dddddd";s:17:"wppa_bcolor_share";s:7:"#bbbbbb";s:19:"wppa_bgcolor_upload";s:7:"#dddddd";s:18:"wppa_bcolor_upload";s:7:"#bbbbbb";s:21:"wppa_bgcolor_multitag";s:7:"#dddddd";s:20:"wppa_bcolor_multitag";s:7:"#bbbbbb";s:21:"wppa_bgcolor_tagcloud";s:7:"#dddddd";s:20:"wppa_bcolor_tagcloud";s:7:"#bbbbbb";s:22:"wppa_bgcolor_superview";s:7:"#dddddd";s:21:"wppa_bcolor_superview";s:7:"#bbbbbb";s:19:"wppa_bgcolor_search";s:7:"#dddddd";s:18:"wppa_bcolor_search";s:7:"#bbbbbb";s:19:"wppa_bgcolor_bestof";s:7:"#dddddd";s:18:"wppa_bcolor_bestof";s:7:"#bbbbbb";s:15:"wppa_allow_ajax";s:3:"yes";s:19:"wppa_ajax_non_admin";s:3:"yes";s:28:"wppa_use_photo_names_in_urls";s:2:"no";s:28:"wppa_use_album_names_in_urls";s:2:"no";s:20:"wppa_use_short_qargs";s:3:"yes";s:21:"wppa_use_pretty_links";s:3:"yes";s:23:"wppa_update_addressline";s:3:"yes";s:28:"wppa_render_shortcode_always";s:2:"no";s:21:"wppa_track_viewcounts";s:3:"yes";s:14:"wppa_auto_page";s:2:"no";s:19:"wppa_auto_page_type";s:5:"photo";s:20:"wppa_auto_page_links";s:6:"bottom";s:21:"wppa_defer_javascript";s:2:"no";s:15:"wppa_inline_css";s:3:"yes";s:17:"wppa_custom_style";s:0:"";s:26:"wppa_use_custom_style_file";s:2:"no";s:26:"wppa_use_custom_theme_file";s:2:"no";s:25:"wppa_cre_uploads_htaccess";s:2:"no";s:19:"wppa_debug_trace_on";s:2:"no";s:21:"wppa_lazy_or_htmlcomp";s:2:"no";s:18:"wppa_relative_urls";s:2:"no";s:17:"wppa_thumbs_first";s:2:"no";s:16:"wppa_login_links";s:3:"yes";s:17:"wppa_enable_video";s:2:"no";s:17:"wppa_enable_audio";s:2:"no";s:15:"wppa_fullvalign";s:6:"center";s:15:"wppa_fullhalign";s:6:"center";s:16:"wppa_start_slide";s:3:"run";s:20:"wppa_start_slideonly";s:3:"yes";s:22:"wppa_start_slide_video";s:2:"no";s:22:"wppa_start_slide_audio";s:2:"no";s:19:"wppa_animation_type";s:8:"fadeover";s:22:"wppa_slideshow_timeout";s:4:"2500";s:20:"wppa_animation_speed";s:3:"800";s:16:"wppa_slide_pause";s:2:"no";s:15:"wppa_slide_wrap";s:3:"yes";s:19:"wppa_fulldesc_align";s:6:"center";s:14:"wppa_clean_pbr";s:3:"yes";s:24:"wppa_run_wpautop_on_desc";s:2:"no";s:23:"wppa_auto_open_comments";s:3:"yes";s:20:"wppa_film_hover_goto";s:2:"no";s:16:"wppa_slide_swipe";s:2:"no";s:30:"wppa_slideshow_page_allow_ajax";s:3:"yes";s:19:"wppa_list_photos_by";s:1:"0";s:14:"wppa_thumbtype";s:7:"default";s:20:"wppa_thumbphoto_left";s:2:"no";s:11:"wppa_valign";s:6:"center";s:22:"wppa_use_thumb_opacity";s:3:"yes";s:18:"wppa_thumb_opacity";s:2:"95";s:20:"wppa_use_thumb_popup";s:3:"yes";s:20:"wppa_align_thumbtext";s:2:"no";s:19:"wppa_list_albums_by";s:1:"0";s:15:"wppa_main_photo";s:1:"0";s:19:"wppa_coverphoto_pos";s:5:"right";s:22:"wppa_use_cover_opacity";s:3:"yes";s:18:"wppa_cover_opacity";s:2:"85";s:15:"wppa_cover_type";s:7:"default";s:18:"wppa_imgfact_count";s:2:"10";s:17:"wppa_rating_login";s:3:"yes";s:18:"wppa_rating_change";s:3:"yes";s:17:"wppa_rating_multi";s:2:"no";s:22:"wppa_allow_owner_votes";s:3:"yes";s:23:"wppa_vote_needs_comment";s:2:"no";s:18:"wppa_dislike_value";s:2:"-5";s:21:"wppa_next_on_callback";s:2:"no";s:17:"wppa_star_opacity";s:2:"20";s:21:"wppa_vote_button_text";s:12:"Vote for me!";s:22:"wppa_voted_button_text";s:12:"Voted for me";s:15:"wppa_vote_thumb";s:2:"no";s:22:"wppa_medal_bronze_when";s:1:"5";s:22:"wppa_medal_silver_when";s:2:"10";s:20:"wppa_medal_gold_when";s:2:"15";s:16:"wppa_medal_color";s:1:"2";s:19:"wppa_medal_position";s:8:"botright";s:18:"wppa_topten_sortby";s:11:"mean_rating";s:18:"wppa_comment_login";s:2:"no";s:18:"wppa_comments_desc";s:2:"no";s:23:"wppa_comment_moderation";s:6:"logout";s:27:"wppa_comment_email_required";s:3:"yes";s:19:"wppa_comment_notify";s:4:"none";s:24:"wppa_com_notify_previous";s:2:"no";s:25:"wppa_comment_notify_added";s:3:"yes";s:23:"wppa_comten_alt_display";s:2:"no";s:25:"wppa_comten_alt_thumbsize";s:2:"75";s:26:"wppa_comment_smiley_picker";s:2:"no";s:19:"wppa_mail_upl_email";s:3:"yes";s:16:"wppa_ovl_opacity";s:2:"80";s:16:"wppa_ovl_onclick";s:4:"none";s:13:"wppa_ovl_anim";s:3:"300";s:14:"wppa_ovl_slide";s:4:"5000";s:22:"wppa_ovl_chrome_at_top";s:3:"yes";s:20:"wppa_lightbox_global";s:2:"no";s:24:"wppa_lightbox_global_set";s:2:"no";s:12:"wppa_lb_hres";s:2:"no";s:20:"wppa_ovl_video_start";s:3:"yes";s:20:"wppa_ovl_audio_start";s:3:"yes";s:21:"wppa_fontfamily_title";s:0:"";s:19:"wppa_fontsize_title";s:0:"";s:20:"wppa_fontcolor_title";s:0:"";s:21:"wppa_fontweight_title";s:4:"bold";s:24:"wppa_fontfamily_fulldesc";s:0:"";s:22:"wppa_fontsize_fulldesc";s:0:"";s:23:"wppa_fontcolor_fulldesc";s:0:"";s:24:"wppa_fontweight_fulldesc";s:6:"normal";s:25:"wppa_fontfamily_fulltitle";s:0:"";s:23:"wppa_fontsize_fulltitle";s:0:"";s:24:"wppa_fontcolor_fulltitle";s:0:"";s:25:"wppa_fontweight_fulltitle";s:6:"normal";s:19:"wppa_fontfamily_nav";s:0:"";s:17:"wppa_fontsize_nav";s:0:"";s:18:"wppa_fontcolor_nav";s:0:"";s:19:"wppa_fontweight_nav";s:6:"normal";s:21:"wppa_fontfamily_thumb";s:0:"";s:19:"wppa_fontsize_thumb";s:0:"";s:20:"wppa_fontcolor_thumb";s:0:"";s:21:"wppa_fontweight_thumb";s:6:"normal";s:19:"wppa_fontfamily_box";s:0:"";s:17:"wppa_fontsize_box";s:0:"";s:18:"wppa_fontcolor_box";s:0:"";s:19:"wppa_fontweight_box";s:6:"normal";s:22:"wppa_fontfamily_numbar";s:0:"";s:20:"wppa_fontsize_numbar";s:0:"";s:21:"wppa_fontcolor_numbar";s:7:"#777777";s:22:"wppa_fontweight_numbar";s:6:"normal";s:29:"wppa_fontfamily_numbar_active";s:0:"";s:27:"wppa_fontsize_numbar_active";s:0:"";s:28:"wppa_fontcolor_numbar_active";s:7:"#777777";s:29:"wppa_fontweight_numbar_active";s:4:"bold";s:24:"wppa_fontfamily_lightbox";s:0:"";s:22:"wppa_fontsize_lightbox";s:2:"10";s:23:"wppa_fontcolor_lightbox";s:0:"";s:24:"wppa_fontweight_lightbox";s:4:"bold";s:26:"wppa_fontsize_widget_thumb";s:1:"9";s:20:"wppa_sphoto_linktype";s:5:"photo";s:20:"wppa_sphoto_linkpage";s:1:"0";s:17:"wppa_sphoto_blank";s:2:"no";s:20:"wppa_sphoto_overrule";s:2:"no";s:20:"wppa_mphoto_linktype";s:5:"photo";s:20:"wppa_mphoto_linkpage";s:1:"0";s:17:"wppa_mphoto_blank";s:2:"no";s:20:"wppa_mphoto_overrule";s:2:"no";s:19:"wppa_thumb_linktype";s:5:"photo";s:19:"wppa_thumb_linkpage";s:1:"0";s:16:"wppa_thumb_blank";s:2:"no";s:19:"wppa_thumb_overrule";s:2:"no";s:27:"wppa_topten_widget_linktype";s:5:"photo";s:27:"wppa_topten_widget_linkpage";s:1:"0";s:17:"wppa_topten_blank";s:2:"no";s:20:"wppa_topten_overrule";s:2:"no";s:33:"wppa_topten_widget_album_linkpage";s:1:"0";s:27:"wppa_featen_widget_linktype";s:5:"photo";s:27:"wppa_featen_widget_linkpage";s:1:"0";s:17:"wppa_featen_blank";s:2:"no";s:20:"wppa_featen_overrule";s:2:"no";s:30:"wppa_slideonly_widget_linktype";s:6:"widget";s:30:"wppa_slideonly_widget_linkpage";s:1:"0";s:19:"wppa_sswidget_blank";s:2:"no";s:22:"wppa_sswidget_overrule";s:2:"no";s:20:"wppa_widget_linktype";s:5:"album";s:20:"wppa_widget_linkpage";s:1:"0";s:15:"wppa_potd_blank";s:2:"no";s:24:"wppa_potdwidget_overrule";s:2:"no";s:22:"wppa_coverimg_linktype";s:4:"same";s:22:"wppa_coverimg_linkpage";s:1:"0";s:19:"wppa_coverimg_blank";s:2:"no";s:22:"wppa_coverimg_overrule";s:2:"no";s:28:"wppa_comment_widget_linktype";s:5:"photo";s:28:"wppa_comment_widget_linkpage";s:1:"0";s:18:"wppa_comment_blank";s:2:"no";s:21:"wppa_comment_overrule";s:2:"no";s:23:"wppa_slideshow_linktype";s:4:"none";s:23:"wppa_slideshow_linkpage";s:1:"0";s:20:"wppa_slideshow_blank";s:2:"no";s:23:"wppa_slideshow_overrule";s:2:"no";s:30:"wppa_thumbnail_widget_linktype";s:5:"photo";s:30:"wppa_thumbnail_widget_linkpage";s:1:"0";s:30:"wppa_thumbnail_widget_overrule";s:2:"no";s:27:"wppa_thumbnail_widget_blank";s:2:"no";s:18:"wppa_film_linktype";s:9:"slideshow";s:15:"wppa_film_blank";s:2:"no";s:18:"wppa_film_overrule";s:2:"no";s:27:"wppa_lasten_widget_linktype";s:5:"photo";s:27:"wppa_lasten_widget_linkpage";s:1:"0";s:17:"wppa_lasten_blank";s:2:"no";s:20:"wppa_lasten_overrule";s:2:"no";s:20:"wppa_art_monkey_link";s:4:"none";s:26:"wppa_art_monkey_popup_link";s:4:"file";s:25:"wppa_artmonkey_use_source";s:2:"no";s:23:"wppa_art_monkey_display";s:6:"button";s:27:"wppa_art_monkey_on_lightbox";s:2:"no";s:25:"wppa_allow_download_album";s:2:"no";s:26:"wppa_download_album_source";s:3:"yes";s:26:"wppa_album_widget_linktype";s:7:"content";s:26:"wppa_album_widget_linkpage";s:1:"0";s:23:"wppa_album_widget_blank";s:2:"no";s:22:"wppa_tagcloud_linktype";s:5:"album";s:22:"wppa_tagcloud_linkpage";s:1:"0";s:19:"wppa_tagcloud_blank";s:2:"no";s:22:"wppa_multitag_linktype";s:5:"album";s:22:"wppa_multitag_linkpage";s:1:"0";s:19:"wppa_multitag_blank";s:2:"no";s:24:"wppa_super_view_linkpage";s:1:"0";s:26:"wppa_upldr_widget_linkpage";s:1:"0";s:27:"wppa_bestof_widget_linkpage";s:1:"0";s:25:"wppa_supersearch_linkpage";s:1:"0";s:36:"wppa_album_navigator_widget_linktype";s:6:"thumbs";s:36:"wppa_album_navigator_widget_linkpage";s:1:"0";s:15:"wppa_owner_only";s:2:"no";s:22:"wppa_upload_owner_only";s:2:"no";s:23:"wppa_user_album_edit_on";s:2:"no";s:20:"wppa_upload_moderate";s:2:"no";s:16:"wppa_upload_edit";s:2:"no";s:27:"wppa_owner_moderate_comment";s:2:"no";s:18:"wppa_upload_notify";s:2:"no";s:26:"wppa_upload_backend_notify";s:2:"no";s:20:"wppa_upload_one_only";s:2:"no";s:22:"wppa_memcheck_frontend";s:3:"yes";s:19:"wppa_memcheck_admin";s:3:"yes";s:20:"wppa_comment_captcha";s:2:"no";s:16:"wppa_spam_maxage";s:4:"none";s:19:"wppa_user_create_on";s:2:"no";s:22:"wppa_user_create_login";s:3:"yes";s:20:"wppa_user_destroy_on";s:2:"no";s:27:"wppa_upload_fronend_maxsize";s:1:"0";s:14:"wppa_void_dups";s:2:"no";s:30:"wppa_editor_upload_limit_count";s:1:"0";s:29:"wppa_editor_upload_limit_time";s:1:"0";s:30:"wppa_author_upload_limit_count";s:1:"0";s:29:"wppa_author_upload_limit_time";s:1:"0";s:35:"wppa_contributor_upload_limit_count";s:1:"0";s:34:"wppa_contributor_upload_limit_time";s:1:"0";s:34:"wppa_subscriber_upload_limit_count";s:1:"0";s:33:"wppa_subscriber_upload_limit_time";s:1:"0";s:33:"wppa_loggedout_upload_limit_count";s:1:"0";s:32:"wppa_loggedout_upload_limit_time";s:1:"0";s:19:"wppa_blacklist_user";s:0:"";s:22:"wppa_un_blacklist_user";s:0:"";s:23:"wppa_photo_owner_change";s:2:"no";s:10:"wppa_setup";s:0:"";s:11:"wppa_backup";s:0:"";s:14:"wppa_load_skin";s:0:"";s:13:"wppa_skinfile";s:7:"default";s:17:"wppa_regen_thumbs";s:0:"";s:26:"wppa_regen_thumbs_skip_one";s:0:"";s:11:"wppa_rerate";s:0:"";s:12:"wppa_cleanup";s:0:"";s:10:"wppa_recup";s:0:"";s:16:"wppa_file_system";s:4:"flat";s:11:"wppa_remake";s:0:"";s:20:"wppa_remake_skip_one";s:0:"";s:19:"wppa_errorlog_purge";s:0:"";s:15:"wppa_comp_sizes";s:0:"";s:17:"wppa_rating_clear";s:2:"no";s:20:"wppa_viewcount_clear";s:2:"no";s:15:"wppa_iptc_clear";s:0:"";s:15:"wppa_exif_clear";s:0:"";s:28:"wppa_apply_new_photodesc_all";s:0:"";s:17:"wppa_remake_index";s:0:"";s:17:"wppa_extend_index";s:0:"";s:15:"wppa_list_index";s:0:"";s:29:"wppa_list_index_display_start";s:0:"";s:16:"wppa_append_text";s:0:"";s:24:"wppa_append_to_photodesc";s:0:"";s:16:"wppa_remove_text";s:0:"";s:26:"wppa_remove_from_photodesc";s:0:"";s:24:"wppa_remove_empty_albums";s:0:"";s:18:"wppa_watermark_all";s:0:"";s:25:"wppa_create_all_autopages";s:0:"";s:26:"wppa_readd_file_extensions";s:0:"";s:17:"wppa_zero_numbers";s:1:"5";s:18:"wppa_leading_zeros";s:0:"";s:16:"wppa_add_gpx_tag";s:0:"";s:18:"wppa_optimize_ewww";s:0:"";s:16:"wppa_tag_to_edit";s:0:"";s:18:"wppa_new_tag_value";s:0:"";s:13:"wppa_edit_tag";s:0:"";s:35:"wppa_maint_ignore_concurrency_error";s:2:"no";s:9:"wppa_html";s:3:"yes";s:18:"wppa_check_balance";s:2:"no";s:16:"wppa_allow_debug";s:2:"no";s:20:"wppa_filter_priority";s:4:"1001";s:23:"wppa_shortcode_priority";s:2:"11";s:18:"wppa_lightbox_name";s:4:"wppa";s:37:"wppa_allow_foreign_shortcodes_general";s:2:"no";s:29:"wppa_allow_foreign_shortcodes";s:2:"no";s:36:"wppa_allow_foreign_shortcodes_thumbs";s:2:"no";s:16:"wppa_arrow_color";s:5:"black";s:14:"wppa_meta_page";s:3:"yes";s:13:"wppa_meta_all";s:3:"yes";s:18:"wppa_use_wp_editor";s:2:"no";s:16:"wppa_hier_albsel";s:3:"yes";s:17:"wppa_hier_pagesel";s:2:"no";s:13:"wppa_alt_type";s:8:"fullname";s:25:"wppa_photo_admin_pagesize";s:2:"20";s:27:"wppa_comment_admin_pagesize";s:2:"10";s:17:"wppa_jpeg_quality";s:2:"95";s:13:"wppa_geo_edit";s:2:"no";s:18:"wppa_auto_continue";s:3:"yes";s:23:"wppa_max_execution_time";s:2:"30";s:23:"wppa_adminbarmenu_admin";s:3:"yes";s:26:"wppa_adminbarmenu_frontend";s:3:"yes";s:19:"wppa_feed_use_thumb";s:2:"no";s:30:"wppa_enable_shortcode_wppa_set";s:2:"no";s:24:"wppa_wppa_set_shortcodes";s:29:"wppa_thumbtype,wppa_tn_margin";s:15:"wppa_og_tags_on";s:3:"yes";s:26:"wppa_add_shortcode_to_post";s:2:"no";s:21:"wppa_shortcode_to_add";s:48:"[wppa type="album" album="#related,desc"][/wppa]";s:27:"wppa_use_scripts_in_tinymce";s:2:"no";s:19:"wppa_import_preview";s:3:"yes";s:21:"wppa_audiostub_upload";s:0:"";s:14:"wppa_audiostub";s:13:"audiostub.jpg";s:22:"wppa_max_album_newtime";s:1:"0";s:22:"wppa_max_photo_newtime";s:1:"0";s:21:"wppa_lasten_limit_new";s:2:"no";s:24:"wppa_apply_newphoto_desc";s:2:"no";s:25:"wppa_newphoto_description";s:1334:"\r\n<a onClick="jQuery(\'.wppa-dtl\').css(\'display\', \'block\'); jQuery(\'.wppa-more\').css(\'display\', \'none\'); wppaOvlResize();">\r\n<div class="wppa-more">\r\nCamera info\r\n</div>\r\n</a>\r\n<a onClick="jQuery(\'.wppa-dtl\').css(\'display\', \'none\'); jQuery(\'.wppa-more\').css(\'display\', \'block\'); wppaOvlResize();">\r\n<div class="wppa-dtl" style="display:none;" >\r\nHide Camera info\r\n</div>\r\n</a>\r\n<div class="wppa-dtl" style="display:none;">\r\n<br />\r\n<style>\r\n.wppa-label { padding: 0 3px !important; border: none !important; }\r\n.wppa-value { padding: 0 3px 0 12px !important; border:none !important; }\r\n</style>\r\n<table style="margin:0; border:none;" >\r\n<tr><td class="wppa-label" >Date Time</td><td class="wppa-value" >E#0132</td></tr>\r\n<tr><td class="wppa-label" >Camera</td><td class="wppa-value" >E#0110</td></tr>\r\n<tr><td class="wppa-label" >Focal length</td><td class="wppa-value" >E#920A</td></tr>\r\n<tr><td class="wppa-label" >F-Stop</td><td class="wppa-value" >E#829D</td></tr>\r\n<tr><td class="wppa-label" >ISO Speed Rating</td><td class="wppa-value" >E#8827</td></tr>\r\n<tr><td class="wppa-label" >Exposure program</td><td class="wppa-value" >E#8822</td></tr>\r\n<tr><td class="wppa-label" >Metering mode</td><td class="wppa-value" >E#9207</td></tr>\r\n<tr><td class="wppa-label" >Flash</td><td class="wppa-value" >E#9209</td></tr>\r\n</table>\r\n</div>";s:23:"wppa_upload_limit_count";s:1:"0";s:22:"wppa_upload_limit_time";s:1:"0";s:20:"wppa_show_album_full";s:3:"yes";s:19:"wppa_grant_an_album";s:2:"no";s:15:"wppa_grant_name";s:7:"display";s:17:"wppa_grant_parent";s:1:"0";s:19:"wppa_default_parent";s:1:"0";s:26:"wppa_default_parent_always";s:2:"no";s:15:"wppa_max_albums";s:1:"0";s:22:"wppa_alt_is_restricted";s:2:"no";s:23:"wppa_link_is_restricted";s:2:"no";s:28:"wppa_covertype_is_restricted";s:2:"no";s:22:"wppa_porder_restricted";s:2:"no";s:25:"wppa_newphoto_name_method";s:8:"filename";s:28:"wppa_default_coverimage_name";s:10:"Coverphoto";s:19:"wppa_copy_timestamp";s:2:"no";s:15:"wppa_copy_owner";s:2:"no";s:26:"wppa_frontend_album_public";s:2:"no";s:17:"wppa_optimize_new";s:2:"no";s:27:"wppa_default_album_linktype";s:7:"content";s:20:"wppa_search_linkpage";s:1:"0";s:13:"wppa_excl_sep";s:2:"no";s:16:"wppa_search_tags";s:2:"no";s:16:"wppa_search_cats";s:2:"no";s:20:"wppa_search_comments";s:2:"no";s:16:"wppa_photos_only";s:2:"no";s:22:"wppa_max_search_photos";s:3:"250";s:22:"wppa_max_search_albums";s:2:"25";s:17:"wppa_tags_or_only";s:2:"no";s:15:"wppa_wild_front";s:2:"no";s:24:"wppa_search_display_type";s:7:"content";s:16:"wppa_ss_name_max";s:1:"0";s:16:"wppa_ss_text_max";s:1:"0";s:17:"wppa_watermark_on";s:2:"no";s:19:"wppa_watermark_file";s:12:"specimen.png";s:18:"wppa_watermark_pos";s:6:"cencen";s:27:"wppa_textual_watermark_type";s:7:"tvstyle";s:27:"wppa_textual_watermark_text";s:48:"Copyright (c) 2014 w#site \n w#filename (w#owner)";s:27:"wppa_textual_watermark_font";s:6:"system";s:27:"wppa_textual_watermark_size";s:2:"10";s:21:"wppa_watermark_upload";s:0:"";s:22:"wppa_watermark_opacity";s:2:"20";s:27:"wppa_watermark_opacity_text";s:2:"80";s:21:"wppa_watermark_thumbs";s:2:"no";s:16:"wppa_slide_order";s:22:"0,1,2,3,4,5,6,7,8,9,10";s:22:"wppa_slide_order_split";s:25:"0,1,2,3,4,5,6,7,8,9,10,11";s:18:"wppa_swap_namedesc";s:2:"no";s:19:"wppa_split_namedesc";s:2:"no";s:22:"wppa_keep_source_admin";s:3:"yes";s:25:"wppa_keep_source_frontend";s:3:"yes";s:15:"wppa_source_dir";s:105:"/Users/sarahlshowers/Dropbox/Sarah/dev/kevin-smith-transpotation-group/app/wp-content/uploads/wppa-source";s:14:"wppa_keep_sync";s:3:"yes";s:15:"wppa_remake_add";s:3:"yes";s:14:"wppa_save_iptc";s:2:"no";s:14:"wppa_save_exif";s:2:"no";s:24:"wppa_exif_max_array_size";s:2:"10";s:25:"wppa_chgsrc_is_restricted";s:2:"no";s:26:"wppa_ext_status_restricted";s:2:"no";s:18:"wppa_newpag_create";s:2:"no";s:19:"wppa_newpag_content";s:57:"[wppa type="cover" album="w#album" align="center"][/wppa]";s:16:"wppa_newpag_type";s:4:"page";s:18:"wppa_newpag_status";s:7:"publish";s:15:"wppa_pl_dirname";s:7:"wppa-pl";s:22:"wppa_cp_points_comment";s:1:"0";s:21:"wppa_cp_points_rating";s:1:"0";s:21:"wppa_cp_points_upload";s:1:"0";s:14:"wppa_use_scabn";s:2:"no";s:26:"wppa_use_CMTooltipGlossary";s:2:"no";s:16:"wppa_cdn_service";s:0:"";s:19:"wppa_cdn_cloud_name";s:0:"";s:16:"wppa_cdn_api_key";s:0:"";s:19:"wppa_cdn_api_secret";s:0:"";s:23:"wppa_cdn_service_update";s:2:"no";s:31:"wppa_delete_all_from_cloudinary";s:0:"";s:23:"wppa_gpx_implementation";s:4:"none";s:15:"wppa_map_height";s:3:"300";s:15:"wppa_map_apikey";s:0:"";s:18:"wppa_gpx_shortcode";s:88:"[map style="width: auto; height:300px; margin:0; " marker="yes" lat="w#lat" lon="w#lon"]";s:16:"wppa_fotomoto_on";s:2:"no";s:22:"wppa_fotomoto_fontsize";s:0:"";s:31:"wppa_fotomoto_hide_when_running";s:2:"no";s:23:"wppa_fotomoto_min_width";s:3:"400";s:16:"wppa_widgettitle";s:16:"Photo of the day";s:19:"wppa_widget_linkurl";s:25:"Type your custom url here";s:21:"wppa_widget_linktitle";s:19:"Type the title here";s:20:"wppa_widget_subtitle";s:4:"none";s:17:"wppa_widget_album";s:1:"0";s:17:"wppa_widget_photo";s:0:"";s:15:"wppa_potd_align";s:6:"center";s:18:"wppa_widget_method";s:1:"1";s:18:"wppa_widget_period";s:3:"168";s:17:"wppa_widget_width";s:3:"200";s:22:"wppa_potd_widget_width";s:3:"200";s:22:"wppa_toptenwidgettitle";s:14:"Top Ten Photos";s:25:"wppa_thumbnailwidgettitle";s:16:"Thumbnail Photos";s:22:"wppa_searchwidgettitle";s:13:"Search photos";s:18:"wppa_comadmin_show";s:3:"all";s:19:"wppa_comadmin_order";s:9:"timestamp";s:12:"wppa_qr_size";s:3:"200";s:13:"wppa_qr_color";s:7:"#000000";s:15:"wppa_qr_bgcolor";s:7:"#FFFFFF";}', 'yes'),
(1352, 'WPLANG', '', 'yes'),
(1381, 'category_children', 'a:0:{}', 'yes'),
(1383, 'numberposts', '-1', 'yes'),
(1401, 'rewrite_rules', 'a:68:{s:57:"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:52:"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:45:"index.php/category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:27:"index.php/category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:54:"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:49:"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:42:"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:24:"index.php/tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:55:"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:50:"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:43:"index.php/type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:25:"index.php/type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:42:"index.php/feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:37:"index.php/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:30:"index.php/page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:51:"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:46:"index.php/comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:54:"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:49:"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:42:"index.php/search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:24:"index.php/search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:57:"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:52:"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:45:"index.php/author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:27:"index.php/author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:79:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:49:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:66:"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:54:"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:36:"index.php/([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:53:"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:48:"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:41:"index.php/([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:23:"index.php/([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:37:"index.php/.?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"index.php/.?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"index.php/(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:50:"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:45:"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:38:"index.php/(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:45:"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:30:"index.php/(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:37:"index.php/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"index.php/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"index.php/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"index.php/([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:50:"index.php/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:45:"index.php/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:38:"index.php/([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:45:"index.php/([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:30:"index.php/([^/]+)(/[0-9]+)?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:26:"index.php/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:36:"index.php/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:56:"index.php/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"index.php/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"index.php/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";}', 'yes'),
(1405, 'can_compress_scripts', '1', 'yes') ;

#
# End of data contents of table `wp_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=1550 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(25, 20, '_edit_last', '1'),
(26, 20, '_edit_lock', '1434235977:1'),
(27, 20, '_wp_page_template', 'page-vehicle.php'),
(28, 22, '_edit_last', '1'),
(29, 22, 'field_557912f76430a', 'a:14:{s:3:"key";s:19:"field_557912f76430a";s:5:"label";s:12:"Vehicle Type";s:4:"name";s:12:"vehicle_type";s:4:"type";s:4:"text";s:12:"instructions";s:28:"Enter vehicle make and model";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:22:"Vehicle Make and Model";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_5579140e6430e";s:8:"operator";s:2:"==";s:5:"value";s:12:"Most popular";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(30, 22, 'field_557913356430b', 'a:11:{s:3:"key";s:19:"field_557913356430b";s:5:"label";s:10:"Hero Image";s:4:"name";s:10:"hero_image";s:4:"type";s:5:"image";s:12:"instructions";s:48:"For best results, image should be 2400px X 900px";s:8:"required";s:1:"1";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_5579140e6430e";s:8:"operator";s:2:"==";s:5:"value";s:12:"Most popular";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(31, 22, 'field_557913a76430c', 'a:13:{s:3:"key";s:19:"field_557913a76430c";s:5:"label";s:19:"Vehicle Description";s:4:"name";s:19:"vehicle_description";s:4:"type";s:8:"textarea";s:12:"instructions";s:70:"Enter the description for this vehicle. Appears under carousel images.";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:228:"Lorem ipsum dolor sit amet, id nec assum clita, ad solum aliquip qui, quando consul signiferumque in vis. Possit iracundia ex mei, eu quot vero consectetuer nec. Mel ad munere graeci numquam. Graeci posidonium interesset ne qui.";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_5579140e6430e";s:8:"operator";s:2:"==";s:5:"value";s:4:"None";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:9;}'),
(32, 22, 'field_557913cc6430d', 'a:14:{s:3:"key";s:19:"field_557913cc6430d";s:5:"label";s:19:"Embed YouTube Video";s:4:"name";s:19:"embed_youtube_video";s:4:"type";s:4:"text";s:12:"instructions";s:246:"Enter the URL for the YouTube video: go to video at https//:www.youtube.com\r\nClick "share" option under video.\r\nSelect the "embed" option.\r\nSelect entire field (cmd+A[mac], ctrl+A[PC]).\r\nCopy and paste code block into "Embed YouTube Video" field.";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_5579140e6430e";s:8:"operator";s:2:"==";s:5:"value";s:12:"Most popular";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:11;}'),
(33, 22, 'field_5579140e6430e', 'a:12:{s:3:"key";s:19:"field_5579140e6430e";s:5:"label";s:15:"Special Feature";s:4:"name";s:15:"special_feature";s:4:"type";s:6:"select";s:12:"instructions";s:66:"Controls the banner over the image.\r\nDefault value is set to none.";s:8:"required";s:1:"0";s:7:"choices";a:3:{s:10:"None: none";s:10:"None: none";s:12:"Most popular";s:12:"Most popular";s:11:"New arrival";s:11:"New arrival";}s:13:"default_value";s:10:"None: none";s:10:"allow_null";s:1:"0";s:8:"multiple";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(35, 22, 'position', 'normal'),
(36, 22, 'layout', 'no_box'),
(37, 22, 'hide_on_screen', 'a:13:{i:0;s:11:"the_content";i:1;s:7:"excerpt";i:2;s:13:"custom_fields";i:3;s:10:"discussion";i:4;s:8:"comments";i:5;s:9:"revisions";i:6;s:4:"slug";i:7;s:6:"author";i:8;s:6:"format";i:9;s:14:"featured_image";i:10;s:10:"categories";i:11;s:4:"tags";i:12;s:15:"send-trackbacks";}'),
(38, 22, '_edit_lock', '1436300313:1'),
(41, 25, 'vehicle_title', 'Lincoln Town Car Stretch Limousine, for Six'),
(42, 25, '_vehicle_title', 'field_557912f76430a'),
(43, 25, 'main_image', '24'),
(44, 25, '_main_image', 'field_557913356430b'),
(45, 25, 'vehicle_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(46, 25, '_vehicle_description', 'field_557913a76430c'),
(47, 25, 'youtube_url', 'https://youtu.be/FLqRMH5nlcA'),
(48, 25, '_youtube_url', 'field_557913cc6430d'),
(49, 25, 'special_feature', 'Most popular'),
(50, 25, '_special_feature', 'field_5579140e6430e'),
(51, 20, 'vehicle_title', 'Mercedes-Benz s550'),
(52, 20, '_vehicle_title', 'field_557912f76430a'),
(53, 20, 'main_image', '24'),
(54, 20, '_main_image', 'field_557913356430b'),
(55, 20, 'vehicle_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(56, 20, '_vehicle_description', 'field_557913a76430c'),
(57, 20, 'youtube_url', 'https://youtu.be/FLqRMH5nlcA'),
(58, 20, '_youtube_url', 'field_557913cc6430d'),
(59, 20, 'special_feature', 'Most popular'),
(60, 20, '_special_feature', 'field_5579140e6430e'),
(62, 26, 'vehicle_title', 'Lincoln Town Car Stretch Limousine, for Six'),
(63, 26, '_vehicle_title', 'field_557912f76430a'),
(64, 26, 'main_image', '24'),
(65, 26, '_main_image', 'field_557913356430b'),
(66, 26, 'vehicle_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(67, 26, '_vehicle_description', 'field_557913a76430c'),
(68, 26, 'youtube_embed_code', '<iframe width="560" height="315" src="https://www.youtube.com/embed/hyv6FzZRlSo" frameborder="0" allowfullscreen></iframe>'),
(69, 26, '_youtube_embed_code', 'field_557913cc6430d'),
(70, 26, 'special_feature', 'Most popular'),
(71, 26, '_special_feature', 'field_5579140e6430e'),
(72, 20, 'youtube_embed_code', '<iframe width="560" height="315" src="https://www.youtube.com/embed/hyv6FzZRlSo" frameborder="0" allowfullscreen></iframe>'),
(73, 20, '_youtube_embed_code', 'field_557913cc6430d'),
(75, 29, 'vehicle_title', 'Mercedes-Benz s550'),
(76, 29, '_vehicle_title', 'field_557912f76430a'),
(77, 29, 'main_image', '24'),
(78, 29, '_main_image', 'field_557913356430b'),
(79, 29, 'vehicle_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(80, 29, '_vehicle_description', 'field_557913a76430c'),
(81, 29, 'youtube_embed_code', '<iframe width="560" height="315" src="https://www.youtube.com/embed/hyv6FzZRlSo" frameborder="0" allowfullscreen></iframe>'),
(82, 29, '_youtube_embed_code', 'field_557913cc6430d'),
(83, 29, 'special_feature', 'Most popular'),
(84, 29, '_special_feature', 'field_5579140e6430e'),
(86, 32, '_edit_last', '1'),
(87, 32, '_edit_lock', '1434862709:1'),
(89, 32, '_wp_page_template', 'page-vehicle.php'),
(90, 33, 'vehicle_title', 'Cadillac XTS'),
(91, 33, '_vehicle_title', 'field_557912f76430a'),
(92, 33, 'main_image', '24'),
(93, 33, '_main_image', 'field_557913356430b'),
(94, 33, 'vehicle_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(95, 33, '_vehicle_description', 'field_557913a76430c'),
(96, 33, 'youtube_embed_code', '<iframe width="560" height="315" src="https://www.youtube.com/embed/ZP63IfRuVgs" frameborder="0" allowfullscreen></iframe>'),
(97, 33, '_youtube_embed_code', 'field_557913cc6430d'),
(98, 33, 'special_feature', 'None: none'),
(99, 33, '_special_feature', 'field_5579140e6430e'),
(100, 32, 'vehicle_title', 'Cadillac XTS'),
(101, 32, '_vehicle_title', 'field_557912f76430a'),
(102, 32, 'main_image', '24'),
(103, 32, '_main_image', 'field_557913356430b'),
(104, 32, 'vehicle_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(105, 32, '_vehicle_description', 'field_557913a76430c'),
(106, 32, 'youtube_embed_code', '<iframe width="560" height="315" src="https://www.youtube.com/embed/ZP63IfRuVgs" frameborder="0" allowfullscreen></iframe>'),
(107, 32, '_youtube_embed_code', 'field_557913cc6430d'),
(108, 32, 'special_feature', 'None: none'),
(109, 32, '_special_feature', 'field_5579140e6430e'),
(110, 34, '_edit_last', '1'),
(111, 34, '_edit_lock', '1434235202:1'),
(112, 34, '_wp_page_template', 'page-vehicle.php'),
(113, 35, 'vehicle_title', 'Cheverolet Suburban'),
(114, 35, '_vehicle_title', 'field_557912f76430a'),
(115, 35, 'main_image', '24'),
(116, 35, '_main_image', 'field_557913356430b'),
(117, 35, 'vehicle_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(118, 35, '_vehicle_description', 'field_557913a76430c'),
(119, 35, 'youtube_embed_code', '<iframe width="560" height="315" src="https://www.youtube.com/embed/MenBz8-dwpA?list=PLFF3F248AC60CF19E" frameborder="0" allowfullscreen></iframe>'),
(120, 35, '_youtube_embed_code', 'field_557913cc6430d'),
(121, 35, 'special_feature', 'None: none'),
(122, 35, '_special_feature', 'field_5579140e6430e'),
(123, 34, 'vehicle_title', 'Cheverolet Suburban'),
(124, 34, '_vehicle_title', 'field_557912f76430a'),
(125, 34, 'main_image', '24'),
(126, 34, '_main_image', 'field_557913356430b'),
(127, 34, 'vehicle_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(128, 34, '_vehicle_description', 'field_557913a76430c'),
(129, 34, 'youtube_embed_code', '<iframe width="560" height="315" src="https://www.youtube.com/embed/MenBz8-dwpA?list=PLFF3F248AC60CF19E" frameborder="0" allowfullscreen></iframe>'),
(130, 34, '_youtube_embed_code', 'field_557913cc6430d'),
(131, 34, 'special_feature', 'None: none') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(132, 34, '_special_feature', 'field_5579140e6430e'),
(133, 37, '_menu_item_type', 'post_type'),
(134, 37, '_menu_item_menu_item_parent', '0'),
(135, 37, '_menu_item_object_id', '32'),
(136, 37, '_menu_item_object', 'page'),
(137, 37, '_menu_item_target', ''),
(138, 37, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(139, 37, '_menu_item_xfn', ''),
(140, 37, '_menu_item_url', ''),
(142, 38, '_menu_item_type', 'post_type'),
(143, 38, '_menu_item_menu_item_parent', '0'),
(144, 38, '_menu_item_object_id', '20'),
(145, 38, '_menu_item_object', 'page'),
(146, 38, '_menu_item_target', ''),
(147, 38, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(148, 38, '_menu_item_xfn', ''),
(149, 38, '_menu_item_url', ''),
(151, 39, '_edit_last', '1'),
(152, 39, '_edit_lock', '1434235328:1'),
(153, 39, '_wp_page_template', 'page-vehicle.php'),
(154, 40, 'vehicle_title', 'Lincoln Navigator'),
(155, 40, '_vehicle_title', 'field_557912f76430a'),
(156, 40, 'main_image', ''),
(157, 40, '_main_image', 'field_557913356430b'),
(158, 40, 'vehicle_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(159, 40, '_vehicle_description', 'field_557913a76430c'),
(160, 40, 'youtube_embed_code', '<iframe width="560" height="315" src="https://www.youtube.com/embed/DppF7XER-8o" frameborder="0" allowfullscreen></iframe>'),
(161, 40, '_youtube_embed_code', 'field_557913cc6430d'),
(162, 40, 'special_feature', 'None: none'),
(163, 40, '_special_feature', 'field_5579140e6430e'),
(164, 39, 'vehicle_title', 'Lincoln Navigator'),
(165, 39, '_vehicle_title', 'field_557912f76430a'),
(166, 39, 'main_image', ''),
(167, 39, '_main_image', 'field_557913356430b'),
(168, 39, 'vehicle_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(169, 39, '_vehicle_description', 'field_557913a76430c'),
(170, 39, 'youtube_embed_code', '<iframe width="560" height="315" src="https://www.youtube.com/embed/DppF7XER-8o" frameborder="0" allowfullscreen></iframe>'),
(171, 39, '_youtube_embed_code', 'field_557913cc6430d'),
(172, 39, 'special_feature', 'None: none'),
(173, 39, '_special_feature', 'field_5579140e6430e'),
(174, 41, '_edit_last', '1'),
(175, 41, '_edit_lock', '1434235950:1'),
(176, 41, '_wp_page_template', 'page-vehicle.php'),
(177, 42, 'vehicle_title', 'Mercedes-Benz R350'),
(178, 42, '_vehicle_title', 'field_557912f76430a'),
(179, 42, 'main_image', '24'),
(180, 42, '_main_image', 'field_557913356430b'),
(181, 42, 'vehicle_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(182, 42, '_vehicle_description', 'field_557913a76430c'),
(183, 42, 'youtube_embed_code', '<iframe width="560" height="315" src="https://www.youtube.com/embed/APUwwOZ65XM" frameborder="0" allowfullscreen></iframe>'),
(184, 42, '_youtube_embed_code', 'field_557913cc6430d'),
(185, 42, 'special_feature', 'None: none'),
(186, 42, '_special_feature', 'field_5579140e6430e'),
(187, 41, 'vehicle_title', 'Mercedes-Benz R350'),
(188, 41, '_vehicle_title', 'field_557912f76430a'),
(189, 41, 'main_image', '24'),
(190, 41, '_main_image', 'field_557913356430b'),
(191, 41, 'vehicle_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(192, 41, '_vehicle_description', 'field_557913a76430c'),
(193, 41, 'youtube_embed_code', '<iframe width="560" height="315" src="https://www.youtube.com/embed/APUwwOZ65XM" frameborder="0" allowfullscreen></iframe>'),
(194, 41, '_youtube_embed_code', 'field_557913cc6430d'),
(195, 41, 'special_feature', 'None: none'),
(196, 41, '_special_feature', 'field_5579140e6430e'),
(197, 43, '_edit_last', '1'),
(198, 43, '_edit_lock', '1434235288:1'),
(199, 43, '_wp_page_template', 'page-vehicle.php'),
(200, 44, 'vehicle_title', 'Hummer H2'),
(201, 44, '_vehicle_title', 'field_557912f76430a'),
(202, 44, 'main_image', '24'),
(203, 44, '_main_image', 'field_557913356430b'),
(204, 44, 'vehicle_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(205, 44, '_vehicle_description', 'field_557913a76430c'),
(206, 44, 'youtube_embed_code', '<iframe width="560" height="315" src="https://www.youtube.com/embed/APUwwOZ65XM" frameborder="0" allowfullscreen></iframe>'),
(207, 44, '_youtube_embed_code', 'field_557913cc6430d'),
(208, 44, 'special_feature', 'None: none'),
(209, 44, '_special_feature', 'field_5579140e6430e'),
(210, 43, 'vehicle_title', 'Hummer H2'),
(211, 43, '_vehicle_title', 'field_557912f76430a'),
(212, 43, 'main_image', '24'),
(213, 43, '_main_image', 'field_557913356430b'),
(214, 43, 'vehicle_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(215, 43, '_vehicle_description', 'field_557913a76430c'),
(216, 43, 'youtube_embed_code', '<iframe width="560" height="315" src="https://www.youtube.com/embed/APUwwOZ65XM" frameborder="0" allowfullscreen></iframe>'),
(217, 43, '_youtube_embed_code', 'field_557913cc6430d'),
(218, 43, 'special_feature', 'None: none'),
(219, 43, '_special_feature', 'field_5579140e6430e'),
(220, 45, '_edit_last', '1'),
(221, 45, '_edit_lock', '1434235231:1'),
(222, 45, '_wp_page_template', 'page-vehicle.php'),
(223, 46, 'vehicle_title', 'Chrysler 300 Stretch'),
(224, 46, '_vehicle_title', 'field_557912f76430a'),
(225, 46, 'main_image', '24'),
(226, 46, '_main_image', 'field_557913356430b'),
(227, 46, 'vehicle_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(228, 46, '_vehicle_description', 'field_557913a76430c'),
(229, 46, 'youtube_embed_code', '<iframe width="560" height="315" src="https://www.youtube.com/embed/APUwwOZ65XM" frameborder="0" allowfullscreen></iframe>'),
(230, 46, '_youtube_embed_code', 'field_557913cc6430d'),
(231, 46, 'special_feature', 'None: none'),
(232, 46, '_special_feature', 'field_5579140e6430e'),
(233, 45, 'vehicle_title', 'Chrysler 300 Stretch') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(234, 45, '_vehicle_title', 'field_557912f76430a'),
(235, 45, 'main_image', '24'),
(236, 45, '_main_image', 'field_557913356430b'),
(237, 45, 'vehicle_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(238, 45, '_vehicle_description', 'field_557913a76430c'),
(239, 45, 'youtube_embed_code', '<iframe width="560" height="315" src="https://www.youtube.com/embed/APUwwOZ65XM" frameborder="0" allowfullscreen></iframe>'),
(240, 45, '_youtube_embed_code', 'field_557913cc6430d'),
(241, 45, 'special_feature', 'None: none'),
(242, 45, '_special_feature', 'field_5579140e6430e'),
(243, 47, '_edit_last', '1'),
(244, 47, '_edit_lock', '1436244716:1'),
(245, 47, '_wp_page_template', 'page-vehicle.php'),
(246, 48, 'vehicle_title', 'Lincoln Town Car Stretch, for six'),
(247, 48, '_vehicle_title', 'field_557912f76430a'),
(248, 48, 'main_image', '24'),
(249, 48, '_main_image', 'field_557913356430b'),
(250, 48, 'vehicle_description', 'The 2004 Lincoln Town Care Sedan Stretch Limousine accommodates up to 6 passengers comfortably. Amenities include in-car Wi-Fi, TVs with DVD player, AM/FM stereo, Bluetooth, dual privacy divider, intercom system, tinted windows, plush bar, and leather interior.\r\n\r\nExterior: white. Interior: beige. Perfect for your prom group, wedding party, or large family events.'),
(251, 48, '_vehicle_description', 'field_557913a76430c'),
(252, 48, 'youtube_embed_code', '<iframe width="560" height="315" src="https://www.youtube.com/embed/APUwwOZ65XM" frameborder="0" allowfullscreen></iframe>'),
(253, 48, '_youtube_embed_code', 'field_557913cc6430d'),
(254, 48, 'special_feature', 'Most popular'),
(255, 48, '_special_feature', 'field_5579140e6430e'),
(256, 47, 'vehicle_title', 'Lincoln Town Car Stretch, for six'),
(257, 47, '_vehicle_title', 'field_557912f76430a'),
(258, 47, 'main_image', '24'),
(259, 47, '_main_image', 'field_557913356430b'),
(260, 47, 'vehicle_description', 'The 2004 Lincoln Town Care Sedan Stretch Limousine accommodates up to 6 passengers comfortably. Amenities include in-car Wi-Fi, TVs with DVD player, AM/FM stereo, Bluetooth, dual privacy divider, intercom system, tinted windows, plush bar, and leather interior.\r\n\r\nExterior: white. Interior: beige. Perfect for your prom group, wedding party, or large family events.'),
(261, 47, '_vehicle_description', 'field_557913a76430c'),
(262, 47, 'youtube_embed_code', '<iframe width="560" height="315" src="https://www.youtube.com/embed/APUwwOZ65XM" frameborder="0" allowfullscreen></iframe>'),
(263, 47, '_youtube_embed_code', 'field_557913cc6430d'),
(264, 47, 'special_feature', 'Most popular'),
(265, 47, '_special_feature', 'field_5579140e6430e'),
(266, 49, '_edit_last', '1'),
(267, 49, '_edit_lock', '1434235359:1'),
(268, 49, '_wp_page_template', 'page-vehicle.php'),
(269, 50, 'vehicle_title', 'Lincoln Town Car Stretch, for eight'),
(270, 50, '_vehicle_title', 'field_557912f76430a'),
(271, 50, 'main_image', '24'),
(272, 50, '_main_image', 'field_557913356430b'),
(273, 50, 'vehicle_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(274, 50, '_vehicle_description', 'field_557913a76430c'),
(275, 50, 'youtube_embed_code', '<iframe width="560" height="315" src="https://www.youtube.com/embed/APUwwOZ65XM" frameborder="0" allowfullscreen></iframe>'),
(276, 50, '_youtube_embed_code', 'field_557913cc6430d'),
(277, 50, 'special_feature', 'None: none'),
(278, 50, '_special_feature', 'field_5579140e6430e'),
(279, 49, 'vehicle_title', 'Lincoln Town Car Stretch, for eight'),
(280, 49, '_vehicle_title', 'field_557912f76430a'),
(281, 49, 'main_image', '24'),
(282, 49, '_main_image', 'field_557913356430b'),
(283, 49, 'vehicle_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(284, 49, '_vehicle_description', 'field_557913a76430c'),
(285, 49, 'youtube_embed_code', '<iframe width="560" height="315" src="https://www.youtube.com/embed/APUwwOZ65XM" frameborder="0" allowfullscreen></iframe>'),
(286, 49, '_youtube_embed_code', 'field_557913cc6430d'),
(287, 49, 'special_feature', 'None: none'),
(288, 49, '_special_feature', 'field_5579140e6430e'),
(289, 51, '_edit_last', '1'),
(290, 51, '_edit_lock', '1434236179:1'),
(291, 51, '_wp_page_template', 'page-vehicle.php'),
(292, 52, 'vehicle_title', 'Stretch Hummer H2'),
(293, 52, '_vehicle_title', 'field_557912f76430a'),
(294, 52, 'main_image', '24'),
(295, 52, '_main_image', 'field_557913356430b'),
(296, 52, 'vehicle_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(297, 52, '_vehicle_description', 'field_557913a76430c'),
(298, 52, 'youtube_embed_code', '<iframe width="560" height="315" src="https://www.youtube.com/embed/APUwwOZ65XM" frameborder="0" allowfullscreen></iframe>'),
(299, 52, '_youtube_embed_code', 'field_557913cc6430d'),
(300, 52, 'special_feature', 'None: none'),
(301, 52, '_special_feature', 'field_5579140e6430e'),
(302, 51, 'vehicle_title', 'Stretch Hummer H2'),
(303, 51, '_vehicle_title', 'field_557912f76430a'),
(304, 51, 'main_image', '24'),
(305, 51, '_main_image', 'field_557913356430b'),
(306, 51, 'vehicle_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(307, 51, '_vehicle_description', 'field_557913a76430c'),
(308, 51, 'youtube_embed_code', '<iframe width="560" height="315" src="https://www.youtube.com/embed/APUwwOZ65XM" frameborder="0" allowfullscreen></iframe>'),
(309, 51, '_youtube_embed_code', 'field_557913cc6430d'),
(310, 51, 'special_feature', 'None: none'),
(311, 51, '_special_feature', 'field_5579140e6430e'),
(312, 53, '_edit_last', '1'),
(313, 53, '_edit_lock', '1434235309:1'),
(314, 53, '_wp_page_template', 'page-vehicle.php'),
(315, 54, 'vehicle_title', 'Infiniti Stretch Limo'),
(316, 54, '_vehicle_title', 'field_557912f76430a'),
(317, 54, 'main_image', '24'),
(318, 54, '_main_image', 'field_557913356430b'),
(319, 54, 'vehicle_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(320, 54, '_vehicle_description', 'field_557913a76430c'),
(321, 54, 'youtube_embed_code', '<iframe width="560" height="315" src="https://www.youtube.com/embed/APUwwOZ65XM" frameborder="0" allowfullscreen></iframe>'),
(322, 54, '_youtube_embed_code', 'field_557913cc6430d'),
(323, 54, 'special_feature', 'None: none'),
(324, 54, '_special_feature', 'field_5579140e6430e'),
(325, 53, 'vehicle_title', 'Infiniti Stretch Limo'),
(326, 53, '_vehicle_title', 'field_557912f76430a'),
(327, 53, 'main_image', '24'),
(328, 53, '_main_image', 'field_557913356430b'),
(329, 53, 'vehicle_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(330, 53, '_vehicle_description', 'field_557913a76430c'),
(331, 53, 'youtube_embed_code', '<iframe width="560" height="315" src="https://www.youtube.com/embed/APUwwOZ65XM" frameborder="0" allowfullscreen></iframe>'),
(332, 53, '_youtube_embed_code', 'field_557913cc6430d'),
(333, 53, 'special_feature', 'None: none') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(334, 53, '_special_feature', 'field_5579140e6430e'),
(335, 55, '_edit_last', '1'),
(336, 55, '_edit_lock', '1434236000:1'),
(337, 55, '_wp_page_template', 'page-vehicle.php'),
(338, 56, 'vehicle_title', 'Mercedes-Benz Sprinter'),
(339, 56, '_vehicle_title', 'field_557912f76430a'),
(340, 56, 'main_image', '24'),
(341, 56, '_main_image', 'field_557913356430b'),
(342, 56, 'vehicle_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(343, 56, '_vehicle_description', 'field_557913a76430c'),
(344, 56, 'youtube_embed_code', '<iframe width="560" height="315" src="https://www.youtube.com/embed/APUwwOZ65XM" frameborder="0" allowfullscreen></iframe>'),
(345, 56, '_youtube_embed_code', 'field_557913cc6430d'),
(346, 56, 'special_feature', 'None: none'),
(347, 56, '_special_feature', 'field_5579140e6430e'),
(348, 55, 'vehicle_title', 'Mercedes-Benz Sprinter'),
(349, 55, '_vehicle_title', 'field_557912f76430a'),
(350, 55, 'main_image', '24'),
(351, 55, '_main_image', 'field_557913356430b'),
(352, 55, 'vehicle_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(353, 55, '_vehicle_description', 'field_557913a76430c'),
(354, 55, 'youtube_embed_code', '<iframe width="560" height="315" src="https://www.youtube.com/embed/APUwwOZ65XM" frameborder="0" allowfullscreen></iframe>'),
(355, 55, '_youtube_embed_code', 'field_557913cc6430d'),
(356, 55, 'special_feature', 'None: none'),
(357, 55, '_special_feature', 'field_5579140e6430e'),
(358, 57, '_edit_last', '1'),
(359, 57, '_edit_lock', '1434236032:1'),
(360, 57, '_wp_page_template', 'page-vehicle.php'),
(361, 58, 'vehicle_title', 'Party Bus'),
(362, 58, '_vehicle_title', 'field_557912f76430a'),
(363, 58, 'main_image', '24'),
(364, 58, '_main_image', 'field_557913356430b'),
(365, 58, 'vehicle_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(366, 58, '_vehicle_description', 'field_557913a76430c'),
(367, 58, 'youtube_embed_code', '<iframe width="560" height="315" src="https://www.youtube.com/embed/APUwwOZ65XM" frameborder="0" allowfullscreen></iframe>'),
(368, 58, '_youtube_embed_code', 'field_557913cc6430d'),
(369, 58, 'special_feature', 'None: none'),
(370, 58, '_special_feature', 'field_5579140e6430e'),
(371, 57, 'vehicle_title', 'Party Bus'),
(372, 57, '_vehicle_title', 'field_557912f76430a'),
(373, 57, 'main_image', '24'),
(374, 57, '_main_image', 'field_557913356430b'),
(375, 57, 'vehicle_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(376, 57, '_vehicle_description', 'field_557913a76430c'),
(377, 57, 'youtube_embed_code', '<iframe width="560" height="315" src="https://www.youtube.com/embed/APUwwOZ65XM" frameborder="0" allowfullscreen></iframe>'),
(378, 57, '_youtube_embed_code', 'field_557913cc6430d'),
(379, 57, 'special_feature', 'None: none'),
(380, 57, '_special_feature', 'field_5579140e6430e'),
(381, 59, '_edit_last', '1'),
(382, 59, '_edit_lock', '1434236051:1'),
(383, 59, '_wp_page_template', 'page-vehicle.php'),
(384, 60, 'vehicle_title', 'Shuttle Bus'),
(385, 60, '_vehicle_title', 'field_557912f76430a'),
(386, 60, 'main_image', '24'),
(387, 60, '_main_image', 'field_557913356430b'),
(388, 60, 'vehicle_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(389, 60, '_vehicle_description', 'field_557913a76430c'),
(390, 60, 'youtube_embed_code', '<iframe width="560" height="315" src="https://www.youtube.com/embed/APUwwOZ65XM" frameborder="0" allowfullscreen></iframe>'),
(391, 60, '_youtube_embed_code', 'field_557913cc6430d'),
(392, 60, 'special_feature', 'None: none'),
(393, 60, '_special_feature', 'field_5579140e6430e'),
(394, 59, 'vehicle_title', 'Shuttle Bus'),
(395, 59, '_vehicle_title', 'field_557912f76430a'),
(396, 59, 'main_image', '24'),
(397, 59, '_main_image', 'field_557913356430b'),
(398, 59, 'vehicle_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(399, 59, '_vehicle_description', 'field_557913a76430c'),
(400, 59, 'youtube_embed_code', '<iframe width="560" height="315" src="https://www.youtube.com/embed/APUwwOZ65XM" frameborder="0" allowfullscreen></iframe>'),
(401, 59, '_youtube_embed_code', 'field_557913cc6430d'),
(402, 59, 'special_feature', 'None: none'),
(403, 59, '_special_feature', 'field_5579140e6430e'),
(404, 61, '_menu_item_type', 'post_type'),
(405, 61, '_menu_item_menu_item_parent', '0'),
(406, 61, '_menu_item_object_id', '43'),
(407, 61, '_menu_item_object', 'page'),
(408, 61, '_menu_item_target', ''),
(409, 61, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(410, 61, '_menu_item_xfn', ''),
(411, 61, '_menu_item_url', ''),
(412, 61, '_menu_item_orphaned', '1434001646'),
(413, 62, '_menu_item_type', 'post_type'),
(414, 62, '_menu_item_menu_item_parent', '0'),
(415, 62, '_menu_item_object_id', '41'),
(416, 62, '_menu_item_object', 'page'),
(417, 62, '_menu_item_target', ''),
(418, 62, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(419, 62, '_menu_item_xfn', ''),
(420, 62, '_menu_item_url', ''),
(421, 62, '_menu_item_orphaned', '1434001646'),
(422, 63, '_menu_item_type', 'post_type'),
(423, 63, '_menu_item_menu_item_parent', '0'),
(424, 63, '_menu_item_object_id', '39'),
(425, 63, '_menu_item_object', 'page'),
(426, 63, '_menu_item_target', ''),
(427, 63, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(428, 63, '_menu_item_xfn', ''),
(429, 63, '_menu_item_url', ''),
(430, 63, '_menu_item_orphaned', '1434001646'),
(431, 64, '_menu_item_type', 'post_type'),
(432, 64, '_menu_item_menu_item_parent', '0'),
(433, 64, '_menu_item_object_id', '34') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(434, 64, '_menu_item_object', 'page'),
(435, 64, '_menu_item_target', ''),
(436, 64, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(437, 64, '_menu_item_xfn', ''),
(438, 64, '_menu_item_url', ''),
(439, 64, '_menu_item_orphaned', '1434001646'),
(440, 65, '_menu_item_type', 'post_type'),
(441, 65, '_menu_item_menu_item_parent', '0'),
(442, 65, '_menu_item_object_id', '49'),
(443, 65, '_menu_item_object', 'page'),
(444, 65, '_menu_item_target', ''),
(445, 65, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(446, 65, '_menu_item_xfn', ''),
(447, 65, '_menu_item_url', ''),
(449, 66, '_menu_item_type', 'post_type'),
(450, 66, '_menu_item_menu_item_parent', '0'),
(451, 66, '_menu_item_object_id', '47'),
(452, 66, '_menu_item_object', 'page'),
(453, 66, '_menu_item_target', ''),
(454, 66, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(455, 66, '_menu_item_xfn', ''),
(456, 66, '_menu_item_url', ''),
(458, 67, '_menu_item_type', 'post_type'),
(459, 67, '_menu_item_menu_item_parent', '0'),
(460, 67, '_menu_item_object_id', '45'),
(461, 67, '_menu_item_object', 'page'),
(462, 67, '_menu_item_target', ''),
(463, 67, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(464, 67, '_menu_item_xfn', ''),
(465, 67, '_menu_item_url', ''),
(467, 68, '_menu_item_type', 'post_type'),
(468, 68, '_menu_item_menu_item_parent', '0'),
(469, 68, '_menu_item_object_id', '53'),
(470, 68, '_menu_item_object', 'page'),
(471, 68, '_menu_item_target', ''),
(472, 68, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(473, 68, '_menu_item_xfn', ''),
(474, 68, '_menu_item_url', ''),
(475, 68, '_menu_item_orphaned', '1434001727'),
(476, 69, '_menu_item_type', 'post_type'),
(477, 69, '_menu_item_menu_item_parent', '0'),
(478, 69, '_menu_item_object_id', '51'),
(479, 69, '_menu_item_object', 'page'),
(480, 69, '_menu_item_target', ''),
(481, 69, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(482, 69, '_menu_item_xfn', ''),
(483, 69, '_menu_item_url', ''),
(484, 69, '_menu_item_orphaned', '1434001727'),
(485, 70, '_menu_item_type', 'post_type'),
(486, 70, '_menu_item_menu_item_parent', '0'),
(487, 70, '_menu_item_object_id', '55'),
(488, 70, '_menu_item_object', 'page'),
(489, 70, '_menu_item_target', ''),
(490, 70, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(491, 70, '_menu_item_xfn', ''),
(492, 70, '_menu_item_url', ''),
(493, 70, '_menu_item_orphaned', '1434001745'),
(494, 71, '_menu_item_type', 'post_type'),
(495, 71, '_menu_item_menu_item_parent', '0'),
(496, 71, '_menu_item_object_id', '59'),
(497, 71, '_menu_item_object', 'page'),
(498, 71, '_menu_item_target', ''),
(499, 71, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(500, 71, '_menu_item_xfn', ''),
(501, 71, '_menu_item_url', ''),
(503, 72, '_menu_item_type', 'post_type'),
(504, 72, '_menu_item_menu_item_parent', '0'),
(505, 72, '_menu_item_object_id', '57'),
(506, 72, '_menu_item_object', 'page'),
(507, 72, '_menu_item_target', ''),
(508, 72, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(509, 72, '_menu_item_xfn', ''),
(510, 72, '_menu_item_url', ''),
(512, 75, '_edit_last', '1'),
(513, 75, 'field_557ca94c2cfb0', 'a:14:{s:3:"key";s:19:"field_557ca94c2cfb0";s:5:"label";s:19:"Service Description";s:4:"name";s:19:"service_description";s:4:"type";s:4:"text";s:12:"instructions";s:42:"Enter a description of the service offered";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(515, 75, 'position', 'normal'),
(516, 75, 'layout', 'no_box'),
(517, 75, 'hide_on_screen', 'a:13:{i:0;s:11:"the_content";i:1;s:7:"excerpt";i:2;s:13:"custom_fields";i:3;s:10:"discussion";i:4;s:8:"comments";i:5;s:9:"revisions";i:6;s:4:"slug";i:7;s:6:"author";i:8;s:6:"format";i:9;s:14:"featured_image";i:10;s:10:"categories";i:11;s:4:"tags";i:12;s:15:"send-trackbacks";}'),
(518, 75, '_edit_lock', '1434235078:1'),
(519, 75, 'field_557cab100fa8e', 'a:11:{s:3:"key";s:19:"field_557cab100fa8e";s:5:"label";s:10:"Hero Image";s:4:"name";s:10:"hero_image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(520, 75, 'field_557cab3f0fa8f', 'a:14:{s:3:"key";s:19:"field_557cab3f0fa8f";s:5:"label";s:12:"Service Type";s:4:"name";s:12:"service_type";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(529, 80, '_edit_last', '1'),
(530, 80, '_edit_lock', '1434235257:1'),
(531, 80, '_wp_page_template', 'page-services.php'),
(532, 81, 'page_title', 'Lorem ipsum...'),
(533, 81, '_page_title', 'field_557cab3f0fa8f'),
(534, 81, 'hero_image', '24'),
(535, 81, '_hero_image', 'field_557cab100fa8e'),
(536, 81, 'service_description', 'Lorem ipsum dolor sit amet, id nec assum clita, ad solum aliquip qui, quando consul signiferumque in vis. Possit iracundia ex mei, eu quot vero consectetuer nec. Mel ad munere graeci numquam. Graeci posidonium interesset ne qui.  An eripuit consequuntur vix, mutat errem ad nec. At pri tale illum efficiantur, malis definitiones pri ei, ad iudico numquam vix. Ut per solum platonem disputationi, an est semper quaestio. Usu ei stet utinam sensibus, quot labitur eligendi eam id, eum bonorum similique ne. Nec ex iuvaret apeirian, eu dico admodum necessitatibus sed. Utamur scripserit has cu, cu his zril complectitur signiferumque.'),
(537, 81, '_service_description', 'field_557ca94c2cfb0'),
(538, 80, 'page_title', 'Lorem ipsum...'),
(539, 80, '_page_title', 'field_557cab3f0fa8f'),
(540, 80, 'hero_image', '24'),
(541, 80, '_hero_image', 'field_557cab100fa8e'),
(542, 80, 'service_description', 'Lorem ipsum dolor sit amet, id nec assum clita, ad solum aliquip qui, quando consul signiferumque in vis. Possit iracundia ex mei, eu quot vero consectetuer nec. Mel ad munere graeci numquam. Graeci posidonium interesset ne qui.  An eripuit consequuntur vix, mutat errem ad nec. At pri tale illum efficiantur, malis definitiones pri ei, ad iudico numquam vix. Ut per solum platonem disputationi, an est semper quaestio. Usu ei stet utinam sensibus, quot labitur eligendi eam id, eum bonorum similique ne. Nec ex iuvaret apeirian, eu dico admodum necessitatibus sed. Utamur scripserit has cu, cu his zril complectitur signiferumque.'),
(543, 80, '_service_description', 'field_557ca94c2cfb0'),
(546, 82, 'vehicle_type', 'Cadillac XTS'),
(547, 82, '_vehicle_type', 'field_557912f76430a'),
(548, 82, 'hero_image', '24'),
(549, 82, '_hero_image', 'field_557913356430b') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(550, 82, 'vehicle_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(551, 82, '_vehicle_description', 'field_557913a76430c'),
(552, 82, 'embed_youtube_video', ''),
(553, 82, '_embed_youtube_video', 'field_557913cc6430d'),
(554, 82, 'special_feature', 'None: none'),
(555, 82, '_special_feature', 'field_5579140e6430e'),
(556, 32, 'vehicle_type', 'Cadillac XTS'),
(557, 32, '_vehicle_type', 'field_557912f76430a'),
(558, 32, 'hero_image', '24'),
(559, 32, '_hero_image', 'field_557913356430b'),
(560, 32, 'embed_youtube_video', '<iframe width="935" height="560" src="https://www.youtube.com/embed/KYpFVLpHTn0" frameborder="0" allowfullscreen></iframe>'),
(561, 32, '_embed_youtube_video', 'field_557913cc6430d'),
(575, 84, 'vehicle_type', 'Cadillac XTS'),
(576, 84, '_vehicle_type', 'field_557912f76430a'),
(577, 84, 'hero_image', '24'),
(578, 84, '_hero_image', 'field_557913356430b'),
(579, 84, 'vehicle_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(580, 84, '_vehicle_description', 'field_557913a76430c'),
(581, 84, 'embed_youtube_video', '<iframe width="420" height="315" src="https://www.youtube.com/embed/KYpFVLpHTn0" frameborder="0" allowfullscreen></iframe>'),
(582, 84, '_embed_youtube_video', 'field_557913cc6430d'),
(583, 84, 'special_feature', 'None: none'),
(584, 84, '_special_feature', 'field_5579140e6430e'),
(585, 75, 'rule', 'a:5:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:17:"page-services.php";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(596, 86, 'vehicle_type', 'Cheverolet Suburban'),
(597, 86, '_vehicle_type', 'field_557912f76430a'),
(598, 86, 'hero_image', '24'),
(599, 86, '_hero_image', 'field_557913356430b'),
(600, 86, 'vehicle_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(601, 86, '_vehicle_description', 'field_557913a76430c'),
(602, 86, 'embed_youtube_video', '<iframe width="420" height="315" src="https://www.youtube.com/embed/KYpFVLpHTn0" frameborder="0" allowfullscreen></iframe>'),
(603, 86, '_embed_youtube_video', 'field_557913cc6430d'),
(604, 86, 'special_feature', 'None: none'),
(605, 86, '_special_feature', 'field_5579140e6430e'),
(606, 34, 'vehicle_type', 'Cheverolet Suburban'),
(607, 34, '_vehicle_type', 'field_557912f76430a'),
(608, 34, 'hero_image', '24'),
(609, 34, '_hero_image', 'field_557913356430b'),
(610, 34, 'embed_youtube_video', '<iframe width="420" height="315" src="https://www.youtube.com/embed/KYpFVLpHTn0" frameborder="0" allowfullscreen></iframe>'),
(611, 34, '_embed_youtube_video', 'field_557913cc6430d'),
(612, 87, 'vehicle_type', 'Chrysler 300 Stretch'),
(613, 87, '_vehicle_type', 'field_557912f76430a'),
(614, 87, 'hero_image', '24'),
(615, 87, '_hero_image', 'field_557913356430b'),
(616, 87, 'vehicle_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(617, 87, '_vehicle_description', 'field_557913a76430c'),
(618, 87, 'embed_youtube_video', '<iframe width="420" height="315" src="https://www.youtube.com/embed/KYpFVLpHTn0" frameborder="0" allowfullscreen></iframe>'),
(619, 87, '_embed_youtube_video', 'field_557913cc6430d'),
(620, 87, 'special_feature', 'None: none'),
(621, 87, '_special_feature', 'field_5579140e6430e'),
(622, 45, 'vehicle_type', 'Chrysler 300 Stretch'),
(623, 45, '_vehicle_type', 'field_557912f76430a'),
(624, 45, 'hero_image', '24'),
(625, 45, '_hero_image', 'field_557913356430b'),
(626, 45, 'embed_youtube_video', '<iframe width="420" height="315" src="https://www.youtube.com/embed/KYpFVLpHTn0" frameborder="0" allowfullscreen></iframe>'),
(627, 45, '_embed_youtube_video', 'field_557913cc6430d'),
(628, 88, 'service_type', 'Corporate'),
(629, 88, '_service_type', 'field_557cab3f0fa8f'),
(630, 88, 'hero_image', '24'),
(631, 88, '_hero_image', 'field_557cab100fa8e'),
(632, 88, 'service_description', 'Lorem ipsum dolor sit amet, id nec assum clita, ad solum aliquip qui, quando consul signiferumque in vis. Possit iracundia ex mei, eu quot vero consectetuer nec. Mel ad munere graeci numquam. Graeci posidonium interesset ne qui.  An eripuit consequuntur vix, mutat errem ad nec. At pri tale illum efficiantur, malis definitiones pri ei, ad iudico numquam vix. Ut per solum platonem disputationi, an est semper quaestio. Usu ei stet utinam sensibus, quot labitur eligendi eam id, eum bonorum similique ne. Nec ex iuvaret apeirian, eu dico admodum necessitatibus sed. Utamur scripserit has cu, cu his zril complectitur signiferumque.'),
(633, 88, '_service_description', 'field_557ca94c2cfb0'),
(634, 80, 'service_type', 'Corporate'),
(635, 80, '_service_type', 'field_557cab3f0fa8f'),
(636, 90, 'vehicle_type', 'Hummer H2'),
(637, 90, '_vehicle_type', 'field_557912f76430a'),
(638, 90, 'hero_image', '24'),
(639, 90, '_hero_image', 'field_557913356430b'),
(640, 90, 'vehicle_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(641, 90, '_vehicle_description', 'field_557913a76430c'),
(642, 90, 'embed_youtube_video', '<iframe width="420" height="315" src="https://www.youtube.com/embed/KYpFVLpHTn0" frameborder="0" allowfullscreen></iframe>'),
(643, 90, '_embed_youtube_video', 'field_557913cc6430d'),
(644, 90, 'special_feature', 'None: none'),
(645, 90, '_special_feature', 'field_5579140e6430e'),
(646, 43, 'vehicle_type', 'Hummer H2'),
(647, 43, '_vehicle_type', 'field_557912f76430a'),
(648, 43, 'hero_image', '24'),
(649, 43, '_hero_image', 'field_557913356430b'),
(650, 43, 'embed_youtube_video', '<iframe width="420" height="315" src="https://www.youtube.com/embed/KYpFVLpHTn0" frameborder="0" allowfullscreen></iframe>'),
(651, 43, '_embed_youtube_video', 'field_557913cc6430d'),
(652, 91, 'vehicle_type', 'Infiniti Stretch Limo'),
(653, 91, '_vehicle_type', 'field_557912f76430a'),
(654, 91, 'hero_image', '24'),
(655, 91, '_hero_image', 'field_557913356430b'),
(656, 91, 'vehicle_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(657, 91, '_vehicle_description', 'field_557913a76430c'),
(658, 91, 'embed_youtube_video', '<iframe width="420" height="315" src="https://www.youtube.com/embed/KYpFVLpHTn0" frameborder="0" allowfullscreen></iframe>'),
(659, 91, '_embed_youtube_video', 'field_557913cc6430d'),
(660, 91, 'special_feature', 'None: none'),
(661, 91, '_special_feature', 'field_5579140e6430e'),
(662, 53, 'vehicle_type', 'Infiniti Stretch Limo'),
(663, 53, '_vehicle_type', 'field_557912f76430a'),
(664, 53, 'hero_image', '24'),
(665, 53, '_hero_image', 'field_557913356430b'),
(666, 53, 'embed_youtube_video', '<iframe width="420" height="315" src="https://www.youtube.com/embed/KYpFVLpHTn0" frameborder="0" allowfullscreen></iframe>'),
(667, 53, '_embed_youtube_video', 'field_557913cc6430d'),
(668, 92, 'vehicle_type', 'Lincoln Navigator'),
(669, 92, '_vehicle_type', 'field_557912f76430a'),
(670, 92, 'hero_image', '24'),
(671, 92, '_hero_image', 'field_557913356430b'),
(672, 92, 'vehicle_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(673, 92, '_vehicle_description', 'field_557913a76430c'),
(674, 92, 'embed_youtube_video', '<iframe width="420" height="315" src="https://www.youtube.com/embed/KYpFVLpHTn0" frameborder="0" allowfullscreen></iframe>'),
(675, 92, '_embed_youtube_video', 'field_557913cc6430d'),
(676, 92, 'special_feature', 'None: none'),
(677, 92, '_special_feature', 'field_5579140e6430e'),
(678, 39, 'vehicle_type', 'Lincoln Navigator'),
(679, 39, '_vehicle_type', 'field_557912f76430a'),
(680, 39, 'hero_image', '24'),
(681, 39, '_hero_image', 'field_557913356430b'),
(682, 39, 'embed_youtube_video', '<iframe width="420" height="315" src="https://www.youtube.com/embed/KYpFVLpHTn0" frameborder="0" allowfullscreen></iframe>'),
(683, 39, '_embed_youtube_video', 'field_557913cc6430d'),
(684, 93, 'vehicle_type', 'Lincoln Town Car Stretch, for eight'),
(685, 93, '_vehicle_type', 'field_557912f76430a'),
(686, 93, 'hero_image', '24'),
(687, 93, '_hero_image', 'field_557913356430b'),
(688, 93, 'vehicle_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(689, 93, '_vehicle_description', 'field_557913a76430c'),
(690, 93, 'embed_youtube_video', '<iframe width="420" height="315" src="https://www.youtube.com/embed/KYpFVLpHTn0" frameborder="0" allowfullscreen></iframe>'),
(691, 93, '_embed_youtube_video', 'field_557913cc6430d'),
(692, 93, 'special_feature', 'Most popular'),
(693, 93, '_special_feature', 'field_5579140e6430e'),
(694, 49, 'vehicle_type', 'Lincoln Town Car Stretch, for eight'),
(695, 49, '_vehicle_type', 'field_557912f76430a'),
(696, 49, 'hero_image', '24'),
(697, 49, '_hero_image', 'field_557913356430b'),
(698, 49, 'embed_youtube_video', '<iframe width="420" height="315" src="https://www.youtube.com/embed/KYpFVLpHTn0" frameborder="0" allowfullscreen></iframe>'),
(699, 49, '_embed_youtube_video', 'field_557913cc6430d'),
(700, 94, 'vehicle_type', 'Lincoln Town Car Stretch, for eight'),
(701, 94, '_vehicle_type', 'field_557912f76430a'),
(702, 94, 'hero_image', '24'),
(703, 94, '_hero_image', 'field_557913356430b'),
(704, 94, 'vehicle_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(705, 94, '_vehicle_description', 'field_557913a76430c'),
(706, 94, 'embed_youtube_video', '<iframe width="420" height="315" src="https://www.youtube.com/embed/KYpFVLpHTn0" frameborder="0" allowfullscreen></iframe>'),
(707, 94, '_embed_youtube_video', 'field_557913cc6430d'),
(708, 94, 'special_feature', 'None: none'),
(709, 94, '_special_feature', 'field_5579140e6430e'),
(710, 95, 'vehicle_type', 'Lincoln Town Car Stretch, for six'),
(711, 95, '_vehicle_type', 'field_557912f76430a'),
(712, 95, 'hero_image', '24'),
(713, 95, '_hero_image', 'field_557913356430b'),
(714, 95, 'vehicle_description', 'The 2004 Lincoln Town Care Sedan Stretch Limousine accommodates up to 6 passengers comfortably. Amenities include in-car Wi-Fi, TVs with DVD player, AM/FM stereo, Bluetooth, dual privacy divider, intercom system, tinted windows, plush bar, and leather interior.\r\n\r\nExterior: white. Interior: beige. Perfect for your prom group, wedding party, or large family events.'),
(715, 95, '_vehicle_description', 'field_557913a76430c'),
(716, 95, 'embed_youtube_video', '<iframe width="420" height="315" src="https://www.youtube.com/embed/KYpFVLpHTn0" frameborder="0" allowfullscreen></iframe>'),
(717, 95, '_embed_youtube_video', 'field_557913cc6430d'),
(718, 95, 'special_feature', 'Most popular'),
(719, 95, '_special_feature', 'field_5579140e6430e'),
(720, 47, 'vehicle_type', 'Lincoln Town Car Stretch, for six'),
(721, 47, '_vehicle_type', 'field_557912f76430a'),
(722, 47, 'hero_image', '115'),
(723, 47, '_hero_image', 'field_557913356430b'),
(724, 47, 'embed_youtube_video', '<iframe width="560" height="315" src="https://www.youtube.com/embed/7CR7qaVEQBs" frameborder="0" allowfullscreen></iframe>'),
(725, 47, '_embed_youtube_video', 'field_557913cc6430d'),
(726, 96, 'vehicle_type', 'Mercedes-Benz R350'),
(727, 96, '_vehicle_type', 'field_557912f76430a'),
(728, 96, 'hero_image', '24'),
(729, 96, '_hero_image', 'field_557913356430b'),
(730, 96, 'vehicle_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(731, 96, '_vehicle_description', 'field_557913a76430c'),
(732, 96, 'embed_youtube_video', '<iframe width="420" height="315" src="https://www.youtube.com/embed/KYpFVLpHTn0" frameborder="0" allowfullscreen></iframe>'),
(733, 96, '_embed_youtube_video', 'field_557913cc6430d'),
(734, 96, 'special_feature', 'None: none'),
(735, 96, '_special_feature', 'field_5579140e6430e'),
(736, 41, 'vehicle_type', 'Mercedes-Benz R350'),
(737, 41, '_vehicle_type', 'field_557912f76430a'),
(738, 41, 'hero_image', '24'),
(739, 41, '_hero_image', 'field_557913356430b'),
(740, 41, 'embed_youtube_video', '<iframe width="420" height="315" src="https://www.youtube.com/embed/KYpFVLpHTn0" frameborder="0" allowfullscreen></iframe>'),
(741, 41, '_embed_youtube_video', 'field_557913cc6430d'),
(742, 97, 'vehicle_type', 'Mercedes-Benz s550'),
(743, 97, '_vehicle_type', 'field_557912f76430a'),
(744, 97, 'hero_image', '24'),
(745, 97, '_hero_image', 'field_557913356430b'),
(746, 97, 'vehicle_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(747, 97, '_vehicle_description', 'field_557913a76430c'),
(748, 97, 'embed_youtube_video', '<iframe width="420" height="315" src="https://www.youtube.com/embed/KYpFVLpHTn0" frameborder="0" allowfullscreen></iframe>'),
(749, 97, '_embed_youtube_video', 'field_557913cc6430d'),
(750, 97, 'special_feature', 'Most popular'),
(751, 97, '_special_feature', 'field_5579140e6430e'),
(752, 20, 'vehicle_type', 'Mercedes-Benz s550'),
(753, 20, '_vehicle_type', 'field_557912f76430a'),
(754, 20, 'hero_image', '24'),
(755, 20, '_hero_image', 'field_557913356430b'),
(756, 20, 'embed_youtube_video', '<iframe width="420" height="315" src="https://www.youtube.com/embed/KYpFVLpHTn0" frameborder="0" allowfullscreen></iframe>'),
(757, 20, '_embed_youtube_video', 'field_557913cc6430d'),
(758, 98, 'vehicle_type', 'Mercedes-Benz Sprinter'),
(759, 98, '_vehicle_type', 'field_557912f76430a'),
(760, 98, 'hero_image', '24'),
(761, 98, '_hero_image', 'field_557913356430b'),
(762, 98, 'vehicle_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(763, 98, '_vehicle_description', 'field_557913a76430c'),
(764, 98, 'embed_youtube_video', '<iframe width="420" height="315" src="https://www.youtube.com/embed/KYpFVLpHTn0" frameborder="0" allowfullscreen></iframe>'),
(765, 98, '_embed_youtube_video', 'field_557913cc6430d'),
(766, 98, 'special_feature', 'None: none'),
(767, 98, '_special_feature', 'field_5579140e6430e'),
(768, 55, 'vehicle_type', 'Mercedes-Benz Sprinter'),
(769, 55, '_vehicle_type', 'field_557912f76430a'),
(770, 55, 'hero_image', '24'),
(771, 55, '_hero_image', 'field_557913356430b'),
(772, 55, 'embed_youtube_video', '<iframe width="420" height="315" src="https://www.youtube.com/embed/KYpFVLpHTn0" frameborder="0" allowfullscreen></iframe>') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(773, 55, '_embed_youtube_video', 'field_557913cc6430d'),
(774, 99, 'vehicle_type', 'Party Bus'),
(775, 99, '_vehicle_type', 'field_557912f76430a'),
(776, 99, 'hero_image', '24'),
(777, 99, '_hero_image', 'field_557913356430b'),
(778, 99, 'vehicle_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(779, 99, '_vehicle_description', 'field_557913a76430c'),
(780, 99, 'embed_youtube_video', '<iframe width="420" height="315" src="https://www.youtube.com/embed/KYpFVLpHTn0" frameborder="0" allowfullscreen></iframe>'),
(781, 99, '_embed_youtube_video', 'field_557913cc6430d'),
(782, 99, 'special_feature', 'None: none'),
(783, 99, '_special_feature', 'field_5579140e6430e'),
(784, 57, 'vehicle_type', 'Party Bus'),
(785, 57, '_vehicle_type', 'field_557912f76430a'),
(786, 57, 'hero_image', '24'),
(787, 57, '_hero_image', 'field_557913356430b'),
(788, 57, 'embed_youtube_video', '<iframe width="420" height="315" src="https://www.youtube.com/embed/KYpFVLpHTn0" frameborder="0" allowfullscreen></iframe>'),
(789, 57, '_embed_youtube_video', 'field_557913cc6430d'),
(790, 100, 'vehicle_type', 'Shuttle Bus'),
(791, 100, '_vehicle_type', 'field_557912f76430a'),
(792, 100, 'hero_image', '24'),
(793, 100, '_hero_image', 'field_557913356430b'),
(794, 100, 'vehicle_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(795, 100, '_vehicle_description', 'field_557913a76430c'),
(796, 100, 'embed_youtube_video', '<iframe width="420" height="315" src="https://www.youtube.com/embed/KYpFVLpHTn0" frameborder="0" allowfullscreen></iframe>'),
(797, 100, '_embed_youtube_video', 'field_557913cc6430d'),
(798, 100, 'special_feature', 'None: none'),
(799, 100, '_special_feature', 'field_5579140e6430e'),
(800, 59, 'vehicle_type', 'Shuttle Bus'),
(801, 59, '_vehicle_type', 'field_557912f76430a'),
(802, 59, 'hero_image', '24'),
(803, 59, '_hero_image', 'field_557913356430b'),
(804, 59, 'embed_youtube_video', '<iframe width="420" height="315" src="https://www.youtube.com/embed/KYpFVLpHTn0" frameborder="0" allowfullscreen></iframe>'),
(805, 59, '_embed_youtube_video', 'field_557913cc6430d'),
(806, 101, 'vehicle_type', 'Stretch Hummer H2'),
(807, 101, '_vehicle_type', 'field_557912f76430a'),
(808, 101, 'hero_image', '24'),
(809, 101, '_hero_image', 'field_557913356430b'),
(810, 101, 'vehicle_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(811, 101, '_vehicle_description', 'field_557913a76430c'),
(812, 101, 'embed_youtube_video', '<iframe width="420" height="315" src="https://www.youtube.com/embed/KYpFVLpHTn0" frameborder="0" allowfullscreen></iframe>'),
(813, 101, '_embed_youtube_video', 'field_557913cc6430d'),
(814, 101, 'special_feature', 'None: none'),
(815, 101, '_special_feature', 'field_5579140e6430e'),
(816, 51, 'vehicle_type', 'Stretch Hummer H2'),
(817, 51, '_vehicle_type', 'field_557912f76430a'),
(818, 51, 'hero_image', '24'),
(819, 51, '_hero_image', 'field_557913356430b'),
(820, 51, 'embed_youtube_video', '<iframe width="420" height="315" src="https://www.youtube.com/embed/KYpFVLpHTn0" frameborder="0" allowfullscreen></iframe>'),
(821, 51, '_embed_youtube_video', 'field_557913cc6430d'),
(822, 102, '_edit_last', '1'),
(823, 102, '_edit_lock', '1434236207:1'),
(824, 102, '_wp_page_template', 'page-services.php'),
(825, 103, 'service_type', 'Weddings'),
(826, 103, '_service_type', 'field_557cab3f0fa8f'),
(827, 103, 'hero_image', '24'),
(828, 103, '_hero_image', 'field_557cab100fa8e'),
(829, 103, 'service_description', 'Lorem ipsum dolor sit amet, id nec assum clita, ad solum aliquip qui, quando consul signiferumque in vis. Possit iracundia ex mei, eu quot vero consectetuer nec. Mel ad munere graeci numquam. Graeci posidonium interesset ne qui.  An eripuit consequuntur vix, mutat errem ad nec. At pri tale illum efficiantur, malis definitiones pri ei, ad iudico numquam vix. Ut per solum platonem disputationi, an est semper quaestio. Usu ei stet utinam sensibus, quot labitur eligendi eam id, eum bonorum similique ne. Nec ex iuvaret apeirian, eu dico admodum necessitatibus sed. Utamur scripserit has cu, cu his zril complectitur signiferumque.'),
(830, 103, '_service_description', 'field_557ca94c2cfb0'),
(831, 102, 'service_type', 'Weddings'),
(832, 102, '_service_type', 'field_557cab3f0fa8f'),
(833, 102, 'hero_image', '24'),
(834, 102, '_hero_image', 'field_557cab100fa8e'),
(835, 102, 'service_description', 'Lorem ipsum dolor sit amet, id nec assum clita, ad solum aliquip qui, quando consul signiferumque in vis. Possit iracundia ex mei, eu quot vero consectetuer nec. Mel ad munere graeci numquam. Graeci posidonium interesset ne qui.  An eripuit consequuntur vix, mutat errem ad nec. At pri tale illum efficiantur, malis definitiones pri ei, ad iudico numquam vix. Ut per solum platonem disputationi, an est semper quaestio. Usu ei stet utinam sensibus, quot labitur eligendi eam id, eum bonorum similique ne. Nec ex iuvaret apeirian, eu dico admodum necessitatibus sed. Utamur scripserit has cu, cu his zril complectitur signiferumque.'),
(836, 102, '_service_description', 'field_557ca94c2cfb0'),
(837, 104, '_edit_last', '1'),
(838, 104, '_edit_lock', '1434236236:1'),
(839, 104, '_wp_page_template', 'page-services.php'),
(840, 105, 'service_type', 'Travel'),
(841, 105, '_service_type', 'field_557cab3f0fa8f'),
(842, 105, 'hero_image', '24'),
(843, 105, '_hero_image', 'field_557cab100fa8e'),
(844, 105, 'service_description', 'Lorem ipsum dolor sit amet, id nec assum clita, ad solum aliquip qui, quando consul signiferumque in vis. Possit iracundia ex mei, eu quot vero consectetuer nec. Mel ad munere graeci numquam. Graeci posidonium interesset ne qui.  An eripuit consequuntur vix, mutat errem ad nec. At pri tale illum efficiantur, malis definitiones pri ei, ad iudico numquam vix. Ut per solum platonem disputationi, an est semper quaestio. Usu ei stet utinam sensibus, quot labitur eligendi eam id, eum bonorum similique ne. Nec ex iuvaret apeirian, eu dico admodum necessitatibus sed. Utamur scripserit has cu, cu his zril complectitur signiferumque.'),
(845, 105, '_service_description', 'field_557ca94c2cfb0'),
(846, 104, 'service_type', 'Travel'),
(847, 104, '_service_type', 'field_557cab3f0fa8f'),
(848, 104, 'hero_image', '24'),
(849, 104, '_hero_image', 'field_557cab100fa8e'),
(850, 104, 'service_description', 'Lorem ipsum dolor sit amet, id nec assum clita, ad solum aliquip qui, quando consul signiferumque in vis. Possit iracundia ex mei, eu quot vero consectetuer nec. Mel ad munere graeci numquam. Graeci posidonium interesset ne qui.  An eripuit consequuntur vix, mutat errem ad nec. At pri tale illum efficiantur, malis definitiones pri ei, ad iudico numquam vix. Ut per solum platonem disputationi, an est semper quaestio. Usu ei stet utinam sensibus, quot labitur eligendi eam id, eum bonorum similique ne. Nec ex iuvaret apeirian, eu dico admodum necessitatibus sed. Utamur scripserit has cu, cu his zril complectitur signiferumque.'),
(851, 104, '_service_description', 'field_557ca94c2cfb0'),
(852, 106, '_edit_last', '1'),
(853, 106, '_edit_lock', '1434236362:1'),
(854, 106, '_wp_page_template', 'page-services.php'),
(855, 107, 'service_type', 'Events'),
(856, 107, '_service_type', 'field_557cab3f0fa8f'),
(857, 107, 'hero_image', '24'),
(858, 107, '_hero_image', 'field_557cab100fa8e'),
(859, 107, 'service_description', 'Lorem ipsum dolor sit amet, id nec assum clita, ad solum aliquip qui, quando consul signiferumque in vis. Possit iracundia ex mei, eu quot vero consectetuer nec. Mel ad munere graeci numquam. Graeci posidonium interesset ne qui.  An eripuit consequuntur vix, mutat errem ad nec. At pri tale illum efficiantur, malis definitiones pri ei, ad iudico numquam vix. Ut per solum platonem disputationi, an est semper quaestio. Usu ei stet utinam sensibus, quot labitur eligendi eam id, eum bonorum similique ne. Nec ex iuvaret apeirian, eu dico admodum necessitatibus sed. Utamur scripserit has cu, cu his zril complectitur signiferumque.'),
(860, 107, '_service_description', 'field_557ca94c2cfb0'),
(861, 106, 'service_type', 'Events'),
(862, 106, '_service_type', 'field_557cab3f0fa8f'),
(863, 106, 'hero_image', '24'),
(864, 106, '_hero_image', 'field_557cab100fa8e'),
(865, 106, 'service_description', 'Lorem ipsum dolor sit amet, id nec assum clita, ad solum aliquip qui, quando consul signiferumque in vis. Possit iracundia ex mei, eu quot vero consectetuer nec. Mel ad munere graeci numquam. Graeci posidonium interesset ne qui.  An eripuit consequuntur vix, mutat errem ad nec. At pri tale illum efficiantur, malis definitiones pri ei, ad iudico numquam vix. Ut per solum platonem disputationi, an est semper quaestio. Usu ei stet utinam sensibus, quot labitur eligendi eam id, eum bonorum similique ne. Nec ex iuvaret apeirian, eu dico admodum necessitatibus sed. Utamur scripserit has cu, cu his zril complectitur signiferumque.'),
(866, 106, '_service_description', 'field_557ca94c2cfb0'),
(867, 109, 'vehicle_type', 'Cadillac XTS'),
(868, 109, '_vehicle_type', 'field_557912f76430a'),
(869, 109, 'hero_image', '24'),
(870, 109, '_hero_image', 'field_557913356430b'),
(871, 109, 'vehicle_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(872, 109, '_vehicle_description', 'field_557913a76430c') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(873, 109, 'embed_youtube_video', '<iframe width="935" height="560" src="https://www.youtube.com/embed/KYpFVLpHTn0" frameborder="0" allowfullscreen></iframe>'),
(874, 109, '_embed_youtube_video', 'field_557913cc6430d'),
(875, 109, 'special_feature', 'None: none'),
(876, 109, '_special_feature', 'field_5579140e6430e'),
(877, 22, 'field_558626e57fe81', 'a:11:{s:3:"key";s:19:"field_558626e57fe81";s:5:"label";s:16:"Image Carousel 1";s:4:"name";s:16:"image_carousel_1";s:4:"type";s:5:"image";s:12:"instructions";s:30:"Required 1st image of carousel";s:8:"required";s:1:"1";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:10:"uploadedTo";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_5579140e6430e";s:8:"operator";s:2:"==";s:5:"value";s:4:"None";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(878, 22, 'field_558627327fe82', 'a:11:{s:3:"key";s:19:"field_558627327fe82";s:5:"label";s:16:"Image Carousel 2";s:4:"name";s:16:"image_carousel_2";s:4:"type";s:5:"image";s:12:"instructions";s:30:"Required 2nd image of carousel";s:8:"required";s:1:"1";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_5579140e6430e";s:8:"operator";s:2:"==";s:5:"value";s:4:"None";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'),
(879, 22, 'field_558627457fe83', 'a:11:{s:3:"key";s:19:"field_558627457fe83";s:5:"label";s:16:"Image Carousel 3";s:4:"name";s:16:"image_carousel_3";s:4:"type";s:5:"image";s:12:"instructions";s:30:"Required 3rd image of carousel";s:8:"required";s:1:"1";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_5579140e6430e";s:8:"operator";s:2:"==";s:5:"value";s:4:"None";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:5;}'),
(880, 22, 'field_558627537fe84', 'a:11:{s:3:"key";s:19:"field_558627537fe84";s:5:"label";s:16:"Image Carousel 4";s:4:"name";s:16:"image_carousel_4";s:4:"type";s:5:"image";s:12:"instructions";s:30:"Optional 4th image of carousel";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_5579140e6430e";s:8:"operator";s:2:"==";s:5:"value";s:4:"None";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:6;}'),
(889, 113, 'vehicle_type', 'Cadillac XTS'),
(890, 113, '_vehicle_type', 'field_557912f76430a'),
(891, 113, 'hero_image', '24'),
(892, 113, '_hero_image', 'field_557913356430b'),
(893, 113, 'vehicle_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(894, 113, '_vehicle_description', 'field_557913a76430c'),
(895, 113, 'embed_youtube_video', '<iframe width="935" height="560" src="https://www.youtube.com/embed/KYpFVLpHTn0" frameborder="0" allowfullscreen></iframe>'),
(896, 113, '_embed_youtube_video', 'field_557913cc6430d'),
(897, 113, 'special_feature', 'None: none'),
(898, 113, '_special_feature', 'field_5579140e6430e'),
(899, 113, 'image_carousel_1', '110'),
(900, 113, '_image_carousel_1', 'field_558626e57fe81'),
(901, 113, 'image_carousel_2', '111'),
(902, 113, '_image_carousel_2', 'field_558627327fe82'),
(903, 113, 'image_carousel_3', '112'),
(904, 113, '_image_carousel_3', 'field_558627457fe83'),
(905, 113, 'image_carousel_4', ''),
(906, 113, '_image_carousel_4', 'field_558627537fe84'),
(907, 32, 'image_carousel_1', '110'),
(908, 32, '_image_carousel_1', 'field_558626e57fe81'),
(909, 32, 'image_carousel_2', '111'),
(910, 32, '_image_carousel_2', 'field_558627327fe82'),
(911, 32, 'image_carousel_3', '112'),
(912, 32, '_image_carousel_3', 'field_558627457fe83'),
(913, 32, 'image_carousel_4', '24'),
(914, 32, '_image_carousel_4', 'field_558627537fe84'),
(915, 114, 'vehicle_type', 'Cadillac XTS'),
(916, 114, '_vehicle_type', 'field_557912f76430a'),
(917, 114, 'hero_image', '24'),
(918, 114, '_hero_image', 'field_557913356430b'),
(919, 114, 'vehicle_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(920, 114, '_vehicle_description', 'field_557913a76430c'),
(921, 114, 'embed_youtube_video', '<iframe width="935" height="560" src="https://www.youtube.com/embed/KYpFVLpHTn0" frameborder="0" allowfullscreen></iframe>'),
(922, 114, '_embed_youtube_video', 'field_557913cc6430d'),
(923, 114, 'special_feature', 'None: none'),
(924, 114, '_special_feature', 'field_5579140e6430e'),
(925, 114, 'image_carousel_1', '110'),
(926, 114, '_image_carousel_1', 'field_558626e57fe81'),
(927, 114, 'image_carousel_2', '111'),
(928, 114, '_image_carousel_2', 'field_558627327fe82'),
(929, 114, 'image_carousel_3', '112'),
(930, 114, '_image_carousel_3', 'field_558627457fe83'),
(931, 114, 'image_carousel_4', '24'),
(932, 114, '_image_carousel_4', 'field_558627537fe84'),
(933, 115, '_wp_attached_file', '2015/06/photo-1_r.jpg'),
(934, 115, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2400;s:6:"height";i:900;s:4:"file";s:21:"2015/06/photo-1_r.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"photo-1_r-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"photo-1_r-300x113.jpg";s:5:"width";i:300;s:6:"height";i:113;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:22:"photo-1_r-1024x384.jpg";s:5:"width";i:1024;s:6:"height";i:384;s:9:"mime-type";s:10:"image/jpeg";}s:15:"bones-thumb-600";a:4:{s:4:"file";s:21:"photo-1_r-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:15:"bones-thumb-300";a:4:{s:4:"file";s:21:"photo-1_r-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:21:"photo-1_r-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(935, 116, '_wp_attached_file', '2015/06/photo-2_r.jpg'),
(936, 116, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2400;s:6:"height";i:900;s:4:"file";s:21:"2015/06/photo-2_r.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"photo-2_r-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"photo-2_r-300x113.jpg";s:5:"width";i:300;s:6:"height";i:113;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:22:"photo-2_r-1024x384.jpg";s:5:"width";i:1024;s:6:"height";i:384;s:9:"mime-type";s:10:"image/jpeg";}s:15:"bones-thumb-600";a:4:{s:4:"file";s:21:"photo-2_r-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:15:"bones-thumb-300";a:4:{s:4:"file";s:21:"photo-2_r-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:21:"photo-2_r-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(937, 117, '_wp_attached_file', '2015/06/photo-3_r.jpg'),
(938, 117, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2400;s:6:"height";i:900;s:4:"file";s:21:"2015/06/photo-3_r.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"photo-3_r-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"photo-3_r-300x113.jpg";s:5:"width";i:300;s:6:"height";i:113;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:22:"photo-3_r-1024x384.jpg";s:5:"width";i:1024;s:6:"height";i:384;s:9:"mime-type";s:10:"image/jpeg";}s:15:"bones-thumb-600";a:4:{s:4:"file";s:21:"photo-3_r-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:15:"bones-thumb-300";a:4:{s:4:"file";s:21:"photo-3_r-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:21:"photo-3_r-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(945, 115, '_wp_attachment_image_alt', ''),
(965, 129, '_wp_attached_file', '2015/06/thumb-1_r.jpg'),
(966, 129, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:200;s:4:"file";s:21:"2015/06/thumb-1_r.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"thumb-1_r-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"thumb-1_r-300x150.jpg";s:5:"width";i:300;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:15:"bones-thumb-600";a:4:{s:4:"file";s:21:"thumb-1_r-400x150.jpg";s:5:"width";i:400;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:15:"bones-thumb-300";a:4:{s:4:"file";s:21:"thumb-1_r-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:21:"thumb-1_r-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(967, 130, '_wp_attached_file', '2015/06/thumb-2_r.jpg'),
(968, 130, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:200;s:4:"file";s:21:"2015/06/thumb-2_r.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"thumb-2_r-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"thumb-2_r-300x150.jpg";s:5:"width";i:300;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:15:"bones-thumb-600";a:4:{s:4:"file";s:21:"thumb-2_r-400x150.jpg";s:5:"width";i:400;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:15:"bones-thumb-300";a:4:{s:4:"file";s:21:"thumb-2_r-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:21:"thumb-2_r-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(969, 131, '_wp_attached_file', '2015/06/thumb-3_r.jpg'),
(970, 131, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:200;s:4:"file";s:21:"2015/06/thumb-3_r.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"thumb-3_r-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"thumb-3_r-300x150.jpg";s:5:"width";i:300;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:15:"bones-thumb-600";a:4:{s:4:"file";s:21:"thumb-3_r-400x150.jpg";s:5:"width";i:400;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:15:"bones-thumb-300";a:4:{s:4:"file";s:21:"thumb-3_r-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:21:"thumb-3_r-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(971, 132, 'vehicle_type', 'Lincoln Town Car Stretch, for six'),
(972, 132, '_vehicle_type', 'field_557912f76430a'),
(973, 132, 'hero_image', '115'),
(974, 132, '_hero_image', 'field_557913356430b'),
(975, 132, 'vehicle_description', 'The 2004 Lincoln Town Care Sedan Stretch Limousine accommodates up to 6 passengers comfortably. Amenities include in-car Wi-Fi, TVs with DVD player, AM/FM stereo, Bluetooth, dual privacy divider, intercom system, tinted windows, plush bar, and leather interior.\r\n\r\nExterior: white. Interior: beige. Perfect for your prom group, wedding party, or large family events.'),
(976, 132, '_vehicle_description', 'field_557913a76430c'),
(977, 132, 'embed_youtube_video', '<iframe width="420" height="315" src="https://www.youtube.com/embed/KYpFVLpHTn0" frameborder="0" allowfullscreen></iframe>'),
(978, 132, '_embed_youtube_video', 'field_557913cc6430d'),
(979, 132, 'special_feature', 'Most popular'),
(980, 132, '_special_feature', 'field_5579140e6430e'),
(981, 132, 'image_carousel_1', '129'),
(982, 132, '_image_carousel_1', 'field_558626e57fe81'),
(983, 132, 'image_carousel_2', '130'),
(984, 132, '_image_carousel_2', 'field_558627327fe82'),
(985, 132, 'image_carousel_3', '131'),
(986, 132, '_image_carousel_3', 'field_558627457fe83'),
(987, 132, 'image_carousel_4', ''),
(988, 132, '_image_carousel_4', 'field_558627537fe84'),
(989, 47, 'image_carousel_1', '129'),
(990, 47, '_image_carousel_1', 'field_558626e57fe81'),
(991, 47, 'image_carousel_2', '130'),
(992, 47, '_image_carousel_2', 'field_558627327fe82'),
(993, 47, 'image_carousel_3', '131'),
(994, 47, '_image_carousel_3', 'field_558627457fe83'),
(995, 47, 'image_carousel_4', ''),
(996, 47, '_image_carousel_4', 'field_558627537fe84'),
(997, 22, 'field_5599c3687abd4', 'a:11:{s:3:"key";s:19:"field_5599c3687abd4";s:5:"label";s:16:"Image Carousel 5";s:4:"name";s:16:"image_carousel_5";s:4:"type";s:5:"image";s:12:"instructions";s:30:"Optional 5th image of carousel";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_5579140e6430e";s:8:"operator";s:2:"==";s:5:"value";s:4:"None";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:7;}'),
(998, 22, 'field_5599c37a7abd5', 'a:11:{s:3:"key";s:19:"field_5599c37a7abd5";s:5:"label";s:16:"Image Carousel 6";s:4:"name";s:16:"image_carousel_6";s:4:"type";s:5:"image";s:12:"instructions";s:30:"Optional 6th image of carousel";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_5579140e6430e";s:8:"operator";s:2:"==";s:5:"value";s:4:"None";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:8;}'),
(999, 22, 'field_5599c3377abd3', 'a:14:{s:3:"key";s:19:"field_5599c3377abd3";s:5:"label";s:17:"Video Description";s:4:"name";s:17:"video_description";s:4:"type";s:4:"text";s:12:"instructions";s:31:"Optional introduction for video";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_5579140e6430e";s:8:"operator";s:2:"==";s:5:"value";s:4:"None";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:10;}'),
(1000, 22, 'rule', 'a:5:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:16:"page-vehicle.php";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(1001, 134, 'vehicle_type', 'Lincoln Town Car Stretch, for six'),
(1002, 134, '_vehicle_type', 'field_557912f76430a'),
(1003, 134, 'hero_image', '115'),
(1004, 134, '_hero_image', 'field_557913356430b'),
(1005, 134, 'special_feature', 'Most popular') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1006, 134, '_special_feature', 'field_5579140e6430e'),
(1007, 134, 'image_carousel_1', '129'),
(1008, 134, '_image_carousel_1', 'field_558626e57fe81'),
(1009, 134, 'image_carousel_2', '130'),
(1010, 134, '_image_carousel_2', 'field_558627327fe82'),
(1011, 134, 'image_carousel_3', '131'),
(1012, 134, '_image_carousel_3', 'field_558627457fe83'),
(1013, 134, 'image_carousel_4', ''),
(1014, 134, '_image_carousel_4', 'field_558627537fe84'),
(1015, 134, 'image_carousel_5', ''),
(1016, 134, '_image_carousel_5', 'field_5599c3687abd4'),
(1017, 134, 'image_carousel_6', ''),
(1018, 134, '_image_carousel_6', 'field_5599c37a7abd5'),
(1019, 134, 'vehicle_description', 'The 2004 Lincoln Town Care Sedan Stretch Limousine accommodates up to 6 passengers comfortably. Amenities include in-car Wi-Fi, TVs with DVD player, AM/FM stereo, Bluetooth, dual privacy divider, intercom system, tinted windows, plush bar, and leather interior.\r\n\r\nExterior: white. Interior: beige. Perfect for your prom group, wedding party, or large family events.'),
(1020, 134, '_vehicle_description', 'field_557913a76430c'),
(1021, 134, 'video_description', 'Lorem ipsum'),
(1022, 134, '_video_description', 'field_5599c3377abd3'),
(1023, 134, 'embed_youtube_video', '<iframe width="560" height="315" src="https://www.youtube.com/embed/7CR7qaVEQBs" frameborder="0" allowfullscreen></iframe>'),
(1024, 134, '_embed_youtube_video', 'field_557913cc6430d'),
(1025, 47, 'image_carousel_5', ''),
(1026, 47, '_image_carousel_5', 'field_5599c3687abd4'),
(1027, 47, 'image_carousel_6', ''),
(1028, 47, '_image_carousel_6', 'field_5599c37a7abd5'),
(1029, 47, 'video_description', 'Lorem ipsum'),
(1030, 47, '_video_description', 'field_5599c3377abd3'),
(1031, 138, '_edit_last', '1'),
(1032, 138, 'field_5599cfe799ae9', 'a:14:{s:3:"key";s:19:"field_5599cfe799ae9";s:5:"label";s:12:"Vehicle Type";s:4:"name";s:12:"vehicle_type";s:4:"type";s:4:"text";s:12:"instructions";s:27:"Enter vehicle category type";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(1033, 138, 'field_5599d01a99aea', 'a:14:{s:3:"key";s:19:"field_5599d01a99aea";s:5:"label";s:12:"Vehicle Name";s:4:"name";s:12:"vehicle_name";s:4:"type";s:4:"text";s:12:"instructions";s:31:"Enter make and model of vehicle";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(1034, 138, 'field_5599d03d99aeb', 'a:11:{s:3:"key";s:19:"field_5599d03d99aeb";s:5:"label";s:13:"Vehicle Image";s:4:"name";s:13:"vehicle_image";s:4:"type";s:5:"image";s:12:"instructions";s:33:"Select thumbnail image of vehicle";s:8:"required";s:1:"1";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(1036, 138, 'position', 'normal'),
(1037, 138, 'layout', 'no_box'),
(1038, 138, 'hide_on_screen', 'a:13:{i:0;s:11:"the_content";i:1;s:7:"excerpt";i:2;s:13:"custom_fields";i:3;s:10:"discussion";i:4;s:8:"comments";i:5;s:9:"revisions";i:6;s:4:"slug";i:7;s:6:"author";i:8;s:6:"format";i:9;s:14:"featured_image";i:10;s:10:"categories";i:11;s:4:"tags";i:12;s:15:"send-trackbacks";}'),
(1039, 138, '_edit_lock', '1436143807:1'),
(1044, 138, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:3:"139";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(1050, 144, '_wp_attached_file', '2015/07/Grid_1.png'),
(1051, 144, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:306;s:6:"height";i:153;s:4:"file";s:18:"2015/07/Grid_1.png";s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(1052, 145, '_wp_attached_file', '2015/07/Grid_2.png'),
(1053, 145, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:306;s:6:"height";i:153;s:4:"file";s:18:"2015/07/Grid_2.png";s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(1054, 143, '_edit_last', '1'),
(1055, 143, 'EasyPhotoAlbumSettings', 'a:3:{i:0;O:8:"stdClass":4:{s:2:"id";i:144;s:5:"order";i:0;s:5:"title";s:6:"Grid_1";s:7:"caption";s:16:"Vehicle Name One";}i:1;O:8:"stdClass":4:{s:2:"id";i:145;s:5:"order";i:1;s:5:"title";s:6:"Grid_2";s:7:"caption";s:16:"Vehicle Name Two";}s:7:"options";a:4:{s:7:"columns";i:3;s:14:"excerpt_number";i:0;s:12:"show_caption";b:1;s:12:"display_size";s:9:"thumbnail";}}'),
(1056, 146, 'EasyPhotoAlbumSettings', 'a:3:{i:0;O:8:"stdClass":4:{s:2:"id";i:144;s:5:"order";i:0;s:5:"title";s:6:"Grid_1";s:7:"caption";s:16:"Vehicle Name One";}i:1;O:8:"stdClass":4:{s:2:"id";i:145;s:5:"order";i:1;s:5:"title";s:6:"Grid_2";s:7:"caption";s:16:"Vehicle Name Two";}s:7:"options";a:4:{s:7:"columns";i:3;s:14:"excerpt_number";i:0;s:12:"show_caption";b:1;s:12:"display_size";s:9:"thumbnail";}}'),
(1057, 143, '_edit_lock', '1436144919:1'),
(1058, 147, '_edit_last', '1'),
(1059, 147, 'EasyPhotoAlbumSettings', 'a:3:{i:0;O:8:"stdClass":4:{s:2:"id";i:144;s:5:"order";i:0;s:5:"title";s:6:"Grid_1";s:7:"caption";s:16:"Vehicle Name One";}i:1;O:8:"stdClass":4:{s:2:"id";i:145;s:5:"order";i:1;s:5:"title";s:6:"Grid_2";s:7:"caption";s:16:"Vehicle Name Two";}s:7:"options";a:4:{s:7:"columns";i:3;s:14:"excerpt_number";i:0;s:12:"show_caption";b:1;s:12:"display_size";s:9:"thumbnail";}}'),
(1060, 148, 'EasyPhotoAlbumSettings', 'a:3:{i:0;O:8:"stdClass":4:{s:2:"id";i:144;s:5:"order";i:0;s:5:"title";s:6:"Grid_1";s:7:"caption";s:16:"Vehicle Name One";}i:1;O:8:"stdClass":4:{s:2:"id";i:145;s:5:"order";i:1;s:5:"title";s:6:"Grid_2";s:7:"caption";s:16:"Vehicle Name Two";}s:7:"options";a:4:{s:7:"columns";i:3;s:14:"excerpt_number";i:0;s:12:"show_caption";b:1;s:12:"display_size";s:9:"thumbnail";}}'),
(1061, 147, '_edit_lock', '1436144852:1'),
(1146, 156, '__defaults_set', '1'),
(1147, 156, 'filter', 'raw'),
(1148, 156, 'id_field', 'ID'),
(1149, 157, '__defaults_set', '1'),
(1150, 157, 'filter', 'raw'),
(1151, 157, 'id_field', 'ID'),
(1155, 159, '__defaults_set', '1'),
(1156, 159, 'filter', 'raw'),
(1157, 159, 'id_field', 'ID'),
(1161, 149, 'filter', 'raw'),
(1162, 149, 'meta_id', '1066'),
(1163, 149, 'post_id', '149'),
(1164, 149, 'meta_key', 'name'),
(1165, 149, 'meta_value', 'photocrati-nextgen_basic_thumbnails'),
(1166, 149, 'title', 'NextGEN Basic Thumbnails'),
(1167, 149, 'preview_image_relpath', '/nextgen-gallery/products/photocrati_nextgen/modules/nextgen_basic_gallery/static/thumb_preview.jpg'),
(1168, 149, 'default_source', 'galleries'),
(1169, 149, 'view_order', '10000'),
(1170, 149, 'name', 'photocrati-nextgen_basic_thumbnails'),
(1171, 149, 'installed_at_version', '2.1.0'),
(1172, 149, 'hidden_from_ui', ''),
(1173, 149, '__defaults_set', '1'),
(1174, 149, 'entity_types', 'WyJpbWFnZSJd'),
(1175, 149, 'id_field', 'ID'),
(1176, 149, 'settings', 'eyJvdmVycmlkZV90aHVtYm5haWxfc2V0dGluZ3MiOiIwIiwidGh1bWJuYWlsX3dpZHRoIjoiMjQwIiwidGh1bWJuYWlsX2hlaWdodCI6IjE2MCIsInRodW1ibmFpbF9jcm9wIjoiMSIsImltYWdlc19wZXJfcGFnZSI6IjAiLCJudW1iZXJfb2ZfY29sdW1ucyI6IjMiLCJhamF4X3BhZ2luYXRpb24iOiIwIiwic2hvd19hbGxfaW5fbGlnaHRib3giOiIwIiwidXNlX2ltYWdlYnJvd3Nlcl9lZmZlY3QiOiIwIiwic2hvd19zbGlkZXNob3dfbGluayI6IjAiLCJzbGlkZXNob3dfbGlua190ZXh0IjoiW1Nob3cgc2xpZGVzaG93XSIsInRlbXBsYXRlIjoiIiwidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwiZGlzcGxheV9ub19pbWFnZXNfZXJyb3IiOjEsImRpc2FibGVfcGFnaW5hdGlvbiI6MCwidGh1bWJuYWlsX3F1YWxpdHkiOiIxMDAiLCJ0aHVtYm5haWxfd2F0ZXJtYXJrIjowLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0='),
(1177, 150, 'filter', 'raw'),
(1178, 150, 'meta_id', '1078'),
(1179, 150, 'post_id', '150'),
(1180, 150, 'meta_key', 'name'),
(1181, 150, 'meta_value', 'photocrati-nextgen_basic_slideshow'),
(1182, 150, 'title', 'NextGEN Basic Slideshow'),
(1183, 150, 'preview_image_relpath', '/nextgen-gallery/products/photocrati_nextgen/modules/nextgen_basic_gallery/static/slideshow_preview.jpg'),
(1184, 150, 'default_source', 'galleries'),
(1185, 150, 'view_order', '10010'),
(1186, 150, 'name', 'photocrati-nextgen_basic_slideshow'),
(1187, 150, 'installed_at_version', '2.1.0'),
(1188, 150, 'hidden_from_ui', ''),
(1189, 150, '__defaults_set', '1'),
(1190, 150, 'entity_types', 'WyJpbWFnZSJd'),
(1191, 150, 'id_field', 'ID'),
(1192, 150, 'settings', 'eyJnYWxsZXJ5X3dpZHRoIjoiNjAwIiwiZ2FsbGVyeV9oZWlnaHQiOiI0MDAiLCJjeWNsZV9lZmZlY3QiOiJmYWRlIiwiY3ljbGVfaW50ZXJ2YWwiOiIxMCIsInNob3dfdGh1bWJuYWlsX2xpbmsiOiIxIiwidGh1bWJuYWlsX2xpbmtfdGV4dCI6IltTaG93IHRodW1ibmFpbHNdIiwidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwidGh1bWJuYWlsX3dpZHRoIjoyNDAsInRodW1ibmFpbF9oZWlnaHQiOjE2MCwiZWZmZWN0X2NvZGUiOiJjbGFzcz1cIm5nZy1mYW5jeWJveFwiIHJlbD1cIiVHQUxMRVJZX05BTUUlXCIiLCJ0ZW1wbGF0ZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIifQ=='),
(1193, 151, 'filter', 'raw'),
(1194, 151, 'meta_id', '1090'),
(1195, 151, 'post_id', '151'),
(1196, 151, 'meta_key', 'name'),
(1197, 151, 'meta_value', 'photocrati-nextgen_basic_imagebrowser'),
(1198, 151, 'title', 'NextGEN Basic ImageBrowser'),
(1199, 151, 'preview_image_relpath', '/nextgen-gallery/products/photocrati_nextgen/modules/nextgen_basic_imagebrowser/static/preview.jpg'),
(1200, 151, 'default_source', 'galleries'),
(1201, 151, 'view_order', '10020'),
(1202, 151, 'name', 'photocrati-nextgen_basic_imagebrowser'),
(1203, 151, 'installed_at_version', '2.1.0'),
(1204, 151, 'hidden_from_ui', ''),
(1205, 151, '__defaults_set', '1') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1206, 151, 'entity_types', 'WyJpbWFnZSJd'),
(1207, 151, 'id_field', 'ID'),
(1208, 151, 'settings', 'eyJhamF4X3BhZ2luYXRpb24iOiIwIiwidGVtcGxhdGUiOiIiLCJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0='),
(1209, 152, 'filter', 'raw'),
(1210, 152, 'meta_id', '1103'),
(1211, 152, 'post_id', '152'),
(1212, 152, 'meta_key', 'name'),
(1213, 152, 'meta_value', 'photocrati-nextgen_basic_singlepic'),
(1214, 152, 'title', 'NextGEN Basic SinglePic'),
(1215, 152, 'preview_image_relpath', '/nextgen-gallery/products/photocrati_nextgen/modules/nextgen_basic_singlepic/static/preview.gif'),
(1216, 152, 'default_source', 'galleries'),
(1217, 152, 'view_order', '10060'),
(1218, 152, 'hidden_from_ui', '1'),
(1219, 152, 'name', 'photocrati-nextgen_basic_singlepic'),
(1220, 152, 'installed_at_version', '2.1.0'),
(1221, 152, '__defaults_set', '1'),
(1222, 152, 'entity_types', 'WyJpbWFnZSJd'),
(1223, 152, 'id_field', 'ID'),
(1224, 152, 'settings', 'eyJ3aWR0aCI6IiIsImhlaWdodCI6IiIsImxpbmsiOiIiLCJsaW5rX3RhcmdldCI6Il9ibGFuayIsImZsb2F0IjoiIiwicXVhbGl0eSI6IjEwMCIsImNyb3AiOiIwIiwiZGlzcGxheV93YXRlcm1hcmsiOiIwIiwiZGlzcGxheV9yZWZsZWN0aW9uIjoiMCIsInRlbXBsYXRlIjoiIiwidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwibW9kZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIifQ=='),
(1225, 153, 'filter', 'raw'),
(1226, 153, 'meta_id', '1114'),
(1227, 153, 'post_id', '153'),
(1228, 153, 'meta_key', 'name'),
(1229, 153, 'meta_value', 'photocrati-nextgen_basic_tagcloud'),
(1230, 153, 'title', 'NextGEN Basic TagCloud'),
(1231, 153, 'preview_image_relpath', '/nextgen-gallery/products/photocrati_nextgen/modules/nextgen_basic_tagcloud/static/preview.gif'),
(1232, 153, 'default_source', 'tags'),
(1233, 153, 'view_order', '10100'),
(1234, 153, 'name', 'photocrati-nextgen_basic_tagcloud'),
(1235, 153, 'installed_at_version', '2.1.0'),
(1236, 153, 'hidden_from_ui', ''),
(1237, 153, '__defaults_set', '1'),
(1238, 153, 'entity_types', 'WyJpbWFnZSJd'),
(1239, 153, 'id_field', 'ID'),
(1240, 153, 'settings', 'eyJudW1iZXIiOiI0NSIsImRpc3BsYXlfdHlwZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190aHVtYm5haWxzIiwidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciJ9'),
(1241, 154, 'filter', 'raw'),
(1242, 154, 'meta_id', '1126'),
(1243, 154, 'post_id', '154'),
(1244, 154, 'meta_key', 'name'),
(1245, 154, 'meta_value', 'photocrati-nextgen_basic_compact_album'),
(1246, 154, 'title', 'NextGEN Basic Compact Album'),
(1247, 154, 'preview_image_relpath', '/nextgen-gallery/products/photocrati_nextgen/modules/nextgen_basic_album/static/compact_preview.jpg'),
(1248, 154, 'default_source', 'albums'),
(1249, 154, 'view_order', '10200'),
(1250, 154, 'name', 'photocrati-nextgen_basic_compact_album'),
(1251, 154, 'installed_at_version', '2.1.0'),
(1252, 154, 'hidden_from_ui', ''),
(1253, 154, '__defaults_set', '1'),
(1254, 154, 'entity_types', 'WyJhbGJ1bSIsImdhbGxlcnkiXQ=='),
(1255, 154, 'id_field', 'ID'),
(1256, 154, 'settings', 'eyJnYWxsZXJ5X2Rpc3BsYXlfdHlwZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190aHVtYm5haWxzIiwiZ2FsbGVyaWVzX3Blcl9wYWdlIjoiMCIsImVuYWJsZV9icmVhZGNydW1icyI6IjEiLCJ0ZW1wbGF0ZSI6IiIsIm92ZXJyaWRlX3RodW1ibmFpbF9zZXR0aW5ncyI6IjAiLCJ0aHVtYm5haWxfd2lkdGgiOiIyNDAiLCJ0aHVtYm5haWxfaGVpZ2h0IjoiMTYwIiwidGh1bWJuYWlsX2Nyb3AiOiIwIiwidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwiZGlzYWJsZV9wYWdpbmF0aW9uIjowLCJnYWxsZXJ5X2Rpc3BsYXlfdGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0='),
(1257, 155, 'filter', 'raw'),
(1258, 155, 'meta_id', '1138'),
(1259, 155, 'post_id', '155'),
(1260, 155, 'meta_key', 'name'),
(1261, 155, 'meta_value', 'photocrati-nextgen_basic_extended_album'),
(1262, 155, 'title', 'NextGEN Basic Extended Album'),
(1263, 155, 'preview_image_relpath', '/nextgen-gallery/products/photocrati_nextgen/modules/nextgen_basic_album/static/extended_preview.jpg'),
(1264, 155, 'default_source', 'albums'),
(1265, 155, 'view_order', '10210'),
(1266, 155, 'name', 'photocrati-nextgen_basic_extended_album'),
(1267, 155, 'installed_at_version', '2.1.0'),
(1268, 155, 'hidden_from_ui', ''),
(1269, 155, '__defaults_set', '1'),
(1270, 155, 'entity_types', 'WyJhbGJ1bSIsImdhbGxlcnkiXQ=='),
(1271, 155, 'id_field', 'ID'),
(1272, 155, 'settings', 'eyJnYWxsZXJ5X2Rpc3BsYXlfdHlwZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190aHVtYm5haWxzIiwiZ2FsbGVyaWVzX3Blcl9wYWdlIjoiMCIsImVuYWJsZV9icmVhZGNydW1icyI6IjEiLCJ0ZW1wbGF0ZSI6IiIsIm92ZXJyaWRlX3RodW1ibmFpbF9zZXR0aW5ncyI6IjAiLCJ0aHVtYm5haWxfd2lkdGgiOiIyNDAiLCJ0aHVtYm5haWxfaGVpZ2h0IjoiMTYwIiwidGh1bWJuYWlsX2Nyb3AiOiIxIiwidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwiZGlzYWJsZV9wYWdpbmF0aW9uIjowLCJ0aHVtYm5haWxfcXVhbGl0eSI6MTAwLCJ0aHVtYm5haWxfd2F0ZXJtYXJrIjowLCJnYWxsZXJ5X2Rpc3BsYXlfdGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0='),
(1279, 162, '__defaults_set', '1'),
(1280, 162, 'filter', 'raw'),
(1281, 162, 'id_field', 'ID'),
(1282, 163, '__defaults_set', '1'),
(1283, 163, 'filter', 'raw'),
(1284, 163, 'id_field', 'ID'),
(1294, 165, '__defaults_set', '1'),
(1295, 165, 'filter', 'raw'),
(1296, 165, 'id_field', 'ID'),
(1303, 167, '__defaults_set', '1'),
(1304, 167, 'filter', 'raw'),
(1305, 167, 'id_field', 'ID'),
(1312, 169, '__defaults_set', '1'),
(1313, 169, 'filter', 'raw'),
(1314, 169, 'id_field', 'ID'),
(1346, 160, '__defaults_set', '1'),
(1347, 160, 'filter', 'raw'),
(1348, 160, 'id_field', 'ID'),
(1353, 138, '_wp_trash_meta_status', 'publish'),
(1354, 138, '_wp_trash_meta_time', '1436145842'),
(1355, 173, '__defaults_set', '1'),
(1356, 173, 'filter', 'raw'),
(1357, 173, 'id_field', 'ID'),
(1361, 175, '__defaults_set', '1'),
(1362, 175, 'filter', 'raw'),
(1363, 175, 'id_field', 'ID'),
(1367, 177, '_edit_last', '1'),
(1368, 177, '_edit_lock', '1436243873:1'),
(1369, 177, '_wp_page_template', 'page-fleet-overview.php'),
(1430, 161, '__defaults_set', '1'),
(1431, 161, 'filter', 'raw'),
(1432, 161, 'id_field', 'ID'),
(1433, 164, '__defaults_set', '1') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1434, 164, 'filter', 'raw'),
(1435, 164, 'id_field', 'ID'),
(1436, 166, '__defaults_set', '1'),
(1437, 166, 'filter', 'raw'),
(1438, 166, 'id_field', 'ID'),
(1439, 168, '__defaults_set', '1'),
(1440, 168, 'filter', 'raw'),
(1441, 168, 'id_field', 'ID'),
(1442, 179, '__defaults_set', '1'),
(1443, 179, 'filter', 'raw'),
(1444, 179, 'id_field', 'ID'),
(1445, 174, '__defaults_set', '1'),
(1446, 174, 'filter', 'raw'),
(1447, 174, 'id_field', 'ID'),
(1448, 176, '__defaults_set', '1'),
(1449, 176, 'filter', 'raw'),
(1450, 176, 'id_field', 'ID'),
(1451, 185, '_edit_last', '1'),
(1454, 185, 'position', 'normal'),
(1455, 185, 'layout', 'no_box'),
(1456, 185, 'hide_on_screen', 'a:12:{i:0;s:11:"the_content";i:1;s:7:"excerpt";i:2;s:10:"discussion";i:3;s:8:"comments";i:4;s:9:"revisions";i:5;s:4:"slug";i:6;s:6:"author";i:7;s:6:"format";i:8;s:14:"featured_image";i:9;s:10:"categories";i:10;s:4:"tags";i:11;s:15:"send-trackbacks";}'),
(1457, 185, '_edit_lock', '1436243855:1'),
(1465, 189, '_', 'field_559b470c90e52'),
(1466, 177, '_', 'field_559b470c90e52'),
(1516, 185, 'field_559b52b663c58', 'a:14:{s:3:"key";s:19:"field_559b52b663c58";s:5:"label";s:12:"Vehicle Type";s:4:"name";s:12:"vehicle_type";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(1531, 211, '_edit_last', '1'),
(1532, 211, '_edit_lock', '1436244042:1'),
(1545, 185, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:3:"177";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(1546, 214, '_edit_last', '1'),
(1547, 214, '_edit_lock', '1436244306:1') ;

#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`),
  KEY `post_name` (`post_name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(20, 1, '2015-06-11 04:45:06', '2015-06-11 04:45:06', 'The 2004 Lincoln Town Car...', 'Mercedes-Benz s550', '', 'publish', 'open', 'open', '', 'lincoln-town-stretch-car', '', '', '2015-06-13 22:55:20', '2015-06-13 22:55:20', '', 0, 'http://localhost:9000/?page_id=20', 0, 'page', '', 0),
(21, 1, '2015-06-11 04:45:06', '2015-06-11 04:45:06', 'The 2004 Lincoln Town Car...', 'Lincoln Town Stretch Car', '', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2015-06-11 04:45:06', '2015-06-11 04:45:06', '', 20, 'http://localhost:9000/?p=21', 0, 'revision', '', 0),
(22, 1, '2015-06-11 04:53:52', '2015-06-11 04:53:52', '', 'Vehicle', '', 'publish', 'closed', 'closed', '', 'acf_vehicle', '', '', '2015-07-05 23:57:49', '2015-07-05 23:57:49', '', 0, 'http://localhost:9000/?post_type=acf&#038;p=22', 0, 'acf', '', 0),
(25, 1, '2015-06-11 04:56:49', '2015-06-11 04:56:49', 'The 2004 Lincoln Town Car...', 'Lincoln Town Stretch Car', '', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2015-06-11 04:56:49', '2015-06-11 04:56:49', '', 20, 'http://localhost:9000/?p=25', 0, 'revision', '', 0),
(26, 1, '2015-06-11 05:07:36', '2015-06-11 05:07:36', 'The 2004 Lincoln Town Car...', 'Lincoln Town Stretch Car', '', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2015-06-11 05:07:36', '2015-06-11 05:07:36', '', 20, 'http://localhost:9000/?p=26', 0, 'revision', '', 0),
(28, 1, '2015-06-11 05:17:18', '2015-06-11 05:17:18', 'The 2004 Lincoln Town Car...', 'Mercedes', '', 'inherit', 'open', 'open', '', '20-autosave-v1', '', '', '2015-06-11 05:17:18', '2015-06-11 05:17:18', '', 20, 'http://localhost:9000/?p=28', 0, 'revision', '', 0),
(29, 1, '2015-06-11 05:17:54', '2015-06-11 05:17:54', 'The 2004 Lincoln Town Car...', 'Mercedes-Benz s550', '', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2015-06-11 05:17:54', '2015-06-11 05:17:54', '', 20, 'http://localhost:9000/?p=29', 0, 'revision', '', 0),
(32, 1, '2015-06-11 05:22:16', '2015-06-11 05:22:16', '', 'Cadillac XTS', '', 'publish', 'open', 'open', '', 'cadillac-xts', '', '', '2015-06-21 03:14:20', '2015-06-21 03:14:20', '', 0, 'http://localhost:9000/?page_id=32', 0, 'page', '', 0),
(33, 1, '2015-06-11 05:22:16', '2015-06-11 05:22:16', '', 'Cadillac XTS', '', 'inherit', 'open', 'open', '', '32-revision-v1', '', '', '2015-06-11 05:22:16', '2015-06-11 05:22:16', '', 32, 'http://localhost:9000/?p=33', 0, 'revision', '', 0),
(34, 1, '2015-06-11 05:24:07', '2015-06-11 05:24:07', '', 'Cheverolet Suburban', '', 'publish', 'open', 'open', '', 'cheverolet-suburban', '', '', '2015-06-13 22:42:24', '2015-06-13 22:42:24', '', 0, 'http://localhost:9000/?page_id=34', 0, 'page', '', 0),
(35, 1, '2015-06-11 05:24:07', '2015-06-11 05:24:07', '', 'Cheverolet Suburban', '', 'inherit', 'open', 'open', '', '34-revision-v1', '', '', '2015-06-11 05:24:07', '2015-06-11 05:24:07', '', 34, 'http://localhost:9000/?p=35', 0, 'revision', '', 0),
(37, 1, '2015-06-11 05:25:32', '2015-06-11 05:25:32', ' ', '', '', 'publish', 'open', 'open', '', '37', '', '', '2015-06-11 05:25:45', '2015-06-11 05:25:45', '', 0, 'http://localhost:9000/?p=37', 1, 'nav_menu_item', '', 0),
(38, 1, '2015-06-11 05:25:32', '2015-06-11 05:25:32', ' ', '', '', 'publish', 'open', 'open', '', '38', '', '', '2015-06-11 05:25:45', '2015-06-11 05:25:45', '', 0, 'http://localhost:9000/?p=38', 2, 'nav_menu_item', '', 0),
(39, 1, '2015-06-11 05:30:24', '2015-06-11 05:30:24', '', 'Lincoln Navigator', '', 'publish', 'open', 'open', '', 'lincoln-navigator', '', '', '2015-06-13 22:44:30', '2015-06-13 22:44:30', '', 0, 'http://localhost:9000/?page_id=39', 0, 'page', '', 0),
(40, 1, '2015-06-11 05:30:24', '2015-06-11 05:30:24', '', 'Lincoln Navigator', '', 'inherit', 'open', 'open', '', '39-revision-v1', '', '', '2015-06-11 05:30:24', '2015-06-11 05:30:24', '', 39, 'http://localhost:9000/?p=40', 0, 'revision', '', 0),
(41, 1, '2015-06-11 05:31:42', '2015-06-11 05:31:42', '', 'Mercedes-Benz R350', '', 'publish', 'open', 'open', '', 'mercedes-benz-r350', '', '', '2015-06-13 22:54:53', '2015-06-13 22:54:53', '', 0, 'http://localhost:9000/?page_id=41', 0, 'page', '', 0),
(42, 1, '2015-06-11 05:31:42', '2015-06-11 05:31:42', '', 'Mercedes-Benz R350', '', 'inherit', 'open', 'open', '', '41-revision-v1', '', '', '2015-06-11 05:31:42', '2015-06-11 05:31:42', '', 41, 'http://localhost:9000/?p=42', 0, 'revision', '', 0),
(43, 1, '2015-06-11 05:32:22', '2015-06-11 05:32:22', '', 'Hummer H2', '', 'publish', 'open', 'open', '', 'hummer-h2', '', '', '2015-06-13 22:43:51', '2015-06-13 22:43:51', '', 0, 'http://localhost:9000/?page_id=43', 0, 'page', '', 0),
(44, 1, '2015-06-11 05:32:23', '2015-06-11 05:32:23', '', 'Hummer H2', '', 'inherit', 'open', 'open', '', '43-revision-v1', '', '', '2015-06-11 05:32:23', '2015-06-11 05:32:23', '', 43, 'http://localhost:9000/?p=44', 0, 'revision', '', 0),
(45, 1, '2015-06-11 05:33:14', '2015-06-11 05:33:14', '', 'Chrysler 300 Stretch', '', 'publish', 'open', 'open', '', 'chrysler-300-stretch', '', '', '2015-06-13 22:42:52', '2015-06-13 22:42:52', '', 0, 'http://localhost:9000/?page_id=45', 0, 'page', '', 0),
(46, 1, '2015-06-11 05:33:14', '2015-06-11 05:33:14', '', 'Chrysler 300 Stretch', '', 'inherit', 'open', 'open', '', '45-revision-v1', '', '', '2015-06-11 05:33:14', '2015-06-11 05:33:14', '', 45, 'http://localhost:9000/?p=46', 0, 'revision', '', 0),
(47, 1, '2015-06-11 05:38:11', '2015-06-11 05:38:11', '', 'Lincoln Town Car Stretch, for six', '', 'publish', 'open', 'open', '', 'lincoln-town-car-stretch-for-six', '', '', '2015-07-06 00:01:30', '2015-07-06 00:01:30', '', 0, 'http://localhost:9000/?page_id=47', 0, 'page', '', 0),
(48, 1, '2015-06-11 05:38:11', '2015-06-11 05:38:11', '', 'Lincoln Town Car Stretch, for six', '', 'inherit', 'open', 'open', '', '47-revision-v1', '', '', '2015-06-11 05:38:11', '2015-06-11 05:38:11', '', 47, 'http://localhost:9000/?p=48', 0, 'revision', '', 0),
(49, 1, '2015-06-11 05:39:03', '2015-06-11 05:39:03', '', 'Lincoln Town Car Stretch, for eight', '', 'publish', 'open', 'open', '', 'lincoln-town-car-stretch-for-eight', '', '', '2015-06-13 22:45:02', '2015-06-13 22:45:02', '', 0, 'http://localhost:9000/?page_id=49', 0, 'page', '', 0),
(50, 1, '2015-06-11 05:39:03', '2015-06-11 05:39:03', '', 'Lincoln Town Car Stretch, for eight', '', 'inherit', 'open', 'open', '', '49-revision-v1', '', '', '2015-06-11 05:39:03', '2015-06-11 05:39:03', '', 49, 'http://localhost:9000/?p=50', 0, 'revision', '', 0),
(51, 1, '2015-06-11 05:39:40', '2015-06-11 05:39:40', '', 'Stretch Hummer H2', '', 'publish', 'open', 'open', '', 'stretch-hummer-h2', '', '', '2015-06-13 22:58:42', '2015-06-13 22:58:42', '', 0, 'http://localhost:9000/?page_id=51', 0, 'page', '', 0),
(52, 1, '2015-06-11 05:39:40', '2015-06-11 05:39:40', '', 'Stretch Hummer H2', '', 'inherit', 'open', 'open', '', '51-revision-v1', '', '', '2015-06-11 05:39:40', '2015-06-11 05:39:40', '', 51, 'http://localhost:9000/?p=52', 0, 'revision', '', 0),
(53, 1, '2015-06-11 05:40:20', '2015-06-11 05:40:20', '', 'Infiniti Stretch Limo', '', 'publish', 'open', 'open', '', 'infiniti-stretch-limo', '', '', '2015-06-13 22:44:11', '2015-06-13 22:44:11', '', 0, 'http://localhost:9000/?page_id=53', 0, 'page', '', 0),
(54, 1, '2015-06-11 05:40:20', '2015-06-11 05:40:20', '', 'Infiniti Stretch Limo', '', 'inherit', 'open', 'open', '', '53-revision-v1', '', '', '2015-06-11 05:40:20', '2015-06-11 05:40:20', '', 53, 'http://localhost:9000/?p=54', 0, 'revision', '', 0),
(55, 1, '2015-06-11 05:41:00', '2015-06-11 05:41:00', '', 'Mercedes-Benz Sprinter', '', 'publish', 'open', 'open', '', 'mercedes-benz-sprinter', '', '', '2015-06-13 22:55:43', '2015-06-13 22:55:43', '', 0, 'http://localhost:9000/?page_id=55', 0, 'page', '', 0),
(56, 1, '2015-06-11 05:41:00', '2015-06-11 05:41:00', '', 'Mercedes-Benz Sprinter', '', 'inherit', 'open', 'open', '', '55-revision-v1', '', '', '2015-06-11 05:41:00', '2015-06-11 05:41:00', '', 55, 'http://localhost:9000/?p=56', 0, 'revision', '', 0),
(57, 1, '2015-06-11 05:42:37', '2015-06-11 05:42:37', '', 'Party Bus', '', 'publish', 'open', 'open', '', 'party-bus', '', '', '2015-06-13 22:56:14', '2015-06-13 22:56:14', '', 0, 'http://localhost:9000/?page_id=57', 0, 'page', '', 0),
(58, 1, '2015-06-11 05:42:37', '2015-06-11 05:42:37', '', 'Party Bus', '', 'inherit', 'open', 'open', '', '57-revision-v1', '', '', '2015-06-11 05:42:37', '2015-06-11 05:42:37', '', 57, 'http://localhost:9000/?p=58', 0, 'revision', '', 0),
(59, 1, '2015-06-11 05:43:19', '2015-06-11 05:43:19', '', 'Shuttle Bus', '', 'publish', 'open', 'open', '', 'shuttle-bus', '', '', '2015-06-13 22:56:34', '2015-06-13 22:56:34', '', 0, 'http://localhost:9000/?page_id=59', 0, 'page', '', 0),
(60, 1, '2015-06-11 05:43:19', '2015-06-11 05:43:19', '', 'Shuttle Bus', '', 'inherit', 'open', 'open', '', '59-revision-v1', '', '', '2015-06-11 05:43:19', '2015-06-11 05:43:19', '', 59, 'http://localhost:9000/?p=60', 0, 'revision', '', 0),
(61, 1, '2015-06-11 05:47:26', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-06-11 05:47:26', '0000-00-00 00:00:00', '', 0, 'http://localhost:9000/?p=61', 1, 'nav_menu_item', '', 0),
(62, 1, '2015-06-11 05:47:26', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-06-11 05:47:26', '0000-00-00 00:00:00', '', 0, 'http://localhost:9000/?p=62', 1, 'nav_menu_item', '', 0),
(63, 1, '2015-06-11 05:47:26', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-06-11 05:47:26', '0000-00-00 00:00:00', '', 0, 'http://localhost:9000/?p=63', 1, 'nav_menu_item', '', 0),
(64, 1, '2015-06-11 05:47:26', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-06-11 05:47:26', '0000-00-00 00:00:00', '', 0, 'http://localhost:9000/?p=64', 1, 'nav_menu_item', '', 0),
(65, 1, '2015-06-11 05:48:20', '2015-06-11 05:48:20', ' ', '', '', 'publish', 'open', 'open', '', '65', '', '', '2015-06-11 05:48:20', '2015-06-11 05:48:20', '', 0, 'http://localhost:9000/?p=65', 1, 'nav_menu_item', '', 0),
(66, 1, '2015-06-11 05:48:20', '2015-06-11 05:48:20', ' ', '', '', 'publish', 'open', 'open', '', '66', '', '', '2015-06-11 05:48:20', '2015-06-11 05:48:20', '', 0, 'http://localhost:9000/?p=66', 2, 'nav_menu_item', '', 0),
(67, 1, '2015-06-11 05:48:20', '2015-06-11 05:48:20', ' ', '', '', 'publish', 'open', 'open', '', '67', '', '', '2015-06-11 05:48:20', '2015-06-11 05:48:20', '', 0, 'http://localhost:9000/?p=67', 3, 'nav_menu_item', '', 0),
(68, 1, '2015-06-11 05:48:47', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-06-11 05:48:47', '0000-00-00 00:00:00', '', 0, 'http://localhost:9000/?p=68', 1, 'nav_menu_item', '', 0),
(69, 1, '2015-06-11 05:48:47', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-06-11 05:48:47', '0000-00-00 00:00:00', '', 0, 'http://localhost:9000/?p=69', 1, 'nav_menu_item', '', 0),
(70, 1, '2015-06-11 05:49:05', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-06-11 05:49:05', '0000-00-00 00:00:00', '', 0, 'http://localhost:9000/?p=70', 1, 'nav_menu_item', '', 0),
(71, 1, '2015-06-11 05:49:50', '2015-06-11 05:49:50', ' ', '', '', 'publish', 'open', 'open', '', '71', '', '', '2015-06-11 05:49:50', '2015-06-11 05:49:50', '', 0, 'http://localhost:9000/?p=71', 1, 'nav_menu_item', '', 0),
(72, 1, '2015-06-11 05:49:50', '2015-06-11 05:49:50', ' ', '', '', 'publish', 'open', 'open', '', '72', '', '', '2015-06-11 05:49:50', '2015-06-11 05:49:50', '', 0, 'http://localhost:9000/?p=72', 2, 'nav_menu_item', '', 0),
(75, 1, '2015-06-13 22:10:54', '2015-06-13 22:10:54', '', 'Services', '', 'publish', 'closed', 'closed', '', 'acf_services', '', '', '2015-06-13 22:39:29', '2015-06-13 22:39:29', '', 0, 'http://localhost:9000/?post_type=acf&#038;p=75', 0, 'acf', '', 0),
(80, 1, '2015-06-13 22:27:49', '2015-06-13 22:27:49', '', 'Corporate', '', 'publish', 'open', 'open', '', 'corporate', '', '', '2015-06-13 22:43:19', '2015-06-13 22:43:19', '', 0, 'http://localhost:9000/?page_id=80', 0, 'page', '', 0),
(81, 1, '2015-06-13 22:27:49', '2015-06-13 22:27:49', '', 'Corporate', '', 'inherit', 'open', 'open', '', '80-revision-v1', '', '', '2015-06-13 22:27:49', '2015-06-13 22:27:49', '', 80, 'http://localhost:9000/?p=81', 0, 'revision', '', 0),
(82, 1, '2015-06-13 22:28:17', '2015-06-13 22:28:17', '', 'Cadillac XTS', '', 'inherit', 'open', 'open', '', '32-revision-v1', '', '', '2015-06-13 22:28:17', '2015-06-13 22:28:17', '', 32, 'http://localhost:9000/?p=82', 0, 'revision', '', 0),
(84, 1, '2015-06-13 22:36:14', '2015-06-13 22:36:14', '', 'Cadillac XTS', '', 'inherit', 'open', 'open', '', '32-revision-v1', '', '', '2015-06-13 22:36:14', '2015-06-13 22:36:14', '', 32, 'http://localhost:9000/?p=84', 0, 'revision', '', 0),
(86, 1, '2015-06-13 22:42:24', '2015-06-13 22:42:24', '', 'Cheverolet Suburban', '', 'inherit', 'open', 'open', '', '34-revision-v1', '', '', '2015-06-13 22:42:24', '2015-06-13 22:42:24', '', 34, 'http://localhost:9000/index.php/34-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2015-06-13 22:42:52', '2015-06-13 22:42:52', '', 'Chrysler 300 Stretch', '', 'inherit', 'open', 'open', '', '45-revision-v1', '', '', '2015-06-13 22:42:52', '2015-06-13 22:42:52', '', 45, 'http://localhost:9000/index.php/45-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2015-06-13 22:43:19', '2015-06-13 22:43:19', '', 'Corporate', '', 'inherit', 'open', 'open', '', '80-revision-v1', '', '', '2015-06-13 22:43:19', '2015-06-13 22:43:19', '', 80, 'http://localhost:9000/index.php/80-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2015-06-13 22:43:51', '2015-06-13 22:43:51', '', 'Hummer H2', '', 'inherit', 'open', 'open', '', '43-revision-v1', '', '', '2015-06-13 22:43:51', '2015-06-13 22:43:51', '', 43, 'http://localhost:9000/index.php/43-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2015-06-13 22:44:11', '2015-06-13 22:44:11', '', 'Infiniti Stretch Limo', '', 'inherit', 'open', 'open', '', '53-revision-v1', '', '', '2015-06-13 22:44:11', '2015-06-13 22:44:11', '', 53, 'http://localhost:9000/index.php/53-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2015-06-13 22:44:30', '2015-06-13 22:44:30', '', 'Lincoln Navigator', '', 'inherit', 'open', 'open', '', '39-revision-v1', '', '', '2015-06-13 22:44:30', '2015-06-13 22:44:30', '', 39, 'http://localhost:9000/index.php/39-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2015-06-13 22:44:55', '2015-06-13 22:44:55', '', 'Lincoln Town Car Stretch, for eight', '', 'inherit', 'open', 'open', '', '49-revision-v1', '', '', '2015-06-13 22:44:55', '2015-06-13 22:44:55', '', 49, 'http://localhost:9000/index.php/49-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2015-06-13 22:45:02', '2015-06-13 22:45:02', '', 'Lincoln Town Car Stretch, for eight', '', 'inherit', 'open', 'open', '', '49-revision-v1', '', '', '2015-06-13 22:45:02', '2015-06-13 22:45:02', '', 49, 'http://localhost:9000/index.php/49-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2015-06-13 22:49:09', '2015-06-13 22:49:09', '', 'Lincoln Town Car Stretch, for six', '', 'inherit', 'open', 'open', '', '47-revision-v1', '', '', '2015-06-13 22:49:09', '2015-06-13 22:49:09', '', 47, 'http://localhost:9000/index.php/47-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2015-06-13 22:49:32', '2015-06-13 22:49:32', '', 'Mercedes-Benz R350', '', 'inherit', 'open', 'open', '', '41-revision-v1', '', '', '2015-06-13 22:49:32', '2015-06-13 22:49:32', '', 41, 'http://localhost:9000/index.php/41-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2015-06-13 22:55:20', '2015-06-13 22:55:20', 'The 2004 Lincoln Town Car...', 'Mercedes-Benz s550', '', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2015-06-13 22:55:20', '2015-06-13 22:55:20', '', 20, 'http://localhost:9000/index.php/20-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2015-06-13 22:55:43', '2015-06-13 22:55:43', '', 'Mercedes-Benz Sprinter', '', 'inherit', 'open', 'open', '', '55-revision-v1', '', '', '2015-06-13 22:55:43', '2015-06-13 22:55:43', '', 55, 'http://localhost:9000/index.php/55-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2015-06-13 22:56:14', '2015-06-13 22:56:14', '', 'Party Bus', '', 'inherit', 'open', 'open', '', '57-revision-v1', '', '', '2015-06-13 22:56:14', '2015-06-13 22:56:14', '', 57, 'http://localhost:9000/index.php/57-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2015-06-13 22:56:34', '2015-06-13 22:56:34', '', 'Shuttle Bus', '', 'inherit', 'open', 'open', '', '59-revision-v1', '', '', '2015-06-13 22:56:34', '2015-06-13 22:56:34', '', 59, 'http://localhost:9000/index.php/59-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2015-06-13 22:58:42', '2015-06-13 22:58:42', '', 'Stretch Hummer H2', '', 'inherit', 'open', 'open', '', '51-revision-v1', '', '', '2015-06-13 22:58:42', '2015-06-13 22:58:42', '', 51, 'http://localhost:9000/index.php/51-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2015-06-13 22:59:10', '2015-06-13 22:59:10', '', 'Weddings', '', 'publish', 'open', 'open', '', 'weddings', '', '', '2015-06-13 22:59:10', '2015-06-13 22:59:10', '', 0, 'http://localhost:9000/?page_id=102', 0, 'page', '', 0),
(103, 1, '2015-06-13 22:59:10', '2015-06-13 22:59:10', '', 'Weddings', '', 'inherit', 'open', 'open', '', '102-revision-v1', '', '', '2015-06-13 22:59:10', '2015-06-13 22:59:10', '', 102, 'http://localhost:9000/index.php/102-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2015-06-13 22:59:39', '2015-06-13 22:59:39', '', 'Travel', '', 'publish', 'open', 'open', '', 'travel', '', '', '2015-06-13 22:59:39', '2015-06-13 22:59:39', '', 0, 'http://localhost:9000/?page_id=104', 0, 'page', '', 0),
(105, 1, '2015-06-13 22:59:39', '2015-06-13 22:59:39', '', 'Travel', '', 'inherit', 'open', 'open', '', '104-revision-v1', '', '', '2015-06-13 22:59:39', '2015-06-13 22:59:39', '', 104, 'http://localhost:9000/index.php/104-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2015-06-13 23:00:11', '2015-06-13 23:00:11', '', 'Events', '', 'publish', 'open', 'open', '', 'events', '', '', '2015-06-13 23:00:11', '2015-06-13 23:00:11', '', 0, 'http://localhost:9000/?page_id=106', 0, 'page', '', 0),
(107, 1, '2015-06-13 23:00:11', '2015-06-13 23:00:11', '', 'Events', '', 'inherit', 'open', 'open', '', '106-revision-v1', '', '', '2015-06-13 23:00:11', '2015-06-13 23:00:11', '', 106, 'http://localhost:9000/index.php/106-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2015-06-21 01:15:45', '2015-06-21 01:15:45', '', 'Cadillac XTS', '', 'inherit', 'open', 'open', '', '32-revision-v1', '', '', '2015-06-21 01:15:45', '2015-06-21 01:15:45', '', 32, 'http://localhost:9000/index.php/32-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2015-06-21 02:59:49', '2015-06-21 02:59:49', '', 'Cadillac XTS', '', 'inherit', 'open', 'open', '', '32-revision-v1', '', '', '2015-06-21 02:59:49', '2015-06-21 02:59:49', '', 32, 'http://localhost:9000/index.php/32-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2015-06-21 03:14:20', '2015-06-21 03:14:20', '', 'Cadillac XTS', '', 'inherit', 'open', 'open', '', '32-revision-v1', '', '', '2015-06-21 03:14:20', '2015-06-21 03:14:20', '', 32, 'http://localhost:9000/index.php/32-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2015-06-21 04:56:11', '2015-06-21 04:56:11', '', 'Hero Image 1', '', 'inherit', 'open', 'open', '', 'photo-1_r', '', '', '2015-06-21 04:57:32', '2015-06-21 04:57:32', '', 0, 'http://localhost:9000/wp-content/uploads/2015/06/photo-1_r.jpg', 0, 'attachment', 'image/jpeg', 0),
(116, 1, '2015-06-21 04:56:11', '2015-06-21 04:56:11', '', 'photo-2_r', '', 'inherit', 'open', 'open', '', 'photo-2_r', '', '', '2015-06-21 04:56:11', '2015-06-21 04:56:11', '', 0, 'http://localhost:9000/wp-content/uploads/2015/06/photo-2_r.jpg', 0, 'attachment', 'image/jpeg', 0),
(117, 1, '2015-06-21 04:56:12', '2015-06-21 04:56:12', '', 'photo-3_r', '', 'inherit', 'open', 'open', '', 'photo-3_r', '', '', '2015-06-21 04:56:12', '2015-06-21 04:56:12', '', 0, 'http://localhost:9000/wp-content/uploads/2015/06/photo-3_r.jpg', 0, 'attachment', 'image/jpeg', 0),
(129, 1, '2015-06-21 05:05:03', '2015-06-21 05:05:03', '', 'thumb-1_r', '', 'inherit', 'open', 'open', '', 'thumb-1_r', '', '', '2015-06-21 05:05:03', '2015-06-21 05:05:03', '', 47, 'http://localhost:9000/wp-content/uploads/2015/06/thumb-1_r.jpg', 0, 'attachment', 'image/jpeg', 0),
(130, 1, '2015-06-21 05:05:14', '2015-06-21 05:05:14', '', 'thumb-2_r', '', 'inherit', 'open', 'open', '', 'thumb-2_r', '', '', '2015-06-21 05:05:14', '2015-06-21 05:05:14', '', 47, 'http://localhost:9000/wp-content/uploads/2015/06/thumb-2_r.jpg', 0, 'attachment', 'image/jpeg', 0),
(131, 1, '2015-06-21 05:05:24', '2015-06-21 05:05:24', '', 'thumb-3_r', '', 'inherit', 'open', 'open', '', 'thumb-3_r', '', '', '2015-06-21 05:05:24', '2015-06-21 05:05:24', '', 47, 'http://localhost:9000/wp-content/uploads/2015/06/thumb-3_r.jpg', 0, 'attachment', 'image/jpeg', 0),
(132, 1, '2015-06-21 05:05:28', '2015-06-21 05:05:28', '', 'Lincoln Town Car Stretch, for six', '', 'inherit', 'open', 'open', '', '47-revision-v1', '', '', '2015-06-21 05:05:28', '2015-06-21 05:05:28', '', 47, 'http://localhost:9000/index.php/47-revision-v1/', 0, 'revision', '', 0),
(133, 1, '2015-07-05 20:26:09', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-07-05 20:26:09', '0000-00-00 00:00:00', '', 0, 'http://localhost:9000/?p=133', 0, 'post', '', 0),
(134, 1, '2015-07-06 00:01:30', '2015-07-06 00:01:30', '', 'Lincoln Town Car Stretch, for six', '', 'inherit', 'open', 'open', '', '47-revision-v1', '', '', '2015-07-06 00:01:30', '2015-07-06 00:01:30', '', 47, 'http://localhost:9000/index.php/47-revision-v1/', 0, 'revision', '', 0),
(135, 1, '2015-07-06 00:38:58', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-07-06 00:38:58', '0000-00-00 00:00:00', '', 0, 'http://localhost:9000/?post_type=acf&p=135', 0, 'acf', '', 0),
(138, 1, '2015-07-06 00:48:43', '2015-07-06 00:48:43', '', 'Fleet Overview', '', 'trash', 'closed', 'closed', '', 'acf_fleet-overview', '', '', '2015-07-06 01:24:02', '2015-07-06 01:24:02', '', 0, 'http://localhost:9000/?post_type=acf&#038;p=138', 0, 'acf', '', 0),
(143, 1, '2015-07-06 01:10:07', '2015-07-06 01:10:07', '<!-- Easy Photo Album -->\r\n<style type="text/css">\r\n	#epa-album-143 .epa-image {\r\n		width: 31%;\r\n	}\r\n</style><ul id="epa-album-143" class="epa-album epa-cf">\r\n<li class="epa-row  epa-cf">\r\n				<div class="epa-image"><a href="http://localhost:9000/wp-content/uploads/2015/07/Grid_1.png"  title="Vehicle Name One"><img src="http://localhost:9000/wp-content/uploads/2015/07/Grid_1.png" alt="Grid_1"/><br/><span class="epa-title wp-caption">Vehicle Name One</span></a></div><div class="epa-image"><a href="http://localhost:9000/wp-content/uploads/2015/07/Grid_2.png"  title="Vehicle Name Two"><img src="http://localhost:9000/wp-content/uploads/2015/07/Grid_2.png" alt="Grid_2"/><br/><span class="epa-title wp-caption">Vehicle Name Two</span></a></div></li></ul>', 'Luxury Sedans', '', 'publish', 'open', 'open', '', 'luxury-sedans', '', '', '2015-07-06 01:10:07', '2015-07-06 01:10:07', '', 0, 'http://localhost:9000/?post_type=easy-photo-album&#038;p=143', 0, 'easy-photo-album', '', 0),
(144, 1, '2015-07-06 01:04:09', '2015-07-06 01:04:09', '', 'Grid_1', 'Vehicle Name One', 'inherit', 'open', 'open', '', 'grid_1', '', '', '2015-07-06 01:10:07', '2015-07-06 01:10:07', '', 143, 'http://localhost:9000/wp-content/uploads/2015/07/Grid_1.png', 0, 'attachment', 'image/png', 0),
(145, 1, '2015-07-06 01:04:09', '2015-07-06 01:04:09', '', 'Grid_2', 'Vehicle Name Two', 'inherit', 'open', 'open', '', 'grid_2', '', '', '2015-07-06 01:10:07', '2015-07-06 01:10:07', '', 143, 'http://localhost:9000/wp-content/uploads/2015/07/Grid_2.png', 0, 'attachment', 'image/png', 0),
(146, 1, '2015-07-06 01:04:33', '2015-07-06 01:04:33', '<!-- Easy Photo Album -->\r\n<style type="text/css">\r\n	#epa-album-143 .epa-image {\r\n		width: 31%;\r\n	}\r\n</style><ul id="epa-album-143" class="epa-album epa-cf">\r\n<li class="epa-row  epa-cf">\r\n				<div class="epa-image"><a href="http://localhost:9000/wp-content/uploads/2015/07/Grid_1.png"  title="Vehicle Name One"><img src="http://localhost:9000/wp-content/uploads/2015/07/Grid_1.png" alt="Grid_1"/><br/><span class="epa-title wp-caption">Vehicle Name One</span></a></div><div class="epa-image"><a href="http://localhost:9000/wp-content/uploads/2015/07/Grid_2.png"  title="Vehicle Name Two"><img src="http://localhost:9000/wp-content/uploads/2015/07/Grid_2.png" alt="Grid_2"/><br/><span class="epa-title wp-caption">Vehicle Name Two</span></a></div></li></ul>', 'Luxury Sedans', '', 'inherit', 'open', 'open', '', '143-revision-v1', '', '', '2015-07-06 01:04:33', '2015-07-06 01:04:33', '', 143, 'http://localhost:9000/index.php/143-revision-v1/', 0, 'revision', '', 0),
(147, 1, '2015-07-06 01:09:54', '2015-07-06 01:09:54', '<!-- Easy Photo Album -->\r\n<style type="text/css">\r\n	#epa-album-147 .epa-image {\r\n		width: 31%;\r\n	}\r\n</style><ul id="epa-album-147" class="epa-album epa-cf">\r\n<li class="epa-row  epa-cf">\r\n				<div class="epa-image"><a href="http://localhost:9000/wp-content/uploads/2015/07/Grid_1.png"  title="Vehicle Name One"><img src="http://localhost:9000/wp-content/uploads/2015/07/Grid_1.png" alt="Grid_1"/><br/><span class="epa-title wp-caption">Vehicle Name One</span></a></div><div class="epa-image"><a href="http://localhost:9000/wp-content/uploads/2015/07/Grid_2.png"  title="Vehicle Name Two"><img src="http://localhost:9000/wp-content/uploads/2015/07/Grid_2.png" alt="Grid_2"/><br/><span class="epa-title wp-caption">Vehicle Name Two</span></a></div></li></ul>', 'Stretch Limousines', '', 'publish', 'closed', 'closed', '', 'stretch-limousines', '', '', '2015-07-06 01:09:54', '2015-07-06 01:09:54', '', 0, 'http://localhost:9000/?post_type=easy-photo-album&#038;p=147', 0, 'easy-photo-album', '', 0),
(148, 1, '2015-07-06 01:09:54', '2015-07-06 01:09:54', '<!-- Easy Photo Album -->\r\n<style type="text/css">\r\n	#epa-album-147 .epa-image {\r\n		width: 31%;\r\n	}\r\n</style><ul id="epa-album-147" class="epa-album epa-cf">\r\n<li class="epa-row  epa-cf">\r\n				<div class="epa-image"><a href="http://localhost:9000/wp-content/uploads/2015/07/Grid_1.png"  title="Vehicle Name One"><img src="http://localhost:9000/wp-content/uploads/2015/07/Grid_1.png" alt="Grid_1"/><br/><span class="epa-title wp-caption">Vehicle Name One</span></a></div><div class="epa-image"><a href="http://localhost:9000/wp-content/uploads/2015/07/Grid_2.png"  title="Vehicle Name Two"><img src="http://localhost:9000/wp-content/uploads/2015/07/Grid_2.png" alt="Grid_2"/><br/><span class="epa-title wp-caption">Vehicle Name Two</span></a></div></li></ul>', 'Stretch Limousines', '', 'inherit', 'open', 'open', '', '147-revision-v1', '', '', '2015-07-06 01:09:54', '2015-07-06 01:09:54', '', 147, 'http://localhost:9000/index.php/147-revision-v1/', 0, 'revision', '', 0),
(149, 1, '2015-07-06 01:12:00', '0000-00-00 00:00:00', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiMTA2NiIsInBvc3RfaWQiOiIxNDkiLCJtZXRhX2tleSI6Im5hbWUiLCJtZXRhX3ZhbHVlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RodW1ibmFpbHMiLCJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgVGh1bWJuYWlscyIsImVudGl0eV90eXBlcyI6WyJpbWFnZSJdLCJwcmV2aWV3X2ltYWdlX3JlbHBhdGgiOiJcL25leHRnZW4tZ2FsbGVyeVwvcHJvZHVjdHNcL3Bob3RvY3JhdGlfbmV4dGdlblwvbW9kdWxlc1wvbmV4dGdlbl9iYXNpY19nYWxsZXJ5XC9zdGF0aWNcL3RodW1iX3ByZXZpZXcuanBnIiwiZGVmYXVsdF9zb3VyY2UiOiJnYWxsZXJpZXMiLCJ2aWV3X29yZGVyIjoxMDAwMCwibmFtZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190aHVtYm5haWxzIiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIyLjEuMCIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJvdmVycmlkZV90aHVtYm5haWxfc2V0dGluZ3MiOiIwIiwidGh1bWJuYWlsX3dpZHRoIjoiMjQwIiwidGh1bWJuYWlsX2hlaWdodCI6IjE2MCIsInRodW1ibmFpbF9jcm9wIjoiMSIsImltYWdlc19wZXJfcGFnZSI6IjAiLCJudW1iZXJfb2ZfY29sdW1ucyI6IjMiLCJhamF4X3BhZ2luYXRpb24iOiIwIiwic2hvd19hbGxfaW5fbGlnaHRib3giOiIwIiwidXNlX2ltYWdlYnJvd3Nlcl9lZmZlY3QiOiIwIiwic2hvd19zbGlkZXNob3dfbGluayI6IjAiLCJzbGlkZXNob3dfbGlua190ZXh0IjoiW1Nob3cgc2xpZGVzaG93XSIsInRlbXBsYXRlIjoiIiwidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwiZGlzcGxheV9ub19pbWFnZXNfZXJyb3IiOjEsImRpc2FibGVfcGFnaW5hdGlvbiI6MCwidGh1bWJuYWlsX3F1YWxpdHkiOiIxMDAiLCJ0aHVtYm5haWxfd2F0ZXJtYXJrIjowLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0sImhpZGRlbl9mcm9tX3VpIjpmYWxzZSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'NextGEN Basic Thumbnails', '', 'draft', 'open', 'open', '', '', '', '', '2015-07-06 01:14:28', '2015-07-06 01:14:28', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiMTA2NiIsInBvc3RfaWQiOiIxNDkiLCJtZXRhX2tleSI6Im5hbWUiLCJtZXRhX3ZhbHVlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RodW1ibmFpbHMiLCJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgVGh1bWJuYWlscyIsImVudGl0eV90eXBlcyI6WyJpbWFnZSJdLCJwcmV2aWV3X2ltYWdlX3JlbHBhdGgiOiJcL25leHRnZW4tZ2FsbGVyeVwvcHJvZHVjdHNcL3Bob3RvY3JhdGlfbmV4dGdlblwvbW9kdWxlc1wvbmV4dGdlbl9iYXNpY19nYWxsZXJ5XC9zdGF0aWNcL3RodW1iX3ByZXZpZXcuanBnIiwiZGVmYXVsdF9zb3VyY2UiOiJnYWxsZXJpZXMiLCJ2aWV3X29yZGVyIjoxMDAwMCwibmFtZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190aHVtYm5haWxzIiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIyLjEuMCIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJvdmVycmlkZV90aHVtYm5haWxfc2V0dGluZ3MiOiIwIiwidGh1bWJuYWlsX3dpZHRoIjoiMjQwIiwidGh1bWJuYWlsX2hlaWdodCI6IjE2MCIsInRodW1ibmFpbF9jcm9wIjoiMSIsImltYWdlc19wZXJfcGFnZSI6IjAiLCJudW1iZXJfb2ZfY29sdW1ucyI6IjMiLCJhamF4X3BhZ2luYXRpb24iOiIwIiwic2hvd19hbGxfaW5fbGlnaHRib3giOiIwIiwidXNlX2ltYWdlYnJvd3Nlcl9lZmZlY3QiOiIwIiwic2hvd19zbGlkZXNob3dfbGluayI6IjAiLCJzbGlkZXNob3dfbGlua190ZXh0IjoiW1Nob3cgc2xpZGVzaG93XSIsInRlbXBsYXRlIjoiIiwidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwiZGlzcGxheV9ub19pbWFnZXNfZXJyb3IiOjEsImRpc2FibGVfcGFnaW5hdGlvbiI6MCwidGh1bWJuYWlsX3F1YWxpdHkiOiIxMDAiLCJ0aHVtYm5haWxfd2F0ZXJtYXJrIjowLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0sImhpZGRlbl9mcm9tX3VpIjpmYWxzZSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost:9000/?post_type=display_type&#038;p=149', 0, 'display_type', '', 0),
(150, 1, '2015-07-06 01:12:00', '0000-00-00 00:00:00', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiMTA3OCIsInBvc3RfaWQiOiIxNTAiLCJtZXRhX2tleSI6Im5hbWUiLCJtZXRhX3ZhbHVlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3NsaWRlc2hvdyIsInRpdGxlIjoiTmV4dEdFTiBCYXNpYyBTbGlkZXNob3ciLCJlbnRpdHlfdHlwZXMiOlsiaW1hZ2UiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoiXC9uZXh0Z2VuLWdhbGxlcnlcL3Byb2R1Y3RzXC9waG90b2NyYXRpX25leHRnZW5cL21vZHVsZXNcL25leHRnZW5fYmFzaWNfZ2FsbGVyeVwvc3RhdGljXC9zbGlkZXNob3dfcHJldmlldy5qcGciLCJkZWZhdWx0X3NvdXJjZSI6ImdhbGxlcmllcyIsInZpZXdfb3JkZXIiOjEwMDEwLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3NsaWRlc2hvdyIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMi4xLjAiLCJpZF9maWVsZCI6IklEIiwic2V0dGluZ3MiOnsiZ2FsbGVyeV93aWR0aCI6IjYwMCIsImdhbGxlcnlfaGVpZ2h0IjoiNDAwIiwiY3ljbGVfZWZmZWN0IjoiZmFkZSIsImN5Y2xlX2ludGVydmFsIjoiMTAiLCJzaG93X3RodW1ibmFpbF9saW5rIjoiMSIsInRodW1ibmFpbF9saW5rX3RleHQiOiJbU2hvdyB0aHVtYm5haWxzXSIsInVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsInRodW1ibmFpbF93aWR0aCI6MjQwLCJ0aHVtYm5haWxfaGVpZ2h0IjoxNjAsImVmZmVjdF9jb2RlIjoiY2xhc3M9XCJuZ2ctZmFuY3lib3hcIiByZWw9XCIlR0FMTEVSWV9OQU1FJVwiIiwidGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0sImhpZGRlbl9mcm9tX3VpIjpmYWxzZSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'NextGEN Basic Slideshow', '', 'draft', 'open', 'open', '', '', '', '', '2015-07-06 01:14:28', '2015-07-06 01:14:28', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiMTA3OCIsInBvc3RfaWQiOiIxNTAiLCJtZXRhX2tleSI6Im5hbWUiLCJtZXRhX3ZhbHVlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3NsaWRlc2hvdyIsInRpdGxlIjoiTmV4dEdFTiBCYXNpYyBTbGlkZXNob3ciLCJlbnRpdHlfdHlwZXMiOlsiaW1hZ2UiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoiXC9uZXh0Z2VuLWdhbGxlcnlcL3Byb2R1Y3RzXC9waG90b2NyYXRpX25leHRnZW5cL21vZHVsZXNcL25leHRnZW5fYmFzaWNfZ2FsbGVyeVwvc3RhdGljXC9zbGlkZXNob3dfcHJldmlldy5qcGciLCJkZWZhdWx0X3NvdXJjZSI6ImdhbGxlcmllcyIsInZpZXdfb3JkZXIiOjEwMDEwLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3NsaWRlc2hvdyIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMi4xLjAiLCJpZF9maWVsZCI6IklEIiwic2V0dGluZ3MiOnsiZ2FsbGVyeV93aWR0aCI6IjYwMCIsImdhbGxlcnlfaGVpZ2h0IjoiNDAwIiwiY3ljbGVfZWZmZWN0IjoiZmFkZSIsImN5Y2xlX2ludGVydmFsIjoiMTAiLCJzaG93X3RodW1ibmFpbF9saW5rIjoiMSIsInRodW1ibmFpbF9saW5rX3RleHQiOiJbU2hvdyB0aHVtYm5haWxzXSIsInVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsInRodW1ibmFpbF93aWR0aCI6MjQwLCJ0aHVtYm5haWxfaGVpZ2h0IjoxNjAsImVmZmVjdF9jb2RlIjoiY2xhc3M9XCJuZ2ctZmFuY3lib3hcIiByZWw9XCIlR0FMTEVSWV9OQU1FJVwiIiwidGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0sImhpZGRlbl9mcm9tX3VpIjpmYWxzZSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost:9000/?post_type=display_type&#038;p=150', 0, 'display_type', '', 0),
(151, 1, '2015-07-06 01:12:00', '0000-00-00 00:00:00', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiMTA5MCIsInBvc3RfaWQiOiIxNTEiLCJtZXRhX2tleSI6Im5hbWUiLCJtZXRhX3ZhbHVlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX2ltYWdlYnJvd3NlciIsInRpdGxlIjoiTmV4dEdFTiBCYXNpYyBJbWFnZUJyb3dzZXIiLCJlbnRpdHlfdHlwZXMiOlsiaW1hZ2UiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoiXC9uZXh0Z2VuLWdhbGxlcnlcL3Byb2R1Y3RzXC9waG90b2NyYXRpX25leHRnZW5cL21vZHVsZXNcL25leHRnZW5fYmFzaWNfaW1hZ2Vicm93c2VyXC9zdGF0aWNcL3ByZXZpZXcuanBnIiwiZGVmYXVsdF9zb3VyY2UiOiJnYWxsZXJpZXMiLCJ2aWV3X29yZGVyIjoxMDAyMCwibmFtZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19pbWFnZWJyb3dzZXIiLCJpbnN0YWxsZWRfYXRfdmVyc2lvbiI6IjIuMS4wIiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7ImFqYXhfcGFnaW5hdGlvbiI6IjAiLCJ0ZW1wbGF0ZSI6IiIsInVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIifSwiaGlkZGVuX2Zyb21fdWkiOmZhbHNlLCJfX2RlZmF1bHRzX3NldCI6dHJ1ZX0=', 'NextGEN Basic ImageBrowser', '', 'draft', 'open', 'open', '', '', '', '', '2015-07-06 01:14:29', '2015-07-06 01:14:29', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiMTA5MCIsInBvc3RfaWQiOiIxNTEiLCJtZXRhX2tleSI6Im5hbWUiLCJtZXRhX3ZhbHVlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX2ltYWdlYnJvd3NlciIsInRpdGxlIjoiTmV4dEdFTiBCYXNpYyBJbWFnZUJyb3dzZXIiLCJlbnRpdHlfdHlwZXMiOlsiaW1hZ2UiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoiXC9uZXh0Z2VuLWdhbGxlcnlcL3Byb2R1Y3RzXC9waG90b2NyYXRpX25leHRnZW5cL21vZHVsZXNcL25leHRnZW5fYmFzaWNfaW1hZ2Vicm93c2VyXC9zdGF0aWNcL3ByZXZpZXcuanBnIiwiZGVmYXVsdF9zb3VyY2UiOiJnYWxsZXJpZXMiLCJ2aWV3X29yZGVyIjoxMDAyMCwibmFtZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19pbWFnZWJyb3dzZXIiLCJpbnN0YWxsZWRfYXRfdmVyc2lvbiI6IjIuMS4wIiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7ImFqYXhfcGFnaW5hdGlvbiI6IjAiLCJ0ZW1wbGF0ZSI6IiIsInVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIifSwiaGlkZGVuX2Zyb21fdWkiOmZhbHNlLCJfX2RlZmF1bHRzX3NldCI6dHJ1ZX0=', 0, 'http://localhost:9000/?post_type=display_type&#038;p=151', 0, 'display_type', '', 0),
(152, 1, '2015-07-06 01:12:00', '0000-00-00 00:00:00', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiMTEwMyIsInBvc3RfaWQiOiIxNTIiLCJtZXRhX2tleSI6Im5hbWUiLCJtZXRhX3ZhbHVlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3NpbmdsZXBpYyIsInRpdGxlIjoiTmV4dEdFTiBCYXNpYyBTaW5nbGVQaWMiLCJlbnRpdHlfdHlwZXMiOlsiaW1hZ2UiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoiXC9uZXh0Z2VuLWdhbGxlcnlcL3Byb2R1Y3RzXC9waG90b2NyYXRpX25leHRnZW5cL21vZHVsZXNcL25leHRnZW5fYmFzaWNfc2luZ2xlcGljXC9zdGF0aWNcL3ByZXZpZXcuZ2lmIiwiZGVmYXVsdF9zb3VyY2UiOiJnYWxsZXJpZXMiLCJ2aWV3X29yZGVyIjoxMDA2MCwiaGlkZGVuX2Zyb21fdWkiOnRydWUsIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfc2luZ2xlcGljIiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIyLjEuMCIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJ3aWR0aCI6IiIsImhlaWdodCI6IiIsImxpbmsiOiIiLCJsaW5rX3RhcmdldCI6Il9ibGFuayIsImZsb2F0IjoiIiwicXVhbGl0eSI6IjEwMCIsImNyb3AiOiIwIiwiZGlzcGxheV93YXRlcm1hcmsiOiIwIiwiZGlzcGxheV9yZWZsZWN0aW9uIjoiMCIsInRlbXBsYXRlIjoiIiwidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwibW9kZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIifSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'NextGEN Basic SinglePic', '', 'draft', 'open', 'open', '', '', '', '', '2015-07-06 01:14:29', '2015-07-06 01:14:29', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiMTEwMyIsInBvc3RfaWQiOiIxNTIiLCJtZXRhX2tleSI6Im5hbWUiLCJtZXRhX3ZhbHVlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3NpbmdsZXBpYyIsInRpdGxlIjoiTmV4dEdFTiBCYXNpYyBTaW5nbGVQaWMiLCJlbnRpdHlfdHlwZXMiOlsiaW1hZ2UiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoiXC9uZXh0Z2VuLWdhbGxlcnlcL3Byb2R1Y3RzXC9waG90b2NyYXRpX25leHRnZW5cL21vZHVsZXNcL25leHRnZW5fYmFzaWNfc2luZ2xlcGljXC9zdGF0aWNcL3ByZXZpZXcuZ2lmIiwiZGVmYXVsdF9zb3VyY2UiOiJnYWxsZXJpZXMiLCJ2aWV3X29yZGVyIjoxMDA2MCwiaGlkZGVuX2Zyb21fdWkiOnRydWUsIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfc2luZ2xlcGljIiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIyLjEuMCIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJ3aWR0aCI6IiIsImhlaWdodCI6IiIsImxpbmsiOiIiLCJsaW5rX3RhcmdldCI6Il9ibGFuayIsImZsb2F0IjoiIiwicXVhbGl0eSI6IjEwMCIsImNyb3AiOiIwIiwiZGlzcGxheV93YXRlcm1hcmsiOiIwIiwiZGlzcGxheV9yZWZsZWN0aW9uIjoiMCIsInRlbXBsYXRlIjoiIiwidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwibW9kZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIifSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost:9000/?post_type=display_type&#038;p=152', 0, 'display_type', '', 0),
(153, 1, '2015-07-06 01:12:00', '0000-00-00 00:00:00', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiMTExNCIsInBvc3RfaWQiOiIxNTMiLCJtZXRhX2tleSI6Im5hbWUiLCJtZXRhX3ZhbHVlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RhZ2Nsb3VkIiwidGl0bGUiOiJOZXh0R0VOIEJhc2ljIFRhZ0Nsb3VkIiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6IlwvbmV4dGdlbi1nYWxsZXJ5XC9wcm9kdWN0c1wvcGhvdG9jcmF0aV9uZXh0Z2VuXC9tb2R1bGVzXC9uZXh0Z2VuX2Jhc2ljX3RhZ2Nsb3VkXC9zdGF0aWNcL3ByZXZpZXcuZ2lmIiwiZGVmYXVsdF9zb3VyY2UiOiJ0YWdzIiwidmlld19vcmRlciI6MTAxMDAsIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGFnY2xvdWQiLCJpbnN0YWxsZWRfYXRfdmVyc2lvbiI6IjIuMS4wIiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7Im51bWJlciI6IjQ1IiwiZGlzcGxheV90eXBlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RodW1ibmFpbHMiLCJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0sImhpZGRlbl9mcm9tX3VpIjpmYWxzZSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'NextGEN Basic TagCloud', '', 'draft', 'open', 'open', '', '', '', '', '2015-07-06 01:14:29', '2015-07-06 01:14:29', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiMTExNCIsInBvc3RfaWQiOiIxNTMiLCJtZXRhX2tleSI6Im5hbWUiLCJtZXRhX3ZhbHVlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RhZ2Nsb3VkIiwidGl0bGUiOiJOZXh0R0VOIEJhc2ljIFRhZ0Nsb3VkIiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6IlwvbmV4dGdlbi1nYWxsZXJ5XC9wcm9kdWN0c1wvcGhvdG9jcmF0aV9uZXh0Z2VuXC9tb2R1bGVzXC9uZXh0Z2VuX2Jhc2ljX3RhZ2Nsb3VkXC9zdGF0aWNcL3ByZXZpZXcuZ2lmIiwiZGVmYXVsdF9zb3VyY2UiOiJ0YWdzIiwidmlld19vcmRlciI6MTAxMDAsIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGFnY2xvdWQiLCJpbnN0YWxsZWRfYXRfdmVyc2lvbiI6IjIuMS4wIiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7Im51bWJlciI6IjQ1IiwiZGlzcGxheV90eXBlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RodW1ibmFpbHMiLCJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0sImhpZGRlbl9mcm9tX3VpIjpmYWxzZSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost:9000/?post_type=display_type&#038;p=153', 0, 'display_type', '', 0),
(154, 1, '2015-07-06 01:12:00', '0000-00-00 00:00:00', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiMTEyNiIsInBvc3RfaWQiOiIxNTQiLCJtZXRhX2tleSI6Im5hbWUiLCJtZXRhX3ZhbHVlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX2NvbXBhY3RfYWxidW0iLCJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgQ29tcGFjdCBBbGJ1bSIsImVudGl0eV90eXBlcyI6WyJhbGJ1bSIsImdhbGxlcnkiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoiXC9uZXh0Z2VuLWdhbGxlcnlcL3Byb2R1Y3RzXC9waG90b2NyYXRpX25leHRnZW5cL21vZHVsZXNcL25leHRnZW5fYmFzaWNfYWxidW1cL3N0YXRpY1wvY29tcGFjdF9wcmV2aWV3LmpwZyIsImRlZmF1bHRfc291cmNlIjoiYWxidW1zIiwidmlld19vcmRlciI6MTAyMDAsIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfY29tcGFjdF9hbGJ1bSIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMi4xLjAiLCJpZF9maWVsZCI6IklEIiwic2V0dGluZ3MiOnsiZ2FsbGVyeV9kaXNwbGF5X3R5cGUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGh1bWJuYWlscyIsImdhbGxlcmllc19wZXJfcGFnZSI6IjAiLCJlbmFibGVfYnJlYWRjcnVtYnMiOiIxIiwidGVtcGxhdGUiOiIiLCJvdmVycmlkZV90aHVtYm5haWxfc2V0dGluZ3MiOiIwIiwidGh1bWJuYWlsX3dpZHRoIjoiMjQwIiwidGh1bWJuYWlsX2hlaWdodCI6IjE2MCIsInRodW1ibmFpbF9jcm9wIjoiMCIsInVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsImRpc2FibGVfcGFnaW5hdGlvbiI6MCwiZ2FsbGVyeV9kaXNwbGF5X3RlbXBsYXRlIjoiIiwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciJ9LCJoaWRkZW5fZnJvbV91aSI6ZmFsc2UsIl9fZGVmYXVsdHNfc2V0Ijp0cnVlfQ==', 'NextGEN Basic Compact Album', '', 'draft', 'open', 'open', '', '', '', '', '2015-07-06 01:14:29', '2015-07-06 01:14:29', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiMTEyNiIsInBvc3RfaWQiOiIxNTQiLCJtZXRhX2tleSI6Im5hbWUiLCJtZXRhX3ZhbHVlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX2NvbXBhY3RfYWxidW0iLCJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgQ29tcGFjdCBBbGJ1bSIsImVudGl0eV90eXBlcyI6WyJhbGJ1bSIsImdhbGxlcnkiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoiXC9uZXh0Z2VuLWdhbGxlcnlcL3Byb2R1Y3RzXC9waG90b2NyYXRpX25leHRnZW5cL21vZHVsZXNcL25leHRnZW5fYmFzaWNfYWxidW1cL3N0YXRpY1wvY29tcGFjdF9wcmV2aWV3LmpwZyIsImRlZmF1bHRfc291cmNlIjoiYWxidW1zIiwidmlld19vcmRlciI6MTAyMDAsIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfY29tcGFjdF9hbGJ1bSIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMi4xLjAiLCJpZF9maWVsZCI6IklEIiwic2V0dGluZ3MiOnsiZ2FsbGVyeV9kaXNwbGF5X3R5cGUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGh1bWJuYWlscyIsImdhbGxlcmllc19wZXJfcGFnZSI6IjAiLCJlbmFibGVfYnJlYWRjcnVtYnMiOiIxIiwidGVtcGxhdGUiOiIiLCJvdmVycmlkZV90aHVtYm5haWxfc2V0dGluZ3MiOiIwIiwidGh1bWJuYWlsX3dpZHRoIjoiMjQwIiwidGh1bWJuYWlsX2hlaWdodCI6IjE2MCIsInRodW1ibmFpbF9jcm9wIjoiMCIsInVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsImRpc2FibGVfcGFnaW5hdGlvbiI6MCwiZ2FsbGVyeV9kaXNwbGF5X3RlbXBsYXRlIjoiIiwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciJ9LCJoaWRkZW5fZnJvbV91aSI6ZmFsc2UsIl9fZGVmYXVsdHNfc2V0Ijp0cnVlfQ==', 0, 'http://localhost:9000/?post_type=display_type&#038;p=154', 0, 'display_type', '', 0),
(155, 1, '2015-07-06 01:12:00', '0000-00-00 00:00:00', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiMTEzOCIsInBvc3RfaWQiOiIxNTUiLCJtZXRhX2tleSI6Im5hbWUiLCJtZXRhX3ZhbHVlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX2V4dGVuZGVkX2FsYnVtIiwidGl0bGUiOiJOZXh0R0VOIEJhc2ljIEV4dGVuZGVkIEFsYnVtIiwiZW50aXR5X3R5cGVzIjpbImFsYnVtIiwiZ2FsbGVyeSJdLCJwcmV2aWV3X2ltYWdlX3JlbHBhdGgiOiJcL25leHRnZW4tZ2FsbGVyeVwvcHJvZHVjdHNcL3Bob3RvY3JhdGlfbmV4dGdlblwvbW9kdWxlc1wvbmV4dGdlbl9iYXNpY19hbGJ1bVwvc3RhdGljXC9leHRlbmRlZF9wcmV2aWV3LmpwZyIsImRlZmF1bHRfc291cmNlIjoiYWxidW1zIiwidmlld19vcmRlciI6MTAyMTAsIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfZXh0ZW5kZWRfYWxidW0iLCJpbnN0YWxsZWRfYXRfdmVyc2lvbiI6IjIuMS4wIiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7ImdhbGxlcnlfZGlzcGxheV90eXBlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RodW1ibmFpbHMiLCJnYWxsZXJpZXNfcGVyX3BhZ2UiOiIwIiwiZW5hYmxlX2JyZWFkY3J1bWJzIjoiMSIsInRlbXBsYXRlIjoiIiwib3ZlcnJpZGVfdGh1bWJuYWlsX3NldHRpbmdzIjoiMCIsInRodW1ibmFpbF93aWR0aCI6IjI0MCIsInRodW1ibmFpbF9oZWlnaHQiOiIxNjAiLCJ0aHVtYm5haWxfY3JvcCI6IjEiLCJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJkaXNhYmxlX3BhZ2luYXRpb24iOjAsInRodW1ibmFpbF9xdWFsaXR5IjoxMDAsInRodW1ibmFpbF93YXRlcm1hcmsiOjAsImdhbGxlcnlfZGlzcGxheV90ZW1wbGF0ZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIifSwiaGlkZGVuX2Zyb21fdWkiOmZhbHNlLCJfX2RlZmF1bHRzX3NldCI6dHJ1ZX0=', 'NextGEN Basic Extended Album', '', 'draft', 'open', 'open', '', '', '', '', '2015-07-06 01:14:29', '2015-07-06 01:14:29', 'eyJmaWx0ZXIiOiJyYXciLCJtZXRhX2lkIjoiMTEzOCIsInBvc3RfaWQiOiIxNTUiLCJtZXRhX2tleSI6Im5hbWUiLCJtZXRhX3ZhbHVlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX2V4dGVuZGVkX2FsYnVtIiwidGl0bGUiOiJOZXh0R0VOIEJhc2ljIEV4dGVuZGVkIEFsYnVtIiwiZW50aXR5X3R5cGVzIjpbImFsYnVtIiwiZ2FsbGVyeSJdLCJwcmV2aWV3X2ltYWdlX3JlbHBhdGgiOiJcL25leHRnZW4tZ2FsbGVyeVwvcHJvZHVjdHNcL3Bob3RvY3JhdGlfbmV4dGdlblwvbW9kdWxlc1wvbmV4dGdlbl9iYXNpY19hbGJ1bVwvc3RhdGljXC9leHRlbmRlZF9wcmV2aWV3LmpwZyIsImRlZmF1bHRfc291cmNlIjoiYWxidW1zIiwidmlld19vcmRlciI6MTAyMTAsIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfZXh0ZW5kZWRfYWxidW0iLCJpbnN0YWxsZWRfYXRfdmVyc2lvbiI6IjIuMS4wIiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7ImdhbGxlcnlfZGlzcGxheV90eXBlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RodW1ibmFpbHMiLCJnYWxsZXJpZXNfcGVyX3BhZ2UiOiIwIiwiZW5hYmxlX2JyZWFkY3J1bWJzIjoiMSIsInRlbXBsYXRlIjoiIiwib3ZlcnJpZGVfdGh1bWJuYWlsX3NldHRpbmdzIjoiMCIsInRodW1ibmFpbF93aWR0aCI6IjI0MCIsInRodW1ibmFpbF9oZWlnaHQiOiIxNjAiLCJ0aHVtYm5haWxfY3JvcCI6IjEiLCJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJkaXNhYmxlX3BhZ2luYXRpb24iOjAsInRodW1ibmFpbF9xdWFsaXR5IjoxMDAsInRodW1ibmFpbF93YXRlcm1hcmsiOjAsImdhbGxlcnlfZGlzcGxheV90ZW1wbGF0ZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIifSwiaGlkZGVuX2Zyb21fdWkiOmZhbHNlLCJfX2RlZmF1bHRzX3NldCI6dHJ1ZX0=', 0, 'http://localhost:9000/?post_type=display_type&#038;p=155', 0, 'display_type', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(156, 1, '2015-07-06 01:12:52', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_gallery', '', 'draft', 'open', 'open', '', 'mixin_nextgen_table_extras', '', '', '2015-07-06 01:12:52', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost:9000/?p=156', 0, 'ngg_gallery', '', 0),
(157, 1, '2015-07-06 01:12:52', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'open', 'open', '', 'mixin_nextgen_table_extras', '', '', '2015-07-06 01:12:52', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost:9000/?p=157', 0, 'ngg_pictures', '', 0),
(159, 1, '2015-07-06 01:13:14', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_album', '', 'draft', 'open', 'open', '', 'mixin_nextgen_table_extras', '', '', '2015-07-06 01:13:14', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost:9000/?post_type=ngg_album&p=159', 0, 'ngg_album', '', 0),
(160, 1, '2015-07-06 01:21:27', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_album', '', 'draft', 'closed', 'open', '', 'mixin_nextgen_table_extras', '', '', '2015-07-06 01:21:27', '2015-07-06 01:21:27', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost:9000/?post_type=ngg_album&#038;p=160', 0, 'ngg_album', '', 0),
(161, 1, '2015-07-06 01:27:59', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_gallery', '', 'draft', 'closed', 'open', '', 'mixin_nextgen_table_extras', '', '', '2015-07-06 01:27:59', '2015-07-06 01:27:59', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost:9000/?post_type=ngg_gallery&#038;p=161', 0, 'ngg_gallery', '', 0),
(162, 1, '2015-07-06 01:16:59', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_album', '', 'draft', 'open', 'open', '', 'mixin_nextgen_table_extras', '', '', '2015-07-06 01:16:59', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost:9000/?post_type=ngg_album&p=162', 0, 'ngg_album', '', 0),
(163, 1, '2015-07-06 01:17:27', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'open', 'open', '', 'mixin_nextgen_table_extras', '', '', '2015-07-06 01:17:27', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost:9000/?p=163', 0, 'ngg_pictures', '', 0),
(164, 1, '2015-07-06 01:27:59', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'open', '', 'mixin_nextgen_table_extras', '', '', '2015-07-06 01:27:59', '2015-07-06 01:27:59', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost:9000/?p=164', 0, 'ngg_pictures', '', 0),
(165, 1, '2015-07-06 01:17:28', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'open', 'open', '', 'mixin_nextgen_table_extras', '', '', '2015-07-06 01:17:28', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost:9000/?p=165', 0, 'ngg_pictures', '', 0),
(166, 1, '2015-07-06 01:27:59', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'open', '', 'mixin_nextgen_table_extras', '', '', '2015-07-06 01:27:59', '2015-07-06 01:27:59', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost:9000/?p=166', 0, 'ngg_pictures', '', 0),
(167, 1, '2015-07-06 01:17:28', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'open', 'open', '', 'mixin_nextgen_table_extras', '', '', '2015-07-06 01:17:28', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost:9000/?p=167', 0, 'ngg_pictures', '', 0),
(168, 1, '2015-07-06 01:27:59', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'open', '', 'mixin_nextgen_table_extras', '', '', '2015-07-06 01:27:59', '2015-07-06 01:27:59', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost:9000/?p=168', 0, 'ngg_pictures', '', 0),
(169, 1, '2015-07-06 01:17:58', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'open', 'open', '', 'mixin_nextgen_table_extras', '', '', '2015-07-06 01:17:58', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost:9000/?p=169', 0, 'ngg_pictures', '', 0),
(173, 1, '2015-07-06 01:24:38', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'open', 'open', '', 'mixin_nextgen_table_extras', '', '', '2015-07-06 01:24:38', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost:9000/?p=173', 0, 'ngg_pictures', '', 0),
(174, 1, '2015-07-06 01:28:18', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'open', '', 'mixin_nextgen_table_extras', '', '', '2015-07-06 01:28:18', '2015-07-06 01:28:18', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost:9000/?p=174', 0, 'ngg_pictures', '', 0),
(175, 1, '2015-07-06 01:25:02', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'open', 'open', '', 'mixin_nextgen_table_extras', '', '', '2015-07-06 01:25:02', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost:9000/?p=175', 0, 'ngg_pictures', '', 0),
(176, 1, '2015-07-06 01:28:18', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'open', '', 'mixin_nextgen_table_extras', '', '', '2015-07-06 01:28:18', '2015-07-06 01:28:18', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost:9000/?p=176', 0, 'ngg_pictures', '', 0),
(177, 1, '2015-07-06 01:26:16', '2015-07-06 01:26:16', '', 'Fleet Overview', '', 'publish', 'open', 'open', '', 'fleet-overview', '', '', '2015-07-07 04:19:02', '2015-07-07 04:19:02', '', 0, 'http://localhost:9000/?page_id=177', 0, 'page', '', 0),
(178, 1, '2015-07-06 01:26:16', '2015-07-06 01:26:16', '', 'Fleet Overview', '', 'inherit', 'open', 'open', '', '177-revision-v1', '', '', '2015-07-06 01:26:16', '2015-07-06 01:26:16', '', 177, 'http://localhost:9000/index.php/177-revision-v1/', 0, 'revision', '', 0),
(179, 1, '2015-07-06 01:28:18', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_gallery', '', 'draft', 'open', 'open', '', 'mixin_nextgen_table_extras', '', '', '2015-07-06 01:28:18', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost:9000/?post_type=ngg_gallery&p=179', 0, 'ngg_gallery', '', 0),
(180, 1, '2015-07-06 01:33:30', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-07-06 01:33:30', '0000-00-00 00:00:00', '', 0, 'http://localhost:9000/?post_type=easymediagallery&p=180', 0, 'easymediagallery', '', 0),
(181, 1, '2015-07-06 01:44:33', '2015-07-06 01:44:33', '[huge_it_gallery id="1"]', 'Fleet Overview', '', 'inherit', 'open', 'open', '', '177-revision-v1', '', '', '2015-07-06 01:44:33', '2015-07-06 01:44:33', '', 177, 'http://localhost:9000/index.php/177-revision-v1/', 0, 'revision', '', 0),
(182, 1, '2015-07-06 01:46:22', '2015-07-06 01:46:22', '[huge_it_gallery id="2"][huge_it_gallery id="1"]', 'Fleet Overview', '', 'inherit', 'open', 'open', '', '177-revision-v1', '', '', '2015-07-06 01:46:22', '2015-07-06 01:46:22', '', 177, 'http://localhost:9000/index.php/177-revision-v1/', 0, 'revision', '', 0),
(183, 1, '2015-07-07 03:23:07', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-07-07 03:23:07', '0000-00-00 00:00:00', '', 0, 'http://localhost:9000/?post_type=acf&p=183', 0, 'acf', '', 0),
(184, 1, '2015-07-07 03:26:11', '2015-07-07 03:26:11', '[huge_it_gallery id="2"]\r\n\r\n[huge_it_gallery id="3"]', 'Fleet Overview', '', 'inherit', 'open', 'open', '', '177-revision-v1', '', '', '2015-07-07 03:26:11', '2015-07-07 03:26:11', '', 177, 'http://localhost:9000/index.php/177-revision-v1/', 0, 'revision', '', 0),
(185, 1, '2015-07-07 03:27:32', '2015-07-07 03:27:32', '', 'Fleet Overview', '', 'publish', 'closed', 'closed', '', 'acf_fleet-overview-2', '', '', '2015-07-07 04:39:58', '2015-07-07 04:39:58', '', 0, 'http://localhost:9000/?post_type=acf&#038;p=185', 0, 'acf', '', 0),
(189, 1, '2015-07-07 03:39:37', '2015-07-07 03:39:37', '', 'Fleet Overview', '', 'inherit', 'open', 'open', '', '177-revision-v1', '', '', '2015-07-07 03:39:37', '2015-07-07 03:39:37', '', 177, 'http://localhost:9000/index.php/177-revision-v1/', 0, 'revision', '', 0),
(190, 1, '2015-07-07 03:50:48', '2015-07-07 03:50:48', '[huge_it_gallery id="2"]\r\n\r\n&nbsp;', 'Fleet Overview', '', 'inherit', 'open', 'open', '', '177-revision-v1', '', '', '2015-07-07 03:50:48', '2015-07-07 03:50:48', '', 177, 'http://localhost:9000/index.php/177-revision-v1/', 0, 'revision', '', 0),
(191, 1, '2015-07-07 03:51:17', '2015-07-07 03:51:17', '[huge_it_gallery id="3"][huge_it_gallery id="2"]\r\n\r\n&nbsp;', 'Fleet Overview', '', 'inherit', 'open', 'open', '', '177-revision-v1', '', '', '2015-07-07 03:51:17', '2015-07-07 03:51:17', '', 177, 'http://localhost:9000/index.php/177-revision-v1/', 0, 'revision', '', 0),
(192, 1, '2015-07-07 03:52:40', '2015-07-07 03:52:40', '[huge_it_gallery id="3"]\r\n\r\n[huge_it_gallery id="2"]\r\n\r\n&nbsp;', 'Fleet Overview', '', 'inherit', 'open', 'open', '', '177-revision-v1', '', '', '2015-07-07 03:52:40', '2015-07-07 03:52:40', '', 177, 'http://localhost:9000/index.php/177-revision-v1/', 0, 'revision', '', 0),
(195, 1, '2015-07-07 04:02:14', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-07-07 04:02:14', '0000-00-00 00:00:00', '', 0, 'http://localhost:9000/?p=195', 0, 'post', '', 0),
(208, 1, '2015-07-07 04:18:54', '2015-07-07 04:18:54', '', 'Fleet Overview', '', 'inherit', 'open', 'open', '', '177-revision-v1', '', '', '2015-07-07 04:18:54', '2015-07-07 04:18:54', '', 177, 'http://localhost:9000/index.php/177-revision-v1/', 0, 'revision', '', 0),
(211, 1, '2015-07-07 04:29:51', '2015-07-07 04:29:51', '[huge_it_gallery id="2"]', 'Luxury Sedan', '', 'publish', 'open', 'open', '', 'luxury-sedan', '', '', '2015-07-07 04:29:51', '2015-07-07 04:29:51', '', 0, 'http://localhost:9000/?p=211', 0, 'post', '', 0),
(212, 1, '2015-07-07 04:29:51', '2015-07-07 04:29:51', '[huge_it_gallery id="2"]', 'Luxury Sedan', '', 'inherit', 'open', 'open', '', '211-revision-v1', '', '', '2015-07-07 04:29:51', '2015-07-07 04:29:51', '', 211, 'http://localhost:9000/index.php/211-revision-v1/', 0, 'revision', '', 0),
(213, 1, '2015-07-07 04:30:37', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-07-07 04:30:37', '0000-00-00 00:00:00', '', 0, 'http://localhost:9000/?p=213', 0, 'post', '', 0),
(214, 1, '2015-07-07 04:44:29', '2015-07-07 04:44:29', '[huge_it_gallery id="3"]', 'Stretch Limousine', '', 'publish', 'open', 'open', '', 'stretch-limousine', '', '', '2015-07-07 04:44:29', '2015-07-07 04:44:29', '', 0, 'http://localhost:9000/?p=214', 0, 'post', '', 0),
(215, 1, '2015-07-07 04:44:29', '2015-07-07 04:44:29', '[huge_it_gallery id="3"]', 'Stretch Limousine', '', 'inherit', 'open', 'open', '', '214-revision-v1', '', '', '2015-07-07 04:44:29', '2015-07-07 04:44:29', '', 214, 'http://localhost:9000/index.php/214-revision-v1/', 0, 'revision', '', 0) ;

#
# End of data contents of table `wp_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(37, 2, 0),
(38, 2, 0),
(65, 4, 0),
(66, 4, 0),
(67, 4, 0),
(71, 7, 0),
(72, 7, 0),
(211, 1, 0),
(214, 1, 0) ;

#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'nav_menu', '', 0, 2),
(3, 3, 'nav_menu', '', 0, 0),
(4, 4, 'nav_menu', '', 0, 3),
(5, 5, 'nav_menu', '', 0, 0),
(6, 6, 'nav_menu', '', 0, 0),
(7, 7, 'nav_menu', '', 0, 2),
(8, 8, 'nav_menu', '', 0, 0) ;

#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Fleet Overview', 'fleet-overview', 0),
(2, 'Luxury Sedans', 'luxury-sedans', 0),
(3, 'Luxury SUVs', 'luxury-suvs', 0),
(4, 'Stretch Limousines', 'stretch-limousines', 0),
(5, 'Stretch SUVs', 'stretch-suvs', 0),
(6, 'Passenger Vans', 'passenger-vans', 0),
(7, 'Luxury Shuttle Bus', 'luxury-shuttle-bus', 0),
(8, 'The Nav', 'the-nav', 0) ;

#
# End of data contents of table `wp_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'kstg'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets,wp410_dfw,easmedia_pointer_pointer'),
(13, 1, 'show_welcome_panel', '0'),
(15, 1, 'wp_user-settings', 'libraryContent=browse&advImgDetails=show&editor=tinymce&mfold=o'),
(16, 1, 'wp_user-settings-time', '1436146527'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '133'),
(19, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(20, 1, 'metaboxhidden_dashboard', 'a:2:{i:0;s:21:"dashboard_quick_press";i:1;s:17:"dashboard_primary";}'),
(21, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:6:{i:0;s:8:"add-post";i:1;s:15:"add-custom_type";i:2;s:12:"add-post_tag";i:3;s:15:"add-post_format";i:4;s:14:"add-custom_cat";i:5;s:14:"add-custom_tag";}'),
(23, 1, 'nav_menu_recently_edited', '8'),
(35, 1, 'closedpostboxes_easy-photo-album', 'a:1:{i:0;s:16:"commentstatusdiv";}'),
(36, 1, 'metaboxhidden_easy-photo-album', 'a:4:{i:0;s:7:"acf_138";i:1;s:6:"acf_75";i:2;s:6:"acf_22";i:3;s:7:"slugdiv";}'),
(37, 1, 'manageedit-commentscolumnshidden', 'a:4:{i:0;s:6:"author";i:1;s:8:"response";i:2;s:0:"";i:3;s:0:"";}'),
(38, 1, 'edit_comments_per_page', '20'),
(39, 1, 'manageedit-postcolumnshidden', 'a:10:{i:0;s:6:"author";i:1;s:10:"categories";i:2;s:4:"tags";i:3;s:8:"comments";i:4;s:4:"date";i:5;s:0:"";i:6;s:0:"";i:7;s:0:"";i:8;s:0:"";i:9;s:0:"";}'),
(40, 1, 'edit_post_per_page', '20'),
(41, 1, 'manageedit-pagecolumnshidden', 'a:6:{i:0;s:6:"author";i:1;s:8:"comments";i:2;s:4:"date";i:3;s:0:"";i:4;s:0:"";i:5;s:0:"";}'),
(42, 1, 'edit_page_per_page', '20'),
(43, 1, 'session_tokens', 'a:1:{s:64:"6aa65c2bffedb711073fcae21eaae58886d0d9d9a6942d0f4e98add184053d7e";a:4:{s:10:"expiration";i:1436845577;s:2:"ip";s:3:"::1";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.132 Safari/537.36";s:5:"login";i:1436672777;}}') ;

#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'kstg', '$P$B8mwNHjFQMHFjuYrMXxMAMZBGEcT7t0', 'kstg', 'sarahlshowers@gmail.com', '', '2015-04-13 15:38:11', '', 0, 'kstg') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------



#
# Delete any existing table `wp_wppa_albums`
#

DROP TABLE IF EXISTS `wp_wppa_albums`;


#
# Table structure of table `wp_wppa_albums`
#

CREATE TABLE `wp_wppa_albums` (
  `id` bigint(20) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `a_order` smallint(5) NOT NULL,
  `main_photo` bigint(20) NOT NULL,
  `a_parent` bigint(20) NOT NULL,
  `p_order_by` smallint(5) NOT NULL,
  `cover_linktype` tinytext NOT NULL,
  `cover_linkpage` bigint(20) NOT NULL,
  `owner` text NOT NULL,
  `timestamp` tinytext NOT NULL,
  `upload_limit` tinytext NOT NULL,
  `alt_thumbsize` tinytext NOT NULL,
  `default_tags` tinytext NOT NULL,
  `cover_type` tinytext NOT NULL,
  `suba_order_by` tinytext NOT NULL,
  `views` bigint(20) NOT NULL DEFAULT '0',
  `cats` tinytext NOT NULL,
  `scheduledtm` tinytext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_wppa_albums`
#
INSERT INTO `wp_wppa_albums` ( `id`, `name`, `description`, `a_order`, `main_photo`, `a_parent`, `p_order_by`, `cover_linktype`, `cover_linkpage`, `owner`, `timestamp`, `upload_limit`, `alt_thumbsize`, `default_tags`, `cover_type`, `suba_order_by`, `views`, `cats`, `scheduledtm`) VALUES
(1, 'Luxury Sedans', '', 0, 0, 0, 0, 'content', 0, 'kstg', '1436146794', '0/0', '0', '', '', '', 0, '', '') ;

#
# End of data contents of table `wp_wppa_albums`
# --------------------------------------------------------



#
# Delete any existing table `wp_wppa_comments`
#

DROP TABLE IF EXISTS `wp_wppa_comments`;


#
# Table structure of table `wp_wppa_comments`
#

CREATE TABLE `wp_wppa_comments` (
  `id` bigint(20) NOT NULL,
  `timestamp` tinytext NOT NULL,
  `photo` bigint(20) NOT NULL,
  `user` text NOT NULL,
  `ip` tinytext NOT NULL,
  `email` text NOT NULL,
  `comment` text NOT NULL,
  `status` tinytext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `photokey` (`photo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_wppa_comments`
#

#
# End of data contents of table `wp_wppa_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_wppa_exif`
#

DROP TABLE IF EXISTS `wp_wppa_exif`;


#
# Table structure of table `wp_wppa_exif`
#

CREATE TABLE `wp_wppa_exif` (
  `id` bigint(20) NOT NULL,
  `photo` bigint(20) NOT NULL,
  `tag` tinytext NOT NULL,
  `description` text NOT NULL,
  `status` tinytext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `photokey` (`photo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_wppa_exif`
#

#
# End of data contents of table `wp_wppa_exif`
# --------------------------------------------------------



#
# Delete any existing table `wp_wppa_index`
#

DROP TABLE IF EXISTS `wp_wppa_index`;


#
# Table structure of table `wp_wppa_index`
#

CREATE TABLE `wp_wppa_index` (
  `id` bigint(20) NOT NULL,
  `slug` tinytext NOT NULL,
  `albums` text NOT NULL,
  `photos` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `slugkey` (`slug`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_wppa_index`
#
INSERT INTO `wp_wppa_index` ( `id`, `slug`, `albums`, `photos`) VALUES
(11, 'luxury', '1', ''),
(12, 'sedans', '1', '') ;

#
# End of data contents of table `wp_wppa_index`
# --------------------------------------------------------



#
# Delete any existing table `wp_wppa_iptc`
#

DROP TABLE IF EXISTS `wp_wppa_iptc`;


#
# Table structure of table `wp_wppa_iptc`
#

CREATE TABLE `wp_wppa_iptc` (
  `id` bigint(20) NOT NULL,
  `photo` bigint(20) NOT NULL,
  `tag` tinytext NOT NULL,
  `description` text NOT NULL,
  `status` tinytext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `photokey` (`photo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_wppa_iptc`
#

#
# End of data contents of table `wp_wppa_iptc`
# --------------------------------------------------------



#
# Delete any existing table `wp_wppa_photos`
#

DROP TABLE IF EXISTS `wp_wppa_photos`;


#
# Table structure of table `wp_wppa_photos`
#

CREATE TABLE `wp_wppa_photos` (
  `id` bigint(20) NOT NULL,
  `album` bigint(20) NOT NULL,
  `ext` tinytext NOT NULL,
  `name` text NOT NULL,
  `description` longtext NOT NULL,
  `p_order` smallint(5) NOT NULL,
  `mean_rating` tinytext NOT NULL,
  `linkurl` text NOT NULL,
  `linktitle` text NOT NULL,
  `linktarget` tinytext NOT NULL,
  `owner` text NOT NULL,
  `timestamp` tinytext NOT NULL,
  `status` tinytext NOT NULL,
  `rating_count` bigint(20) NOT NULL DEFAULT '0',
  `tags` tinytext NOT NULL,
  `alt` tinytext NOT NULL,
  `filename` tinytext NOT NULL,
  `modified` tinytext NOT NULL,
  `location` tinytext NOT NULL,
  `views` bigint(20) NOT NULL DEFAULT '0',
  `page_id` bigint(20) NOT NULL DEFAULT '0',
  `exifdtm` tinytext NOT NULL,
  `videox` smallint(5) NOT NULL DEFAULT '0',
  `videoy` smallint(5) NOT NULL DEFAULT '0',
  `thumbx` smallint(5) NOT NULL DEFAULT '0',
  `thumby` smallint(5) NOT NULL DEFAULT '0',
  `photox` smallint(5) NOT NULL DEFAULT '0',
  `photoy` smallint(5) NOT NULL DEFAULT '0',
  `scheduledtm` tinytext NOT NULL,
  `custom` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `albumkey` (`album`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_wppa_photos`
#
INSERT INTO `wp_wppa_photos` ( `id`, `album`, `ext`, `name`, `description`, `p_order`, `mean_rating`, `linkurl`, `linktitle`, `linktarget`, `owner`, `timestamp`, `status`, `rating_count`, `tags`, `alt`, `filename`, `modified`, `location`, `views`, `page_id`, `exifdtm`, `videox`, `videoy`, `thumbx`, `thumby`, `photox`, `photoy`, `scheduledtm`, `custom`) VALUES
(1, 1, 'png', 'Grid_1.png', '', 0, '', '', '', '_self', 'kstg', '1436146794', 'publish', 0, '', '', 'Grid_1.png', '0', '', 0, 0, '', 0, 0, 0, 0, 0, 0, '', '') ;

#
# End of data contents of table `wp_wppa_photos`
# --------------------------------------------------------



#
# Delete any existing table `wp_wppa_rating`
#

DROP TABLE IF EXISTS `wp_wppa_rating`;


#
# Table structure of table `wp_wppa_rating`
#

CREATE TABLE `wp_wppa_rating` (
  `id` bigint(20) NOT NULL,
  `timestamp` tinytext NOT NULL,
  `photo` bigint(20) NOT NULL,
  `value` smallint(5) NOT NULL,
  `user` text NOT NULL,
  `status` tinytext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `photokey` (`photo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_wppa_rating`
#

#
# End of data contents of table `wp_wppa_rating`
# --------------------------------------------------------



#
# Delete any existing table `wp_wppa_session`
#

DROP TABLE IF EXISTS `wp_wppa_session`;


#
# Table structure of table `wp_wppa_session`
#

CREATE TABLE `wp_wppa_session` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `session` tinytext NOT NULL,
  `timestamp` tinytext NOT NULL,
  `user` tinytext NOT NULL,
  `ip` tinytext NOT NULL,
  `status` tinytext NOT NULL,
  `data` text NOT NULL,
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sessionkey` (`session`(20))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_wppa_session`
#
INSERT INTO `wp_wppa_session` ( `id`, `session`, `timestamp`, `user`, `ip`, `status`, `data`, `count`) VALUES
(1, 'a9bfb8c5ead4b3c802bef5d59012ad89', '1436146236', 'kstg', '::1', 'valid', 'a:3:{s:4:"page";i:11;s:2:"id";s:1:"1";s:4:"ajax";i:22;}', 35) ;

#
# End of data contents of table `wp_wppa_session`
# --------------------------------------------------------



#
# Delete any existing table `wp_wppg_album`
#

DROP TABLE IF EXISTS `wp_wppg_album`;


#
# Table structure of table `wp_wppg_album`
#

CREATE TABLE `wp_wppg_album` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `album_name` varchar(200) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `album_category` int(11) NOT NULL,
  `thumbnail_url` text NOT NULL,
  `page_id` bigint(20) NOT NULL,
  `gallery_list` text NOT NULL,
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_wppg_album`
#

#
# End of data contents of table `wp_wppg_album`
# --------------------------------------------------------



#
# Delete any existing table `wp_wppg_downloads`
#

DROP TABLE IF EXISTS `wp_wppg_downloads`;


#
# Table structure of table `wp_wppg_downloads`
#

CREATE TABLE `wp_wppg_downloads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `duid` varchar(100) DEFAULT NULL,
  `downloaded_on` datetime DEFAULT NULL,
  `ip` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_wppg_downloads`
#

#
# End of data contents of table `wp_wppg_downloads`
# --------------------------------------------------------



#
# Delete any existing table `wp_wppg_gallery`
#

DROP TABLE IF EXISTS `wp_wppg_gallery`;


#
# Table structure of table `wp_wppg_gallery`
#

CREATE TABLE `wp_wppg_gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `category` int(11) NOT NULL,
  `watermark` varchar(500) NOT NULL,
  `watermark_opacity` varchar(32) NOT NULL,
  `watermark_placement` int(11) NOT NULL,
  `watermark_width` varchar(32) NOT NULL,
  `watermark_font_size` varchar(16) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `gallery_thumb_template` int(11) NOT NULL,
  `display_image_on_page` tinyint(1) NOT NULL DEFAULT '1',
  `enable_pagination` tinyint(1) NOT NULL DEFAULT '0',
  `thumbs_per_page` varchar(32) NOT NULL,
  `password` varchar(500) NOT NULL,
  `page_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_wppg_gallery`
#

#
# End of data contents of table `wp_wppg_gallery`
# --------------------------------------------------------



#
# Delete any existing table `wp_wppg_global_meta`
#

DROP TABLE IF EXISTS `wp_wppg_global_meta`;


#
# Table structure of table `wp_wppg_global_meta`
#

CREATE TABLE `wp_wppg_global_meta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `meta_key1` varchar(255) NOT NULL,
  `meta_key2` varchar(255) NOT NULL,
  `meta_key3` varchar(255) NOT NULL,
  `meta_key4` varchar(255) NOT NULL,
  `meta_key5` varchar(255) NOT NULL,
  `meta_value1` varchar(255) NOT NULL,
  `meta_value2` text NOT NULL,
  `meta_value3` text NOT NULL,
  `meta_value4` longtext NOT NULL,
  `meta_value5` longtext NOT NULL,
  PRIMARY KEY (`meta_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_wppg_global_meta`
#

#
# End of data contents of table `wp_wppg_global_meta`
# --------------------------------------------------------



#
# Delete any existing table `wp_wppg_settings`
#

DROP TABLE IF EXISTS `wp_wppg_settings`;


#
# Table structure of table `wp_wppg_settings`
#

CREATE TABLE `wp_wppg_settings` (
  `wppg_key` varchar(128) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`wppg_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_wppg_settings`
#

#
# End of data contents of table `wp_wppg_settings`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

