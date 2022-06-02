
-- Dump of TYPO3 Connection "Default"
-- MariaDB dump 10.19  Distrib 10.5.15-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: db    Database: db
-- ------------------------------------------------------
-- Server version	10.6.7-MariaDB-1:10.6.7+maria~focal-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `backend_layout`
--

DROP TABLE IF EXISTS `backend_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backend_layout` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `config` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `icon` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_layout`
--

LOCK TABLES `backend_layout` WRITE;
/*!40000 ALTER TABLE `backend_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `backend_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_groups`
--

DROP TABLE IF EXISTS `fe_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_groups` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `tx_extbase_type` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `subgroup` tinytext COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `TSconfig` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `felogin_redirectPid` tinytext COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `tx_oelib_is_dummy_record` smallint(5) unsigned NOT NULL DEFAULT 0,
  `tx_seminars_publish_events` smallint(6) NOT NULL DEFAULT 0,
  `tx_seminars_events_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tx_seminars_auxiliary_records_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tx_seminars_reviewer` int(10) unsigned NOT NULL DEFAULT 0,
  `tx_seminars_default_categories` int(10) unsigned NOT NULL DEFAULT 0,
  `tx_seminars_default_organizer` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `dummy` (`tx_oelib_is_dummy_record`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_groups`
--

LOCK TABLES `fe_groups` WRITE;
/*!40000 ALTER TABLE `fe_groups` DISABLE KEYS */;
INSERT INTO `fe_groups` VALUES (1,4,1627917152,1627917152,1,0,0,'','0','normal users','','','',0,0,0,0,0,0,0),(2,4,1627917165,1627917165,1,0,0,'','0','onetimeaccount','','','',0,0,0,0,0,0,0),(3,4,1627923226,1627922744,1,0,0,'','0','managers','1','','',0,0,0,0,0,0,0),(4,4,1627923245,1627922753,1,0,0,'','0','editors','1','','',0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `fe_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_users`
--

DROP TABLE IF EXISTS `fe_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `disable` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `tx_extbase_type` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `usergroup` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `name` varchar(160) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `middle_name` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `address` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `telephone` varchar(30) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `fax` varchar(30) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `lockToDomain` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `uc` blob DEFAULT NULL,
  `title` varchar(40) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `zip` varchar(10) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `country` varchar(40) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `www` varchar(80) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `company` varchar(80) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `image` tinytext COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `TSconfig` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `lastlogin` int(10) unsigned NOT NULL DEFAULT 0,
  `is_online` int(10) unsigned NOT NULL DEFAULT 0,
  `felogin_redirectPid` tinytext COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `felogin_forgotHash` varchar(80) COLLATE utf8mb3_unicode_ci DEFAULT '',
  `tx_oelib_is_dummy_record` smallint(5) unsigned NOT NULL DEFAULT 0,
  `tx_seminars_registration` int(10) unsigned NOT NULL DEFAULT 0,
  `gender` int(10) unsigned NOT NULL DEFAULT 0,
  `date_of_birth` int(11) NOT NULL DEFAULT 0,
  `zone` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `status` int(10) unsigned NOT NULL DEFAULT 0,
  `comments` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `full_salutation` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `static_info_country` varchar(3) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `privacy` smallint(5) unsigned NOT NULL DEFAULT 0,
  `mfa` mediumblob DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`username`(100)),
  KEY `username` (`username`(100)),
  KEY `is_online` (`is_online`),
  KEY `dummy` (`tx_oelib_is_dummy_record`),
  KEY `felogin_forgotHash` (`felogin_forgotHash`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_users`
--

LOCK TABLES `fe_users` WRITE;
/*!40000 ALTER TABLE `fe_users` DISABLE KEYS */;
INSERT INTO `fe_users` VALUES (1,4,1627922814,1627917285,1,0,0,0,0,'','0','attendee','$argon2i$v=19$m=65536,t=16,p=1$ODBXYmZrYkQ2akMwa1lHYg$iWz2uY5XHXAhjqG69uFSQDWvy/y1G931gk/s19sfBxo','1','Anna Attendee','Anna','','Attendee','','','','attendee@example.com','','a:1:{s:49:\"tx_seminars_registration_editor_method_of_payment\";s:1:\"1\";}','','53173','Bonn','','','','0','',1634481267,1634481267,'','',0,0,0,0,'',0,NULL,'','',0,NULL),(2,4,1627922794,1627922794,1,0,0,0,0,'','0','manager','$argon2i$v=19$m=65536,t=16,p=1$SFlwZWtxcWgyNVEuV1BjbQ$ZoMcnqrwWGYifTKJDFrLEHwIOMnf9R/4AN1M3jqixbo','3','Max Manager','Max','','Manager','','','','manager@example.com','',NULL,'','','','','','',NULL,'',1628014697,1628016344,'','',0,0,0,0,'',0,NULL,'','',0,NULL),(3,4,1627922848,1627922848,1,0,0,0,0,'','0','editor','$argon2i$v=19$m=65536,t=16,p=1$N3IuWjhQUXBzRlkyUy45Wg$ktEw18UKASsqun0SoZDh8pG8ELNjo+wyrG6mbmoO8bw','1,4','Eddi Editor','Eddi','','Editor','','','','editor@example.com','',NULL,'','','','','','',NULL,'',1628014446,1628014677,'','',0,0,0,0,'',0,NULL,'','',0,NULL),(4,4,1628002830,1628002830,1,0,0,0,0,'','0','attendee1','$argon2i$v=19$m=65536,t=16,p=1$emEybmJQYi91N2NNUUVYcQ$8fJzJXhtMf2S8g0BWWgyT42ARYE25QogTLZFFGmHNRc','1','Joe Attendee','Joe','','Attendee','','','','joe@example.com','',NULL,'','','','','','',NULL,'',0,0,'','',0,0,0,0,'',0,NULL,'','',0,NULL),(5,4,1628002865,1628002862,1,0,0,0,0,'','0','attendee2','$argon2i$v=19$m=65536,t=16,p=1$THlYU0p2NDNseEd5N3RhNQ$eUEKyg2qTgUPr4oWcFacQ/s4J+9u4QQfQYPVQWdR1HM','1','Max Attendee','Max','','Attendee','','','','max@example.com','',NULL,'','','','','','','0','',0,0,'','',0,0,0,0,'',0,NULL,'','',0,NULL);
/*!40000 ALTER TABLE `fe_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `fe_group` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `rowDescription` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `editlock` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `perms_userid` int(10) unsigned NOT NULL DEFAULT 0,
  `perms_groupid` int(10) unsigned NOT NULL DEFAULT 0,
  `perms_user` smallint(5) unsigned NOT NULL DEFAULT 0,
  `perms_group` smallint(5) unsigned NOT NULL DEFAULT 0,
  `perms_everybody` smallint(5) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(2048) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `doktype` int(10) unsigned NOT NULL DEFAULT 0,
  `TSconfig` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `is_siteroot` smallint(6) NOT NULL DEFAULT 0,
  `php_tree_stop` smallint(6) NOT NULL DEFAULT 0,
  `url` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `shortcut` int(10) unsigned NOT NULL DEFAULT 0,
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT 0,
  `subtitle` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `layout` int(10) unsigned NOT NULL DEFAULT 0,
  `target` varchar(80) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `media` int(10) unsigned NOT NULL DEFAULT 0,
  `lastUpdated` int(10) unsigned NOT NULL DEFAULT 0,
  `keywords` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `cache_timeout` int(10) unsigned NOT NULL DEFAULT 0,
  `cache_tags` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `newUntil` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `no_search` smallint(5) unsigned NOT NULL DEFAULT 0,
  `SYS_LASTCHANGED` int(10) unsigned NOT NULL DEFAULT 0,
  `abstract` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `module` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `extendToSubpages` smallint(5) unsigned NOT NULL DEFAULT 0,
  `author` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `author_email` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `nav_title` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `nav_hide` smallint(6) NOT NULL DEFAULT 0,
  `content_from_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `mount_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `mount_pid_ol` smallint(6) NOT NULL DEFAULT 0,
  `l18n_cfg` smallint(6) NOT NULL DEFAULT 0,
  `fe_login_mode` smallint(6) NOT NULL DEFAULT 0,
  `backend_layout` varchar(64) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `backend_layout_next_level` varchar(64) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `tsconfig_includes` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `categories` int(10) unsigned NOT NULL DEFAULT 0,
  `tx_oelib_is_dummy_record` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `determineSiteRoot` (`is_siteroot`),
  KEY `language_identifier` (`l10n_parent`,`sys_language_uid`),
  KEY `slug` (`slug`(127)),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `dummy` (`tx_oelib_is_dummy_record`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,1627916053,1627915543,1,0,0,0,0,'0',256,NULL,0,0,0,0,NULL,0,'{\"title\":null}',0,0,0,0,1,0,31,27,0,'Home','/',1,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1627916053,NULL,'',0,'','','',0,0,0,0,0,0,'','',NULL,0,0),(2,0,1627915842,1627915775,1,0,0,0,0,'0',512,NULL,0,0,0,0,NULL,0,'{\"hidden\":null}',0,0,0,0,1,0,31,27,0,'Data','/',254,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,0,0,'','',NULL,0,0),(3,2,1627921785,1627915802,1,0,0,0,0,'0',256,NULL,0,0,0,0,NULL,0,'{\"title\":null}',0,0,0,0,1,0,31,27,0,'Tea','/tea',254,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,0,0,'','',NULL,0,0),(4,2,1627916082,1627915808,1,0,0,0,0,'0',128,NULL,0,0,0,0,NULL,0,'{\"doktype\":null,\"title\":null,\"backend_layout\":null,\"backend_layout_next_level\":null,\"module\":null,\"media\":null,\"tsconfig_includes\":null,\"TSconfig\":null,\"hidden\":null,\"editlock\":null,\"categories\":null,\"rowDescription\":null}',0,0,0,0,1,0,31,27,0,'Users','/users',254,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'fe_users',0,'','','',0,0,0,0,0,0,'','',NULL,0,0),(5,2,1627921950,1627915869,1,0,0,0,0,'0',512,NULL,0,0,0,0,NULL,0,'{\"title\":null}',0,0,0,0,1,0,31,27,0,'Event data','/seminars',254,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,0,0,'','',NULL,0,0),(6,2,1627915887,1627915882,1,0,0,0,0,'0',64,NULL,0,0,0,0,NULL,0,'{\"hidden\":null}',0,0,0,0,1,0,31,27,0,'TypoScript templates','/typoscript-templates',254,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,0,0,'','',NULL,0,0),(7,1,1654167045,1627915894,1,0,0,0,0,'0',256,NULL,0,0,0,0,NULL,0,'{\"slug\":\"\",\"title\":\"\"}',0,0,0,0,1,0,31,27,0,'Login','/login',1,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1627915983,NULL,'',0,'','','',0,0,0,0,0,0,'','',NULL,0,0),(8,1,1654167045,1627916000,1,0,0,0,0,'',128,NULL,0,0,0,0,NULL,0,'{\"slug\":\"\",\"title\":\"\"}',0,0,0,0,1,0,31,27,0,'Home','/home',4,NULL,0,0,'',1,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,0,0,'','',NULL,0,0),(9,1,1654167045,1627916163,1,0,0,0,0,'0',512,NULL,0,0,0,0,NULL,0,'{\"slug\":\"\",\"title\":\"\"}',0,0,0,0,1,0,31,27,0,'Tea','/tea',1,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1627916236,NULL,'',0,'','','',0,0,0,0,0,0,'','',NULL,0,0),(10,9,1627916491,1627916399,1,0,0,0,0,'',256,NULL,0,0,0,0,NULL,0,'{\"doktype\":null,\"title\":null,\"nav_title\":null,\"subtitle\":null,\"abstract\":null,\"keywords\":null,\"description\":null,\"author\":null,\"author_email\":null,\"lastUpdated\":null,\"layout\":null,\"newUntil\":null,\"backend_layout\":null,\"backend_layout_next_level\":null,\"content_from_pid\":null,\"alias\":null,\"target\":null,\"cache_timeout\":null,\"cache_tags\":null,\"is_siteroot\":null,\"no_search\":null,\"php_tree_stop\":null,\"module\":null,\"media\":null,\"tsconfig_includes\":null,\"TSconfig\":null,\"l18n_cfg\":null,\"hidden\":null,\"nav_hide\":null,\"starttime\":null,\"endtime\":null,\"extendToSubpages\":null,\"fe_group\":null,\"fe_login_mode\":null,\"editlock\":null,\"categories\":null,\"rowDescription\":null}',0,0,0,0,1,0,31,27,0,'Single','/single',1,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1627916491,NULL,'',0,'','','',1,0,0,0,0,0,'','',NULL,0,0),(11,5,1627921931,1627921774,1,0,0,0,0,'0',256,NULL,0,0,0,0,NULL,0,'{\"title\":null}',0,0,0,0,1,0,31,27,0,'Events','/event-data',254,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,0,0,'','',NULL,0,0),(12,5,1627921975,1627921808,1,0,0,0,0,'0',512,NULL,0,0,0,0,NULL,0,'{\"title\":null}',0,0,0,0,1,0,31,27,0,'Registrations','/registrations',254,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,0,0,'','',NULL,0,0),(13,11,1627921957,1627921940,1,0,0,0,0,'0',256,NULL,0,0,0,0,NULL,0,'{\"hidden\":null}',0,0,0,0,1,0,31,27,0,'Topics','/topics',254,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,0,0,'','',NULL,0,0),(14,11,1628001568,1627921966,1,0,0,0,0,'0',512,NULL,0,0,0,0,NULL,0,'{\"title\":null}',0,0,0,0,1,0,31,27,0,'Event dates','/events-dates',254,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,0,0,'','',NULL,0,0),(15,5,1627922003,1627921995,1,0,0,0,0,'0',768,NULL,0,0,0,0,NULL,0,'{\"hidden\":null}',0,0,0,0,1,0,31,27,0,'Data pool (speaker, sites, …)','/data-pl-speaker-sites',254,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,0,0,'','',NULL,0,0),(16,1,1654167045,1627922127,1,0,0,0,0,'0',768,NULL,0,0,0,0,NULL,0,'{\"slug\":\"\",\"title\":\"\"}',0,0,0,0,1,0,31,27,0,'Seminars','/seminars',1,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1627922152,NULL,'',0,'','','',0,0,0,0,0,0,'','',NULL,0,0),(17,16,1627922386,1627922292,1,0,0,0,0,'',256,NULL,0,0,0,0,NULL,0,'{\"fe_group\":null}',0,0,0,0,1,0,31,27,0,'Details','/2/details',1,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1627922386,NULL,'',0,'','','',1,0,0,0,0,0,'','',NULL,0,0),(18,16,1627922442,1627922292,1,0,0,0,0,'',512,NULL,0,0,0,0,NULL,0,'{\"doktype\":null,\"title\":null,\"nav_title\":null,\"subtitle\":null,\"abstract\":null,\"keywords\":null,\"description\":null,\"author\":null,\"author_email\":null,\"lastUpdated\":null,\"layout\":null,\"newUntil\":null,\"backend_layout\":null,\"backend_layout_next_level\":null,\"content_from_pid\":null,\"alias\":null,\"target\":null,\"cache_timeout\":null,\"cache_tags\":null,\"is_siteroot\":null,\"no_search\":null,\"php_tree_stop\":null,\"module\":null,\"media\":null,\"tsconfig_includes\":null,\"TSconfig\":null,\"l18n_cfg\":null,\"hidden\":null,\"nav_hide\":null,\"starttime\":null,\"endtime\":null,\"extendToSubpages\":null,\"fe_group\":null,\"fe_login_mode\":null,\"editlock\":null,\"categories\":null,\"rowDescription\":null}',0,0,0,0,1,0,31,27,0,'Registration','/2/registration',1,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1627922442,NULL,'',0,'','','',1,0,0,0,0,0,'','',NULL,0,0),(19,16,1627922386,1627922292,1,0,0,0,0,'-2',768,NULL,0,0,0,0,NULL,0,'{\"fe_group\":null}',0,0,0,0,1,0,31,27,0,'My Events','/2/my-events',1,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1627922386,NULL,'',0,'','','',0,0,0,0,0,0,'','',NULL,0,0),(20,16,1627923147,1627922292,1,0,0,0,0,'3',1024,NULL,0,0,0,0,NULL,0,'{\"doktype\":null,\"title\":null,\"nav_title\":null,\"subtitle\":null,\"abstract\":null,\"keywords\":null,\"description\":null,\"author\":null,\"author_email\":null,\"lastUpdated\":null,\"layout\":null,\"newUntil\":null,\"backend_layout\":null,\"backend_layout_next_level\":null,\"content_from_pid\":null,\"alias\":null,\"target\":null,\"cache_timeout\":null,\"cache_tags\":null,\"is_siteroot\":null,\"no_search\":null,\"php_tree_stop\":null,\"module\":null,\"media\":null,\"tsconfig_includes\":null,\"TSconfig\":null,\"l18n_cfg\":null,\"hidden\":null,\"nav_hide\":null,\"starttime\":null,\"endtime\":null,\"extendToSubpages\":null,\"fe_group\":null,\"fe_login_mode\":null,\"editlock\":null,\"categories\":null,\"rowDescription\":null}',0,0,0,0,1,0,31,27,0,'My VIP events','/2/my-vip-events',1,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1627923147,NULL,'',0,'','','',0,0,0,0,0,0,'','',NULL,0,0),(21,16,1627923171,1627922292,1,0,0,0,0,'4',1280,NULL,0,0,0,0,NULL,0,'{\"doktype\":null,\"title\":null,\"nav_title\":null,\"subtitle\":null,\"abstract\":null,\"keywords\":null,\"description\":null,\"author\":null,\"author_email\":null,\"lastUpdated\":null,\"layout\":null,\"newUntil\":null,\"backend_layout\":null,\"backend_layout_next_level\":null,\"content_from_pid\":null,\"alias\":null,\"target\":null,\"cache_timeout\":null,\"cache_tags\":null,\"is_siteroot\":null,\"no_search\":null,\"php_tree_stop\":null,\"module\":null,\"media\":null,\"tsconfig_includes\":null,\"TSconfig\":null,\"l18n_cfg\":null,\"hidden\":null,\"nav_hide\":null,\"starttime\":null,\"endtime\":null,\"extendToSubpages\":null,\"fe_group\":null,\"fe_login_mode\":null,\"editlock\":null,\"categories\":null,\"rowDescription\":null}',0,0,0,0,1,0,31,27,0,'My created events','/2/my-created-events',1,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1627923171,NULL,'',0,'','','',0,0,0,0,0,0,'','',NULL,0,0),(22,18,1627922430,1627922397,1,0,0,0,0,'',256,NULL,0,0,0,0,NULL,0,'{\"doktype\":null,\"title\":null,\"nav_title\":null,\"subtitle\":null,\"abstract\":null,\"keywords\":null,\"description\":null,\"author\":null,\"author_email\":null,\"lastUpdated\":null,\"layout\":null,\"newUntil\":null,\"backend_layout\":null,\"backend_layout_next_level\":null,\"content_from_pid\":null,\"alias\":null,\"target\":null,\"cache_timeout\":null,\"cache_tags\":null,\"is_siteroot\":null,\"no_search\":null,\"php_tree_stop\":null,\"module\":null,\"media\":null,\"tsconfig_includes\":null,\"TSconfig\":null,\"l18n_cfg\":null,\"hidden\":null,\"nav_hide\":null,\"starttime\":null,\"endtime\":null,\"extendToSubpages\":null,\"fe_group\":null,\"fe_login_mode\":null,\"editlock\":null,\"categories\":null,\"rowDescription\":null}',0,0,0,0,1,0,31,27,0,'Thank you','/2/thank-you',1,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1627922430,NULL,'',0,'','','',1,0,0,0,0,0,'','',NULL,0,0),(23,19,1627922528,1627922453,1,0,0,0,0,'-2',256,NULL,0,0,0,0,NULL,0,'{\"doktype\":null,\"title\":null,\"nav_title\":null,\"subtitle\":null,\"abstract\":null,\"keywords\":null,\"description\":null,\"author\":null,\"author_email\":null,\"lastUpdated\":null,\"layout\":null,\"newUntil\":null,\"backend_layout\":null,\"backend_layout_next_level\":null,\"content_from_pid\":null,\"alias\":null,\"target\":null,\"cache_timeout\":null,\"cache_tags\":null,\"is_siteroot\":null,\"no_search\":null,\"php_tree_stop\":null,\"module\":null,\"media\":null,\"tsconfig_includes\":null,\"TSconfig\":null,\"l18n_cfg\":null,\"hidden\":null,\"nav_hide\":null,\"starttime\":null,\"endtime\":null,\"extendToSubpages\":null,\"fe_group\":null,\"fe_login_mode\":null,\"editlock\":null,\"categories\":null,\"rowDescription\":null}',0,0,0,0,1,0,31,27,0,'Participants','/2/my-events/participants',1,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1627922528,NULL,'',0,'','','',1,0,0,0,0,0,'','',NULL,0,0),(24,20,1627923157,1627922473,1,0,0,0,0,'3',256,NULL,0,0,0,0,NULL,0,'{\"doktype\":null,\"title\":null,\"nav_title\":null,\"subtitle\":null,\"abstract\":null,\"keywords\":null,\"description\":null,\"author\":null,\"author_email\":null,\"lastUpdated\":null,\"layout\":null,\"newUntil\":null,\"backend_layout\":null,\"backend_layout_next_level\":null,\"content_from_pid\":null,\"alias\":null,\"target\":null,\"cache_timeout\":null,\"cache_tags\":null,\"is_siteroot\":null,\"no_search\":null,\"php_tree_stop\":null,\"module\":null,\"media\":null,\"tsconfig_includes\":null,\"TSconfig\":null,\"l18n_cfg\":null,\"hidden\":null,\"nav_hide\":null,\"starttime\":null,\"endtime\":null,\"extendToSubpages\":null,\"fe_group\":null,\"fe_login_mode\":null,\"editlock\":null,\"categories\":null,\"rowDescription\":null}',0,0,0,0,1,0,31,27,0,'Participants','/2/my-vip-events/participants',1,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1627923157,NULL,'',0,'','','',1,0,0,0,0,0,'','',NULL,0,0),(25,16,1628003514,1627922498,1,0,0,0,0,'4',1536,NULL,0,0,0,0,NULL,0,'{\"doktype\":null,\"title\":null,\"nav_title\":null,\"subtitle\":null,\"abstract\":null,\"keywords\":null,\"description\":null,\"author\":null,\"author_email\":null,\"lastUpdated\":null,\"layout\":null,\"newUntil\":null,\"backend_layout\":null,\"backend_layout_next_level\":null,\"content_from_pid\":null,\"alias\":null,\"target\":null,\"cache_timeout\":null,\"cache_tags\":null,\"is_siteroot\":null,\"no_search\":null,\"php_tree_stop\":null,\"module\":null,\"media\":null,\"tsconfig_includes\":null,\"TSconfig\":null,\"l18n_cfg\":null,\"hidden\":null,\"nav_hide\":null,\"starttime\":null,\"endtime\":null,\"extendToSubpages\":null,\"fe_group\":null,\"fe_login_mode\":null,\"editlock\":null,\"categories\":null,\"rowDescription\":null}',0,0,0,0,1,0,31,27,0,'Edit/create event','/2/my-created-events/edit/create-event',1,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1628003514,NULL,'',0,'','','',0,0,0,0,0,0,'','',NULL,0,0),(26,16,1627922890,1627922886,1,0,0,0,0,'0',384,NULL,0,0,0,0,NULL,0,'{\"hidden\":null}',0,0,0,0,1,0,31,27,0,'Categories','/2/categories',1,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1627922890,NULL,'',0,'','','',0,0,0,0,0,0,'','',NULL,0,0),(27,16,1627923328,1627923323,1,0,0,0,0,'0',320,NULL,0,0,0,0,NULL,0,'{\"hidden\":null}',0,0,0,0,1,0,31,27,0,'Topics','/2/topics',1,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1627923328,NULL,'',0,'','','',0,0,0,0,0,0,'','',NULL,0,0),(28,16,1627923420,1627923416,1,0,0,0,0,'0',448,NULL,0,0,0,0,NULL,0,'{\"hidden\":null}',0,0,0,0,1,0,31,27,0,'Countdown','/2/countdown',1,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1627923420,NULL,'',0,'','','',0,0,0,0,0,0,'','',NULL,0,0),(29,18,1627923496,1627923479,1,0,0,0,0,'',512,NULL,0,0,0,0,NULL,0,'{\"doktype\":null,\"title\":null,\"nav_title\":null,\"subtitle\":null,\"abstract\":null,\"keywords\":null,\"description\":null,\"author\":null,\"author_email\":null,\"lastUpdated\":null,\"layout\":null,\"newUntil\":null,\"backend_layout\":null,\"backend_layout_next_level\":null,\"content_from_pid\":null,\"alias\":null,\"target\":null,\"cache_timeout\":null,\"cache_tags\":null,\"is_siteroot\":null,\"no_search\":null,\"php_tree_stop\":null,\"module\":null,\"media\":null,\"tsconfig_includes\":null,\"TSconfig\":null,\"l18n_cfg\":null,\"hidden\":null,\"nav_hide\":null,\"starttime\":null,\"endtime\":null,\"extendToSubpages\":null,\"fe_group\":null,\"fe_login_mode\":null,\"editlock\":null,\"categories\":null,\"rowDescription\":null}',0,0,0,0,1,0,31,27,0,'Oh no!','/2/registration/oh-no',1,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',1,0,0,0,0,0,'','',NULL,0,0),(30,11,1628003426,1628003426,1,0,0,0,0,'0',768,'',0,0,0,0,NULL,0,'',0,0,0,0,1,0,31,27,0,'FE-created','/fe-created',254,'',0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,0,0,'','','',0,0),(31,0,1631546526,1631546510,1,0,0,0,0,'',256,NULL,0,1,1,1,'{\"starttime\":\"parent\",\"endtime\":\"parent\",\"nav_hide\":\"parent\",\"url\":\"parent\",\"lastUpdated\":\"parent\",\"newUntil\":\"parent\",\"no_search\":\"parent\",\"shortcut\":\"parent\",\"shortcut_mode\":\"parent\",\"content_from_pid\":\"parent\",\"author\":\"parent\",\"author_email\":\"parent\",\"media\":\"parent\"}',0,'{\"doktype\":1,\"title\":\"Home\",\"slug\":\"\\/\",\"nav_title\":\"\",\"subtitle\":\"\",\"abstract\":null,\"keywords\":null,\"description\":null,\"hidden\":0,\"categories\":0,\"rowDescription\":null,\"TSconfig\":null,\"php_tree_stop\":0,\"editlock\":0,\"layout\":0,\"fe_group\":\"0\",\"extendToSubpages\":0,\"target\":\"\",\"alias\":\"\",\"cache_timeout\":0,\"cache_tags\":\"\",\"mount_pid\":0,\"is_siteroot\":0,\"mount_pid_ol\":0,\"module\":\"\",\"fe_login_mode\":0,\"l18n_cfg\":0,\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":null}',0,0,0,0,1,0,31,27,0,'Home','/',1,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1631546526,NULL,'',0,'','','',0,0,0,0,0,0,'','','',0,0),(32,16,1631549788,1631549780,1,0,0,0,0,'0',128,NULL,0,0,0,0,NULL,0,'{\"hidden\":null}',0,0,0,0,1,0,31,27,0,'Alle Spalten','/2/alle-spalten',1,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1631549788,NULL,'',0,'','','',0,0,0,0,0,0,'','',NULL,0,0);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file`
--

DROP TABLE IF EXISTS `sys_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `last_indexed` int(11) NOT NULL DEFAULT 0,
  `missing` smallint(6) NOT NULL DEFAULT 0,
  `storage` int(11) NOT NULL DEFAULT 0,
  `type` varchar(10) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `metadata` int(11) NOT NULL DEFAULT 0,
  `identifier` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `identifier_hash` varchar(40) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `folder_hash` varchar(40) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `mime_type` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `name` tinytext COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `sha1` varchar(40) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `size` bigint(20) unsigned NOT NULL DEFAULT 0,
  `creation_date` int(11) NOT NULL DEFAULT 0,
  `modification_date` int(11) NOT NULL DEFAULT 0,
  `tx_oelib_is_dummy_record` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `sel01` (`storage`,`identifier_hash`),
  KEY `folder` (`storage`,`folder_hash`),
  KEY `tstamp` (`tstamp`),
  KEY `lastindex` (`last_indexed`),
  KEY `sha1` (`sha1`),
  KEY `parent` (`pid`),
  KEY `dummy` (`tx_oelib_is_dummy_record`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file`
--

LOCK TABLES `sys_file` WRITE;
/*!40000 ALTER TABLE `sys_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_collection`
--

DROP TABLE IF EXISTS `sys_file_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_collection` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `title` tinytext COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `type` varchar(30) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'static',
  `files` int(11) NOT NULL DEFAULT 0,
  `storage` int(11) NOT NULL DEFAULT 0,
  `folder` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `recursive` smallint(6) NOT NULL DEFAULT 0,
  `category` int(10) unsigned NOT NULL DEFAULT 0,
  `tx_oelib_is_dummy_record` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `dummy` (`tx_oelib_is_dummy_record`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_collection`
--

LOCK TABLES `sys_file_collection` WRITE;
/*!40000 ALTER TABLE `sys_file_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_metadata`
--

DROP TABLE IF EXISTS `sys_file_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_metadata` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `file` int(11) NOT NULL DEFAULT 0,
  `title` tinytext COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `width` int(11) NOT NULL DEFAULT 0,
  `height` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `alternative` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `categories` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `file` (`file`),
  KEY `fal_filelist` (`l10n_parent`,`sys_language_uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_metadata`
--

LOCK TABLES `sys_file_metadata` WRITE;
/*!40000 ALTER TABLE `sys_file_metadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_reference`
--

DROP TABLE IF EXISTS `sys_file_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_reference` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `uid_local` int(11) NOT NULL DEFAULT 0,
  `uid_foreign` int(11) NOT NULL DEFAULT 0,
  `tablenames` varchar(64) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `fieldname` varchar(64) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `sorting_foreign` int(11) NOT NULL DEFAULT 0,
  `table_local` varchar(64) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `title` tinytext COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `alternative` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `link` varchar(1024) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `crop` varchar(4000) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `autoplay` smallint(6) NOT NULL DEFAULT 0,
  `tx_oelib_is_dummy_record` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `tablenames_fieldname` (`tablenames`(32),`fieldname`(12)),
  KEY `deleted` (`deleted`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`),
  KEY `combined_1` (`l10n_parent`,`t3ver_oid`,`t3ver_wsid`,`t3ver_state`,`deleted`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `dummy` (`tx_oelib_is_dummy_record`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_reference`
--

LOCK TABLES `sys_file_reference` WRITE;
/*!40000 ALTER TABLE `sys_file_reference` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_storage`
--

DROP TABLE IF EXISTS `sys_file_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_storage` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `driver` tinytext COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `configuration` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `is_default` smallint(6) NOT NULL DEFAULT 0,
  `is_browsable` smallint(6) NOT NULL DEFAULT 0,
  `is_public` smallint(6) NOT NULL DEFAULT 0,
  `is_writable` smallint(6) NOT NULL DEFAULT 0,
  `is_online` smallint(6) NOT NULL DEFAULT 1,
  `auto_extract_metadata` smallint(6) NOT NULL DEFAULT 1,
  `processingfolder` tinytext COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_storage`
--

LOCK TABLES `sys_file_storage` WRITE;
/*!40000 ALTER TABLE `sys_file_storage` DISABLE KEYS */;
INSERT INTO `sys_file_storage` VALUES (1,0,1627915757,1627915757,0,0,'This is the local fileadmin/ directory. This storage mount has been created automatically by TYPO3.','fileadmin/ (auto-created)','Local','<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"basePath\">\n                    <value index=\"vDEF\">fileadmin/</value>\n                </field>\n                <field index=\"pathType\">\n                    <value index=\"vDEF\">relative</value>\n                </field>\n                <field index=\"caseSensitive\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',1,1,1,1,1,1,NULL);
/*!40000 ALTER TABLE `sys_file_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_filemounts`
--

DROP TABLE IF EXISTS `sys_filemounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_filemounts` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `base` int(10) unsigned NOT NULL DEFAULT 0,
  `read_only` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_filemounts`
--

LOCK TABLES `sys_filemounts` WRITE;
/*!40000 ALTER TABLE `sys_filemounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_filemounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_language`
--

DROP TABLE IF EXISTS `sys_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_language` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `title` varchar(80) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `flag` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `language_isocode` varchar(2) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `static_lang_isocode` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`hidden`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_language`
--

LOCK TABLES `sys_language` WRITE;
/*!40000 ALTER TABLE `sys_language` DISABLE KEYS */;
INSERT INTO `sys_language` VALUES (1,0,1631545821,0,256,'Englisch','en-us-gb','en',30);
/*!40000 ALTER TABLE `sys_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_template`
--

DROP TABLE IF EXISTS `sys_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_template` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `root` smallint(5) unsigned NOT NULL DEFAULT 0,
  `clear` smallint(5) unsigned NOT NULL DEFAULT 0,
  `include_static_file` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `constants` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `config` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `basedOn` tinytext COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `includeStaticAfterBasedOn` smallint(5) unsigned NOT NULL DEFAULT 0,
  `static_file_mode` smallint(5) unsigned NOT NULL DEFAULT 0,
  `tx_oelib_is_dummy_record` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `roottemplate` (`deleted`,`hidden`,`root`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `dummy` (`tx_oelib_is_dummy_record`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_template`
--

LOCK TABLES `sys_template` WRITE;
/*!40000 ALTER TABLE `sys_template` DISABLE KEYS */;
INSERT INTO `sys_template` VALUES (1,1,1627921897,1627915562,1,0,0,0,0,256,NULL,0,0,0,0,0,'Root',1,3,'EXT:fluid_styled_content/Configuration/TypoScript/,EXT:fluid_styled_content/Configuration/TypoScript/Styling/,EXT:typo3_devsite/Configuration/TypoScript,EXT:static_info_tables/Configuration/TypoScript/Static,EXT:mkforms/static/ts/,EXT:onetimeaccount/Configuration/TypoScript/',NULL,'','2,3',0,0,0),(2,6,1627916442,1627916344,1,0,0,0,0,256,'',0,0,0,0,0,'tea',0,0,'EXT:tea/Configuration/TypoScript','plugin.tx_tea {\r\n  persistence {\r\n    storagePid = 3\r\n    newRecordStoragePid = 3\r\n  }\r\n\r\n  settings {\r\n    singleViewPageUid = 10\r\n  }\r\n}\r\n','','',0,0,0),(3,6,1634124513,1627921845,1,0,0,0,0,128,'',0,0,0,0,0,'seminars',0,0,'EXT:seminars/Configuration/TypoScript','','plugin.tx_seminars {\r\n  # PID of the sysfolder where event registrations (attendances) will be stored\r\n  attendancesPID = 12\r\n}\r\n\r\n# localizations for strings in e-mails and some FE parts go here (the example is for German)\r\nplugin.tx_seminars._LOCAL_LANG.de {\r\n}\r\n\r\nplugin.tx_seminars_pi1 {\r\n  # comma-separated list of field names that shouldn\'t be displayed in the detail view, e.g. organizers,price_special\r\n  hideFields =\r\n\r\n  # list of comma-separated names of event fields that should be displayed on the registration page (the order doesn\'t matter)\r\n  eventFieldsOnRegistrationPage = uid, title, price_regular, price_special, vacancies\r\n\r\n  # list of tx_seminars_attendances DB fields to show for the online registration (must not be empty)\r\n  showRegistrationFields = step_counter, price, method_of_payment, account_number, bank_code, bank_name, account_owner, billing_address, company, gender, name, first_name, last_name, address, zip, city, country, telephone, email, interests, expectations, background_knowledge, accommodation, food, known_from, seats, registered_themselves, attendees_names, kids, lodgings, foods, checkboxes, notes, total_price, feuser_data, registration_data, terms, terms_2\r\n\r\n  # whether file downloads are limited to attendees only\r\n  limitFileDownloadToAttendees = 0\r\n\r\n  # PID of the sysfolder that contains all the event records (e.g., the starting point)\r\n  pages = 11\r\n\r\n  # number of levels to recurse when accessing the starting point\r\n  recursive = 1\r\n    \r\n  # PID of the FE page that contains the event list\r\n  listPID = 16\r\n\r\n  # PID of the FE page that contains the single view\r\n  detailPID = 17\r\n\r\n  # PID of the FE page that contains the \"my events\" list\r\n  myEventsPID = 19\r\n\r\n  # PID of the FE page that contains the seminar registration plug-in\r\n  registerPID = 18\r\n\r\n  # PID of the FE page that contains the login form or onetimeaccount\r\n  loginPID = 7\r\n\r\n  # PID of the page that contains the registrations list for participants\r\n  registrationsListPID = 23\r\n\r\n  # PID of the page that contains the registrations list for event managers\r\n  registrationsVipListPID = 24\r\n\r\n  # PID of the thank-you page that will be displayed after a FE user has registered for an event\r\n  thankYouAfterRegistrationPID = 22\r\n\r\n  # PID of the page that will be displayed after a FE user has unregistered from an event\r\n  pageToShowAfterUnregistrationPID = 29\r\n\r\n  # UID of the FE user group that is allowed to enter and edit event records in the FE\r\n  eventEditorFeGroupID = 4\r\n\r\n  # UID of the FE user group for event managers\r\n  defaultEventVipsFeGroupID = 3\r\n\r\n  # PID of the page where the plug-in for editing events is located\r\n  eventEditorPID = 25\r\n\r\n  # PID of the folder where FE-created events will be stored\r\n  createEventsPID = 30\r\n\r\n  # PID of the folder where FE-created auxiliary records will be stored\r\n  createAuxiliaryRecordsPID = 15\r\n\r\n  # PID of the page that will be shown when an event has been successfully entered on the FE\r\n  eventSuccessfullySavedPID = 21\r\n}\r\n\r\n# localizations for FE-only parts go here (the example is for German)\r\nplugin.tx_seminars_pi1._LOCAL_LANG.de {\r\n}\r\n\r\n# here you can change stuff like the number of items per page etc.\r\nplugin.tx_seminars_pi1.listView {\r\n}','',0,0,0),(4,5,1627921886,1627921886,1,0,0,0,0,256,'',0,0,0,0,0,'seminars (for the BE module)',0,0,'','','','3',0,0,0);
/*!40000 ALTER TABLE `sys_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tt_content`
--

DROP TABLE IF EXISTS `tt_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tt_content` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rowDescription` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `fe_group` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `editlock` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l18n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l18n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `CType` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `header` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `header_position` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `bodytext` mediumtext COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `bullets_type` smallint(5) unsigned NOT NULL DEFAULT 0,
  `uploads_description` smallint(5) unsigned NOT NULL DEFAULT 0,
  `uploads_type` smallint(5) unsigned NOT NULL DEFAULT 0,
  `assets` int(10) unsigned NOT NULL DEFAULT 0,
  `image` int(10) unsigned NOT NULL DEFAULT 0,
  `imagewidth` int(10) unsigned NOT NULL DEFAULT 0,
  `imageorient` smallint(5) unsigned NOT NULL DEFAULT 0,
  `imagecols` smallint(5) unsigned NOT NULL DEFAULT 0,
  `imageborder` smallint(5) unsigned NOT NULL DEFAULT 0,
  `media` int(10) unsigned NOT NULL DEFAULT 0,
  `layout` int(10) unsigned NOT NULL DEFAULT 0,
  `frame_class` varchar(60) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'default',
  `cols` int(10) unsigned NOT NULL DEFAULT 0,
  `space_before_class` varchar(60) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `space_after_class` varchar(60) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `records` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `pages` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `colPos` int(10) unsigned NOT NULL DEFAULT 0,
  `subheader` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `header_link` varchar(1024) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `image_zoom` smallint(5) unsigned NOT NULL DEFAULT 0,
  `header_layout` varchar(30) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '0',
  `list_type` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `sectionIndex` smallint(5) unsigned NOT NULL DEFAULT 0,
  `linkToTop` smallint(5) unsigned NOT NULL DEFAULT 0,
  `file_collections` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `filelink_size` smallint(5) unsigned NOT NULL DEFAULT 0,
  `filelink_sorting` varchar(64) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `filelink_sorting_direction` varchar(4) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `target` varchar(30) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `date` int(10) unsigned NOT NULL DEFAULT 0,
  `recursive` smallint(5) unsigned NOT NULL DEFAULT 0,
  `imageheight` int(10) unsigned NOT NULL DEFAULT 0,
  `pi_flexform` mediumtext COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `accessibility_title` varchar(30) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `accessibility_bypass` smallint(5) unsigned NOT NULL DEFAULT 0,
  `accessibility_bypass_text` varchar(30) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `selected_categories` longtext COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `category_field` varchar(64) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `table_class` varchar(60) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `table_caption` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `table_delimiter` smallint(5) unsigned NOT NULL DEFAULT 0,
  `table_enclosure` smallint(5) unsigned NOT NULL DEFAULT 0,
  `table_header_position` smallint(5) unsigned NOT NULL DEFAULT 0,
  `table_tfoot` smallint(5) unsigned NOT NULL DEFAULT 0,
  `categories` int(10) unsigned NOT NULL DEFAULT 0,
  `tx_oelib_is_dummy_record` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`sorting`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l18n_parent`,`sys_language_uid`),
  KEY `translation_source` (`l10n_source`),
  KEY `dummy` (`tx_oelib_is_dummy_record`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tt_content`
--

LOCK TABLES `tt_content` WRITE;
/*!40000 ALTER TABLE `tt_content` DISABLE KEYS */;
INSERT INTO `tt_content` VALUES (1,'',1,1627915752,1627915752,1,0,0,0,0,'',256,0,0,0,0,NULL,0,'',0,0,0,0,'text','Willkommen!','','<p>Dies ist die Startseite.</p>',0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,'0','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,0),(2,'',7,1654103098,1627915935,1,0,0,0,0,'',256,0,0,0,0,NULL,0,'{\"CType\":\"\",\"colPos\":\"\",\"header\":\"\",\"header_layout\":\"\",\"header_position\":\"\",\"date\":\"\",\"header_link\":\"\",\"subheader\":\"\",\"pi_flexform\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"sys_language_uid\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,'felogin_login','Login form','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,'0','',1,0,NULL,0,'','','',0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"settings.showForgotPassword\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.showPermaLogin\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"settings.showLogoutFormAfterLogin\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.pages\">\n                    <value index=\"vDEF\">4</value>\n                </field>\n                <field index=\"settings.recursive\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_redirect\">\n            <language index=\"lDEF\">\n                <field index=\"settings.redirectMode\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.redirectFirstMethod\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.redirectPageLogin\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.redirectPageLoginError\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.redirectPageLogout\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.redirectDisable\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_messages\">\n            <language index=\"lDEF\">\n                <field index=\"settings.welcome_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.welcome_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.success_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.success_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.error_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.error_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.status_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.status_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.logout_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.logout_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.forgot_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.forgot_reset_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',NULL,'','',NULL,124,0,0,0,0,0),(3,'',9,1627916272,1627916259,1,0,0,0,0,'',256,0,0,0,0,NULL,0,'{\"CType\":null,\"colPos\":null,\"header\":null,\"header_layout\":null,\"header_position\":null,\"date\":null,\"header_link\":null,\"subheader\":null,\"list_type\":null,\"pi_flexform\":null,\"layout\":null,\"frame_class\":null,\"space_before_class\":null,\"space_after_class\":null,\"sectionIndex\":null,\"linkToTop\":null,\"sys_language_uid\":null,\"hidden\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"editlock\":null,\"categories\":null,\"rowDescription\":null}',0,0,0,0,'list','Leckere Tees','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,'',0,'','',0,'0','tea_tea',1,0,NULL,0,'','','',0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"general\">\n            <language index=\"lDEF\">\n                <field index=\"switchableControllerActions\">\n                    <value index=\"vDEF\">Tea-&gt;index</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',NULL,'','',NULL,124,0,0,0,0,0),(4,'',10,1627916509,1627916473,1,0,0,0,0,'',256,0,0,0,0,NULL,0,'{\"CType\":null,\"colPos\":null,\"header\":null,\"header_layout\":null,\"header_position\":null,\"date\":null,\"header_link\":null,\"subheader\":null,\"list_type\":null,\"pi_flexform\":null,\"layout\":null,\"frame_class\":null,\"space_before_class\":null,\"space_after_class\":null,\"sectionIndex\":null,\"linkToTop\":null,\"sys_language_uid\":null,\"hidden\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"editlock\":null,\"categories\":null,\"rowDescription\":null}',0,0,0,0,'list','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,'',0,'','',0,'0','tea_tea',1,0,NULL,0,'','','',0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"general\">\n            <language index=\"lDEF\">\n                <field index=\"switchableControllerActions\">\n                    <value index=\"vDEF\">Tea-&gt;show</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',NULL,'','',NULL,124,0,0,0,0,0),(5,'',10,1627916562,1627916562,1,0,0,0,0,'',512,0,0,0,0,NULL,0,'',0,0,0,0,'text','','','<p><a href=\"t3://page?uid=9\">zurück zur Listenansicht</a></p>',0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,'0','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,0),(6,'',1,1627916920,1627916914,1,0,0,0,0,'',512,0,0,0,0,NULL,0,'{\"CType\":null,\"colPos\":null,\"header\":null,\"header_layout\":null,\"header_position\":null,\"date\":null,\"header_link\":null,\"subheader\":null,\"pages\":null,\"layout\":null,\"frame_class\":null,\"space_before_class\":null,\"space_after_class\":null,\"sectionIndex\":null,\"linkToTop\":null,\"accessibility_title\":null,\"accessibility_bypass\":null,\"accessibility_bypass_text\":null,\"sys_language_uid\":null,\"hidden\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"editlock\":null,\"categories\":null,\"rowDescription\":null}',0,0,0,0,'menu_subpages','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,'1',0,'','',0,'0','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,0),(7,'',7,1634481195,1627917655,1,1,0,0,0,'',512,0,0,0,0,NULL,0,'{\"CType\":null,\"colPos\":null,\"header\":null,\"header_layout\":null,\"header_position\":null,\"date\":null,\"header_link\":null,\"subheader\":null,\"list_type\":null,\"pi_flexform\":null,\"frame_class\":null,\"space_before_class\":null,\"space_after_class\":null,\"sectionIndex\":null,\"linkToTop\":null,\"sys_language_uid\":null,\"hidden\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"editlock\":null,\"categories\":null,\"rowDescription\":null}',0,0,0,0,'list','One-time account generator','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,'0','onetimeaccount_pi1',1,0,NULL,0,'','','',0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"showForgotPassword\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"showPermaLogin\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"showLogoutFormAfterLogin\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"pages\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"recursive\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_redirect\">\n            <language index=\"lDEF\">\n                <field index=\"redirectMode\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"redirectFirstMethod\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"redirectPageLogin\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"redirectPageLoginError\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"redirectPageLogout\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"redirectDisable\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_messages\">\n            <language index=\"lDEF\">\n                <field index=\"welcome_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"welcome_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"success_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"success_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"error_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"error_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"status_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"status_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"logout_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"logout_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"forgot_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"forgot_reset_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_general\">\n            <language index=\"lDEF\">\n                <field index=\"feUserFieldsToDisplay\">\n                    <value index=\"vDEF\">company,title,first_name,last_name,address,zip,city,country,email,www,telephone,fax,usergroup</value>\n                </field>\n                <field index=\"requiredFeUserFields\">\n                    <value index=\"vDEF\">email</value>\n                </field>\n                <field index=\"systemFolderForNewFeUserRecords\">\n                    <value index=\"vDEF\">4</value>\n                </field>\n                <field index=\"groupForNewFeUsers\">\n                    <value index=\"vDEF\">2</value>\n                </field>\n                <field index=\"userNameSource\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_template_special\">\n            <language index=\"lDEF\">\n                <field index=\"templateFile\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',NULL,'','',NULL,124,0,0,0,0,0),(8,'',16,1654102838,1627923276,1,0,1,0,0,'',256,0,0,0,0,NULL,0,'{\"hidden\":\"\"}',0,0,0,0,'list','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,'0','seminars_pi1',1,0,NULL,0,'','','',0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"what_to_display\">\n                    <value index=\"vDEF\">seminar_list</value>\n                </field>\n                <field index=\"listPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"detailPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"myEventsPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"registerPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"loginPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"registrationsListPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"registrationsVipListPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"salutation\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"limitFileDownloadToAttendees\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"pages\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"recursive\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_listView\">\n            <language index=\"lDEF\">\n                <field index=\"displaySearchFormFields\">\n                    <value index=\"vDEF\">event_type,language,country,city,place,organizer,categories,date,age,price,full_text_search</value>\n                </field>\n                <field index=\"numberOfYearsInDateFilter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showOnlyEventsWithVacancies\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"mayManagersEditTheirEvents\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"categoriesInListView\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"linkToSingleView\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"limitListViewToEventTypes\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"limitListViewToCategories\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"limitListViewToPlaces\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"limitListViewToOrganizers\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_singleView\">\n            <language index=\"lDEF\">\n                <field index=\"showOwnerDataInSingleView\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_template_special\">\n            <language index=\"lDEF\">\n                <field index=\"templateFile\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showSingleEvent\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"timeframeInList\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"defaultEventVipsFeGroupID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"hideColumns\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"hideFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showEmptyEntryInOptionLists\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"hidePageBrowser\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"hideCanceledEvents\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"sortListViewByCategory\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"generalPriceInList\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"generalPriceInSingle\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"omitDateIfSameAsPrevious\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"eventFieldsOnRegistrationPage\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showRegistrationFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showSpeakerDetails\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"showSiteDetails\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_registrationsListView\">\n            <language index=\"lDEF\">\n                <field index=\"showFeUserFieldsInRegistrationsList\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showRegistrationFieldsInRegistrationList\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_registration\">\n            <language index=\"lDEF\">\n                <field index=\"numberOfClicksForRegistration\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"thankYouAfterRegistrationPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"sendParametersToThankYouAfterRegistrationPageUrl\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"pageToShowAfterUnregistrationPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"sendParametersToPageToShowAfterUnregistrationUrl\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"createAdditionalAttendeesAsFrontEndUsers\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_fe_editing\">\n            <language index=\"lDEF\">\n                <field index=\"eventEditorFeGroupID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"eventEditorPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"createEventsPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"eventSuccessfullySavedPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"allowedExtensionsForUpload\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"displayFrontEndEditorFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"requiredFrontEndEditorFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"allowFrontEndEditingOfSpeakers\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"allowFrontEndEditingOfPlaces\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"allowFrontEndEditingOfCheckboxes\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"allowFrontEndEditingOfTargetGroups\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',NULL,'','',NULL,124,0,0,0,0,0),(9,'',17,1654102843,1627923293,1,0,1,0,0,'',256,0,0,0,0,NULL,0,'{\"hidden\":\"\"}',0,0,0,0,'list','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,'0','seminars_pi1',1,0,NULL,0,'','','',0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"what_to_display\">\n                    <value index=\"vDEF\">single_view</value>\n                </field>\n                <field index=\"listPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"detailPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"myEventsPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"registerPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"loginPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"registrationsListPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"registrationsVipListPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"salutation\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"limitFileDownloadToAttendees\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"pages\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"recursive\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_listView\">\n            <language index=\"lDEF\">\n                <field index=\"displaySearchFormFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"numberOfYearsInDateFilter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showOnlyEventsWithVacancies\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"mayManagersEditTheirEvents\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"categoriesInListView\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"linkToSingleView\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_singleView\">\n            <language index=\"lDEF\">\n                <field index=\"showOwnerDataInSingleView\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_template_special\">\n            <language index=\"lDEF\">\n                <field index=\"templateFile\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showSingleEvent\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"timeframeInList\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"defaultEventVipsFeGroupID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"hideColumns\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"hideFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showEmptyEntryInOptionLists\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"hidePageBrowser\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"hideCanceledEvents\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"sortListViewByCategory\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"generalPriceInList\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"generalPriceInSingle\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"omitDateIfSameAsPrevious\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"eventFieldsOnRegistrationPage\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showRegistrationFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showSpeakerDetails\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"showSiteDetails\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_registrationsListView\">\n            <language index=\"lDEF\">\n                <field index=\"showFeUserFieldsInRegistrationsList\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showRegistrationFieldsInRegistrationList\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_registration\">\n            <language index=\"lDEF\">\n                <field index=\"numberOfClicksForRegistration\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"thankYouAfterRegistrationPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"sendParametersToThankYouAfterRegistrationPageUrl\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"pageToShowAfterUnregistrationPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"sendParametersToPageToShowAfterUnregistrationUrl\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"createAdditionalAttendeesAsFrontEndUsers\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_fe_editing\">\n            <language index=\"lDEF\">\n                <field index=\"eventEditorFeGroupID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"eventEditorPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"createEventsPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"eventSuccessfullySavedPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"allowedExtensionsForUpload\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"displayFrontEndEditorFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"requiredFrontEndEditorFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"allowFrontEndEditingOfSpeakers\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"allowFrontEndEditingOfPlaces\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"allowFrontEndEditingOfCheckboxes\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"allowFrontEndEditingOfTargetGroups\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',NULL,'','',NULL,124,0,0,0,0,0),(10,'',26,1654102849,1627923315,1,0,1,0,0,'',256,0,0,0,0,NULL,0,'{\"hidden\":\"\"}',0,0,0,0,'list','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,'0','seminars_pi1',1,0,NULL,0,'','','',0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"what_to_display\">\n                    <value index=\"vDEF\">category_list</value>\n                </field>\n                <field index=\"listPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"detailPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"myEventsPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"registerPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"loginPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"registrationsListPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"registrationsVipListPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"salutation\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"limitFileDownloadToAttendees\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"pages\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"recursive\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_listView\">\n            <language index=\"lDEF\">\n                <field index=\"displaySearchFormFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"numberOfYearsInDateFilter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showOnlyEventsWithVacancies\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"mayManagersEditTheirEvents\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"categoriesInListView\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"linkToSingleView\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_singleView\">\n            <language index=\"lDEF\">\n                <field index=\"showOwnerDataInSingleView\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_template_special\">\n            <language index=\"lDEF\">\n                <field index=\"templateFile\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showSingleEvent\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"timeframeInList\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"defaultEventVipsFeGroupID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"hideColumns\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"hideFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showEmptyEntryInOptionLists\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"hidePageBrowser\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"hideCanceledEvents\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"sortListViewByCategory\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"generalPriceInList\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"generalPriceInSingle\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"omitDateIfSameAsPrevious\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"eventFieldsOnRegistrationPage\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showRegistrationFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showSpeakerDetails\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"showSiteDetails\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_registrationsListView\">\n            <language index=\"lDEF\">\n                <field index=\"showFeUserFieldsInRegistrationsList\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showRegistrationFieldsInRegistrationList\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_registration\">\n            <language index=\"lDEF\">\n                <field index=\"numberOfClicksForRegistration\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"thankYouAfterRegistrationPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"sendParametersToThankYouAfterRegistrationPageUrl\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"pageToShowAfterUnregistrationPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"sendParametersToPageToShowAfterUnregistrationUrl\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"createAdditionalAttendeesAsFrontEndUsers\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_fe_editing\">\n            <language index=\"lDEF\">\n                <field index=\"eventEditorFeGroupID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"eventEditorPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"createEventsPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"eventSuccessfullySavedPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"allowedExtensionsForUpload\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"displayFrontEndEditorFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"requiredFrontEndEditorFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"allowFrontEndEditingOfSpeakers\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"allowFrontEndEditingOfPlaces\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"allowFrontEndEditingOfCheckboxes\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"allowFrontEndEditingOfTargetGroups\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',NULL,'','',NULL,124,0,0,0,0,0),(11,'',27,1654102846,1627923346,1,0,1,0,0,'',256,0,0,0,0,NULL,0,'{\"hidden\":\"\"}',0,0,0,0,'list','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,'0','seminars_pi1',1,0,NULL,0,'','','',0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"what_to_display\">\n                    <value index=\"vDEF\">topic_list</value>\n                </field>\n                <field index=\"listPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"detailPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"myEventsPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"registerPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"loginPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"registrationsListPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"registrationsVipListPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"salutation\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"limitFileDownloadToAttendees\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"pages\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"recursive\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_listView\">\n            <language index=\"lDEF\">\n                <field index=\"displaySearchFormFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"numberOfYearsInDateFilter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showOnlyEventsWithVacancies\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"mayManagersEditTheirEvents\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"categoriesInListView\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"linkToSingleView\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_singleView\">\n            <language index=\"lDEF\">\n                <field index=\"showOwnerDataInSingleView\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_template_special\">\n            <language index=\"lDEF\">\n                <field index=\"templateFile\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showSingleEvent\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"timeframeInList\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"defaultEventVipsFeGroupID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"hideColumns\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"hideFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showEmptyEntryInOptionLists\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"hidePageBrowser\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"hideCanceledEvents\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"sortListViewByCategory\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"generalPriceInList\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"generalPriceInSingle\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"omitDateIfSameAsPrevious\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"eventFieldsOnRegistrationPage\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showRegistrationFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showSpeakerDetails\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"showSiteDetails\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_registrationsListView\">\n            <language index=\"lDEF\">\n                <field index=\"showFeUserFieldsInRegistrationsList\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showRegistrationFieldsInRegistrationList\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_registration\">\n            <language index=\"lDEF\">\n                <field index=\"numberOfClicksForRegistration\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"thankYouAfterRegistrationPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"sendParametersToThankYouAfterRegistrationPageUrl\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"pageToShowAfterUnregistrationPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"sendParametersToPageToShowAfterUnregistrationUrl\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"createAdditionalAttendeesAsFrontEndUsers\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_fe_editing\">\n            <language index=\"lDEF\">\n                <field index=\"eventEditorFeGroupID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"eventEditorPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"createEventsPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"eventSuccessfullySavedPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"allowedExtensionsForUpload\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"displayFrontEndEditorFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"requiredFrontEndEditorFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"allowFrontEndEditingOfSpeakers\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"allowFrontEndEditingOfPlaces\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"allowFrontEndEditingOfCheckboxes\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"allowFrontEndEditingOfTargetGroups\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',NULL,'','',NULL,124,0,0,0,0,0),(12,'',18,1654102857,1627923371,1,0,1,0,0,'',256,0,0,0,0,NULL,0,'{\"hidden\":\"\"}',0,0,0,0,'list','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,'0','seminars_pi1',1,0,NULL,0,'','','',0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"what_to_display\">\n                    <value index=\"vDEF\">seminar_registration</value>\n                </field>\n                <field index=\"listPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"detailPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"myEventsPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"registerPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"loginPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"registrationsListPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"registrationsVipListPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"salutation\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"limitFileDownloadToAttendees\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"pages\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"recursive\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_listView\">\n            <language index=\"lDEF\">\n                <field index=\"displaySearchFormFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"numberOfYearsInDateFilter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showOnlyEventsWithVacancies\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"mayManagersEditTheirEvents\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"categoriesInListView\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"linkToSingleView\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_singleView\">\n            <language index=\"lDEF\">\n                <field index=\"showOwnerDataInSingleView\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_template_special\">\n            <language index=\"lDEF\">\n                <field index=\"templateFile\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showSingleEvent\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"timeframeInList\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"defaultEventVipsFeGroupID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"hideColumns\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"hideFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showEmptyEntryInOptionLists\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"hidePageBrowser\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"hideCanceledEvents\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"sortListViewByCategory\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"generalPriceInList\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"generalPriceInSingle\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"omitDateIfSameAsPrevious\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"eventFieldsOnRegistrationPage\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showRegistrationFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showSpeakerDetails\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"showSiteDetails\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_registrationsListView\">\n            <language index=\"lDEF\">\n                <field index=\"showFeUserFieldsInRegistrationsList\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showRegistrationFieldsInRegistrationList\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_registration\">\n            <language index=\"lDEF\">\n                <field index=\"numberOfClicksForRegistration\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"thankYouAfterRegistrationPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"sendParametersToThankYouAfterRegistrationPageUrl\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"pageToShowAfterUnregistrationPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"sendParametersToPageToShowAfterUnregistrationUrl\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"createAdditionalAttendeesAsFrontEndUsers\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_fe_editing\">\n            <language index=\"lDEF\">\n                <field index=\"eventEditorFeGroupID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"eventEditorPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"createEventsPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"eventSuccessfullySavedPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"allowedExtensionsForUpload\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"displayFrontEndEditorFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"requiredFrontEndEditorFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"allowFrontEndEditingOfSpeakers\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"allowFrontEndEditingOfPlaces\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"allowFrontEndEditingOfCheckboxes\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"allowFrontEndEditingOfTargetGroups\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',NULL,'','',NULL,124,0,0,0,0,0),(13,'',28,1654102853,1627923433,1,0,1,0,0,'',256,0,0,0,0,NULL,0,'{\"hidden\":\"\"}',0,0,0,0,'list','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,'0','seminars_pi1',1,0,NULL,0,'','','',0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"what_to_display\">\n                    <value index=\"vDEF\">countdown</value>\n                </field>\n                <field index=\"listPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"detailPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"myEventsPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"registerPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"loginPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"registrationsListPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"registrationsVipListPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"salutation\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"limitFileDownloadToAttendees\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"pages\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"recursive\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_listView\">\n            <language index=\"lDEF\">\n                <field index=\"displaySearchFormFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"numberOfYearsInDateFilter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showOnlyEventsWithVacancies\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"mayManagersEditTheirEvents\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"categoriesInListView\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"linkToSingleView\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_singleView\">\n            <language index=\"lDEF\">\n                <field index=\"showOwnerDataInSingleView\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_template_special\">\n            <language index=\"lDEF\">\n                <field index=\"templateFile\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showSingleEvent\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"timeframeInList\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"defaultEventVipsFeGroupID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"hideColumns\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"hideFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showEmptyEntryInOptionLists\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"hidePageBrowser\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"hideCanceledEvents\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"sortListViewByCategory\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"generalPriceInList\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"generalPriceInSingle\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"omitDateIfSameAsPrevious\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"eventFieldsOnRegistrationPage\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showRegistrationFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showSpeakerDetails\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"showSiteDetails\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_registrationsListView\">\n            <language index=\"lDEF\">\n                <field index=\"showFeUserFieldsInRegistrationsList\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showRegistrationFieldsInRegistrationList\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_registration\">\n            <language index=\"lDEF\">\n                <field index=\"numberOfClicksForRegistration\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"thankYouAfterRegistrationPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"sendParametersToThankYouAfterRegistrationPageUrl\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"pageToShowAfterUnregistrationPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"sendParametersToPageToShowAfterUnregistrationUrl\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"createAdditionalAttendeesAsFrontEndUsers\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_fe_editing\">\n            <language index=\"lDEF\">\n                <field index=\"eventEditorFeGroupID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"eventEditorPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"createEventsPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"eventSuccessfullySavedPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"allowedExtensionsForUpload\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"displayFrontEndEditorFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"requiredFrontEndEditorFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"allowFrontEndEditingOfSpeakers\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"allowFrontEndEditingOfPlaces\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"allowFrontEndEditingOfCheckboxes\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"allowFrontEndEditingOfTargetGroups\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',NULL,'','',NULL,124,0,0,0,0,0),(14,'',22,1627923458,1627923458,1,0,0,0,0,'',256,0,0,0,0,NULL,0,'',0,0,0,0,'text','Vielen Dank!','','<p>Vielen Dank für Ihre Anmeldung! Wir sehen uns bald!</p>',0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,'0','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,0),(15,'',29,1627923525,1627923525,1,0,0,0,0,'',256,0,0,0,0,NULL,0,'',0,0,0,0,'text','Oh no!','','<p>Wir haben Ihre Abmeldung erhalten. Es tut uns Leid, dass Sie doch nicht teilnehmen.</p>',0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,'0','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,0),(16,'',19,1654102868,1627924053,1,0,1,0,0,'',256,0,0,0,0,NULL,0,'{\"hidden\":\"\"}',0,0,0,0,'list','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,'0','seminars_pi1',1,0,NULL,0,'','','',0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"what_to_display\">\n                    <value index=\"vDEF\">my_events</value>\n                </field>\n                <field index=\"listPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"detailPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"myEventsPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"registerPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"loginPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"registrationsListPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"registrationsVipListPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"salutation\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"limitFileDownloadToAttendees\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"pages\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"recursive\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_listView\">\n            <language index=\"lDEF\">\n                <field index=\"displaySearchFormFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"numberOfYearsInDateFilter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showOnlyEventsWithVacancies\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"mayManagersEditTheirEvents\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"categoriesInListView\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"linkToSingleView\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_singleView\">\n            <language index=\"lDEF\">\n                <field index=\"showOwnerDataInSingleView\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_template_special\">\n            <language index=\"lDEF\">\n                <field index=\"templateFile\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showSingleEvent\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"timeframeInList\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"defaultEventVipsFeGroupID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"hideColumns\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"hideFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showEmptyEntryInOptionLists\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"hidePageBrowser\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"hideCanceledEvents\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"sortListViewByCategory\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"generalPriceInList\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"generalPriceInSingle\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"omitDateIfSameAsPrevious\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"eventFieldsOnRegistrationPage\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showRegistrationFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showSpeakerDetails\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"showSiteDetails\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_registrationsListView\">\n            <language index=\"lDEF\">\n                <field index=\"showFeUserFieldsInRegistrationsList\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showRegistrationFieldsInRegistrationList\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_registration\">\n            <language index=\"lDEF\">\n                <field index=\"numberOfClicksForRegistration\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"thankYouAfterRegistrationPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"sendParametersToThankYouAfterRegistrationPageUrl\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"pageToShowAfterUnregistrationPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"sendParametersToPageToShowAfterUnregistrationUrl\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"createAdditionalAttendeesAsFrontEndUsers\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_fe_editing\">\n            <language index=\"lDEF\">\n                <field index=\"eventEditorFeGroupID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"eventEditorPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"createEventsPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"eventSuccessfullySavedPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"allowedExtensionsForUpload\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"displayFrontEndEditorFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"requiredFrontEndEditorFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"allowFrontEndEditingOfSpeakers\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"allowFrontEndEditingOfPlaces\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"allowFrontEndEditingOfCheckboxes\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"allowFrontEndEditingOfTargetGroups\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',NULL,'','',NULL,124,0,0,0,0,0),(17,'',23,1654102872,1627924075,1,0,1,0,0,'',256,0,0,0,0,NULL,0,'{\"hidden\":\"\"}',0,0,0,0,'list','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,'0','seminars_pi1',1,0,NULL,0,'','','',0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"what_to_display\">\n                    <value index=\"vDEF\">list_registrations</value>\n                </field>\n                <field index=\"listPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"detailPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"myEventsPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"registerPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"loginPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"registrationsListPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"registrationsVipListPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"salutation\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"limitFileDownloadToAttendees\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"pages\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"recursive\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_listView\">\n            <language index=\"lDEF\">\n                <field index=\"displaySearchFormFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"numberOfYearsInDateFilter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showOnlyEventsWithVacancies\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"mayManagersEditTheirEvents\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"categoriesInListView\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"linkToSingleView\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_singleView\">\n            <language index=\"lDEF\">\n                <field index=\"showOwnerDataInSingleView\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_template_special\">\n            <language index=\"lDEF\">\n                <field index=\"templateFile\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showSingleEvent\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"timeframeInList\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"defaultEventVipsFeGroupID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"hideColumns\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"hideFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showEmptyEntryInOptionLists\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"hidePageBrowser\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"hideCanceledEvents\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"sortListViewByCategory\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"generalPriceInList\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"generalPriceInSingle\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"omitDateIfSameAsPrevious\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"eventFieldsOnRegistrationPage\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showRegistrationFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showSpeakerDetails\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"showSiteDetails\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_registrationsListView\">\n            <language index=\"lDEF\">\n                <field index=\"showFeUserFieldsInRegistrationsList\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showRegistrationFieldsInRegistrationList\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_registration\">\n            <language index=\"lDEF\">\n                <field index=\"numberOfClicksForRegistration\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"thankYouAfterRegistrationPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"sendParametersToThankYouAfterRegistrationPageUrl\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"pageToShowAfterUnregistrationPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"sendParametersToPageToShowAfterUnregistrationUrl\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"createAdditionalAttendeesAsFrontEndUsers\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_fe_editing\">\n            <language index=\"lDEF\">\n                <field index=\"eventEditorFeGroupID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"eventEditorPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"createEventsPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"eventSuccessfullySavedPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"allowedExtensionsForUpload\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"displayFrontEndEditorFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"requiredFrontEndEditorFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"allowFrontEndEditingOfSpeakers\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"allowFrontEndEditingOfPlaces\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"allowFrontEndEditingOfCheckboxes\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"allowFrontEndEditingOfTargetGroups\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',NULL,'','',NULL,124,0,0,0,0,0),(18,'',20,1654102875,1627924092,1,0,1,0,0,'',256,0,0,0,0,NULL,0,'{\"hidden\":\"\"}',0,0,0,0,'list','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,'0','seminars_pi1',1,0,NULL,0,'','','',0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"what_to_display\">\n                    <value index=\"vDEF\">my_vip_events</value>\n                </field>\n                <field index=\"listPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"detailPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"myEventsPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"registerPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"loginPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"registrationsListPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"registrationsVipListPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"salutation\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"limitFileDownloadToAttendees\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"pages\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"recursive\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_listView\">\n            <language index=\"lDEF\">\n                <field index=\"displaySearchFormFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"numberOfYearsInDateFilter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showOnlyEventsWithVacancies\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"mayManagersEditTheirEvents\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"categoriesInListView\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"linkToSingleView\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_singleView\">\n            <language index=\"lDEF\">\n                <field index=\"showOwnerDataInSingleView\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_template_special\">\n            <language index=\"lDEF\">\n                <field index=\"templateFile\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showSingleEvent\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"timeframeInList\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"defaultEventVipsFeGroupID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"hideColumns\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"hideFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showEmptyEntryInOptionLists\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"hidePageBrowser\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"hideCanceledEvents\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"sortListViewByCategory\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"generalPriceInList\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"generalPriceInSingle\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"omitDateIfSameAsPrevious\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"eventFieldsOnRegistrationPage\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showRegistrationFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showSpeakerDetails\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"showSiteDetails\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_registrationsListView\">\n            <language index=\"lDEF\">\n                <field index=\"showFeUserFieldsInRegistrationsList\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showRegistrationFieldsInRegistrationList\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_registration\">\n            <language index=\"lDEF\">\n                <field index=\"numberOfClicksForRegistration\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"thankYouAfterRegistrationPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"sendParametersToThankYouAfterRegistrationPageUrl\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"pageToShowAfterUnregistrationPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"sendParametersToPageToShowAfterUnregistrationUrl\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"createAdditionalAttendeesAsFrontEndUsers\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_fe_editing\">\n            <language index=\"lDEF\">\n                <field index=\"eventEditorFeGroupID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"eventEditorPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"createEventsPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"eventSuccessfullySavedPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"allowedExtensionsForUpload\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"displayFrontEndEditorFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"requiredFrontEndEditorFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"allowFrontEndEditingOfSpeakers\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"allowFrontEndEditingOfPlaces\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"allowFrontEndEditingOfCheckboxes\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"allowFrontEndEditingOfTargetGroups\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',NULL,'','',NULL,124,0,0,0,0,0),(19,'',24,1654102879,1627924112,1,0,1,0,0,'',256,0,0,0,0,NULL,0,'{\"hidden\":\"\"}',0,0,0,0,'list','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,'0','seminars_pi1',1,0,NULL,0,'','','',0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"what_to_display\">\n                    <value index=\"vDEF\">list_vip_registrations</value>\n                </field>\n                <field index=\"listPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"detailPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"myEventsPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"registerPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"loginPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"registrationsListPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"registrationsVipListPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"salutation\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"limitFileDownloadToAttendees\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"pages\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"recursive\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_listView\">\n            <language index=\"lDEF\">\n                <field index=\"displaySearchFormFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"numberOfYearsInDateFilter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showOnlyEventsWithVacancies\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"mayManagersEditTheirEvents\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"categoriesInListView\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"linkToSingleView\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_singleView\">\n            <language index=\"lDEF\">\n                <field index=\"showOwnerDataInSingleView\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_template_special\">\n            <language index=\"lDEF\">\n                <field index=\"templateFile\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showSingleEvent\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"timeframeInList\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"defaultEventVipsFeGroupID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"hideColumns\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"hideFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showEmptyEntryInOptionLists\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"hidePageBrowser\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"hideCanceledEvents\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"sortListViewByCategory\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"generalPriceInList\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"generalPriceInSingle\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"omitDateIfSameAsPrevious\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"eventFieldsOnRegistrationPage\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showRegistrationFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showSpeakerDetails\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"showSiteDetails\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_registrationsListView\">\n            <language index=\"lDEF\">\n                <field index=\"showFeUserFieldsInRegistrationsList\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showRegistrationFieldsInRegistrationList\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_registration\">\n            <language index=\"lDEF\">\n                <field index=\"numberOfClicksForRegistration\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"thankYouAfterRegistrationPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"sendParametersToThankYouAfterRegistrationPageUrl\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"pageToShowAfterUnregistrationPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"sendParametersToPageToShowAfterUnregistrationUrl\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"createAdditionalAttendeesAsFrontEndUsers\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_fe_editing\">\n            <language index=\"lDEF\">\n                <field index=\"eventEditorFeGroupID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"eventEditorPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"createEventsPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"eventSuccessfullySavedPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"allowedExtensionsForUpload\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"displayFrontEndEditorFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"requiredFrontEndEditorFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"allowFrontEndEditingOfSpeakers\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"allowFrontEndEditingOfPlaces\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"allowFrontEndEditingOfCheckboxes\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"allowFrontEndEditingOfTargetGroups\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',NULL,'','',NULL,124,0,0,0,0,0),(20,'',21,1654102882,1627924135,1,0,1,0,0,'',256,0,0,0,0,NULL,0,'{\"hidden\":\"\"}',0,0,0,0,'list','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,'0','seminars_pi1',1,0,NULL,0,'','','',0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"what_to_display\">\n                    <value index=\"vDEF\">my_entered_events</value>\n                </field>\n                <field index=\"listPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"detailPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"myEventsPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"registerPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"loginPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"registrationsListPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"registrationsVipListPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"salutation\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"limitFileDownloadToAttendees\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"pages\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"recursive\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_listView\">\n            <language index=\"lDEF\">\n                <field index=\"displaySearchFormFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"numberOfYearsInDateFilter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showOnlyEventsWithVacancies\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"mayManagersEditTheirEvents\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"categoriesInListView\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"linkToSingleView\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_singleView\">\n            <language index=\"lDEF\">\n                <field index=\"showOwnerDataInSingleView\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_template_special\">\n            <language index=\"lDEF\">\n                <field index=\"templateFile\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showSingleEvent\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"timeframeInList\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"defaultEventVipsFeGroupID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"hideColumns\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"hideFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showEmptyEntryInOptionLists\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"hidePageBrowser\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"hideCanceledEvents\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"sortListViewByCategory\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"generalPriceInList\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"generalPriceInSingle\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"omitDateIfSameAsPrevious\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"eventFieldsOnRegistrationPage\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showRegistrationFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showSpeakerDetails\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"showSiteDetails\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_registrationsListView\">\n            <language index=\"lDEF\">\n                <field index=\"showFeUserFieldsInRegistrationsList\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showRegistrationFieldsInRegistrationList\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_registration\">\n            <language index=\"lDEF\">\n                <field index=\"numberOfClicksForRegistration\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"thankYouAfterRegistrationPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"sendParametersToThankYouAfterRegistrationPageUrl\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"pageToShowAfterUnregistrationPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"sendParametersToPageToShowAfterUnregistrationUrl\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"createAdditionalAttendeesAsFrontEndUsers\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_fe_editing\">\n            <language index=\"lDEF\">\n                <field index=\"eventEditorFeGroupID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"eventEditorPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"createEventsPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"eventSuccessfullySavedPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"allowedExtensionsForUpload\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"displayFrontEndEditorFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"requiredFrontEndEditorFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"allowFrontEndEditingOfSpeakers\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"allowFrontEndEditingOfPlaces\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"allowFrontEndEditingOfCheckboxes\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"allowFrontEndEditingOfTargetGroups\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',NULL,'','',NULL,124,0,0,0,0,0),(21,'',25,1654102885,1627924158,1,0,1,0,0,'',256,0,0,0,0,NULL,0,'{\"hidden\":\"\"}',0,0,0,0,'list','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,'0','seminars_pi1',1,0,NULL,0,'','','',0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"what_to_display\">\n                    <value index=\"vDEF\">edit_event</value>\n                </field>\n                <field index=\"listPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"detailPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"myEventsPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"registerPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"loginPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"registrationsListPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"registrationsVipListPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"salutation\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"limitFileDownloadToAttendees\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"pages\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"recursive\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_listView\">\n            <language index=\"lDEF\">\n                <field index=\"displaySearchFormFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"numberOfYearsInDateFilter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showOnlyEventsWithVacancies\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"mayManagersEditTheirEvents\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"categoriesInListView\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"linkToSingleView\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_singleView\">\n            <language index=\"lDEF\">\n                <field index=\"showOwnerDataInSingleView\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_template_special\">\n            <language index=\"lDEF\">\n                <field index=\"templateFile\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showSingleEvent\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"timeframeInList\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"defaultEventVipsFeGroupID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"hideColumns\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"hideFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showEmptyEntryInOptionLists\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"hidePageBrowser\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"hideCanceledEvents\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"sortListViewByCategory\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"generalPriceInList\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"generalPriceInSingle\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"omitDateIfSameAsPrevious\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"eventFieldsOnRegistrationPage\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showRegistrationFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showSpeakerDetails\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"showSiteDetails\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_registrationsListView\">\n            <language index=\"lDEF\">\n                <field index=\"showFeUserFieldsInRegistrationsList\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showRegistrationFieldsInRegistrationList\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_registration\">\n            <language index=\"lDEF\">\n                <field index=\"numberOfClicksForRegistration\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"thankYouAfterRegistrationPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"sendParametersToThankYouAfterRegistrationPageUrl\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"pageToShowAfterUnregistrationPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"sendParametersToPageToShowAfterUnregistrationUrl\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"createAdditionalAttendeesAsFrontEndUsers\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_fe_editing\">\n            <language index=\"lDEF\">\n                <field index=\"eventEditorFeGroupID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"eventEditorPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"createEventsPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"eventSuccessfullySavedPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"allowedExtensionsForUpload\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"displayFrontEndEditorFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"requiredFrontEndEditorFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"allowFrontEndEditingOfSpeakers\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"allowFrontEndEditingOfPlaces\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"allowFrontEndEditingOfCheckboxes\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"allowFrontEndEditingOfTargetGroups\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',NULL,'','',NULL,124,0,0,0,0,0),(22,'',1,1631546571,1631546548,1,0,0,0,0,'',384,0,1,1,1,NULL,1,'{\"CType\":\"text\",\"colPos\":0,\"header\":\"Willkommen!\",\"header_layout\":\"0\",\"header_position\":\"\",\"date\":0,\"header_link\":\"\",\"subheader\":\"\",\"bodytext\":\"<p>Dies ist die Startseite.<\\/p>\",\"layout\":0,\"frame_class\":\"default\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"sectionIndex\":1,\"linkToTop\":0,\"sys_language_uid\":0,\"l18n_parent\":0,\"hidden\":0,\"fe_group\":\"\",\"editlock\":0,\"categories\":0,\"rowDescription\":\"\",\"starttime\":0,\"endtime\":0}',0,0,0,0,'text','Welcome!','','<p>This is the start page.</p>',0,0,0,0,0,0,0,2,0,0,0,'default',0,'','','','',0,'','',0,'0','',1,0,'',0,'','','',0,0,0,NULL,'',0,'','','','',NULL,124,0,0,0,0,0),(23,'',1,1631546583,1631546548,1,0,0,0,0,'',448,0,1,6,6,NULL,6,'{\"CType\":\"menu_subpages\",\"colPos\":0,\"header\":\"\",\"header_layout\":\"0\",\"header_position\":\"\",\"date\":0,\"header_link\":\"\",\"subheader\":\"\",\"pages\":\"1\",\"layout\":0,\"frame_class\":\"default\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"sectionIndex\":1,\"linkToTop\":0,\"accessibility_title\":\"\",\"accessibility_bypass\":0,\"accessibility_bypass_text\":\"\",\"sys_language_uid\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"fe_group\":\"\",\"editlock\":0,\"categories\":0,\"rowDescription\":\"\",\"l18n_parent\":0}',0,0,0,0,'menu_subpages','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,'','','','1',0,'','',0,'0','',1,0,'',0,'','','',0,0,0,NULL,'',0,'','','','',NULL,124,0,0,0,0,0),(24,'',32,1654102841,1631549808,1,0,1,0,0,'',256,0,0,0,0,NULL,8,'{\"hidden\":\"\"}',0,0,0,0,'list','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,'','','','',0,'','',0,'0','seminars_pi1',1,0,'',0,'','','',0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"what_to_display\">\n                    <value index=\"vDEF\">seminar_list</value>\n                </field>\n                <field index=\"listPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"detailPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"myEventsPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"registerPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"loginPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"registrationsListPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"registrationsVipListPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"salutation\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"limitFileDownloadToAttendees\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"pages\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"recursive\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_listView\">\n            <language index=\"lDEF\">\n                <field index=\"displaySearchFormFields\">\n                    <value index=\"vDEF\">event_type,language,country,city,place,organizer,categories,date,age,price,full_text_search</value>\n                </field>\n                <field index=\"numberOfYearsInDateFilter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showOnlyEventsWithVacancies\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"mayManagersEditTheirEvents\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"categoriesInListView\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"linkToSingleView\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"limitListViewToEventTypes\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"limitListViewToCategories\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"limitListViewToPlaces\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"limitListViewToOrganizers\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_singleView\">\n            <language index=\"lDEF\">\n                <field index=\"showOwnerDataInSingleView\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_template_special\">\n            <language index=\"lDEF\">\n                <field index=\"templateFile\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showSingleEvent\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"timeframeInList\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"defaultEventVipsFeGroupID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"hideColumns\">\n                    <value index=\"vDEF\">edit</value>\n                </field>\n                <field index=\"hideFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showEmptyEntryInOptionLists\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"hidePageBrowser\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"hideCanceledEvents\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"sortListViewByCategory\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"generalPriceInList\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"generalPriceInSingle\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"omitDateIfSameAsPrevious\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"eventFieldsOnRegistrationPage\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showRegistrationFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showSpeakerDetails\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"showSiteDetails\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_registrationsListView\">\n            <language index=\"lDEF\">\n                <field index=\"showFeUserFieldsInRegistrationsList\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showRegistrationFieldsInRegistrationList\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_registration\">\n            <language index=\"lDEF\">\n                <field index=\"numberOfClicksForRegistration\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"thankYouAfterRegistrationPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"sendParametersToThankYouAfterRegistrationPageUrl\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"pageToShowAfterUnregistrationPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"sendParametersToPageToShowAfterUnregistrationUrl\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"createAdditionalAttendeesAsFrontEndUsers\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_fe_editing\">\n            <language index=\"lDEF\">\n                <field index=\"eventEditorFeGroupID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"eventEditorPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"createEventsPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"eventSuccessfullySavedPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"allowedExtensionsForUpload\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"displayFrontEndEditorFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"requiredFrontEndEditorFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"allowFrontEndEditingOfSpeakers\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"allowFrontEndEditingOfPlaces\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"allowFrontEndEditingOfCheckboxes\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"allowFrontEndEditingOfTargetGroups\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'','','','',NULL,124,0,0,0,0,0),(25,'',22,1654102862,1631550407,1,0,1,0,0,'',128,0,0,0,0,NULL,0,'{\"hidden\":\"\"}',0,0,0,0,'list','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,'0','seminars_pi1',1,0,NULL,0,'','','',0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"what_to_display\">\n                    <value index=\"vDEF\">event_headline</value>\n                </field>\n                <field index=\"listPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"detailPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"myEventsPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"registerPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"loginPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"registrationsListPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"registrationsVipListPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"salutation\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"limitFileDownloadToAttendees\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"pages\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"recursive\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_listView\">\n            <language index=\"lDEF\">\n                <field index=\"displaySearchFormFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"numberOfYearsInDateFilter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"limitListViewToEventTypes\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"limitListViewToCategories\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"limitListViewToPlaces\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"limitListViewToOrganizers\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showOnlyEventsWithVacancies\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"mayManagersEditTheirEvents\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"categoriesInListView\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"linkToSingleView\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_singleView\">\n            <language index=\"lDEF\">\n                <field index=\"showOwnerDataInSingleView\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_template_special\">\n            <language index=\"lDEF\">\n                <field index=\"templateFile\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showSingleEvent\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"timeframeInList\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"defaultEventVipsFeGroupID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"hideColumns\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"hideFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showEmptyEntryInOptionLists\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"hidePageBrowser\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"hideCanceledEvents\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"sortListViewByCategory\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"generalPriceInList\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"generalPriceInSingle\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"omitDateIfSameAsPrevious\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"eventFieldsOnRegistrationPage\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showRegistrationFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showSpeakerDetails\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"showSiteDetails\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_registrationsListView\">\n            <language index=\"lDEF\">\n                <field index=\"showFeUserFieldsInRegistrationsList\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showRegistrationFieldsInRegistrationList\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_registration\">\n            <language index=\"lDEF\">\n                <field index=\"numberOfClicksForRegistration\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"thankYouAfterRegistrationPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"sendParametersToThankYouAfterRegistrationPageUrl\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"pageToShowAfterUnregistrationPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"sendParametersToPageToShowAfterUnregistrationUrl\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"createAdditionalAttendeesAsFrontEndUsers\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_fe_editing\">\n            <language index=\"lDEF\">\n                <field index=\"eventEditorFeGroupID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"eventEditorPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"createEventsPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"eventSuccessfullySavedPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"allowedExtensionsForUpload\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"displayFrontEndEditorFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"requiredFrontEndEditorFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"allowFrontEndEditingOfSpeakers\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"allowFrontEndEditingOfPlaces\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"allowFrontEndEditingOfCheckboxes\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"allowFrontEndEditingOfTargetGroups\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',NULL,'','',NULL,124,0,0,0,0,0),(26,'',7,1654102827,1654093843,1,0,1,0,0,'',512,0,0,0,0,NULL,0,'{\"hidden\":\"\"}',0,0,0,0,'list','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,'',0,'','',0,'0','onetimeaccount_withautologin',1,0,NULL,0,'','','',0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"general\">\n            <language index=\"lDEF\">\n                <field index=\"settings.fieldsToShow\">\n                    <value index=\"vDEF\">company,gender,fullSalutation,firstName,address,zip,city,email,telephone,dateOfBirth</value>\n                </field>\n                <field index=\"settings.requiredFields\">\n                    <value index=\"vDEF\">email</value>\n                </field>\n                <field index=\"settings.systemFolderForNewUsers\">\n                    <value index=\"vDEF\">4</value>\n                </field>\n                <field index=\"settings.groupsForNewUsers\">\n                    <value index=\"vDEF\">2</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',NULL,'','',NULL,124,0,0,0,0,0);
/*!40000 ALTER TABLE `tt_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_seminars_attendances`
--

DROP TABLE IF EXISTS `tx_seminars_attendances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_seminars_attendances` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `is_dummy_record` smallint(5) unsigned NOT NULL DEFAULT 0,
  `title` tinytext COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `user` int(10) unsigned NOT NULL DEFAULT 0,
  `seminar` int(10) unsigned NOT NULL DEFAULT 0,
  `registration_queue` smallint(5) unsigned NOT NULL DEFAULT 0,
  `price` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `seats` int(10) unsigned NOT NULL DEFAULT 0,
  `registered_themselves` smallint(5) unsigned NOT NULL DEFAULT 0,
  `total_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `currency` int(10) unsigned NOT NULL DEFAULT 0,
  `including_tax` smallint(5) unsigned NOT NULL DEFAULT 0,
  `attendees_names` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `additional_persons` int(10) unsigned NOT NULL DEFAULT 0,
  `datepaid` int(10) unsigned NOT NULL DEFAULT 0,
  `method_of_payment` int(10) unsigned NOT NULL DEFAULT 0,
  `account_number` tinytext COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `bank_code` tinytext COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `bank_name` tinytext COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `account_owner` tinytext COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `company` tinytext COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `name` varchar(80) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `gender` smallint(5) unsigned NOT NULL DEFAULT 0,
  `address` tinytext COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `zip` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `country` varchar(60) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `telephone` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(80) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `been_there` smallint(5) unsigned NOT NULL DEFAULT 0,
  `interests` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `expectations` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `background_knowledge` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `accommodation` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `lodgings` int(10) unsigned NOT NULL DEFAULT 0,
  `food` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `foods` int(10) unsigned NOT NULL DEFAULT 0,
  `known_from` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `kids` int(10) unsigned NOT NULL DEFAULT 0,
  `checkboxes` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `dummy` (`is_dummy_record`),
  KEY `seminar` (`seminar`),
  KEY `user` (`user`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_seminars_attendances`
--

LOCK TABLES `tx_seminars_attendances` WRITE;
/*!40000 ALTER TABLE `tx_seminars_attendances` DISABLE KEYS */;
INSERT INTO `tx_seminars_attendances` VALUES (1,12,1628003260,1628003260,0,0,0,0,'Anna Attendee / TCCD, 20.-23.11.2021',1,7,0,'Standardpreis: € 500,00',1,0,500.00,0,0,NULL,0,0,1,NULL,NULL,NULL,NULL,NULL,'',0,NULL,'','','','','',0,'','','',NULL,0,NULL,0,'','',0,0),(2,12,1628016412,1628016412,1,0,0,0,NULL,4,7,0,'',1,1,0.00,0,0,'',0,0,0,'','','','','','',0,'','','','','','',0,'','','','',0,'',0,'','',0,0),(3,12,1628016433,1628016433,1,0,0,0,NULL,5,7,0,'',1,1,0.00,0,0,'',0,0,0,'','','','','','',0,'','','','','','',0,'','','','',0,'',0,'','',0,0);
/*!40000 ALTER TABLE `tx_seminars_attendances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_seminars_attendances_checkboxes_mm`
--

DROP TABLE IF EXISTS `tx_seminars_attendances_checkboxes_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_seminars_attendances_checkboxes_mm` (
  `uid_local` int(10) unsigned NOT NULL DEFAULT 0,
  `uid_foreign` int(10) unsigned NOT NULL DEFAULT 0,
  `is_dummy_record` smallint(5) unsigned NOT NULL DEFAULT 0,
  `tablenames` varchar(30) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(10) unsigned NOT NULL DEFAULT 0,
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`),
  KEY `dummy` (`is_dummy_record`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_seminars_attendances_checkboxes_mm`
--

LOCK TABLES `tx_seminars_attendances_checkboxes_mm` WRITE;
/*!40000 ALTER TABLE `tx_seminars_attendances_checkboxes_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_seminars_attendances_checkboxes_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_seminars_attendances_foods_mm`
--

DROP TABLE IF EXISTS `tx_seminars_attendances_foods_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_seminars_attendances_foods_mm` (
  `uid_local` int(10) unsigned NOT NULL DEFAULT 0,
  `uid_foreign` int(10) unsigned NOT NULL DEFAULT 0,
  `is_dummy_record` smallint(5) unsigned NOT NULL DEFAULT 0,
  `tablenames` varchar(30) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(10) unsigned NOT NULL DEFAULT 0,
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`),
  KEY `dummy` (`is_dummy_record`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_seminars_attendances_foods_mm`
--

LOCK TABLES `tx_seminars_attendances_foods_mm` WRITE;
/*!40000 ALTER TABLE `tx_seminars_attendances_foods_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_seminars_attendances_foods_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_seminars_attendances_lodgings_mm`
--

DROP TABLE IF EXISTS `tx_seminars_attendances_lodgings_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_seminars_attendances_lodgings_mm` (
  `uid_local` int(10) unsigned NOT NULL DEFAULT 0,
  `uid_foreign` int(10) unsigned NOT NULL DEFAULT 0,
  `is_dummy_record` smallint(5) unsigned NOT NULL DEFAULT 0,
  `tablenames` varchar(30) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(10) unsigned NOT NULL DEFAULT 0,
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`),
  KEY `dummy` (`is_dummy_record`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_seminars_attendances_lodgings_mm`
--

LOCK TABLES `tx_seminars_attendances_lodgings_mm` WRITE;
/*!40000 ALTER TABLE `tx_seminars_attendances_lodgings_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_seminars_attendances_lodgings_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_seminars_categories`
--

DROP TABLE IF EXISTS `tx_seminars_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_seminars_categories` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `is_dummy_record` smallint(5) unsigned NOT NULL DEFAULT 0,
  `title` tinytext COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `icon` tinytext COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `single_view_page` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `dummy` (`is_dummy_record`),
  KEY `parent` (`pid`,`deleted`),
  FULLTEXT KEY `index_searchfields` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_seminars_categories`
--

LOCK TABLES `tx_seminars_categories` WRITE;
/*!40000 ALTER TABLE `tx_seminars_categories` DISABLE KEYS */;
INSERT INTO `tx_seminars_categories` VALUES (1,15,1634124425,1628000755,1,0,0,'Methodentraining','0',0),(2,15,1634124425,1628000766,1,0,0,'Politik','0',0),(3,15,1634124425,1628000777,1,0,0,'Softwareentwicklung','0',0);
/*!40000 ALTER TABLE `tx_seminars_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_seminars_checkboxes`
--

DROP TABLE IF EXISTS `tx_seminars_checkboxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_seminars_checkboxes` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `is_dummy_record` smallint(5) unsigned NOT NULL DEFAULT 0,
  `owner` int(10) unsigned NOT NULL DEFAULT 0,
  `title` tinytext COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `dummy` (`is_dummy_record`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_seminars_checkboxes`
--

LOCK TABLES `tx_seminars_checkboxes` WRITE;
/*!40000 ALTER TABLE `tx_seminars_checkboxes` DISABLE KEYS */;
INSERT INTO `tx_seminars_checkboxes` VALUES (1,15,1628000801,1628000801,1,0,0,0,'Ich komme später an.',NULL),(2,15,1628000819,1628000819,1,0,0,0,'Ich kenne schon jemanden aus der Gruppe.',NULL);
/*!40000 ALTER TABLE `tx_seminars_checkboxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_seminars_event_types`
--

DROP TABLE IF EXISTS `tx_seminars_event_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_seminars_event_types` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `is_dummy_record` smallint(5) unsigned NOT NULL DEFAULT 0,
  `title` tinytext COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `single_view_page` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `dummy` (`is_dummy_record`),
  KEY `parent` (`pid`,`deleted`),
  FULLTEXT KEY `index_searchfields` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_seminars_event_types`
--

LOCK TABLES `tx_seminars_event_types` WRITE;
/*!40000 ALTER TABLE `tx_seminars_event_types` DISABLE KEYS */;
INSERT INTO `tx_seminars_event_types` VALUES (1,15,1628000830,1628000830,1,0,0,'Workshop',0),(2,15,1628000836,1628000836,1,0,0,'Vortrag',0),(3,15,1628000845,1628000845,1,0,0,'Wochenendseminar',0),(4,15,1628000854,1628000854,1,0,0,'Abendveranstaltung',0);
/*!40000 ALTER TABLE `tx_seminars_event_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_seminars_foods`
--

DROP TABLE IF EXISTS `tx_seminars_foods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_seminars_foods` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `is_dummy_record` smallint(5) unsigned NOT NULL DEFAULT 0,
  `title` tinytext COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `dummy` (`is_dummy_record`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_seminars_foods`
--

LOCK TABLES `tx_seminars_foods` WRITE;
/*!40000 ALTER TABLE `tx_seminars_foods` DISABLE KEYS */;
INSERT INTO `tx_seminars_foods` VALUES (1,15,1628000870,1628000870,1,0,0,'vegetarisch'),(2,15,1628000876,1628000876,1,0,0,'low-carb'),(3,15,1628000882,1628000882,1,0,0,'vegan'),(4,15,1628000889,1628000889,1,0,0,'glutenfrei'),(5,15,1628000894,1628000894,1,0,0,'halal'),(6,15,1628000906,1628000906,1,0,0,'koscher');
/*!40000 ALTER TABLE `tx_seminars_foods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_seminars_lodgings`
--

DROP TABLE IF EXISTS `tx_seminars_lodgings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_seminars_lodgings` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `is_dummy_record` smallint(5) unsigned NOT NULL DEFAULT 0,
  `title` tinytext COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `dummy` (`is_dummy_record`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_seminars_lodgings`
--

LOCK TABLES `tx_seminars_lodgings` WRITE;
/*!40000 ALTER TABLE `tx_seminars_lodgings` DISABLE KEYS */;
INSERT INTO `tx_seminars_lodgings` VALUES (1,15,1628000917,1628000917,1,0,0,'Einzelzimmer'),(2,15,1628000927,1628000927,1,0,0,'Doppelzimmer'),(3,15,1628000934,1628000934,1,0,0,'Mehrbettzimmer'),(4,15,1628000946,1628000946,1,0,0,'Ich organisiere meine Übernachtung selbst.');
/*!40000 ALTER TABLE `tx_seminars_lodgings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_seminars_organizers`
--

DROP TABLE IF EXISTS `tx_seminars_organizers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_seminars_organizers` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `is_dummy_record` smallint(5) unsigned NOT NULL DEFAULT 0,
  `title` tinytext COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `homepage` tinytext COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `email` tinytext COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `email_footer` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `attendances_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `dummy` (`is_dummy_record`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_seminars_organizers`
--

LOCK TABLES `tx_seminars_organizers` WRITE;
/*!40000 ALTER TABLE `tx_seminars_organizers` DISABLE KEYS */;
INSERT INTO `tx_seminars_organizers` VALUES (1,15,1628001001,1628001001,1,0,0,'TYPO3 Trainer Network','','ttn@example.com','',0,''),(2,15,1628001024,1628001024,1,0,0,'TYPO3 Association','','assoc@example.com','',0,''),(3,15,1628001042,1628001042,1,0,0,'oliverklee.de','','ok@example.com','',0,''),(4,15,1628001066,1628001066,1,0,0,'TYPO3 Usergroup','','ug@example.com','',0,'');
/*!40000 ALTER TABLE `tx_seminars_organizers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_seminars_payment_methods`
--

DROP TABLE IF EXISTS `tx_seminars_payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_seminars_payment_methods` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `is_dummy_record` smallint(5) unsigned NOT NULL DEFAULT 0,
  `title` tinytext COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `dummy` (`is_dummy_record`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_seminars_payment_methods`
--

LOCK TABLES `tx_seminars_payment_methods` WRITE;
/*!40000 ALTER TABLE `tx_seminars_payment_methods` DISABLE KEYS */;
INSERT INTO `tx_seminars_payment_methods` VALUES (1,15,1628000964,1628000964,1,0,0,'Rechnung',''),(2,15,1628000974,1628000974,1,0,0,'bar vor Ort','');
/*!40000 ALTER TABLE `tx_seminars_payment_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_seminars_seminars`
--

DROP TABLE IF EXISTS `tx_seminars_seminars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_seminars_seminars` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `is_dummy_record` smallint(5) unsigned NOT NULL DEFAULT 0,
  `object_type` int(10) unsigned NOT NULL DEFAULT 0,
  `title` tinytext COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `topic` int(10) unsigned NOT NULL DEFAULT 0,
  `subtitle` tinytext COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `categories` int(10) unsigned NOT NULL DEFAULT 0,
  `teaser` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `event_type` int(10) unsigned NOT NULL DEFAULT 0,
  `accreditation_number` tinytext COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `credit_points` int(10) unsigned NOT NULL DEFAULT 0,
  `begin_date` int(10) unsigned NOT NULL DEFAULT 0,
  `end_date` int(10) unsigned NOT NULL DEFAULT 0,
  `timeslots` int(10) unsigned NOT NULL DEFAULT 0,
  `begin_date_registration` int(10) unsigned NOT NULL DEFAULT 0,
  `deadline_registration` int(10) unsigned NOT NULL DEFAULT 0,
  `deadline_early_bird` int(10) unsigned NOT NULL DEFAULT 0,
  `deadline_unregistration` int(10) unsigned NOT NULL DEFAULT 0,
  `expiry` int(10) unsigned NOT NULL DEFAULT 0,
  `details_page` tinytext COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `place` int(10) unsigned NOT NULL DEFAULT 0,
  `room` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `lodgings` int(10) unsigned NOT NULL DEFAULT 0,
  `foods` int(10) unsigned NOT NULL DEFAULT 0,
  `speakers` int(10) unsigned NOT NULL DEFAULT 0,
  `partners` int(10) unsigned NOT NULL DEFAULT 0,
  `tutors` int(10) unsigned NOT NULL DEFAULT 0,
  `leaders` int(10) unsigned NOT NULL DEFAULT 0,
  `language` varchar(2) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `price_regular` decimal(10,2) NOT NULL DEFAULT 0.00,
  `price_regular_early` decimal(10,2) NOT NULL DEFAULT 0.00,
  `price_regular_board` decimal(10,2) NOT NULL DEFAULT 0.00,
  `price_special` decimal(10,2) NOT NULL DEFAULT 0.00,
  `price_special_early` decimal(10,2) NOT NULL DEFAULT 0.00,
  `price_special_board` decimal(10,2) NOT NULL DEFAULT 0.00,
  `additional_information` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `payment_methods` int(10) unsigned NOT NULL DEFAULT 0,
  `organizers` int(10) unsigned NOT NULL DEFAULT 0,
  `organizing_partners` int(10) unsigned NOT NULL DEFAULT 0,
  `event_takes_place_reminder_sent` int(10) unsigned NOT NULL DEFAULT 0,
  `cancelation_deadline_reminder_sent` int(10) unsigned NOT NULL DEFAULT 0,
  `needs_registration` smallint(5) unsigned NOT NULL DEFAULT 0,
  `allows_multiple_registrations` smallint(5) unsigned NOT NULL DEFAULT 0,
  `attendees_min` int(10) unsigned NOT NULL DEFAULT 0,
  `attendees_max` int(10) unsigned NOT NULL DEFAULT 0,
  `queue_size` int(10) unsigned NOT NULL DEFAULT 0,
  `offline_attendees` int(10) unsigned NOT NULL DEFAULT 0,
  `target_groups` int(10) unsigned NOT NULL DEFAULT 0,
  `skip_collision_check` smallint(5) unsigned NOT NULL DEFAULT 0,
  `registrations` int(10) unsigned NOT NULL DEFAULT 0,
  `cancelled` smallint(5) unsigned NOT NULL DEFAULT 0,
  `owner_feuser` int(10) unsigned NOT NULL DEFAULT 0,
  `vips` int(10) unsigned NOT NULL DEFAULT 0,
  `checkboxes` int(10) unsigned NOT NULL DEFAULT 0,
  `uses_terms_2` smallint(5) unsigned NOT NULL DEFAULT 0,
  `notes` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `attached_files` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `image` tinytext COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `requirements` int(10) unsigned NOT NULL DEFAULT 0,
  `dependencies` int(10) unsigned NOT NULL DEFAULT 0,
  `publication_hash` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `organizers_notified_about_minimum_reached` smallint(5) unsigned NOT NULL DEFAULT 0,
  `mute_notification_emails` smallint(5) unsigned NOT NULL DEFAULT 0,
  `automatic_confirmation_cancelation` smallint(5) unsigned NOT NULL DEFAULT 0,
  `price_on_request` smallint(5) unsigned NOT NULL DEFAULT 0,
  `date_of_last_registration_digest` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `dummy` (`is_dummy_record`),
  KEY `object_type` (`object_type`),
  KEY `topic` (`topic`),
  KEY `event_takes_place_reminder_sent` (`event_takes_place_reminder_sent`),
  KEY `cancelation_deadline_reminder_sent` (`cancelation_deadline_reminder_sent`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  FULLTEXT KEY `index_event_searchfields` (`accreditation_number`),
  FULLTEXT KEY `index_topic_searchfields` (`title`,`subtitle`,`description`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_seminars_seminars`
--

LOCK TABLES `tx_seminars_seminars` WRITE;
/*!40000 ALTER TABLE `tx_seminars_seminars` DISABLE KEYS */;
INSERT INTO `tx_seminars_seminars` VALUES (1,13,1634124323,1628002174,1,0,0,0,0,0,1,'TCCD',0,'TYPO3 CMS Certified Developer',1,'TCCD-Training de luxe!','<p>I\'m baby leggings artisan tbh enamel pin art party raclette hot chicken intelligentsia readymade, cardigan XOXO. Cray sriracha normcore organic. Fixie live-edge quinoa cred four loko poke tumeric art party whatever air plant. Hella asymmetrical locavore direct trade shaman. Actually green juice waistcoat succulents.</p>',1,'',0,0,0,0,0,0,0,0,0,'',0,'',0,0,0,0,0,0,'',500.00,450.00,800.00,400.00,375.00,700.00,'',1,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'','0','0',1,0,NULL,0,0,0,0,0),(2,13,1634124328,1628002285,1,0,0,0,0,0,1,'TCCI',0,'TYPO3 CMS Certified Integrator',1,'TCCI - so einfach geht TYPO3!','<p>Farm-to-table adaptogen vice YOLO four dollar toast bespoke. Hammock helvetica asymmetrical next level. Deep v hoodie ramps fam lo-fi unicorn paleo hot chicken fanny pack affogato trust fund chartreuse twee offal iceland. Photo booth godard everyday carry heirloom chillwave 90\'s craft beer, direct trade kogi skateboard dreamcatcher butcher.</p>',0,'',0,0,0,0,0,0,0,0,0,'',0,'',0,0,0,0,0,0,'',650.00,0.00,0.00,0.00,0.00,0.00,'',0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'','0','0',0,1,NULL,0,0,0,0,0),(3,14,1654092629,1628002505,1,0,0,0,0,0,0,'Einzelveranstaltung mit Anmeldeopotionen',0,'',0,'','',0,'',0,1964419200,1964448000,0,0,1647334800,0,1647334800,0,'',1,'Raum \"Brandenburg\"',3,6,1,0,0,0,'',0.00,0.00,0.00,0.00,0.00,0.00,'',1,1,0,0,0,1,0,4,12,0,0,2,0,0,0,0,0,0,0,'','0','0',0,0,NULL,0,0,0,0,0),(4,14,1634124396,1628002652,1,0,0,0,0,0,0,'Einzelveranstaltung mit Zeitslots',0,'',0,'','<p>Mustache direct trade master cleanse, fashion axe aesthetic farm-to-table vexillologist drinking vinegar austin 90\'s ramps 8-bit biodiesel snackwave taxidermy. Whatever banh mi chartreuse chicharrones. Unicorn bespoke sriracha pabst, art party typewriter messenger bag vexillologist banh mi intelligentsia. Bicycle rights four dollar toast kickstarter sustainable vegan tumblr, quinoa tumeric fingerstache. Artisan tilde sartorial, quinoa raw denim banh mi pitchfork offal bitters dreamcatcher actually keffiyeh. Palo santo air plant XOXO pug woke shaman.</p>',0,'',0,1964505600,1964606400,2,0,0,0,0,0,'',2,'',0,0,0,0,0,0,'',0.00,0.00,0.00,0.00,0.00,0.00,'',0,1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'','0','0',0,0,NULL,0,0,0,0,0),(5,14,1634124392,1628002667,1,0,0,0,0,0,2,'TCCD-Termin',1,'',0,'','',0,'',0,0,0,0,0,0,0,0,0,'',0,'',0,0,0,0,0,0,'',0.00,0.00,0.00,0.00,0.00,0.00,'',0,1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,2,0,'','0','',0,0,NULL,0,0,0,0,0),(6,14,1654092629,1628002703,1,0,0,0,0,0,2,'TCCI-Termin',0,'',0,'','',0,'',0,1944399480,1955375880,0,0,0,0,0,0,'',0,'',0,0,0,0,0,0,'',0.00,0.00,0.00,0.00,0.00,0.00,'',0,1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'','0','',0,0,NULL,0,0,0,0,0),(7,14,1654092629,1628002743,1,0,0,0,0,0,2,'TCCD-Termin mit Datum',1,'',0,'','',0,'',0,1952956740,1953215940,0,0,0,0,0,0,'',1,'',0,0,0,0,0,0,'',0.00,0.00,0.00,0.00,0.00,0.00,'',0,1,0,0,0,1,0,0,0,0,0,0,0,1,0,0,0,0,0,'','0','',0,0,NULL,0,0,0,0,0),(8,30,1634124413,1628014468,0,0,0,0,0,0,0,'Frontend-created event',0,'',0,'','',0,'',0,0,0,0,0,0,0,0,0,NULL,0,'',0,0,0,0,0,0,'',0.00,0.00,0.00,0.00,0.00,0.00,'',0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,'','0','0',0,0,NULL,0,0,0,0,0);
/*!40000 ALTER TABLE `tx_seminars_seminars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_seminars_seminars_categories_mm`
--

DROP TABLE IF EXISTS `tx_seminars_seminars_categories_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_seminars_seminars_categories_mm` (
  `uid_local` int(10) unsigned NOT NULL DEFAULT 0,
  `uid_foreign` int(10) unsigned NOT NULL DEFAULT 0,
  `is_dummy_record` smallint(5) unsigned NOT NULL DEFAULT 0,
  `tablenames` varchar(30) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(10) unsigned NOT NULL DEFAULT 0,
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`),
  KEY `dummy` (`is_dummy_record`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_seminars_seminars_categories_mm`
--

LOCK TABLES `tx_seminars_seminars_categories_mm` WRITE;
/*!40000 ALTER TABLE `tx_seminars_seminars_categories_mm` DISABLE KEYS */;
INSERT INTO `tx_seminars_seminars_categories_mm` VALUES (1,3,0,'',1),(2,3,0,'',1);
/*!40000 ALTER TABLE `tx_seminars_seminars_categories_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_seminars_seminars_checkboxes_mm`
--

DROP TABLE IF EXISTS `tx_seminars_seminars_checkboxes_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_seminars_seminars_checkboxes_mm` (
  `uid_local` int(10) unsigned NOT NULL DEFAULT 0,
  `uid_foreign` int(10) unsigned NOT NULL DEFAULT 0,
  `is_dummy_record` smallint(5) unsigned NOT NULL DEFAULT 0,
  `tablenames` varchar(30) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(10) unsigned NOT NULL DEFAULT 0,
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`),
  KEY `dummy` (`is_dummy_record`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_seminars_seminars_checkboxes_mm`
--

LOCK TABLES `tx_seminars_seminars_checkboxes_mm` WRITE;
/*!40000 ALTER TABLE `tx_seminars_seminars_checkboxes_mm` DISABLE KEYS */;
INSERT INTO `tx_seminars_seminars_checkboxes_mm` VALUES (5,1,0,'',1),(5,2,0,'',2);
/*!40000 ALTER TABLE `tx_seminars_seminars_checkboxes_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_seminars_seminars_feusers_mm`
--

DROP TABLE IF EXISTS `tx_seminars_seminars_feusers_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_seminars_seminars_feusers_mm` (
  `uid_local` int(10) unsigned NOT NULL DEFAULT 0,
  `uid_foreign` int(10) unsigned NOT NULL DEFAULT 0,
  `is_dummy_record` smallint(5) unsigned NOT NULL DEFAULT 0,
  `tablenames` varchar(30) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(10) unsigned NOT NULL DEFAULT 0,
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`),
  KEY `dummy` (`is_dummy_record`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_seminars_seminars_feusers_mm`
--

LOCK TABLES `tx_seminars_seminars_feusers_mm` WRITE;
/*!40000 ALTER TABLE `tx_seminars_seminars_feusers_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_seminars_seminars_feusers_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_seminars_seminars_foods_mm`
--

DROP TABLE IF EXISTS `tx_seminars_seminars_foods_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_seminars_seminars_foods_mm` (
  `uid_local` int(10) unsigned NOT NULL DEFAULT 0,
  `uid_foreign` int(10) unsigned NOT NULL DEFAULT 0,
  `is_dummy_record` smallint(5) unsigned NOT NULL DEFAULT 0,
  `tablenames` varchar(30) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(10) unsigned NOT NULL DEFAULT 0,
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`),
  KEY `dummy` (`is_dummy_record`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_seminars_seminars_foods_mm`
--

LOCK TABLES `tx_seminars_seminars_foods_mm` WRITE;
/*!40000 ALTER TABLE `tx_seminars_seminars_foods_mm` DISABLE KEYS */;
INSERT INTO `tx_seminars_seminars_foods_mm` VALUES (3,4,0,'',1),(3,5,0,'',2),(3,2,0,'',3),(3,6,0,'',4),(3,1,0,'',5),(3,3,0,'',6);
/*!40000 ALTER TABLE `tx_seminars_seminars_foods_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_seminars_seminars_lodgings_mm`
--

DROP TABLE IF EXISTS `tx_seminars_seminars_lodgings_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_seminars_seminars_lodgings_mm` (
  `uid_local` int(10) unsigned NOT NULL DEFAULT 0,
  `uid_foreign` int(10) unsigned NOT NULL DEFAULT 0,
  `is_dummy_record` smallint(5) unsigned NOT NULL DEFAULT 0,
  `tablenames` varchar(30) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(10) unsigned NOT NULL DEFAULT 0,
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`),
  KEY `dummy` (`is_dummy_record`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_seminars_seminars_lodgings_mm`
--

LOCK TABLES `tx_seminars_seminars_lodgings_mm` WRITE;
/*!40000 ALTER TABLE `tx_seminars_seminars_lodgings_mm` DISABLE KEYS */;
INSERT INTO `tx_seminars_seminars_lodgings_mm` VALUES (3,2,0,'',1),(3,1,0,'',2),(3,3,0,'',3);
/*!40000 ALTER TABLE `tx_seminars_seminars_lodgings_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_seminars_seminars_organizers_mm`
--

DROP TABLE IF EXISTS `tx_seminars_seminars_organizers_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_seminars_seminars_organizers_mm` (
  `uid_local` int(10) unsigned NOT NULL DEFAULT 0,
  `uid_foreign` int(10) unsigned NOT NULL DEFAULT 0,
  `is_dummy_record` smallint(5) unsigned NOT NULL DEFAULT 0,
  `tablenames` varchar(30) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(10) unsigned NOT NULL DEFAULT 0,
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`),
  KEY `dummy` (`is_dummy_record`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_seminars_seminars_organizers_mm`
--

LOCK TABLES `tx_seminars_seminars_organizers_mm` WRITE;
/*!40000 ALTER TABLE `tx_seminars_seminars_organizers_mm` DISABLE KEYS */;
INSERT INTO `tx_seminars_seminars_organizers_mm` VALUES (3,2,0,'',1),(4,1,0,'',1),(5,3,0,'',1),(6,1,0,'',1),(7,1,0,'',1),(8,3,0,'',1);
/*!40000 ALTER TABLE `tx_seminars_seminars_organizers_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_seminars_seminars_organizing_partners_mm`
--

DROP TABLE IF EXISTS `tx_seminars_seminars_organizing_partners_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_seminars_seminars_organizing_partners_mm` (
  `uid_local` int(10) unsigned NOT NULL DEFAULT 0,
  `uid_foreign` int(10) unsigned NOT NULL DEFAULT 0,
  `is_dummy_record` smallint(5) unsigned NOT NULL DEFAULT 0,
  `tablenames` varchar(30) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(10) unsigned NOT NULL DEFAULT 0,
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`),
  KEY `dummy` (`is_dummy_record`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_seminars_seminars_organizing_partners_mm`
--

LOCK TABLES `tx_seminars_seminars_organizing_partners_mm` WRITE;
/*!40000 ALTER TABLE `tx_seminars_seminars_organizing_partners_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_seminars_seminars_organizing_partners_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_seminars_seminars_payment_methods_mm`
--

DROP TABLE IF EXISTS `tx_seminars_seminars_payment_methods_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_seminars_seminars_payment_methods_mm` (
  `uid_local` int(10) unsigned NOT NULL DEFAULT 0,
  `uid_foreign` int(10) unsigned NOT NULL DEFAULT 0,
  `is_dummy_record` smallint(5) unsigned NOT NULL DEFAULT 0,
  `tablenames` varchar(30) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(10) unsigned NOT NULL DEFAULT 0,
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`),
  KEY `dummy` (`is_dummy_record`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_seminars_seminars_payment_methods_mm`
--

LOCK TABLES `tx_seminars_seminars_payment_methods_mm` WRITE;
/*!40000 ALTER TABLE `tx_seminars_seminars_payment_methods_mm` DISABLE KEYS */;
INSERT INTO `tx_seminars_seminars_payment_methods_mm` VALUES (1,1,0,'',1),(3,2,0,'',1);
/*!40000 ALTER TABLE `tx_seminars_seminars_payment_methods_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_seminars_seminars_place_mm`
--

DROP TABLE IF EXISTS `tx_seminars_seminars_place_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_seminars_seminars_place_mm` (
  `uid_local` int(10) unsigned NOT NULL DEFAULT 0,
  `uid_foreign` int(10) unsigned NOT NULL DEFAULT 0,
  `is_dummy_record` smallint(5) unsigned NOT NULL DEFAULT 0,
  `tablenames` varchar(30) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(10) unsigned NOT NULL DEFAULT 0,
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`),
  KEY `dummy` (`is_dummy_record`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_seminars_seminars_place_mm`
--

LOCK TABLES `tx_seminars_seminars_place_mm` WRITE;
/*!40000 ALTER TABLE `tx_seminars_seminars_place_mm` DISABLE KEYS */;
INSERT INTO `tx_seminars_seminars_place_mm` VALUES (3,1,0,'',1),(7,1,0,'',1),(4,4,0,'',0);
/*!40000 ALTER TABLE `tx_seminars_seminars_place_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_seminars_seminars_requirements_mm`
--

DROP TABLE IF EXISTS `tx_seminars_seminars_requirements_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_seminars_seminars_requirements_mm` (
  `uid_local` int(10) unsigned NOT NULL DEFAULT 0,
  `uid_foreign` int(10) unsigned NOT NULL DEFAULT 0,
  `is_dummy_record` smallint(5) unsigned NOT NULL DEFAULT 0,
  `tablenames` varchar(30) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting_foreign` int(10) unsigned NOT NULL DEFAULT 0,
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`),
  KEY `dummy` (`is_dummy_record`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_seminars_seminars_requirements_mm`
--

LOCK TABLES `tx_seminars_seminars_requirements_mm` WRITE;
/*!40000 ALTER TABLE `tx_seminars_seminars_requirements_mm` DISABLE KEYS */;
INSERT INTO `tx_seminars_seminars_requirements_mm` VALUES (1,2,0,'',1,1);
/*!40000 ALTER TABLE `tx_seminars_seminars_requirements_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_seminars_seminars_speakers_mm`
--

DROP TABLE IF EXISTS `tx_seminars_seminars_speakers_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_seminars_seminars_speakers_mm` (
  `uid_local` int(10) unsigned NOT NULL DEFAULT 0,
  `uid_foreign` int(10) unsigned NOT NULL DEFAULT 0,
  `is_dummy_record` smallint(5) unsigned NOT NULL DEFAULT 0,
  `tablenames` varchar(30) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(10) unsigned NOT NULL DEFAULT 0,
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`),
  KEY `dummy` (`is_dummy_record`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_seminars_seminars_speakers_mm`
--

LOCK TABLES `tx_seminars_seminars_speakers_mm` WRITE;
/*!40000 ALTER TABLE `tx_seminars_seminars_speakers_mm` DISABLE KEYS */;
INSERT INTO `tx_seminars_seminars_speakers_mm` VALUES (3,1,0,'',1);
/*!40000 ALTER TABLE `tx_seminars_seminars_speakers_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_seminars_seminars_speakers_mm_leaders`
--

DROP TABLE IF EXISTS `tx_seminars_seminars_speakers_mm_leaders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_seminars_seminars_speakers_mm_leaders` (
  `uid_local` int(10) unsigned NOT NULL DEFAULT 0,
  `uid_foreign` int(10) unsigned NOT NULL DEFAULT 0,
  `is_dummy_record` smallint(5) unsigned NOT NULL DEFAULT 0,
  `tablenames` varchar(30) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(10) unsigned NOT NULL DEFAULT 0,
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`),
  KEY `dummy` (`is_dummy_record`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_seminars_seminars_speakers_mm_leaders`
--

LOCK TABLES `tx_seminars_seminars_speakers_mm_leaders` WRITE;
/*!40000 ALTER TABLE `tx_seminars_seminars_speakers_mm_leaders` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_seminars_seminars_speakers_mm_leaders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_seminars_seminars_speakers_mm_partners`
--

DROP TABLE IF EXISTS `tx_seminars_seminars_speakers_mm_partners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_seminars_seminars_speakers_mm_partners` (
  `uid_local` int(10) unsigned NOT NULL DEFAULT 0,
  `uid_foreign` int(10) unsigned NOT NULL DEFAULT 0,
  `is_dummy_record` smallint(5) unsigned NOT NULL DEFAULT 0,
  `tablenames` varchar(30) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(10) unsigned NOT NULL DEFAULT 0,
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`),
  KEY `dummy` (`is_dummy_record`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_seminars_seminars_speakers_mm_partners`
--

LOCK TABLES `tx_seminars_seminars_speakers_mm_partners` WRITE;
/*!40000 ALTER TABLE `tx_seminars_seminars_speakers_mm_partners` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_seminars_seminars_speakers_mm_partners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_seminars_seminars_speakers_mm_tutors`
--

DROP TABLE IF EXISTS `tx_seminars_seminars_speakers_mm_tutors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_seminars_seminars_speakers_mm_tutors` (
  `uid_local` int(10) unsigned NOT NULL DEFAULT 0,
  `uid_foreign` int(10) unsigned NOT NULL DEFAULT 0,
  `is_dummy_record` smallint(5) unsigned NOT NULL DEFAULT 0,
  `tablenames` varchar(30) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(10) unsigned NOT NULL DEFAULT 0,
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`),
  KEY `dummy` (`is_dummy_record`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_seminars_seminars_speakers_mm_tutors`
--

LOCK TABLES `tx_seminars_seminars_speakers_mm_tutors` WRITE;
/*!40000 ALTER TABLE `tx_seminars_seminars_speakers_mm_tutors` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_seminars_seminars_speakers_mm_tutors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_seminars_seminars_target_groups_mm`
--

DROP TABLE IF EXISTS `tx_seminars_seminars_target_groups_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_seminars_seminars_target_groups_mm` (
  `uid_local` int(10) unsigned NOT NULL DEFAULT 0,
  `uid_foreign` int(10) unsigned NOT NULL DEFAULT 0,
  `is_dummy_record` smallint(5) unsigned NOT NULL DEFAULT 0,
  `tablenames` varchar(30) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(10) unsigned NOT NULL DEFAULT 0,
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`),
  KEY `dummy` (`is_dummy_record`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_seminars_seminars_target_groups_mm`
--

LOCK TABLES `tx_seminars_seminars_target_groups_mm` WRITE;
/*!40000 ALTER TABLE `tx_seminars_seminars_target_groups_mm` DISABLE KEYS */;
INSERT INTO `tx_seminars_seminars_target_groups_mm` VALUES (1,8,0,'',1),(2,4,0,'',1),(3,6,0,'',1),(3,5,0,'',2);
/*!40000 ALTER TABLE `tx_seminars_seminars_target_groups_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_seminars_sites`
--

DROP TABLE IF EXISTS `tx_seminars_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_seminars_sites` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `is_dummy_record` smallint(5) unsigned NOT NULL DEFAULT 0,
  `owner` int(10) unsigned NOT NULL DEFAULT 0,
  `title` tinytext COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `zip` tinytext COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `city` tinytext COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `country` varchar(2) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `homepage` tinytext COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `directions` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `dummy` (`is_dummy_record`),
  KEY `parent` (`pid`,`deleted`),
  FULLTEXT KEY `index_searchfields` (`title`,`city`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_seminars_sites`
--

LOCK TABLES `tx_seminars_sites` WRITE;
/*!40000 ALTER TABLE `tx_seminars_sites` DISABLE KEYS */;
INSERT INTO `tx_seminars_sites` VALUES (1,15,1628001887,1628001690,1,0,0,0,'DJH Jugendherberge Bonn','Haager Weg 42\r\n53127 Bonn','53127','Bonn','DE','https://www.jugendherberge.de/jugendherbergen/bonn-438/portraet/','<h1>So erreichen Sie die Jugendherberge Bonn mit öffentlichen Verkehrsmitteln</h1>\r\n<h2>Ab Flughafen Köln/Bonn</h2>\r\n<p>Mit dem Airportbus (Linie SB60) erreichen Sie in 30 min. den Bonner Hauptbahnhof.</p>\r\n<h2>Ab Bonn Hbf</h2>\r\n<p>Direkt gegenüber vom Hauptbahnhof befindet sich der zentrale Busbahnhof. Vom Bussteig A1 nehmen Sie die Buslinie 600 Richtung Ippendorf-Altenheim bis zur Haltestelle \"Jugendherberge\".</p>\r\n<h1>So erreichen Sie die Jugendherberge Bonn mit dem Bus oder Pkw</h1>\r\n<h2>Aus dem Norden, Süden und Osten kommend</h2>\r\n<p>A3 bis Autobahnkreuz Bonn‐Siegburg, dann auf die A 560 bis Autobahndreieck Sankt Augustin, weiter auf der A 565 Richtung Bonn / Koblenz bis Ausfahrt Bonn-Hardtberg/Röttgen.</p>\r\n<h2>Aus Köln kommend</h2>\r\n<p>Am Kölner Ring auf die A 555 bis Autobahnkreuz Bonn-Nord, dort auf die A 565 Richtung Bonn / Koblenz wechseln, weiter bis Ausfahrt Bonn-Hardtberg/Röttgen.</p>\r\n<h2>Aus dem Westen kommend</h2>\r\n<p>A 61 bis Autobahnkreuz Meckenheim, dort auf die A 565 Richtung Bonn wechseln, weiter bis Ausfahrt Bonn-Hardtberg/Röttgen.</p>\r\n<h2>Ab Ausfahrt Bonn-Hardtberg/Röttgen</h2>\r\n<p>Nach der Ausfahrt Bonn‐Hardtberg/Röttgen links abbiegen und bergab bis zur Verkehrsampel fahren, dort rechts abbiegen (Provinzialstraße), dem Straßenverlauf folgen (Reichsstraße) Richtung Venusberg/Uni-Klinik bis vor den Stadtteil Röttgen. Dort links in die Röttgener Straße abbiegen (Achtung: scharfe S-Kurve, Tempo 30). Dem Straßenverlauf folgen bis zur zweiten Straßeneinmündung auf der rechten Seite, dort rechts abbiegen und im spitzen Winkel sofort wieder rechts in den Gudenauer Weg abbiegen (Tempo 30 beachten!). Der Straße folgen bis zur Spreestraße, an der Kreuzung nach links versetzt in die Spreestraße einbiegen, am Ende der Spreestraße nach links in den Haager Web abbiegen. Nach ca. 800 m erreichen Sie die Jugendherberge.</p>\r\n<h1>Anreise mit dem Fahrrad</h1>\r\n<p>Zur Aufbewahrung Ihrer Fahrräder steht Ihnen im Haus ein gesicherter Abstellplatz zur Verfügung.</p>',''),(2,15,1628001898,1628001870,1,0,0,0,'DJH Jugendherberge Köln-Deutz','Siegesstraße 5\r\n50679 Köln','50679','Köln','DE','','',''),(3,15,1628001937,1628001937,1,0,0,0,'DJH Jugendherberge Köln-Riehl','An der Schanz 14\r\n50735 Köln','50735','Köln','DE','','',''),(4,15,1628001964,1628001964,1,0,0,0,'Station - Hostel für Backpacker','Marzellenstraße 44-56\r\n50668 Köln','50668','50668 Köln','DE','','',''),(5,15,1628001991,1628001991,1,0,0,0,'DJH Jugendherberge Köln-Pathpoint','Allerheiligenstraße 15','50668','Köln','DE','','',''),(6,15,1628002041,1628002041,1,0,0,0,'CJD Bonn Castell','Graurheindorfer Str. 149\r\n53117 Bonn','53117','Bonn','DE','','','');
/*!40000 ALTER TABLE `tx_seminars_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_seminars_skills`
--

DROP TABLE IF EXISTS `tx_seminars_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_seminars_skills` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `is_dummy_record` smallint(5) unsigned NOT NULL DEFAULT 0,
  `title` tinytext COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `dummy` (`is_dummy_record`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_seminars_skills`
--

LOCK TABLES `tx_seminars_skills` WRITE;
/*!40000 ALTER TABLE `tx_seminars_skills` DISABLE KEYS */;
INSERT INTO `tx_seminars_skills` VALUES (1,15,1628001238,1628001238,1,0,0,'TCCD'),(2,15,1628001244,1628001244,1,0,0,'TCCE'),(3,15,1628001249,1628001249,1,0,0,'TCCC'),(4,15,1628001255,1628001255,1,0,0,'TCCI'),(5,15,1628001262,1628001262,1,0,0,'Moderation'),(6,15,1628001274,1628001274,1,0,0,'Trainings geben');
/*!40000 ALTER TABLE `tx_seminars_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_seminars_speakers`
--

DROP TABLE IF EXISTS `tx_seminars_speakers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_seminars_speakers` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `is_dummy_record` smallint(5) unsigned NOT NULL DEFAULT 0,
  `owner` int(10) unsigned NOT NULL DEFAULT 0,
  `title` tinytext COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `organization` tinytext COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `homepage` tinytext COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `image` int(10) unsigned NOT NULL DEFAULT 0,
  `skills` int(10) unsigned NOT NULL DEFAULT 0,
  `notes` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `phone_work` tinytext COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `phone_home` tinytext COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `phone_mobile` tinytext COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `email` tinytext COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `gender` smallint(5) unsigned NOT NULL DEFAULT 0,
  `cancelation_period` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `dummy` (`is_dummy_record`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  FULLTEXT KEY `index_searchfields` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_seminars_speakers`
--

LOCK TABLES `tx_seminars_speakers` WRITE;
/*!40000 ALTER TABLE `tx_seminars_speakers` DISABLE KEYS */;
INSERT INTO `tx_seminars_speakers` VALUES (1,15,1628001482,1628001482,1,0,0,0,0,'Joe Speaker','','','<p class=\"paragraph\">Powder pie cake pudding ice cream bonbon. Apple pie chocolate lemon drops marshmallow apple pie toffee dragée lemon drops. Bear claw brownie brownie pudding cake gummies cake chupa chups. Danish dessert ice cream liquorice macaroon icing croissant croissant cake. Halvah wafer brownie shortbread oat cake chocolate cake. Cheesecake shortbread chupa chups croissant brownie wafer. Shortbread danish gummi bears sugar plum sesame snaps toffee marshmallow bonbon. Cotton candy pie croissant sesame snaps macaroon lemon drops cupcake cotton candy.</p>',0,0,'','','','','','',1,0),(2,15,1628001493,1628001493,1,0,0,0,0,'Max Speaker','','','<p>Sweet roll powder jujubes marshmallow gummies chocolate cake tiramisu. Cookie icing fruitcake icing sugar plum toffee cheesecake cookie cotton candy. Apple pie caramels apple pie tootsie roll biscuit brownie tootsie roll dragée. Brownie donut brownie candy candy wafer. Sesame snaps tootsie roll pie candy cotton candy pie jelly-o. Cake sesame snaps croissant bonbon liquorice. Pudding cake bonbon jelly-o marzipan. Lemon drops cupcake candy canes chupa chups chocolate cake macaroon muffin jujubes. Marshmallow jujubes caramels jujubes cake lollipop. Gingerbread candy powder dessert shortbread jelly jelly beans.</p>',0,0,'','','','','','',0,0),(3,15,1628001518,1628001518,1,0,0,0,0,'Carry Speaker','','','<p>Sweet sweet jelly-o carrot cake pastry caramels wafer dragée. Lemon drops powder biscuit carrot cake caramels marshmallow. Chupa chups gummies cupcake liquorice sweet roll. Tiramisu chocolate bar icing chocolate toffee pie powder. Gummi bears gummies sweet roll donut cookie sweet roll. Shortbread gummi bears cotton candy bonbon halvah. Bear claw gummies sesame snaps fruitcake bear claw dessert danish liquorice fruitcake. Lollipop cheesecake donut cheesecake apple pie. Shortbread jelly cake gummi bears sesame snaps. Wafer caramels cotton candy marshmallow cookie sweet roll.</p>',0,0,'','','','','','',2,0),(4,15,1628001555,1628001555,1,0,0,0,0,'Mel Speaker','','','<p>Cotton candy marzipan powder cookie apple pie marshmallow dragée sweet roll apple pie. Powder sweet roll carrot cake apple pie powder sweet roll. Cupcake gummies powder candy dessert sugar plum sweet roll. Jelly beans cheesecake wafer apple pie dragée halvah ice cream wafer. Sweet roll gummi bears croissant cupcake jelly-o shortbread. Candy bonbon pudding bonbon bonbon toffee toffee. Shortbread gummi bears pudding cake tiramisu. Gummies muffin bear claw oat cake lemon drops biscuit. Cupcake carrot cake cake donut cotton candy oat cake toffee biscuit.</p>',0,0,'','','','','','',2,0);
/*!40000 ALTER TABLE `tx_seminars_speakers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_seminars_speakers_skills_mm`
--

DROP TABLE IF EXISTS `tx_seminars_speakers_skills_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_seminars_speakers_skills_mm` (
  `uid_local` int(10) unsigned NOT NULL DEFAULT 0,
  `uid_foreign` int(10) unsigned NOT NULL DEFAULT 0,
  `is_dummy_record` smallint(5) unsigned NOT NULL DEFAULT 0,
  `tablenames` varchar(30) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(10) unsigned NOT NULL DEFAULT 0,
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`),
  KEY `dummy` (`is_dummy_record`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_seminars_speakers_skills_mm`
--

LOCK TABLES `tx_seminars_speakers_skills_mm` WRITE;
/*!40000 ALTER TABLE `tx_seminars_speakers_skills_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_seminars_speakers_skills_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_seminars_target_groups`
--

DROP TABLE IF EXISTS `tx_seminars_target_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_seminars_target_groups` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `is_dummy_record` smallint(5) unsigned NOT NULL DEFAULT 0,
  `owner` int(10) unsigned NOT NULL DEFAULT 0,
  `title` tinytext COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `minimum_age` smallint(5) unsigned NOT NULL DEFAULT 0,
  `maximum_age` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `dummy` (`is_dummy_record`),
  KEY `parent` (`pid`,`deleted`),
  FULLTEXT KEY `index_searchfields` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_seminars_target_groups`
--

LOCK TABLES `tx_seminars_target_groups` WRITE;
/*!40000 ALTER TABLE `tx_seminars_target_groups` DISABLE KEYS */;
INSERT INTO `tx_seminars_target_groups` VALUES (1,15,1628001095,1628001095,1,0,0,0,'Einsteiger:innen',0,0),(2,15,1628001102,1628001102,1,0,0,0,'Fortgeschrittene',0,0),(3,15,1628001109,1628001109,1,0,0,0,'Trainer:innen',0,0),(4,15,1628001121,1628001121,1,0,0,0,'TYPO3-Integrator:innen',0,0),(5,15,1628001133,1628001133,1,0,0,0,'Erwachsene',18,0),(6,15,1628001143,1628001143,1,0,0,0,'Jugendliche',12,17),(7,15,1628001151,1628001151,1,0,0,0,'Kinder',0,11),(8,15,1628001165,1628001165,1,0,0,0,'TYPO3-Entwickler:innen',0,0);
/*!40000 ALTER TABLE `tx_seminars_target_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_seminars_timeslots`
--

DROP TABLE IF EXISTS `tx_seminars_timeslots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_seminars_timeslots` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `is_dummy_record` smallint(5) unsigned NOT NULL DEFAULT 0,
  `seminar` int(10) unsigned NOT NULL DEFAULT 0,
  `begin_date` int(10) unsigned NOT NULL DEFAULT 0,
  `end_date` int(10) unsigned NOT NULL DEFAULT 0,
  `entry_date` int(10) unsigned NOT NULL DEFAULT 0,
  `speakers` int(10) unsigned NOT NULL DEFAULT 0,
  `place` int(10) unsigned NOT NULL DEFAULT 0,
  `room` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `dummy` (`is_dummy_record`),
  KEY `seminar` (`seminar`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_seminars_timeslots`
--

LOCK TABLES `tx_seminars_timeslots` WRITE;
/*!40000 ALTER TABLE `tx_seminars_timeslots` DISABLE KEYS */;
INSERT INTO `tx_seminars_timeslots` VALUES (1,14,1654092597,1628002652,1,0,0,4,1964505600,1964534400,0,1,4,'Raum 1'),(2,14,1654092597,1628002652,1,0,0,4,1964592000,1964606400,0,2,4,'Raum 2');
/*!40000 ALTER TABLE `tx_seminars_timeslots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_seminars_timeslots_speakers_mm`
--

DROP TABLE IF EXISTS `tx_seminars_timeslots_speakers_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_seminars_timeslots_speakers_mm` (
  `uid_local` int(10) unsigned NOT NULL DEFAULT 0,
  `uid_foreign` int(10) unsigned NOT NULL DEFAULT 0,
  `is_dummy_record` smallint(5) unsigned NOT NULL DEFAULT 0,
  `tablenames` varchar(30) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(10) unsigned NOT NULL DEFAULT 0,
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`),
  KEY `dummy` (`is_dummy_record`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_seminars_timeslots_speakers_mm`
--

LOCK TABLES `tx_seminars_timeslots_speakers_mm` WRITE;
/*!40000 ALTER TABLE `tx_seminars_timeslots_speakers_mm` DISABLE KEYS */;
INSERT INTO `tx_seminars_timeslots_speakers_mm` VALUES (1,1,0,'',1),(2,2,0,'',1),(2,4,0,'',2);
/*!40000 ALTER TABLE `tx_seminars_timeslots_speakers_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_seminars_usergroups_categories_mm`
--

DROP TABLE IF EXISTS `tx_seminars_usergroups_categories_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_seminars_usergroups_categories_mm` (
  `uid_local` int(10) unsigned NOT NULL DEFAULT 0,
  `uid_foreign` int(10) unsigned NOT NULL DEFAULT 0,
  `is_dummy_record` smallint(5) unsigned NOT NULL DEFAULT 0,
  `tablenames` varchar(30) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(10) unsigned NOT NULL DEFAULT 0,
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`),
  KEY `dummy` (`is_dummy_record`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_seminars_usergroups_categories_mm`
--

LOCK TABLES `tx_seminars_usergroups_categories_mm` WRITE;
/*!40000 ALTER TABLE `tx_seminars_usergroups_categories_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_seminars_usergroups_categories_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_tea_domain_model_product_tea`
--

DROP TABLE IF EXISTS `tx_tea_domain_model_product_tea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_tea_domain_model_product_tea` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(2000) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `image` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_tea_domain_model_product_tea`
--

LOCK TABLES `tx_tea_domain_model_product_tea` WRITE;
/*!40000 ALTER TABLE `tx_tea_domain_model_product_tea` DISABLE KEYS */;
INSERT INTO `tx_tea_domain_model_product_tea` VALUES (1,3,1627916201,1627916201,1,0,'Earl Grey','<p>Fruchtig-duftend.</p>',0),(2,3,1627916222,1627916222,1,0,'Darjeeling','<p>Frisch und zart.</p>',0);
/*!40000 ALTER TABLE `tx_tea_domain_model_product_tea` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-02 12:53:16
