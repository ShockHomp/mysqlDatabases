CREATE DATABASE  IF NOT EXISTS `harbor` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `harbor`;
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 192.168.10.10    Database: harbor
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin_menu`
--

DROP TABLE IF EXISTS `admin_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `order` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `admin_operation_log`
--

DROP TABLE IF EXISTS `admin_operation_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `admin_operation_log_user_id_index` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=58974 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `admin_permissions`
--

DROP TABLE IF EXISTS `admin_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `admin_permissions_name_unique` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `admin_role_menu`
--

DROP TABLE IF EXISTS `admin_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) unsigned NOT NULL,
  `menu_id` int(11) unsigned NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `admin_role_permissions`
--

DROP TABLE IF EXISTS `admin_role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) unsigned NOT NULL,
  `permission_id` int(11) unsigned NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `admin_role_users`
--

DROP TABLE IF EXISTS `admin_role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `admin_roles`
--

DROP TABLE IF EXISTS `admin_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `admin_roles_name_unique` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `admin_user_permissions`
--

DROP TABLE IF EXISTS `admin_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) unsigned NOT NULL,
  `permission_id` int(11) unsigned NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 有效 0 无效',
  `kingdom_user_id` int(10) NOT NULL COMMENT 'Kingdom 系统用户id',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `admin_users_username_unique` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1639 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `advertising_countries`
--

DROP TABLE IF EXISTS `advertising_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `advertising_countries` (
  `advertising_id` int(10) unsigned NOT NULL,
  `country_id` int(10) unsigned NOT NULL,
  KEY `advertising_image_id_language_id_index` (`country_id`,`advertising_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='广告数据与国家关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `advertising_data_countries`
--

DROP TABLE IF EXISTS `advertising_data_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `advertising_data_countries` (
  `advertising_data_id` int(10) unsigned NOT NULL,
  `country_id` int(10) unsigned NOT NULL,
  KEY `advertising_data_image_id_language_id_index` (`country_id`,`advertising_data_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='广告数据与国家关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `advertising_data_image_languages`
--

DROP TABLE IF EXISTS `advertising_data_image_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `advertising_data_image_languages` (
  `advertising_data_image_id` int(10) unsigned NOT NULL,
  `language_id` int(10) unsigned NOT NULL,
  KEY `advertising_data_image_id_language_id_index` (`language_id`,`advertising_data_image_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='广告数据图片与语言关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `advertising_data_images`
--

DROP TABLE IF EXISTS `advertising_data_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `advertising_data_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `advertising_data_id` int(10) unsigned NOT NULL,
  `pc_image` int(10) unsigned NOT NULL COMMENT 'images 表中的id',
  `app_image` int(10) unsigned NOT NULL COMMENT 'images 表中的id',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `advertising_data_id` (`advertising_data_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='广告数据图片表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `advertising_image_languages`
--

DROP TABLE IF EXISTS `advertising_image_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `advertising_image_languages` (
  `advertising_image_id` int(10) unsigned NOT NULL,
  `language_id` int(10) unsigned NOT NULL,
  KEY `advertising_image_id_language_id_index` (`language_id`,`advertising_image_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='广告数据图片与语言关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `advertising_images`
--

DROP TABLE IF EXISTS `advertising_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `advertising_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `advertising_id` int(10) unsigned NOT NULL,
  `pc_image` int(10) unsigned NOT NULL COMMENT 'images 表中的id',
  `app_image` int(10) unsigned NOT NULL COMMENT 'images 表中的id',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `advertising_id` (`advertising_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=248 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='广告数据图片表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `advertising_navigations`
--

DROP TABLE IF EXISTS `advertising_navigations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `advertising_navigations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `navigation_id` int(10) unsigned NOT NULL,
  `collection_id` int(10) NOT NULL COMMENT '商品集',
  `image_id` int(10) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1,有效 0,无效',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `navigation_id` (`navigation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='广告位管理导航';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `advertising_site_extends`
--

DROP TABLE IF EXISTS `advertising_site_extends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `advertising_site_extends` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `advertising_site_id` int(10) unsigned NOT NULL,
  `collection_id` int(10) NOT NULL COMMENT '商品集',
  `pc_image_id` int(10) NOT NULL DEFAULT '0',
  `app_image_id` int(10) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1,有效 0,无效',
  `pc_image_width` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pc_image_height` smallint(5) unsigned NOT NULL DEFAULT '0',
  `app_image_width` smallint(5) unsigned NOT NULL DEFAULT '0',
  `app_image_height` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `advertising_site_id` (`advertising_site_id`) USING BTREE,
  KEY `collection_id` (`collection_id`) USING BTREE,
  KEY `pc_image_id` (`pc_image_id`) USING BTREE,
  KEY `app_image_id` (`app_image_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='广告位管理 默认extend';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `advertising_site_picture_items`
--

DROP TABLE IF EXISTS `advertising_site_picture_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `advertising_site_picture_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `advertising_site_id` int(10) unsigned NOT NULL,
  `type` int(10) NOT NULL COMMENT '类型',
  `product_id` int(10) NOT NULL DEFAULT '0' COMMENT '产品id',
  `collection_id` int(10) NOT NULL DEFAULT '0' COMMENT '商品集id',
  `position` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:左,1:右',
  `percent` tinyint(1) NOT NULL DEFAULT '1',
  `image_id` int(10) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1,有效 0,无效',
  `image_height` smallint(5) unsigned NOT NULL DEFAULT '0',
  `image_width` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `advertising_site_id` (`advertising_site_id`) USING BTREE,
  KEY `product_id` (`product_id`) USING BTREE,
  KEY `collection_id` (`collection_id`) USING BTREE,
  KEY `image_id` (`image_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='广告位管理 - 图片广告子项';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `advertising_site_recommend_extends`
--

DROP TABLE IF EXISTS `advertising_site_recommend_extends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `advertising_site_recommend_extends` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `advertising_site_id` int(10) unsigned NOT NULL,
  `layout` tinyint(1) NOT NULL DEFAULT '0' COMMENT '布局',
  `display_number` tinyint(1) NOT NULL DEFAULT '1' COMMENT '展示数量',
  `pc_column` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'PC列数',
  `app_column` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'APP列数',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `advertising_site_id` (`advertising_site_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='广告位管理 推荐位 extend';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `advertising_site_recommend_items`
--

DROP TABLE IF EXISTS `advertising_site_recommend_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `advertising_site_recommend_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `advertising_site_id` int(10) unsigned NOT NULL,
  `title` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '布局',
  `collection_id` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `advertising_site_id` (`advertising_site_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='广告位管理 推荐位 item';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `advertising_sites`
--

DROP TABLE IF EXISTS `advertising_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `advertising_sites` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `date_start` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '开始时间',
  `date_end` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '结束时间',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1,有效 0,无效',
  `is_display` tinyint(3) NOT NULL DEFAULT '1',
  `type` tinyint(1) NOT NULL COMMENT '类型',
  `sort` smallint(1) NOT NULL DEFAULT '1',
  `child_sort` smallint(1) NOT NULL DEFAULT '1',
  `group_id` smallint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='广告位管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `advertising_types`
--

DROP TABLE IF EXISTS `advertising_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `advertising_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '广告名称',
  `advertising_key` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '广告key, 前台调用',
  `description` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '广告位功能描述',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1,有效 0,无效',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='广告位';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `advertisings`
--

DROP TABLE IF EXISTS `advertisings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `advertisings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `advertising_type_id` int(10) unsigned NOT NULL,
  `collection_id` int(10) unsigned NOT NULL,
  `title` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `date_start` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '开始时间',
  `date_end` datetime DEFAULT NULL COMMENT '结束时间，为null则表示无限制',
  `sort` int(10) NOT NULL DEFAULT '1',
  `operator_id` int(11) unsigned NOT NULL COMMENT '操作人',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1,有效 0,无效',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `advertising_type_id` (`advertising_type_id`) USING BTREE,
  KEY `operator_id` (`operator_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='广告数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `automatic_discount`
--

DROP TABLE IF EXISTS `automatic_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `automatic_discount` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `automatic_discount_active_id` int(11) NOT NULL COMMENT 'automatic_discount_activities主键',
  `type` tinyint(4) DEFAULT NULL COMMENT '活动类型  （1满金额，2满数量',
  `type_value` decimal(12,2) DEFAULT NULL COMMENT '活动类型值   满多少金额(type=1)，满多少数量(type=2)',
  `offer_value` decimal(12,2) DEFAULT NULL COMMENT '优惠类型值 减多少钱(offer_type=1)，打几折(offer_type=2)',
  `view_name` varchar(500) DEFAULT NULL COMMENT '前端文案显示',
  PRIMARY KEY (`id`),
  KEY `automatic_discount_active_id` (`automatic_discount_active_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COMMENT='自动折扣详情表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `automatic_discount_activities`
--

DROP TABLE IF EXISTS `automatic_discount_activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `automatic_discount_activities` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '活动名称',
  `view_name` varchar(50) DEFAULT NULL COMMENT '前台显示文案（废弃转移到automatic_discount）',
  `type` tinyint(4) DEFAULT '1' COMMENT '活动类型  （1满金额，2满数量',
  `offer_type` tinyint(4) DEFAULT '1' COMMENT '优惠类型 （1满减，2满折，3指定金额满数量可用',
  `mutual_exclusion` varchar(45) DEFAULT '[]' COMMENT '优惠券互斥 默认[]无互斥，有值得时候[12,34] (互斥对象为优惠券ID',
  `mutual_exclusion_type` tinyint(4) DEFAULT '0' COMMENT '0 不选择互斥 1 全部coupon类型互斥  2 具体coupon活动',
  `product_type` tinyint(4) DEFAULT '0' COMMENT ' 0 未选择  1全场商品  2指定商品集   3指定商品',
  `product_collection` text COMMENT '指定商品集使用',
  `superposition_rule` tinyint(4) DEFAULT '1' COMMENT ' 叠加规则  1 同一层级叠加，上不封顶    2 多层级递增',
  `check_button` tinyint(4) DEFAULT '1' COMMENT ' 1 未勾选   2 已勾选 ',
  `view_state` tinyint(4) DEFAULT '1' COMMENT '列表页是否显示活动标签 1 不显示 2 显示',
  `status` tinyint(4) DEFAULT '0' COMMENT '活动状态 1启用 0关闭 default 0',
  `state_control` tinyint(4) DEFAULT '0' COMMENT '活动进行中开启被关闭过',
  `state_open` tinyint(4) DEFAULT '0' COMMENT ' 1 活动被开启过',
  `show_time` tinyint(4) DEFAULT '0' COMMENT ' 0 不显示活动  1-7 天',
  `view_more` tinyint(4) DEFAULT '1' COMMENT '详情页是否显示 view more   1 不展示  2 展示',
  `relational_type` tinyint(4) DEFAULT '1' COMMENT 'type =3 时， 梯度关系  1 或  2且',
  `operator_id` int(11) DEFAULT '0' COMMENT '后台操作人ID 不更改 default 0',
  `close_time` datetime DEFAULT NULL COMMENT '活动关闭时间',
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='自动折扣表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `automatic_discount_histories`
--

DROP TABLE IF EXISTS `automatic_discount_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `automatic_discount_histories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `automatic_discount_active_id` int(11) DEFAULT NULL COMMENT '自动折扣id',
  `order_id` int(11) DEFAULT NULL COMMENT '订单 id',
  `customer_id` int(11) DEFAULT NULL,
  `amount` decimal(12,4) DEFAULT NULL COMMENT '优惠金额 美元',
  `amount_in_exchange` decimal(12,4) DEFAULT NULL COMMENT '优惠金额 当前订单币种',
  `paid_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `automatic_discount_active_id` (`automatic_discount_active_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='自动折扣历史使用表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `automatic_discount_products`
--

DROP TABLE IF EXISTS `automatic_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `automatic_discount_products` (
  `automatic_discount_active_id` int(11) NOT NULL COMMENT 'automatic_discount_activities主键',
  `product_id` int(11) NOT NULL COMMENT 'products表外键',
  `status` tinyint(4) DEFAULT '1' COMMENT '0 被删除 1在使用',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  KEY `automatic_discount_active_id` (`automatic_discount_active_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='自动折扣产品表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `buy_gift_activities`
--

DROP TABLE IF EXISTS `buy_gift_activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buy_gift_activities` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(500) DEFAULT NULL COMMENT '活动名称',
  `type` tinyint(4) DEFAULT '1' COMMENT '优惠类型 1满金额赠，2满数量送',
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `coupon_mutual_exclusion_type` tinyint(4) DEFAULT '0' COMMENT '0 不选择互斥 1 全部coupon类型互斥  2 具体coupon活动',
  `coupon_mutual_exclusion` varchar(45) DEFAULT '[]' COMMENT '优惠券互斥 默认[]无互斥，有值得时候[12,34] (互斥对象为优惠券ID',
  `show_time` tinyint(4) DEFAULT '1' COMMENT '详情页显示倒计时循环天数',
  `auto_discount_mutual_exclusion_type` tinyint(4) DEFAULT '1' COMMENT '自动折扣是否互斥 1 不互斥 2 互斥',
  `view_state` tinyint(4) DEFAULT '1' COMMENT '列表页是否显示活动标签 1 不显示 2 显示',
  `buy_type` tinyint(4) DEFAULT '0' COMMENT ' 主商品类型 0 未选择  1全场商品  2指定商品集   3指定商品',
  `buy_collections` text COMMENT '指定主商品集使用',
  `gift_type` tinyint(4) DEFAULT '3' COMMENT ' 赠品类型 0 未选择  1全场商品  2指定商品集   3指定商品',
  `status` tinyint(4) DEFAULT '1' COMMENT '活动状态 1启用 0关闭',
  `state_control` tinyint(4) DEFAULT '0' COMMENT '是否认为关闭过 1启用 0关闭',
  `operator_id` int(11) DEFAULT '0' COMMENT '后台操作人ID',
  `close_time` datetime DEFAULT NULL COMMENT '活动关闭时间',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='买赠活动表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `buy_gift_histories`
--

DROP TABLE IF EXISTS `buy_gift_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buy_gift_histories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `buy_gift_activity_id` int(11) DEFAULT NULL COMMENT '自动折扣id',
  `order_id` int(11) DEFAULT NULL COMMENT '订单 id',
  `customer_id` int(11) DEFAULT NULL,
  `amount` decimal(12,4) DEFAULT NULL COMMENT '优惠金额 美元',
  `amount_in_exchange` decimal(12,4) DEFAULT NULL COMMENT '优惠金额 当前订单币种',
  `paid_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `buy_gift_activity_id` (`buy_gift_activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='买赠活动历史使用表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `buy_gift_products`
--

DROP TABLE IF EXISTS `buy_gift_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buy_gift_products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `buy_gift_activity_id` int(11) NOT NULL COMMENT 'buy_gift_activities主键',
  `product_id` int(11) NOT NULL COMMENT 'products表外键',
  `type` tinyint(4) DEFAULT '1' COMMENT '1 表示主商品使用产品 2表示赠品商品使用',
  `status` tinyint(4) DEFAULT '1' COMMENT '0 被删除 1在使用',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `buy_gift_activity_id` (`buy_gift_activity_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='自动折扣产品表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `buy_gifts`
--

DROP TABLE IF EXISTS `buy_gifts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buy_gifts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `buy_gift_activity_id` int(11) NOT NULL COMMENT 'buy_gift_activities主键',
  `type` tinyint(4) DEFAULT NULL COMMENT '活动类型  （1满金额，2满数量',
  `type_value` decimal(12,2) DEFAULT NULL COMMENT '活动类型值   满多少金额(type=1)，满多少数量(type=2)',
  `offer_value` decimal(12,2) DEFAULT '1.00' COMMENT '优惠类型值 送多少件',
  `view_name` varchar(64) DEFAULT '' COMMENT '前台显示文案',
  PRIMARY KEY (`id`),
  KEY `buy_gift_activity_id` (`buy_gift_activity_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='买赠活动条件详情表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cart_items`
--

DROP TABLE IF EXISTS `cart_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) unsigned NOT NULL,
  `sku_id` int(11) unsigned NOT NULL,
  `quantity` int(11) unsigned NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `customer_id` (`customer_id`) USING BTREE,
  KEY `sku_id` (`sku_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=894 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '分站点的分类',
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `parent_id` (`parent_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `category_paths`
--

DROP TABLE IF EXISTS `category_paths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_paths` (
  `category_id` int(11) unsigned NOT NULL,
  `path_id` int(11) unsigned NOT NULL,
  `level` int(11) unsigned NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`) USING BTREE,
  KEY `path_id` (`path_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `checkout_transactions`
--

DROP TABLE IF EXISTS `checkout_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `checkout_transactions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(10) DEFAULT NULL COMMENT '订单Id',
  `checkout_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Checkout 唯一支付id',
  `status` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '状态',
  `processed_on` datetime DEFAULT NULL,
  `action_id` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `response_summary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `clauses`
--

DROP TABLE IF EXISTS `clauses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clauses` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `content` text COLLATE utf8mb4_unicode_ci COMMENT '条款内容',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1,有效 0,无效',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='条款表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `collection_clear_sort`
--

DROP TABLE IF EXISTS `collection_clear_sort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collection_clear_sort` (
  `product_id` int(11) NOT NULL COMMENT '产品 id',
  `clear_type` tinyint(3) DEFAULT NULL COMMENT '清仓类型: 0-一般清仓 1-重点清仓',
  `sort_key` tinyint(3) unsigned NOT NULL DEFAULT '255' COMMENT '排序优先级',
  `sort_value` decimal(15,5) NOT NULL DEFAULT '0.00001' COMMENT '排序值',
  `sort_value_bak` decimal(15,5) NOT NULL DEFAULT '0.00001' COMMENT '一搬清仓算法6 排序值4 重点清仓算法7 排序值3',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `collection_sort`
--

DROP TABLE IF EXISTS `collection_sort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collection_sort` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `shipping_country` varchar(256) DEFAULT NULL COMMENT '国家',
  `category` varchar(256) DEFAULT NULL COMMENT '品类',
  `product_id` int(11) DEFAULT NULL COMMENT '商品ID',
  `priority` int(11) DEFAULT NULL COMMENT '优先级',
  `p` decimal(15,2) DEFAULT NULL COMMENT 'p排序值',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `collections`
--

DROP TABLE IF EXISTS `collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collections` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '页面的key',
  `handle` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sort_value` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '排序',
  `filter_value` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '筛选值',
  `filter_value_display` json DEFAULT NULL COMMENT '后台设置筛选规则时生成元素用',
  `filter_value_type` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all' COMMENT '筛选条件 all全部, any:任何条件',
  `pc_image_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'pc图片id',
  `app_image_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'm端/app图片id',
  `seo_title` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Seo title',
  `seo_keywords` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'seo keywords\n',
  `seo_desc` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'seo description\n',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态, 0.删除 1.在线',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `page_title` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='聚合产品规则表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `contact_us`
--

DROP TABLE IF EXISTS `contact_us`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_us` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) unsigned NOT NULL,
  `order_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '订单号',
  `client_os` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '提交contact_us 的设备',
  `problem_type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `send_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '发送ace状态，0-未发送，1-发送成功',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `customer_id` (`customer_id`) USING BTREE,
  KEY `order` (`order_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='联系我们';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iso_code_2` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iso_code_3` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '1,有效 0,无效',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=258 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='国家表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `coupon_histories`
--

DROP TABLE IF EXISTS `coupon_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon_histories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) unsigned NOT NULL,
  `order_id` int(11) unsigned NOT NULL COMMENT '订单id',
  `customer_id` int(11) unsigned NOT NULL COMMENT '下单用户id',
  `amount` decimal(15,4) NOT NULL COMMENT '订单折扣金额 美元',
  `amount_in_exchange` decimal(15,4) NOT NULL COMMENT '订单折扣金额 订单所选币种',
  `status` tinyint(1) DEFAULT '0' COMMENT '1,订单已付款，0未付款',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `order_id` (`order_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='coupon使用记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `coupon_selections`
--

DROP TABLE IF EXISTS `coupon_selections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon_selections` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned NOT NULL,
  `type` char(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Category, Product, ShippingMethod',
  `status` tinyint(1) NOT NULL COMMENT '1,有效 0,无效',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `coupon_id` (`coupon_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='coupon适用范围';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `code` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'coupon code',
  `type` enum('S','F','P') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'F: 满减 P: 折扣 S: 包邮',
  `discount` decimal(15,2) NOT NULL COMMENT '折扣金额',
  `discount_conditions` json DEFAULT NULL COMMENT '折扣条件',
  `usage_total` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '可用总次数, 0为不限量',
  `usage_per_customer` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '每个用户可用次数，0为不限量',
  `country_conditions` json DEFAULT NULL COMMENT '国家限制',
  `customer_conditions` json DEFAULT NULL COMMENT '用户限制',
  `collection_conditions` json DEFAULT NULL COMMENT '产品集使用条件',
  `status` tinyint(1) NOT NULL COMMENT '1,有效 0,无效',
  `date_start` datetime NOT NULL COMMENT '有效期开始时间',
  `date_end` datetime DEFAULT NULL COMMENT '结束时间，为null则表示无限制',
  `operator_id` int(10) unsigned NOT NULL COMMENT '后台操作人id',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `operator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '操作人是谁，第三方平台记录私有app_name',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `code` (`code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='coupon相关信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currencies` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol_left` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol_right` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `decimal_place` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` float(15,8) NOT NULL,
  `cost_value` float(15,8) NOT NULL COMMENT '成本价汇率',
  `status` tinyint(1) NOT NULL COMMENT '1,有效 0,无效',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sort` tinyint(4) NOT NULL DEFAULT '0' COMMENT '排序',
  `is_default` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否默认',
  `is_display` tinyint(4) NOT NULL DEFAULT '0' COMMENT '前台是否展示',
  `is_admin_display` tinyint(4) NOT NULL DEFAULT '0' COMMENT '后台是否展示',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='汇率表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品描述信息自定义字段',
  `field` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer_addresses`
--

DROP TABLE IF EXISTS `customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_addresses` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) unsigned NOT NULL,
  `firstname` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(11) unsigned NOT NULL DEFAULT '0',
  `state` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_1` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_2` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `postcode` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `customer_id` (`customer_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=320 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户地址表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer_onesignal_players`
--

DROP TABLE IF EXISTS `customer_onesignal_players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_onesignal_players` (
  `onesignal_player_id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'onesignal用户id',
  `customer_id` int(10) unsigned NOT NULL,
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户，onesignal关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(96) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salt` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'harbor' COMMENT '来源：harbor, facebook, google',
  `order_num` smallint(5) unsigned DEFAULT '0' COMMENT '付款订单数',
  `order_cost` decimal(10,2) DEFAULT '0.00' COMMENT '总消费美元金额，付款金额-退款金额',
  `status` tinyint(1) NOT NULL COMMENT '1,有效 0,无效',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `newsletter` int(11) NOT NULL DEFAULT '1',
  `register_at` datetime DEFAULT NULL COMMENT '注册时间',
  `register_status` tinyint(1) DEFAULT '1' COMMENT '是否注册用户,1-是，0否',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `email` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=100072 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dictionary`
--

DROP TABLE IF EXISTS `dictionary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dictionary` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` tinyint(3) DEFAULT NULL COMMENT '类型 1 颜色 2 属性',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `name_type` (`name`,`type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='词典表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dictionary_translation`
--

DROP TABLE IF EXISTS `dictionary_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dictionary_translation` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `dictionary_id` int(11) unsigned NOT NULL,
  `language_id` tinyint(3) DEFAULT NULL COMMENT '语言id',
  `translation_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dictionary_id` (`dictionary_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='翻译词典表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `discount_products`
--

DROP TABLE IF EXISTS `discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discount_products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `discount_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL COMMENT 'product_id',
  `discount` decimal(8,6) NOT NULL COMMENT '折扣',
  `gross` decimal(8,6) NOT NULL COMMENT '毛利',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='限时折扣产品表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `discounts`
--

DROP TABLE IF EXISTS `discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` char(8) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '包括 F: 满减 P: 折扣 S: 包邮 一种和多种',
  `date_start` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '开始时间',
  `date_end` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '结束时间',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1,有效 0,无效',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='限时折扣表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `email`
--

DROP TABLE IF EXISTS `email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email` (
  `id` smallint(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '邮件标题',
  `content` text COLLATE utf8mb4_unicode_ci COMMENT '内容',
  `type` tinyint(3) NOT NULL COMMENT '类型',
  `footer_left_text` char(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '底部左侧文案',
  `footer_left_collection_id` smallint(10) NOT NULL DEFAULT '0' COMMENT '底部左侧商品集',
  `footer_center_text` char(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '底部中间文案',
  `footer_center_collection_id` smallint(10) NOT NULL DEFAULT '0' COMMENT '底部中间商品集',
  `footer_right_text` char(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '底部右侧文案',
  `footer_right_collection_id` smallint(10) NOT NULL DEFAULT '0' COMMENT '底部右侧商品集',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  `top_image_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '顶部背景图id',
  `center_image_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '底部背景图id',
  `bottom_image_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '中部背景图id',
  `language_id` smallint(8) NOT NULL DEFAULT '1' COMMENT '语言',
  `is_default` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否默认',
  `regular_time` smallint(5) unsigned NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `top_image_width` smallint(5) unsigned NOT NULL DEFAULT '0',
  `top_image_height` smallint(5) unsigned NOT NULL DEFAULT '0',
  `center_image_width` smallint(5) unsigned NOT NULL DEFAULT '0',
  `center_image_height` smallint(5) unsigned NOT NULL DEFAULT '0',
  `bottom_image_width` smallint(5) unsigned NOT NULL DEFAULT '0',
  `bottom_image_height` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `filter_groups`
--

DROP TABLE IF EXISTS `filter_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filter_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '筛选大类表',
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '可供网站展示的产品属性集合',
  `sort` smallint(6) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `filters`
--

DROP TABLE IF EXISTS `filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filters` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '筛选子项表',
  `filter_group_id` int(11) unsigned NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '可供网站展示的产品属性',
  `sort` int(3) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `filter_group_id` (`filter_group_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=257 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `path` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '路径',
  `md5` char(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '文件md5',
  `sha1` char(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '文件 sha1编码',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='图片表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `information`
--

DROP TABLE IF EXISTS `information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `information` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `bottom` tinyint(1) NOT NULL DEFAULT '0',
  `sort` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `status` (`status`,`sort`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='网站声明.. 文章';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `information_description`
--

DROP TABLE IF EXISTS `information_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `information_description` (
  `information_id` int(11) unsigned NOT NULL,
  `language_id` int(11) unsigned NOT NULL,
  `title` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='网站声明.. 文章 翻译结果';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL COMMENT '1,有效 0,无效',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='语言表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `logistics`
--

DROP TABLE IF EXISTS `logistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logistics` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '物流名称',
  `profile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '简介',
  `first_price` decimal(8,4) NOT NULL COMMENT '首重价',
  `continue_price` decimal(8,4) NOT NULL COMMENT '续重价',
  `max_price` decimal(12,4) NOT NULL COMMENT '最高价格',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1,有效 0,无效',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='物流表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `logistics_free_countries`
--

DROP TABLE IF EXISTS `logistics_free_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logistics_free_countries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `logistics_free_id` int(11) unsigned NOT NULL COMMENT 'logistics_free_id',
  `countries_id` int(11) unsigned NOT NULL COMMENT 'countries_id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='免邮国家表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `logistics_frees`
--

DROP TABLE IF EXISTS `logistics_frees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logistics_frees` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `shipping_method_id` int(11) unsigned NOT NULL COMMENT 'shipping_method_id',
  `min_cost` decimal(8,4) DEFAULT NULL COMMENT '最低消费金额',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1,有效 0,无效',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='免邮表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `navigations`
--

DROP TABLE IF EXISTS `navigations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `navigations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '父级id 0:根节点',
  `language_id` smallint(5) unsigned DEFAULT '1' COMMENT '语言id',
  `name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '导航名称',
  `country_id` smallint(3) NOT NULL DEFAULT '0' COMMENT '国家ID',
  `hot` tinyint(3) NOT NULL DEFAULT '0' COMMENT 'hot标识 0:无 1:有',
  `sale` tinyint(3) NOT NULL DEFAULT '0' COMMENT 'sale标识 0:无 1:有',
  `newline` tinyint(3) NOT NULL DEFAULT '0' COMMENT 'newline换行标识 0:不换行 1:换行',
  `sort` smallint(6) NOT NULL DEFAULT '50' COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1,有效 0,无效',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `parent_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '导航路径',
  `collection_id` int(10) unsigned DEFAULT '0' COMMENT '产品集id',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `sort` (`sort`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=395 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='网站前端导航';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsletters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `email` char(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户填写的EMAIL',
  `status` tinyint(1) NOT NULL COMMENT '1,有效 0,无效',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `email` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户订阅表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oceanpay_giropay_transaction`
--

DROP TABLE IF EXISTS `oceanpay_giropay_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oceanpay_giropay_transaction` (
  `payment_id` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'oceanpay payment_id from xml',
  `transaction_id` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'oceanpay use order_no as unique transaction id',
  `order_id` int(11) NOT NULL,
  `status` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_details` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,4) NOT NULL COMMENT 'transaction total money',
  `currency_code` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oceanpay_ideal_transaction`
--

DROP TABLE IF EXISTS `oceanpay_ideal_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oceanpay_ideal_transaction` (
  `payment_id` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'oceanpay payment_id from xml',
  `transaction_id` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'oceanpay use order_no as unique transaction id',
  `order_id` int(11) NOT NULL,
  `status` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_details` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,4) NOT NULL COMMENT 'transaction total money',
  `currency_code` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oceanpay_oxxo_transaction`
--

DROP TABLE IF EXISTS `oceanpay_oxxo_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oceanpay_oxxo_transaction` (
  `payment_id` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'oceanpay payment_id from callback post,this table if for oxxo payment oceanpay proxy',
  `transaction_id` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'oceanpay use order_no as unique transaction id',
  `order_id` int(11) NOT NULL,
  `status` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_details` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,4) NOT NULL COMMENT 'transaction total money',
  `currency_code` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_barcode` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oceanpay_przelewy24_transaction`
--

DROP TABLE IF EXISTS `oceanpay_przelewy24_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oceanpay_przelewy24_transaction` (
  `payment_id` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'oceanpay payment_id from xml',
  `transaction_id` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'oceanpay use order_no as unique transaction id',
  `order_id` int(11) NOT NULL,
  `status` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_details` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,4) NOT NULL COMMENT 'transaction total money',
  `currency_code` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oceanpay_sofort_transaction`
--

DROP TABLE IF EXISTS `oceanpay_sofort_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oceanpay_sofort_transaction` (
  `payment_id` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'oceanpay payment_id from xml',
  `transaction_id` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'oceanpay use order_no as unique transaction id',
  `order_id` int(11) NOT NULL,
  `status` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_details` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,4) NOT NULL COMMENT 'transaction total money',
  `currency_code` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oceanpay_tracking_log`
--

DROP TABLE IF EXISTS `oceanpay_tracking_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oceanpay_tracking_log` (
  `order_id` int(11) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oceanpay_transaction`
--

DROP TABLE IF EXISTS `oceanpay_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oceanpay_transaction` (
  `payment_id` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'oceanpay payment_id from xml',
  `transaction_id` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'oceanpay use order_no as unique transaction id',
  `order_id` int(11) NOT NULL,
  `payment_method` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_details` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,4) NOT NULL COMMENT 'transaction total money',
  `currency_code` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_number` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `onesignal_notification_settings`
--

DROP TABLE IF EXISTS `onesignal_notification_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `onesignal_notification_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `delay_minute` int(10) unsigned NOT NULL COMMENT '延迟发送时间',
  `title` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `link` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '链接',
  `message` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '信息',
  `button_info` json NOT NULL COMMENT '按钮信息[{text:abc,link:chicv.com},{text:abc,link:chicv.com}]',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='onesignal推送设置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `onesignal_players`
--

DROP TABLE IF EXISTS `onesignal_players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `onesignal_players` (
  `id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'onesignal用户id',
  `cart_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '购物车数量',
  `last_edit_cart` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='onesignal用户的购物车';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `onesignal_user_cart`
--

DROP TABLE IF EXISTS `onesignal_user_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `onesignal_user_cart` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `onesignal_player_id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'onesignal用户id',
  `sku_id` int(10) unsigned NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `onesignal_player_id` (`onesignal_player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='onesignal用户的购物车';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `option_values`
--

DROP TABLE IF EXISTS `option_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `option_values` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品可选项子项，比如颜色下面的red,black等',
  `option_id` int(11) unsigned NOT NULL,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '可选项前台显示名称',
  `sort` int(3) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `option_id` (`option_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `options`
--

DROP TABLE IF EXISTS `options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `options` (
  `id` tinyint(3) NOT NULL AUTO_INCREMENT COMMENT '商品可选项主表，比如COLOR(颜色),SIZE(尺码),CUP SIZE(罩杯)',
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` tinyint(3) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `order_addresses`
--

DROP TABLE IF EXISTS `order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_addresses` (
  `order_id` int(11) unsigned NOT NULL,
  `shipping_telephone` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `shipping_firstname` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `shipping_lastname` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `shipping_country` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `shipping_country_id` int(11) unsigned NOT NULL DEFAULT '0',
  `shipping_state` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `shipping_city` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `shipping_address_1` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `shipping_address_2` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `shipping_postcode` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `payment_firstname` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `payment_lastname` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `payment_address_1` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `payment_address_2` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `payment_city` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `payment_postcode` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `payment_country` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `payment_country_id` int(11) unsigned NOT NULL DEFAULT '0',
  `payment_zone` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `payment_method` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `payment_code` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `payment_email` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='订单收货地址表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `order_adjust_histories`
--

DROP TABLE IF EXISTS `order_adjust_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_adjust_histories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL COMMENT '订单ID',
  `type` tinyint(3) DEFAULT NULL COMMENT '类型 0 整单 1 部分',
  `total_in_exchange` decimal(10,2) NOT NULL COMMENT '此次共调整订单总金额, 订单币种',
  `detail` json DEFAULT NULL COMMENT '此次调整的详细信息',
  `notify` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否发送通知',
  `remark` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '备注',
  `operator_id` int(10) unsigned NOT NULL COMMENT '操作人id',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `order_id` (`order_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='订单金额调整记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `order_argument_status`
--

DROP TABLE IF EXISTS `order_argument_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_argument_status` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_no` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `retrieval_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '调单状态，0为尚未接到notice状\n\n态 1为收到调单 2为开始调单申诉 -10为调单被判为倾向于用户(调单申诉失败) 10为调单被判为倾向于我方(”调单申诉成功“或者”调单恢复正常“)',
  `charge_back_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '拒付状态，0为尚未接到notice\n\n状态 1为收到拒付 2为开始拒付申诉 -10为拒付被判为倾向于用户(拒付申诉失败) 10为拒付被判为倾向于我方(拒付申诉成功)',
  `created_at` datetime DEFAULT NULL COMMENT '添加时间',
  `updated_at` datetime DEFAULT NULL COMMENT '最后一次修改的时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `order_no_idx` (`order_no`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `order_argument_status_history`
--

DROP TABLE IF EXISTS `order_argument_status_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_argument_status_history` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_argument_status_id` int(11) unsigned NOT NULL,
  `retrieval_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '调单状态，1为收到调单 2为开始\n\n调单申诉 3为调单申诉失败 4为调单申诉成功 10为接到了调单恢复正常通知',
  `charge_back_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '拒付状态，1为收到拒付 2为开\n\n始拒付申诉 3为拒付申诉失败 10为拒付申诉成功',
  `src` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '动作来源',
  `erp_sync_action` tinyint(1) NOT NULL DEFAULT '0' COMMENT '该动作是否会通过erp_sync机制通知ace系统，通知了为1，不需要通知为0',
  `created_at` datetime DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `order_edm_histories`
--

DROP TABLE IF EXISTS `order_edm_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_edm_histories` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(10) NOT NULL COMMENT '订单Id',
  `group_id` int(10) NOT NULL COMMENT '组ID',
  `product_id` int(10) NOT NULL COMMENT '产品ID',
  `paid_at` datetime DEFAULT NULL,
  `discount` decimal(10,4) NOT NULL COMMENT '减免金额',
  `discount_in_exchange` decimal(10,4) NOT NULL COMMENT '减免金额',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `order_emails`
--

DROP TABLE IF EXISTS `order_emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_emails` (
  `id` smallint(10) unsigned NOT NULL AUTO_INCREMENT,
  `relate_table_id` int(11) unsigned NOT NULL COMMENT '关联表 id',
  `type` tinyint(3) unsigned NOT NULL COMMENT '关联表类型 1:订单表 orders 2:退款表 order_refunds',
  `confirm_mail` tinyint(3) NOT NULL DEFAULT '0' COMMENT '确认邮件发送',
  `is_confirm` tinyint(3) NOT NULL DEFAULT '1' COMMENT '是否发送确认邮件 1:发送 0:不发送',
  `confirm_at` datetime DEFAULT NULL,
  `refund_mail` tinyint(3) NOT NULL DEFAULT '0' COMMENT '退款邮件发送',
  `is_refund` tinyint(3) NOT NULL DEFAULT '1' COMMENT '是否发送退款邮件 1:发送 0:不发送',
  `refund_at` datetime DEFAULT NULL,
  `pay_fail_mail` tinyint(3) NOT NULL DEFAULT '0' COMMENT '支付失败邮件发送',
  `is_pay_fail` tinyint(3) NOT NULL DEFAULT '1' COMMENT '是否发送支付失败邮件 1:发送 0:不发送',
  `pay_fail_at` datetime DEFAULT NULL,
  `send_mail` tinyint(3) NOT NULL DEFAULT '0' COMMENT '发货邮件发送',
  `is_send` tinyint(3) NOT NULL DEFAULT '1' COMMENT '是否发送发货邮件 1:发送 0:不发送',
  `send_at` datetime DEFAULT NULL,
  `recall_mail` tinyint(3) NOT NULL DEFAULT '0' COMMENT '召回邮件发送',
  `is_recall` tinyint(3) NOT NULL DEFAULT '1' COMMENT '是否发送召回邮件 1:发送 0:不发送',
  `recall_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `relate` (`relate_table_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `order_histories`
--

DROP TABLE IF EXISTS `order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_histories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) unsigned NOT NULL,
  `order_status_id` int(5) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `operator_id` int(11) unsigned DEFAULT '0' COMMENT '操作人',
  `notify` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1.发邮件 0.不发',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `order_id` (`order_id`,`created_at`) USING BTREE,
  KEY `order_status_id` (`order_status_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5073441 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='订单状态变化表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `order_packages`
--

DROP TABLE IF EXISTS `order_packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_packages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) unsigned NOT NULL,
  `package_no` char(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tracking_number` char(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tracking_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tracking_company` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '承运公司',
  `delivered_at` datetime DEFAULT NULL COMMENT '签收时间',
  `shipped_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '发货时间',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `order_id` (`order_id`) USING BTREE,
  KEY `date_shipping` (`shipped_at`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='订单物流表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `order_payment_logs`
--

DROP TABLE IF EXISTS `order_payment_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_payment_logs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `origin_data` text COMMENT '原始数据',
  `order_id` int(11) NOT NULL COMMENT '订单 id',
  `payment_method` varchar(16) DEFAULT NULL COMMENT '日志类型 paypal, oceanpay, worldpay, checkout_v2',
  `payment_channel` varchar(16) DEFAULT NULL COMMENT '日志类型 paypal, oceanpay, worldpay, checkout_v2',
  `payment_id` varchar(32) DEFAULT NULL COMMENT '支付 id',
  `transaction_id` varchar(32) DEFAULT NULL COMMENT '交易 id',
  `type` tinyint(4) NOT NULL COMMENT '类型: 1:提交订单 2:待处理, 3:支付失败, 4:支付成功',
  `order_amount` decimal(10,2) NOT NULL COMMENT '订单总额, 币种对应订单的币种, 额度对应 order 内的 total_in_exchange',
  `card_name` varchar(16) DEFAULT NULL COMMENT '信用卡类型',
  `card_number` varchar(32) DEFAULT NULL COMMENT '信用卡卡号',
  `log_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '日志创建时间',
  `note` varchar(255) NOT NULL DEFAULT '' COMMENT '记录失败信息 或 pengding 信息',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `order_product_refund`
--

DROP TABLE IF EXISTS `order_product_refund`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_product_refund` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_refund_id` int(11) unsigned NOT NULL,
  `order_id` int(11) unsigned NOT NULL,
  `order_product_id` int(11) unsigned NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `order_id` (`order_id`) USING BTREE,
  KEY `order_product_id` (`order_product_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='订单退款金额关联产品表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `order_product_return_reasons`
--

DROP TABLE IF EXISTS `order_product_return_reasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_product_return_reasons` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_product_return_id` int(11) unsigned NOT NULL COMMENT '关联退换货商品id',
  `return_reason_id` smallint(6) NOT NULL DEFAULT '0' COMMENT '关联退换货原因id 0时为用户自定义原因',
  `reason` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '意见',
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '父级原因',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `order_product_return_id` (`order_product_return_id`) USING BTREE,
  KEY `return_reason_id` (`return_reason_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='订单商品退换货原因表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `order_product_returns`
--

DROP TABLE IF EXISTS `order_product_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_product_returns` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_return_id` int(11) NOT NULL COMMENT '关联order_returns的id',
  `order_product_id` int(11) unsigned NOT NULL COMMENT '关联订单商品id',
  `type` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'return' COMMENT '类型 return:退货 exchange:换货',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '申请状态 0:撤销 1:提交成功',
  `action_status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '后台人员操作状态 1:已提交，未处理 2:已处理，告知用户仓库地址 3用户提交退换货物流信息 4已完成，包括退款',
  `exchange_comment` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '换货意见',
  `source` char(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'customer' COMMENT '申请来源:erp customer cs',
  `change_order_id` int(11) DEFAULT NULL COMMENT '换单子订单号',
  `images` json DEFAULT NULL COMMENT 'json, 退换货图片',
  `exchange_sku_id` int(11) unsigned DEFAULT NULL COMMENT 'sku_id',
  `exchange_sku` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '更换的sku',
  `order_return_package_id` int(11) unsigned DEFAULT NULL COMMENT '商品退换货物流信息',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `created_at` (`created_at`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='订单商品退换货记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `order_products`
--

DROP TABLE IF EXISTS `order_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_products` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) unsigned NOT NULL,
  `product_id` int(11) unsigned NOT NULL,
  `sku_id` int(11) unsigned NOT NULL,
  `sku_name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Sku',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_package_id` int(11) unsigned DEFAULT NULL,
  `order_product_status_id` int(11) unsigned NOT NULL COMMENT '订单商品状态表，关联order_status中type=product的id',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000' COMMENT '美元价格',
  `real_price` decimal(15,4) NOT NULL DEFAULT '0.0000' COMMENT '真实美元价格',
  `price_in_exchange` decimal(15,4) DEFAULT '0.0000' COMMENT '真实售价的订单币种价格',
  `real_price_in_exchange` decimal(15,4) DEFAULT '0.0000' COMMENT '真实售价的订单币种价格',
  `compare_at_price` decimal(15,2) DEFAULT NULL COMMENT '展示价，折前价',
  `compare_at_price_in_exchange` decimal(15,2) DEFAULT NULL COMMENT '展示价，折前价',
  `exchange_order_product_id` int(11) DEFAULT NULL COMMENT '换货原始order_product_id',
  `type` tinyint(3) DEFAULT '0' COMMENT '产品的类型: 0:普通商品,1:赠品 ...',
  `is_gift` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '11',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `order_id` (`order_id`,`product_id`) USING BTREE,
  KEY `product_id` (`product_id`) USING BTREE,
  KEY `sku_id` (`sku_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11132 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='订单商品表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `order_refunds`
--

DROP TABLE IF EXISTS `order_refunds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_refunds` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) unsigned NOT NULL,
  `total` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '美元金额',
  `total_in_exchange` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '订单币种金额',
  `reason` varchar(1024) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '退款原因',
  `comment` varchar(1024) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注信息',
  `status` int(4) NOT NULL DEFAULT '1',
  `ace_refund_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'ace订单系统请求id',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `order_id` (`order_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='订单退款金额表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `order_return_packages`
--

DROP TABLE IF EXISTS `order_return_packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_return_packages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_product_id` int(11) unsigned NOT NULL,
  `order_product_return_id` int(11) unsigned NOT NULL,
  `date_shipping` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '发货时间',
  `tracking_number` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '物流单号',
  `tracking_company` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '承运公司',
  `arrived_warehouse` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '到达仓库',
  `date_delivery` datetime DEFAULT NULL COMMENT '到达仓库时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `order_product_return_id` (`order_product_return_id`) USING BTREE,
  KEY `order_product_id` (`order_product_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='订单物流表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `order_returns`
--

DROP TABLE IF EXISTS `order_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_returns` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `reason` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '退款原因',
  `comment` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注信息',
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `status` int(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `order_status`
--

DROP TABLE IF EXISTS `order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_status` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '状态应用位置 order, product',
  `notice` tinyint(1) DEFAULT '0' COMMENT '变为该状态时，是否给用户发送邮件',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='订单状态表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `order_total_extensions`
--

DROP TABLE IF EXISTS `order_total_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_total_extensions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '订单结算流程中显示名称',
  `code` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '订单结算中order_totals表中的code',
  `sort` smallint(6) NOT NULL DEFAULT '50' COMMENT '排序',
  `status` tinyint(1) NOT NULL COMMENT '1,有效 0,无效',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `sort` (`sort`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='订单结算顺序, 支持插件扩展';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `order_totals`
--

DROP TABLE IF EXISTS `order_totals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_totals` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) unsigned NOT NULL,
  `code` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ENUM(SubTotal, Shipping, Coupon, Adjust, Total)',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `value_in_exchange` decimal(15,4) DEFAULT '0.0000',
  `sort` int(3) NOT NULL,
  `comment` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注信息',
  `detail` text COLLATE utf8mb4_unicode_ci COMMENT '折扣详情记录',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `order_id` (`order_id`,`code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1452 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `order_transfer`
--

DROP TABLE IF EXISTS `order_transfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_transfer` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) unsigned NOT NULL COMMENT '关联订单id',
  `amount` decimal(10,4) NOT NULL COMMENT '原订单对应支付币种金额',
  `pay_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'PAYPAL CREDIT',
  `pay_time` datetime DEFAULT NULL,
  `transaction_no` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '交易号',
  `currency_code` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_rate` decimal(15,8) DEFAULT '1.00000000' COMMENT 'currency rate to system currency(default USD:1)',
  `source_id` int(11) unsigned NOT NULL COMMENT '来源 外键order_id',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `order_id` (`order_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='换单时，订单金额转移记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_no` char(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL COMMENT '换单的时候关联的原始订单',
  `customer_id` int(11) unsigned NOT NULL DEFAULT '0',
  `email` varchar(96) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000' COMMENT '美元金额',
  `total_in_exchange` decimal(15,4) NOT NULL DEFAULT '0.0000' COMMENT '付款时用户所选币种金额',
  `order_status_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '订单状态',
  `language_id` int(11) unsigned NOT NULL COMMENT '下单时用户所选语言',
  `shipping_method_id` tinyint(3) unsigned DEFAULT '1' COMMENT '物流方式外键',
  `currency_id` int(11) unsigned NOT NULL,
  `currency_code` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `onesignal_player_id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'onesignal用户id',
  `date_paid` datetime DEFAULT NULL,
  `expire` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `client_os` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '客户端类型',
  `ace_request_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Ace的请求退货请求id',
  `ga_counter` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否已统计ga',
  `payment_method` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '支付方式, PayPal , ocean pay, ideal等',
  `payment_channel` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `login_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '登录状态,1-登录购买,2-未登录购买',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `order_no` (`order_no`) USING BTREE,
  KEY `order_status_id` (`order_status_id`,`id`,`created_at`) USING BTREE,
  KEY `parent_id` (`parent_id`) USING BTREE,
  KEY `created_at` (`created_at`) USING BTREE,
  KEY `email` (`email`) USING BTREE,
  KEY `customer_id` (`customer_id`) USING BTREE,
  KEY `date_paid` (`date_paid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=536 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='订单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `password_tokens`
--

DROP TABLE IF EXISTS `password_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_tokens` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '链接中的token',
  `email` varchar(96) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '找回密码的邮箱',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'token生成时间',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `used_at` datetime DEFAULT NULL COMMENT '使用时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `payment_activities`
--

DROP TABLE IF EXISTS `payment_activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_activities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '活动名称',
  `view_name` varchar(500) NOT NULL DEFAULT '' COMMENT '前台显示文案',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '活动类型 1 每单减',
  `discount_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '优惠类型   1 定额减 2 随机减',
  `pay_type` varchar(200) DEFAULT '[]' COMMENT '存放支付方式的数组',
  `operator_id` int(11) DEFAULT '0' COMMENT '后台创建操作人ID',
  `status` tinyint(4) DEFAULT '0' COMMENT '1启用 0关闭 ',
  `state_control` tinyint(4) DEFAULT '0' COMMENT '1  活动进行中开启被关闭过',
  `state_open` tinyint(4) DEFAULT '0' COMMENT '1 活动被开启过',
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='支付活动表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `payment_discount`
--

DROP TABLE IF EXISTS `payment_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_discount` (
  `payment_id` int(11) NOT NULL COMMENT 'payment_activities主键',
  `quota_value` decimal(12,2) DEFAULT '0.00' COMMENT '定额减金额',
  `random_down_value` decimal(12,2) DEFAULT '0.00' COMMENT '随机减上线金额',
  `random_up_value` decimal(12,2) DEFAULT '0.00' COMMENT '随机减下限金额',
  KEY `payment_id` (`payment_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='支付活动优惠详情表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `payment_discount_histories`
--

DROP TABLE IF EXISTS `payment_discount_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_discount_histories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_id` int(11) DEFAULT NULL COMMENT '支付活动id',
  `order_id` int(11) DEFAULT NULL COMMENT '订单 id',
  `customer_id` int(11) DEFAULT NULL,
  `payment_type` varchar(50) DEFAULT NULL COMMENT '支付渠道',
  `amount` decimal(12,4) DEFAULT '0.0000',
  `amount_in_exchange` decimal(12,4) DEFAULT '0.0000',
  `paid_at` datetime DEFAULT NULL COMMENT '订单支付时间',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `payment_id` (`payment_id`) USING BTREE,
  KEY `order_id` (`order_id`,`customer_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='支付活动历史使用表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `payment_icon_relate`
--

DROP TABLE IF EXISTS `payment_icon_relate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_icon_relate` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `payment_method_id` smallint(8) unsigned NOT NULL COMMENT '支付方式id',
  `payment_icon_id` smallint(11) NOT NULL COMMENT '图标的图片id',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `payment_icons`
--

DROP TABLE IF EXISTS `payment_icons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_icons` (
  `id` smallint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '图标id',
  `image_id` int(11) NOT NULL COMMENT '图标的图片id',
  `name` varchar(32) NOT NULL COMMENT '名称',
  `type` tinyint(3) NOT NULL COMMENT '类型 1:常规支付图标, 2:信用卡支付图标',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `payment_method_channels`
--

DROP TABLE IF EXISTS `payment_method_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_method_channels` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `channel` varchar(32) NOT NULL COMMENT '渠道名称',
  `payment_method_id` int(11) NOT NULL COMMENT '支付方式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `payment_method_extra`
--

DROP TABLE IF EXISTS `payment_method_extra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_method_extra` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `channel` varchar(32) NOT NULL,
  `payment_method` varchar(32) NOT NULL,
  `country_id` int(10) NOT NULL,
  `country` varchar(32) NOT NULL,
  `currency` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `payment_methods`
--

DROP TABLE IF EXISTS `payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_methods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL COMMENT '支付方式名称',
  `sort` int(5) NOT NULL DEFAULT '99' COMMENT '排序',
  `channel` varchar(64) NOT NULL DEFAULT '0' COMMENT '关联支付渠道',
  `value` varchar(500) NOT NULL COMMENT '支付参数',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态,0-禁用，1-启用',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `account` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '账号',
  `password` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '密码',
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '签名',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='支付表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `paypal_order`
--

DROP TABLE IF EXISTS `paypal_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paypal_order` (
  `paypal_order_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) unsigned NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `capture_status` enum('Complete','NotComplete') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `authorization_id` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` decimal(10,2) NOT NULL,
  PRIMARY KEY (`paypal_order_id`) USING BTREE,
  KEY `order_id` (`order_id`) USING BTREE,
  KEY `date_added` (`date_added`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `paypal_order_transaction`
--

DROP TABLE IF EXISTS `paypal_order_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paypal_order_transaction` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `paypal_order_id` int(11) unsigned NOT NULL,
  `transaction_id` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_transaction_id` char(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `date_added` datetime NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `msgsubid` char(38) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `receipt_id` char(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `payment_type` enum('none','echeck','instant','refund','void') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` char(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `pending_reason` char(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `transaction_entity` char(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `amount` decimal(10,2) NOT NULL,
  `debug_data` text COLLATE utf8mb4_unicode_ci,
  `call_data` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `parent_transaction_id` (`paypal_order_id`,`parent_transaction_id`) USING BTREE,
  KEY `transaction_id` (`transaction_id`,`paypal_order_id`) USING BTREE,
  KEY `paypal_order_id` (`paypal_order_id`) USING BTREE,
  KEY `date_added` (`date_added`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `paypal_profile`
--

DROP TABLE IF EXISTS `paypal_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paypal_profile` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `experience_profile_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'PayPal profile 唯一ID',
  `language_id` int(10) DEFAULT NULL COMMENT '语言ID',
  `value` json DEFAULT NULL COMMENT 'paypal返回值',
  PRIMARY KEY (`id`),
  UNIQUE KEY `experience_profile_id` (`experience_profile_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='paypal支付页面logo等配置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `paypal_transactions`
--

DROP TABLE IF EXISTS `paypal_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paypal_transactions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) unsigned NOT NULL,
  `status` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '状态',
  `authorization_id` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_id` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'paypal回调的id',
  `response_summary` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_authorization_id` (`authorization_id`,`status`),
  KEY `order_id` (`order_id`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `paypal_webhook`
--

DROP TABLE IF EXISTS `paypal_webhook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paypal_webhook` (
  `id` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Web hook event id',
  `payment_id` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'PayPal payment id',
  `order_id` int(11) NOT NULL COMMENT '订单ID',
  `event_type` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resource_type` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_time` datetime NOT NULL,
  `post_value` text COLLATE utf8mb4_unicode_ci COMMENT 'PayPal post data'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `private_apps`
--

DROP TABLE IF EXISTS `private_apps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `private_apps` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '' COMMENT 'app name',
  `api_key` varchar(64) NOT NULL DEFAULT '' COMMENT 'api key',
  `password` varchar(64) NOT NULL DEFAULT '' COMMENT 'api 密匙',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态 0: 禁用 1: 启用',
  `share_secret` varchar(64) NOT NULL DEFAULT '' COMMENT '验证密匙',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_categories` (
  `product_id` int(11) unsigned NOT NULL COMMENT '商品与栏目的关联表',
  `category_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`) USING BTREE,
  KEY `category_id` (`category_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product_contents`
--

DROP TABLE IF EXISTS `product_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_contents` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) unsigned NOT NULL,
  `language_id` int(11) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品多语言名称',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品多语言描述',
  `meta_title` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'meta 标题',
  `meta_keyword` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'meta 关键词',
  `meta_description` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'meta 描述',
  `tips` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `product_id` (`product_id`,`language_id`) USING BTREE,
  KEY `language_id` (`language_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=340 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product_custom_fields`
--

DROP TABLE IF EXISTS `product_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_custom_fields` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品自定义描述字段',
  `product_id` int(11) unsigned NOT NULL,
  `custom_field_id` int(11) unsigned NOT NULL,
  `value` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '自定义字段值',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `product_id` (`product_id`,`custom_field_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=879 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product_edm`
--

DROP TABLE IF EXISTS `product_edm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_edm` (
  `group_id` int(11) NOT NULL COMMENT '产品组 id',
  `edm_id` int(11) NOT NULL COMMENT '广告系统 edm id',
  `date_start` datetime NOT NULL COMMENT '产品会员价开始时间',
  `date_end` datetime NOT NULL COMMENT '产品会员价结束时间',
  `create_user` varchar(64) DEFAULT NULL COMMENT '创建人',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态 0:取消 1:展示',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product_edm_items`
--

DROP TABLE IF EXISTS `product_edm_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_edm_items` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '组id',
  `title` varchar(255) DEFAULT NULL COMMENT 'edm产品 标题',
  `product_id` int(11) NOT NULL COMMENT '产品 id',
  `type` tinyint(4) NOT NULL COMMENT '类型: 1:满减 2:满折',
  `number` varchar(64) NOT NULL COMMENT '类型 1: 数值为减金额,类型2:为打折比例,',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态 0:取消 1:展示',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_product` (`group_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product_filters`
--

DROP TABLE IF EXISTS `product_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_filters` (
  `product_id` int(11) unsigned NOT NULL COMMENT '商品筛选项关联表',
  `filter_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`filter_id`,`product_id`) USING BTREE,
  KEY `product_id` (`product_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_images` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) unsigned NOT NULL,
  `image` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '图片路径',
  `option_value_id` int(11) DEFAULT NULL COMMENT '对应可选项的id，比如 color下面的black option_id',
  `sort` int(3) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `product_id` (`product_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2965 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product_options`
--

DROP TABLE IF EXISTS `product_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `product_options_product_id_option_id_uindex` (`product_id`,`option_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1040 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product_recommends`
--

DROP TABLE IF EXISTS `product_recommends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_recommends` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `shipping_country` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `priority` smallint(6) DEFAULT NULL,
  `p` decimal(10,9) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='推荐商品表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product_size_charts`
--

DROP TABLE IF EXISTS `product_size_charts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_size_charts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '产品尺寸表',
  `product_id` int(11) NOT NULL COMMENT 'products.id',
  `device` varchar(6) NOT NULL DEFAULT '' COMMENT '设备: pc m',
  `image_src` varchar(512) NOT NULL DEFAULT '' COMMENT '图片地址',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product_statistics`
--

DROP TABLE IF EXISTS `product_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_statistics` (
  `product_id` int(10) unsigned NOT NULL,
  `viewed` int(10) unsigned NOT NULL DEFAULT '0',
  `season_viewed` int(10) unsigned NOT NULL DEFAULT '0',
  `month_viewed` int(10) unsigned NOT NULL DEFAULT '0',
  `week_viewed` int(10) unsigned NOT NULL DEFAULT '0',
  `sold` int(10) unsigned NOT NULL DEFAULT '0',
  `season_sold` int(10) unsigned DEFAULT '0',
  `month_sold` int(10) unsigned NOT NULL DEFAULT '0',
  `week_sold` int(10) unsigned DEFAULT '0',
  `cart_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '加购数',
  `inventory` int(10) unsigned DEFAULT '0' COMMENT '库存数',
  `refund` int(10) unsigned NOT NULL DEFAULT '0',
  `season_refund` int(10) unsigned NOT NULL DEFAULT '0',
  `month_refund` int(10) unsigned NOT NULL DEFAULT '0',
  `week_refund` int(10) unsigned NOT NULL DEFAULT '0',
  `conversion_rate` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '转化率',
  `refund_rate` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '退货率',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`product_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='统计产品数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product_stats_histories`
--

DROP TABLE IF EXISTS `product_stats_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_stats_histories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `viewed` int(10) unsigned NOT NULL DEFAULT '0',
  `sold` int(10) unsigned NOT NULL DEFAULT '0',
  `refund` int(10) unsigned NOT NULL DEFAULT '0',
  `day` date NOT NULL,
  `cart_num` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `product_id` (`product_id`,`day`) USING BTREE,
  KEY `day` (`day`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=523 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='按日统计产品数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product_tags`
--

DROP TABLE IF EXISTS `product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(64) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_id` (`product_id`,`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '分站商品表',
  `price` decimal(15,2) DEFAULT NULL COMMENT '零售价, 本币美金; 此字段只展示美金价值',
  `cost` decimal(10,2) NOT NULL COMMENT '采购价',
  `spu` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品连接',
  `tips` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品Tooltip',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feed_id` bigint(20) DEFAULT NULL,
  `vendor` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `in_advertising` tinyint(1) DEFAULT '0' COMMENT '0:未推广,1:推广中',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: 未上线; 1: 已上线; 2: 待上线; 3: 驳回; 4: 侵权',
  `module` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_basic_category` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT 'other' COMMENT '商品基础类目',
  `first_released_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '商品第一次发布时间',
  `released_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '商品预计发布时间，也就是原来的date_available',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `spu` (`spu`) USING BTREE,
  KEY `status` (`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=361 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `recommend_country`
--

DROP TABLE IF EXISTS `recommend_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recommend_country` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(10) unsigned NOT NULL COMMENT 'country id',
  `sort` tinyint(3) unsigned NOT NULL COMMENT '排序',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `country_id` (`country_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `return_reasons`
--

DROP TABLE IF EXISTS `return_reasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `return_reasons` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `category_set` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '对应分类id集合',
  `exclude_category_set` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '排除分类id集合',
  `parent_id` smallint(6) NOT NULL DEFAULT '0' COMMENT '父级原因id',
  `reason` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '原因',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1,有效 0,无效',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `parent_id` (`parent_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='退换货原因选项表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `review_images`
--

DROP TABLE IF EXISTS `review_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `review_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL COMMENT 'images表id',
  `email` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '评论人邮箱',
  `product_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `content` varchar(10000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rank` tinyint(4) NOT NULL COMMENT '评分',
  `approve_status` tinyint(4) NOT NULL COMMENT '审核状态: 0未审核 1已审核',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL COMMENT '商品ID',
  `sku` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `email` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '评论人邮箱',
  `post_from` tinyint(4) NOT NULL DEFAULT '0' COMMENT '评论来源: 0用户 1系统',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `navigation_id` int(11) DEFAULT '0' COMMENT '关联前端导航id',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `operate_user` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '操作人',
  PRIMARY KEY (`id`),
  KEY `reviews_order_id_index` (`order_id`),
  KEY `reviews_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `serialized` tinyint(1) NOT NULL COMMENT '1 json, 0 string',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态，0-不暴露给网站显示，1-可以显示',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `shipping_methods`
--

DROP TABLE IF EXISTS `shipping_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipping_methods` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '物流名称 例：Standard Delivery',
  `description` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '物流简介 例：7-12 business days',
  `base_fee` decimal(15,2) unsigned NOT NULL DEFAULT '5.00' COMMENT '首重一磅454g的金额',
  `continue_fee` decimal(15,2) unsigned NOT NULL DEFAULT '5.00' COMMENT '续重每磅454g的金额',
  `max_fee` decimal(15,2) unsigned NOT NULL DEFAULT '9999999.00' COMMENT '运费上限金额',
  `status` tinyint(1) NOT NULL COMMENT '1,有效 0,无效',
  `type` enum('flat','standard','express') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '快递类型',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='物流方式表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sku_specs`
--

DROP TABLE IF EXISTS `sku_specs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sku_specs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'sku规格表，一个SKU是由多个可选项组合起来的，比如常见的颜色／尺码，也可能是厚度，容量等',
  `sku_id` int(11) unsigned NOT NULL,
  `option_id` tinyint(3) unsigned NOT NULL COMMENT '颜色,尺码...; 冗余字段',
  `option_value_id` int(10) unsigned DEFAULT NULL,
  `sale_spec` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '销售尺码&颜色对应码 option里面代表的是label size，这里通常表示美码',
  `supplier_spec` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '供应商尺码',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '商品本地尺码',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `sku_spec_id` (`sku_id`,`option_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `skus`
--

DROP TABLE IF EXISTS `skus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skus` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) unsigned NOT NULL,
  `sku` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'SKU的值',
  `inventory` int(10) NOT NULL DEFAULT '9999' COMMENT '子站库存',
  `status` tinyint(3) NOT NULL DEFAULT '1',
  `price` decimal(15,2) DEFAULT NULL COMMENT 'The price of the product variant',
  `compare_at_price` decimal(15,2) DEFAULT NULL COMMENT 'The original price of the item before an adjustment or a sale，展示价，折前价',
  `presentment_prices` json DEFAULT NULL COMMENT 'The original price of the item before an adjustment or a sale，多币种售价，json字段',
  `grams` int(10) NOT NULL DEFAULT '0' COMMENT '商品重量, g',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT 'The order of the product variant in the list of product variants. The first position in the list is 1',
  `cost` decimal(15,2) DEFAULT NULL COMMENT '采购价, 总是以人民币结算',
  `product_image_id` int(11) DEFAULT NULL,
  `feed_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `product_id` (`product_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5573 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `term_services`
--

DROP TABLE IF EXISTS `term_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `term_services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态 0-关闭, 1-开启',
  `title` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `content` text COLLATE utf8mb4_unicode_ci COMMENT '内容',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `theme_activities`
--

DROP TABLE IF EXISTS `theme_activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `theme_activities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `theme_id` int(10) unsigned NOT NULL,
  `type` enum('W','B','I') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '活动类型, W:文字广告, B:推荐位 , I:图片广告',
  `sort` tinyint(3) unsigned NOT NULL COMMENT '排序',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_start` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '开始时间',
  `date_end` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '结束时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='主题-自定义活动';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `theme_banners`
--

DROP TABLE IF EXISTS `theme_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `theme_banners` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `theme_id` int(10) unsigned NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_ids` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '[1]',
  `image_info` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1,有效 0,无效',
  `sort` tinyint(3) unsigned NOT NULL COMMENT '排序',
  `date_start` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '开始时间',
  `date_end` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '结束时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='主题-轮播banner';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `theme_footers`
--

DROP TABLE IF EXISTS `theme_footers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `theme_footers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `theme_id` int(10) unsigned NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` tinyint(3) unsigned NOT NULL COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='主题-footer';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `theme_navs`
--

DROP TABLE IF EXISTS `theme_navs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `theme_navs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `theme_id` int(10) unsigned NOT NULL,
  `navigation_id` int(10) unsigned NOT NULL,
  `image_info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1,有效 0,无效',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='主题-导航图片广告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `theme_tops`
--

DROP TABLE IF EXISTS `theme_tops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `theme_tops` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `theme_id` int(10) unsigned NOT NULL,
  `content` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1,有效 0,无效',
  `date_start` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '开始时间',
  `date_end` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '结束时间',
  `sort` tinyint(3) unsigned NOT NULL COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='主题-顶部通栏';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `themes`
--

DROP TABLE IF EXISTS `themes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `themes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1,有效 0,无效',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='主题表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) unsigned NOT NULL,
  `type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `currency_code` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_rate` decimal(15,8) DEFAULT '1.00000000' COMMENT 'currency rate to system currency(default USD:1)',
  `authorization_id` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` decimal(10,2) NOT NULL COMMENT 'Currency code 对应的金额',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `order_id` (`order_id`,`type`) USING BTREE,
  KEY `created_at` (`created_at`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1193209 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `language_id` int(10) NOT NULL COMMENT '语言id',
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '原文',
  `translate` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '译文',
  PRIMARY KEY (`id`),
  UNIQUE KEY `language` (`language_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `webhook_jobs`
--

DROP TABLE IF EXISTS `webhook_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webhook_jobs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `subscription_id` int(11) NOT NULL COMMENT '订阅ID webhook_subscriptions.id',
  `payload` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'payload',
  `retry` tinyint(4) NOT NULL DEFAULT '0' COMMENT '重试次数',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态 0:等待推送 1:推送成功 2:等待重试 3:取消推送 4:系统异常',
  `next_retry` datetime DEFAULT NULL COMMENT '下次重试时间',
  `pushed_at` datetime DEFAULT NULL COMMENT '推送时间',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `webhook_subscriptions`
--

DROP TABLE IF EXISTS `webhook_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webhook_subscriptions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `app_id` int(11) NOT NULL COMMENT '订阅者 store_apps.id',
  `topic_id` int(11) NOT NULL COMMENT '订阅主题ID webhook_topics.id',
  `address` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '推送地址',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `webhook_topics`
--

DROP TABLE IF EXISTS `webhook_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webhook_topics` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '主题',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `topic` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `worldpay_transactions`
--

DROP TABLE IF EXISTS `worldpay_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `worldpay_transactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) NOT NULL,
  `payment_method` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_number` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_type` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_holder` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `currency_code` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `risk_score` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-22 21:20:14
