CREATE DATABASE  IF NOT EXISTS `mydbr` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mydbr`;
-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydbr
-- ------------------------------------------------------
-- Server version	5.6.25

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
-- Table structure for table `mydbr_authentication`
--

DROP TABLE IF EXISTS `mydbr_authentication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mydbr_authentication` (
  `module` varchar(20) NOT NULL,
  `mask` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`module`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mydbr_authentication`
--

LOCK TABLES `mydbr_authentication` WRITE;
/*!40000 ALTER TABLE `mydbr_authentication` DISABLE KEYS */;
INSERT INTO `mydbr_authentication` VALUES ('custom',16,'Custom'),('db',1,'Database login'),('ext',4,'Single Sign-On'),('ldap',8,'LDAP'),('mydbr',2,'myDBR user');
/*!40000 ALTER TABLE `mydbr_authentication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mydbr_favourite_reports`
--

DROP TABLE IF EXISTS `mydbr_favourite_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mydbr_favourite_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(128) DEFAULT NULL,
  `authentication` int(11) NOT NULL,
  `report_id` int(11) NOT NULL,
  `url` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `user` (`user`,`authentication`) USING BTREE,
  KEY `report_id` (`report_id`),
  CONSTRAINT `mydbr_favourite_reports_ibfk_1` FOREIGN KEY (`report_id`) REFERENCES `mydbr_reports` (`report_id`) ON DELETE CASCADE,
  CONSTRAINT `mydbr_favourite_reports_ibfk_2` FOREIGN KEY (`user`, `authentication`) REFERENCES `mydbr_userlogin` (`user`, `authentication`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mydbr_favourite_reports`
--

LOCK TABLES `mydbr_favourite_reports` WRITE;
/*!40000 ALTER TABLE `mydbr_favourite_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `mydbr_favourite_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mydbr_folders`
--

DROP TABLE IF EXISTS `mydbr_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mydbr_folders` (
  `folder_id` int(11) NOT NULL AUTO_INCREMENT,
  `mother_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `invisible` tinyint(4) DEFAULT NULL,
  `reportgroup` int(11) NOT NULL DEFAULT '1',
  `explanation` varchar(4096) DEFAULT NULL,
  PRIMARY KEY (`folder_id`) USING BTREE,
  KEY `reportgroup` (`reportgroup`),
  CONSTRAINT `mydbr_folders_ibfk_1` FOREIGN KEY (`reportgroup`) REFERENCES `mydbr_reportgroups` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mydbr_folders`
--

LOCK TABLES `mydbr_folders` WRITE;
/*!40000 ALTER TABLE `mydbr_folders` DISABLE KEYS */;
INSERT INTO `mydbr_folders` VALUES (1,NULL,'#{MYDBR_AMAIN_HOME}',2,1,NULL),(2,1,'Admin reports',2,1,NULL),(3,2,'Drill reports',2,1,NULL),(4,1,'Internal Reports',2,1,NULL),(5,1,'7. Groups',2,1,NULL),(6,1,'8. Relations',2,1,NULL);
/*!40000 ALTER TABLE `mydbr_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mydbr_folders_priv`
--

DROP TABLE IF EXISTS `mydbr_folders_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mydbr_folders_priv` (
  `folder_id` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `group_id` int(11) NOT NULL,
  `authentication` int(11) NOT NULL,
  PRIMARY KEY (`folder_id`,`username`,`group_id`,`authentication`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mydbr_folders_priv`
--

LOCK TABLES `mydbr_folders_priv` WRITE;
/*!40000 ALTER TABLE `mydbr_folders_priv` DISABLE KEYS */;
INSERT INTO `mydbr_folders_priv` VALUES (1,'PUBLIC',0,0);
/*!40000 ALTER TABLE `mydbr_folders_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mydbr_groups`
--

DROP TABLE IF EXISTS `mydbr_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mydbr_groups` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`group_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mydbr_groups`
--

LOCK TABLES `mydbr_groups` WRITE;
/*!40000 ALTER TABLE `mydbr_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `mydbr_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mydbr_groupsusers`
--

DROP TABLE IF EXISTS `mydbr_groupsusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mydbr_groupsusers` (
  `group_id` int(11) NOT NULL,
  `user` varchar(128) NOT NULL DEFAULT '',
  `authentication` int(11) NOT NULL,
  PRIMARY KEY (`group_id`,`user`,`authentication`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mydbr_groupsusers`
--

LOCK TABLES `mydbr_groupsusers` WRITE;
/*!40000 ALTER TABLE `mydbr_groupsusers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mydbr_groupsusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mydbr_key_column_usage`
--

DROP TABLE IF EXISTS `mydbr_key_column_usage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mydbr_key_column_usage` (
  `table_schema` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `column_name` varchar(64) NOT NULL,
  `referenced_table_schema` varchar(64) DEFAULT NULL,
  `referenced_table_name` varchar(64) DEFAULT NULL,
  `referenced_column_name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`table_schema`,`table_name`,`column_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mydbr_key_column_usage`
--

LOCK TABLES `mydbr_key_column_usage` WRITE;
/*!40000 ALTER TABLE `mydbr_key_column_usage` DISABLE KEYS */;
/*!40000 ALTER TABLE `mydbr_key_column_usage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mydbr_languages`
--

DROP TABLE IF EXISTS `mydbr_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mydbr_languages` (
  `lang_locale` char(5) NOT NULL,
  `language` varchar(30) DEFAULT NULL,
  `date_format` varchar(10) DEFAULT NULL,
  `time_format` varchar(10) DEFAULT NULL,
  `thousand_separator` varchar(2) DEFAULT NULL,
  `decimal_separator` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`lang_locale`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mydbr_languages`
--

LOCK TABLES `mydbr_languages` WRITE;
/*!40000 ALTER TABLE `mydbr_languages` DISABLE KEYS */;
INSERT INTO `mydbr_languages` VALUES ('ar_SA','Arabic','d/m/Y','H:i:s',' ',','),('bg_BG','Bulgarian','d.m.Y','H:i:s',' ',','),('cs_CZ','Czech','d.m.Y','H:i:s',' ',','),('da_DK','Danish','d/m/Y','H.i.s','.',','),('de_DE','German','d.m.Y','H:i:s','.',','),('el_GR','Greek','d.m.Y','H:i:s',' ',','),('en_US','English','m/d/Y','h:i:s a',',','.'),('es_ES','Spanish','d/m/Y','H:i:s',' ',','),('et_EE','Estonian','d.m.Y','H:i:s',' ',','),('fi_FI','Finnish','d.m.Y','H.i.s',' ',','),('fr_FR','French','d/m/Y','H:i:s',' ',','),('hr_HR','Croatian','d.m.Y','H:i:s',' ',','),('hu_HU','Hungarian','Y.m.d','H:i:s',' ',','),('is_IS','Icelandic','d.m.Y','H:i:s','.',','),('it_IT','Italian','d/m/Y','H.i.s','.',','),('ja_JP','Japanese','d/m/Y','H:i:s',',','.'),('ko_KR','Korean','Y.m.d','h:i:s a',',','.'),('lt_LT','Lithuanian','Y-m-d','H:i:s',' ',','),('lv_LV','Latvian','d.m.Y','H:i:s',' ',','),('nl_NL','Dutch','d-m-Y','H:i:s','.',','),('no_NO','Norwegian','d.m.Y','H:i:s',' ',','),('pl_PL','Polish','d.m.Y','H:i:s',' ',','),('pt_PT','Portuguese','d/m/Y','H.i.s','.',','),('ro_RO','Romanian','d.m.Y','H:i:s',' ',','),('ru_RU','Russian','d.m.Y','H:i:s',' ',','),('sk_SK','Slovak','d.m.Y','H:i:s',' ',','),('sl_SI','Slovenian','d.m.Y','H:i:s',' ',','),('sv_SE','Swedish','Y-m-d','H:i:s',' ',','),('tr_TR','Turkish','d.m.Y','H:i:s','.',','),('zh_CN','Chinese','Y-m-d','H:i:s',',','.');
/*!40000 ALTER TABLE `mydbr_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mydbr_licenses`
--

DROP TABLE IF EXISTS `mydbr_licenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mydbr_licenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `host` varchar(255) NOT NULL,
  `license_key` varchar(80) NOT NULL,
  `db` varchar(10) NOT NULL,
  `expiration` date NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mydbr_licenses`
--

LOCK TABLES `mydbr_licenses` WRITE;
/*!40000 ALTER TABLE `mydbr_licenses` DISABLE KEYS */;
INSERT INTO `mydbr_licenses` VALUES (1,'-','evaluation','-','localhost','e6dfbff758ab1f176b3f039218677e0c50f58f0e','mysql','2015-08-14','community','4.5.1'),(2,'Erez Maadani','erez.maadani@gmail.com','NA','localhost','c9c6d30997bfa32e4f980e5f36ba075d22d7e2dc','mysql','2015-09-14','community','4.5.1');
/*!40000 ALTER TABLE `mydbr_licenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mydbr_localization`
--

DROP TABLE IF EXISTS `mydbr_localization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mydbr_localization` (
  `lang_locale` char(5) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `translation` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`lang_locale`,`keyword`) USING BTREE,
  CONSTRAINT `mydbr_localization_ibfk_1` FOREIGN KEY (`lang_locale`) REFERENCES `mydbr_languages` (`lang_locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mydbr_localization`
--

LOCK TABLES `mydbr_localization` WRITE;
/*!40000 ALTER TABLE `mydbr_localization` DISABLE KEYS */;
/*!40000 ALTER TABLE `mydbr_localization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mydbr_log`
--

DROP TABLE IF EXISTS `mydbr_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mydbr_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(128) DEFAULT NULL,
  `log_time` datetime DEFAULT NULL,
  `log_ip` varchar(40) DEFAULT NULL,
  `log_title` varchar(30) DEFAULT NULL,
  `log_message` text,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mydbr_log`
--

LOCK TABLES `mydbr_log` WRITE;
/*!40000 ALTER TABLE `mydbr_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `mydbr_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mydbr_notifications`
--

DROP TABLE IF EXISTS `mydbr_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mydbr_notifications` (
  `id` int(11) NOT NULL,
  `notification` text,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mydbr_notifications`
--

LOCK TABLES `mydbr_notifications` WRITE;
/*!40000 ALTER TABLE `mydbr_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `mydbr_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mydbr_options`
--

DROP TABLE IF EXISTS `mydbr_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mydbr_options` (
  `user` varchar(128) NOT NULL DEFAULT '',
  `authentication` int(11) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL,
  `value` varchar(200) NOT NULL,
  PRIMARY KEY (`user`,`authentication`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mydbr_options`
--

LOCK TABLES `mydbr_options` WRITE;
/*!40000 ALTER TABLE `mydbr_options` DISABLE KEYS */;
INSERT INTO `mydbr_options` VALUES ('',0,'authentication','i:2;'),('',0,'avgprefix','s:3:\"avg\";'),('',0,'countprefix','s:1:\"#\";'),('',0,'dateformat','s:5:\"Y-m-d\";'),('',0,'datetimeformat','s:13:\"Y-m-d h:i:s a\";'),('',0,'dbrreportprefix','s:6:\"sp_DBR\";'),('',0,'decimal_separator','s:1:\".\";'),('',0,'def_password','s:0:\"\";'),('',0,'def_username','s:0:\"\";'),('',0,'image_preferred','b:0;'),('',0,'instaviz','b:1;'),('',0,'languages','s:47:\"en_US|de_DE|fi_FI|sv_SE|nl_NL|it_IT|es_ES|el_GR\";'),('',0,'maxprefix','s:3:\"max\";'),('',0,'minprefix','s:3:\"min\";'),('',0,'oem_application_name','s:0:\"\";'),('',0,'oem_footer','s:0:\"\";'),('',0,'oem_footer_disable','b:0;'),('',0,'oem_header_disable','b:0;'),('',0,'oem_info','s:0:\"\";'),('',0,'oem_licensee','s:0:\"\";'),('',0,'password_expiration','i:0;'),('',0,'password_length','i:0;'),('',0,'password_letter','b:0;'),('',0,'password_number','b:0;'),('',0,'password_reset_admin_change','b:0;'),('',0,'password_reset_email_username','i:0;'),('',0,'password_reset_enabled','b:0;'),('',0,'password_reset_mail_validity','i:15;'),('',0,'password_reset_show_login_fail','b:0;'),('',0,'password_special','b:0;'),('',0,'php_include_path','s:0:\"\";'),('',0,'proxy_server','s:0:\"\";'),('',0,'session_lifetime','i:1;'),('',0,'sso_server_url','s:0:\"\";'),('',0,'sso_token','s:0:\"\";'),('',0,'sumprefix','s:0:\"\";'),('',0,'theme','s:7:\"default\";'),('',0,'thousand_separator','s:1:\",\";'),('',0,'timeformat','s:7:\"h:i:s a\";');
/*!40000 ALTER TABLE `mydbr_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mydbr_param_queries`
--

DROP TABLE IF EXISTS `mydbr_param_queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mydbr_param_queries` (
  `name` varchar(30) NOT NULL,
  `query` varchar(4096) DEFAULT NULL,
  `coltype` tinyint(4) NOT NULL,
  `options` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mydbr_param_queries`
--

LOCK TABLES `mydbr_param_queries` WRITE;
/*!40000 ALTER TABLE `mydbr_param_queries` DISABLE KEYS */;
INSERT INTO `mydbr_param_queries` VALUES ('Actual Groups','concordancedb.get_group_list',0,'{}'),('actual relations','concordancedb.get_relation_list',0,'{}'),('groups','concordancedb.get_extended_group_list',0,'{\"find\":true}'),('MonthAgo','select  cast(date_add(now(), interval -1 month) as date)\r\n',3,NULL),('Now','select cast(now() as date)',3,NULL),('Rec','concordancedb.get_recipe_names',0,'{}'),('Relations','concordancedb.get_extended_relation_list',0,'{}'),('Sections','concordancedb.get_sections\r\n',0,'{}'),('Steps_5-10-20-100','select 5, 5\r\nunion\r\nselect 10, 10\r\nunion\r\nselect 20, 20\r\nunion\r\nselect 50, 50\r\nunion\r\nselect 100, 100\r\n\r\n',0,NULL),('words','concordancedb.get_word_list',0,'{\"find\":true}'),('Yes No','select 1, \'Yes\' \r\nunion \r\nselect 0, \'No\'',1,NULL);
/*!40000 ALTER TABLE `mydbr_param_queries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mydbr_params`
--

DROP TABLE IF EXISTS `mydbr_params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mydbr_params` (
  `proc_name` varchar(100) NOT NULL,
  `param` varchar(100) NOT NULL,
  `query_name` varchar(30) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `default_value` varchar(30) DEFAULT NULL,
  `optional` int(11) NOT NULL DEFAULT '0',
  `only_default` int(11) NOT NULL DEFAULT '0',
  `suffix` varchar(80) DEFAULT NULL,
  `options` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`proc_name`,`param`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mydbr_params`
--

LOCK TABLES `mydbr_params` WRITE;
/*!40000 ALTER TABLE `mydbr_params` DISABLE KEYS */;
INSERT INTO `mydbr_params` VALUES ('sp_DBR_add_new_group','vGroupName',NULL,'Group Name',NULL,0,0,NULL,NULL),('sp_DBR_add_new_relation','inDesc',NULL,'Description',NULL,0,0,NULL,NULL),('sp_DBR_add_new_relation','inName',NULL,'Name',NULL,0,0,NULL,NULL),('sp_DBR_add_words_to_relation','inFirstWordId','words','First Word',NULL,0,0,NULL,NULL),('sp_DBR_add_words_to_relation','inRelationId','actual relations','Relation',NULL,0,0,NULL,NULL),('sp_DBR_add_words_to_relation','inSecondWordId','words','Second Word',NULL,0,0,NULL,NULL),('sp_DBR_add_word_to_group','inGroupId','Actual Groups','Group',NULL,0,0,NULL,NULL),('sp_DBR_add_word_to_group','inWordId','words','Word',NULL,0,0,NULL,NULL),('sp_DBR_find_recipe','inAuther',NULL,'Auther Name',NULL,0,0,NULL,NULL),('sp_DBR_find_recipe','inCategoryId',NULL,'Category',NULL,0,0,NULL,NULL),('sp_DBR_find_recipe','inContainsText',NULL,'Contains text',NULL,0,0,NULL,NULL),('sp_DBR_find_recipe','inName',NULL,'Recipe Name',NULL,0,0,NULL,NULL),('sp_DBR_get_locations_for_group','inGroupId','groups','Group',NULL,0,0,NULL,NULL),('sp_DBR_get_words_for_group_id','inGroupId','groups','Group',NULL,0,0,NULL,NULL),('sp_DBR_get_word_by_location','inLineIndex',NULL,'Line #',NULL,0,0,NULL,NULL),('sp_DBR_get_word_by_location','inRecipeId','Rec',NULL,NULL,0,0,NULL,NULL),('sp_DBR_get_word_by_location','inSectionId','Sections','Section',NULL,0,0,NULL,NULL),('sp_DBR_get_word_by_location','inWordInLineIndex',NULL,'Word In Line #',NULL,0,0,NULL,NULL),('sp_DBR_StatisticsReport','inEndDate',NULL,'End date','Now',0,0,NULL,NULL),('sp_DBR_StatisticsReport','inStartDate',NULL,'Start date','MonthAgo',0,0,NULL,NULL),('sp_DBR_StatisticsSummary','inEndDate',NULL,'End date','Now',0,0,NULL,NULL),('sp_DBR_StatisticsSummary','inRowCount','Steps_5-10-20-100','Row count',NULL,0,0,NULL,NULL),('sp_DBR_StatisticsSummary','inStartDate',NULL,'Start date','MonthAgo',0,0,NULL,NULL),('sp_DBR_words_by_recipe','inRecipeId','Rec','Recipe',NULL,0,0,NULL,NULL);
/*!40000 ALTER TABLE `mydbr_params` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mydbr_password_reset`
--

DROP TABLE IF EXISTS `mydbr_password_reset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mydbr_password_reset` (
  `user` varchar(128) NOT NULL,
  `perishable_token` varchar(128) NOT NULL,
  `request_time` datetime NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mydbr_password_reset`
--

LOCK TABLES `mydbr_password_reset` WRITE;
/*!40000 ALTER TABLE `mydbr_password_reset` DISABLE KEYS */;
/*!40000 ALTER TABLE `mydbr_password_reset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mydbr_remote_servers`
--

DROP TABLE IF EXISTS `mydbr_remote_servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mydbr_remote_servers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server` varchar(128) NOT NULL,
  `url` varchar(255) NOT NULL,
  `hash` varchar(40) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mydbr_remote_servers`
--

LOCK TABLES `mydbr_remote_servers` WRITE;
/*!40000 ALTER TABLE `mydbr_remote_servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mydbr_remote_servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mydbr_report_extensions`
--

DROP TABLE IF EXISTS `mydbr_report_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mydbr_report_extensions` (
  `proc_name` varchar(100) NOT NULL,
  `extension` varchar(100) NOT NULL,
  PRIMARY KEY (`proc_name`,`extension`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mydbr_report_extensions`
--

LOCK TABLES `mydbr_report_extensions` WRITE;
/*!40000 ALTER TABLE `mydbr_report_extensions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mydbr_report_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mydbr_reportgroups`
--

DROP TABLE IF EXISTS `mydbr_reportgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mydbr_reportgroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `color` char(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mydbr_reportgroups`
--

LOCK TABLES `mydbr_reportgroups` WRITE;
/*!40000 ALTER TABLE `mydbr_reportgroups` DISABLE KEYS */;
INSERT INTO `mydbr_reportgroups` VALUES (-1,'#{MYDBR_AA_FAVOURITES}',0,'00AAFF'),(1,'#{MYDBR_AA_REPORTS}',100,'00C322');
/*!40000 ALTER TABLE `mydbr_reportgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mydbr_reports`
--

DROP TABLE IF EXISTS `mydbr_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mydbr_reports` (
  `report_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `proc_name` varchar(100) NOT NULL,
  `folder_id` int(11) NOT NULL,
  `explanation` varchar(4096) DEFAULT NULL,
  `reportgroup` int(11) NOT NULL DEFAULT '1',
  `sortorder` int(11) DEFAULT NULL,
  `runreport` varchar(50) DEFAULT NULL,
  `autoexecute` tinyint(4) DEFAULT NULL,
  `parameter_help` varchar(10000) DEFAULT NULL,
  `export` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`report_id`) USING BTREE,
  KEY `reportgroup` (`reportgroup`),
  CONSTRAINT `mydbr_reports_ibfk_1` FOREIGN KEY (`reportgroup`) REFERENCES `mydbr_reportgroups` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mydbr_reports`
--

LOCK TABLES `mydbr_reports` WRITE;
/*!40000 ALTER TABLE `mydbr_reports` DISABLE KEYS */;
INSERT INTO `mydbr_reports` VALUES (1,'Statistics summary','sp_DBR_StatisticsSummary',2,'',1,NULL,NULL,NULL,NULL,NULL),(2,'Statistics for a report','sp_DBR_StatisticsReport',3,'',1,NULL,NULL,NULL,NULL,NULL),(5,'1. Add New Group','sp_DBR_add_new_group',5,'',1,NULL,'Add Group',NULL,NULL,NULL),(7,'4. Show Words For Recipe','sp_DBR_words_by_recipe',1,'',1,NULL,NULL,NULL,NULL,NULL),(9,'2. Add Word to Group','sp_DBR_add_word_to_group',5,'',1,NULL,'Add Word To Group',NULL,NULL,NULL),(10,'4. Group Words','sp_DBR_get_words_for_group_id',5,'',1,NULL,NULL,NULL,NULL,NULL),(12,'3. Group Word Index','sp_DBR_get_locations_for_group',5,'',1,NULL,NULL,NULL,NULL,NULL),(13,'4.1. Show Word Context','sp_DBR_context_for_word',4,'',1,NULL,NULL,NULL,NULL,NULL),(14,'3. Find Recipe','sp_DBR_find_recipe',1,'',1,NULL,'Find Recipe',NULL,NULL,NULL),(15,'6. Find Words By Location','sp_DBR_get_word_by_location',1,'',1,NULL,NULL,NULL,NULL,NULL),(16,'5. Complete Word Index','sp_DBR_get_complete_word_index',1,'',1,NULL,NULL,NULL,NULL,NULL),(18,'1. Add New Relation ','sp_DBR_add_new_relation',6,'',1,NULL,NULL,NULL,NULL,NULL),(19,'2. Add Words to Relation','sp_DBR_add_words_to_relation',6,'',1,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `mydbr_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mydbr_reports_priv`
--

DROP TABLE IF EXISTS `mydbr_reports_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mydbr_reports_priv` (
  `report_id` int(11) NOT NULL,
  `username` varchar(128) NOT NULL DEFAULT '',
  `group_id` int(11) NOT NULL,
  `authentication` int(11) NOT NULL,
  PRIMARY KEY (`report_id`,`username`,`group_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mydbr_reports_priv`
--

LOCK TABLES `mydbr_reports_priv` WRITE;
/*!40000 ALTER TABLE `mydbr_reports_priv` DISABLE KEYS */;
/*!40000 ALTER TABLE `mydbr_reports_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mydbr_snippets`
--

DROP TABLE IF EXISTS `mydbr_snippets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mydbr_snippets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `code` text,
  `shortcut` varchar(20) DEFAULT NULL,
  `cright` int(11) DEFAULT NULL,
  `cdown` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mydbr_snippets`
--

LOCK TABLES `mydbr_snippets` WRITE;
/*!40000 ALTER TABLE `mydbr_snippets` DISABLE KEYS */;
INSERT INTO `mydbr_snippets` VALUES (1,'select-clause','select \nfrom \nwhere ','Ctrl-Alt-S',7,0),(2,'if-clause','if () then\nend if;','Ctrl-I',4,0),(3,'if-else-clause','if () then\nelse\nend if;','Ctrl-Alt-I',4,0),(4,'while-clause','while () do\nend while;','Ctrl-Alt-W',7,0),(5,'create procedure','create procedure sp_DBR_()\nbegin\n\nend','Ctrl-P',24,0),(6,'create function','create function fn_() \nreturns varchar(255)\ndeterministic\nbegin\n\ndeclare v_ret varchar(255);\n\nreturn v_ret;\n\nend\n','',19,0),(7,'cursor','declare done int default 0;\n\ndeclare c_cursor cursor for\n  select \n  from \n  where \ndeclare continue handler for not found set done = 1;\n\nopen c_cursor;\nrepeat\n  fetch c_cursor into ;\n  if not done then\n  end if;\nuntil done end repeat;\n\nclose c_cursor;','',9,3),(8,'case when','case \n  when  then \n  when  then \n  else \nend case','',5,0);
/*!40000 ALTER TABLE `mydbr_snippets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mydbr_statistics`
--

DROP TABLE IF EXISTS `mydbr_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mydbr_statistics` (
  `proc_name` varchar(100) NOT NULL,
  `username` varchar(128) DEFAULT NULL,
  `authentication` int(11) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime DEFAULT NULL,
  `query` text,
  `ip_address` varchar(255) DEFAULT NULL,
  `user_agent_hash` varchar(50) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mydbr_statistics`
--

LOCK TABLES `mydbr_statistics` WRITE;
/*!40000 ALTER TABLE `mydbr_statistics` DISABLE KEYS */;
INSERT INTO `mydbr_statistics` VALUES ('sp_DBR','dba',2,'2015-08-07 15:20:08','2015-08-07 15:20:08','call sp_DBR();','::1','e14f41f376cc3701f03d93ea21192f2a',1),('sp_DBR','dba',2,'2015-08-07 15:20:32','2015-08-07 15:20:33','call sp_DBR();','::1','e14f41f376cc3701f03d93ea21192f2a',2),('sp_DBR','dba',2,'2015-08-07 15:33:06','2015-08-07 15:33:06','call sp_DBR();','::1','e14f41f376cc3701f03d93ea21192f2a',3),('sp_DBR','dba',2,'2015-08-08 20:56:21','2015-08-08 20:56:22','call sp_DBR();','::1','e14f41f376cc3701f03d93ea21192f2a',4),('sp_DBR','dba',2,'2015-08-08 21:10:39','2015-08-08 21:10:39','call sp_DBR(\'g\');','::1','e14f41f376cc3701f03d93ea21192f2a',5),('sp_DBR','dba',2,'2015-08-08 21:10:55','2015-08-08 21:10:55','call sp_DBR(\'test\');','::1','e14f41f376cc3701f03d93ea21192f2a',6),('sp_DBR_call_db_sp','dba',2,'2015-08-08 21:16:25','2015-08-08 21:16:25','call sp_DBR_call_db_sp(\'test3\');','::1','e14f41f376cc3701f03d93ea21192f2a',7),('sp_DBR_call_db_sp','dba',2,'2015-08-08 21:16:54','2015-08-08 21:16:55','call sp_DBR_call_db_sp(\'test3\');','::1','e14f41f376cc3701f03d93ea21192f2a',8),('sp_DBR','dba',2,'2015-08-08 21:17:18','2015-08-08 21:17:19','call sp_DBR(\'test\');','::1','e14f41f376cc3701f03d93ea21192f2a',9),('sp_DBR_call_db_sp','dba',2,'2015-08-08 21:17:39','2015-08-08 21:17:40','call sp_DBR_call_db_sp(\'test4\');','::1','e14f41f376cc3701f03d93ea21192f2a',10),('sp_DBR','dba',2,'2015-08-08 21:17:49','2015-08-08 21:17:49','call sp_DBR(\'test\');','::1','e14f41f376cc3701f03d93ea21192f2a',11),('sp_DBR_call_db_sp','dba',2,'2015-08-08 21:18:43','2015-08-08 21:18:44','call sp_DBR_call_db_sp(\'test5\');','::1','e14f41f376cc3701f03d93ea21192f2a',12),('sp_DBR','dba',2,'2015-08-08 21:18:59','2015-08-08 21:18:59','call sp_DBR(\'test\');','::1','e14f41f376cc3701f03d93ea21192f2a',13),('sp_DBR','dba',2,'2015-08-08 23:08:18','2015-08-08 23:08:18','call sp_DBR(\'test\');','::1','e14f41f376cc3701f03d93ea21192f2a',14),('sp_DBR_add_new_group','dba',2,'2015-08-08 23:13:16','2015-08-08 23:13:17','call sp_DBR_add_new_group(\'e1\');','::1','e14f41f376cc3701f03d93ea21192f2a',15),('sp_DBR','dba',2,'2015-08-08 23:13:26','2015-08-08 23:13:27','call sp_DBR(\'e\');','::1','e14f41f376cc3701f03d93ea21192f2a',16),('sp_DBR','dba',2,'2015-08-08 23:13:37','2015-08-08 23:13:37','call sp_DBR(\'e1\');','::1','e14f41f376cc3701f03d93ea21192f2a',17),('sp_DBR_group_lookup','dba',2,'2015-08-08 23:15:53','2015-08-08 23:15:53','call sp_DBR_group_lookup(\'test\');','::1','e14f41f376cc3701f03d93ea21192f2a',18),('sp_DBR_words_by_recipe','dba',2,'2015-08-12 21:09:44','2015-08-12 21:09:45','call sp_DBR_words_by_recipe(50);','::1','e14f41f376cc3701f03d93ea21192f2a',19),('sp_DBR_get_recipe_names','dba',2,'2015-08-12 21:17:18','2015-08-12 21:17:18','call sp_DBR_get_recipe_names();','::1','e14f41f376cc3701f03d93ea21192f2a',20),('sp_DBR_get_recipe_names','dba',2,'2015-08-12 21:17:30','2015-08-12 21:17:30','call sp_DBR_get_recipe_names();','::1','e14f41f376cc3701f03d93ea21192f2a',21),('sp_DBR_get_recipe_names','dba',2,'2015-08-12 21:21:03','2015-08-12 21:21:03','call sp_DBR_get_recipe_names();','::1','e14f41f376cc3701f03d93ea21192f2a',22),('sp_DBR_words_by_recipe','dba',2,'2015-08-12 21:26:00','2015-08-12 21:26:00','call sp_DBR_words_by_recipe(1);','::1','e14f41f376cc3701f03d93ea21192f2a',23),('sp_DBR_words_by_recipe','dba',2,'2015-08-12 21:26:33','2015-08-12 21:26:33','call sp_DBR_words_by_recipe(1);','::1','e14f41f376cc3701f03d93ea21192f2a',24),('sp_DBR_words_by_recipe','dba',2,'2015-08-12 21:26:38','2015-08-12 21:26:38','call sp_DBR_words_by_recipe(1);','::1','e14f41f376cc3701f03d93ea21192f2a',25),('sp_DBR_words_by_recipe','dba',2,'2015-08-12 21:26:45','2015-08-12 21:26:45','call sp_DBR_words_by_recipe(1);','::1','e14f41f376cc3701f03d93ea21192f2a',26),('sp_DBR_words_by_recipe','dba',2,'2015-08-12 21:27:33','2015-08-12 21:27:33','call sp_DBR_words_by_recipe(0);','::1','e14f41f376cc3701f03d93ea21192f2a',27),('sp_DBR_words_by_recipe','dba',2,'2015-08-12 21:27:51','2015-08-12 21:27:51','call sp_DBR_words_by_recipe(0);','::1','e14f41f376cc3701f03d93ea21192f2a',28),('sp_DBR_words_by_recipe','dba',2,'2015-08-12 21:31:35','2015-08-12 21:31:35','call sp_DBR_words_by_recipe(0);','::1','e14f41f376cc3701f03d93ea21192f2a',29),('sp_DBR_words_by_recipe','dba',2,'2015-08-12 21:39:44','2015-08-12 21:39:44','call sp_DBR_words_by_recipe(1);','::1','e14f41f376cc3701f03d93ea21192f2a',30),('sp_DBR_words_by_recipe','dba',2,'2015-08-12 21:42:56','2015-08-12 21:42:56','call sp_DBR_words_by_recipe(0);','::1','e14f41f376cc3701f03d93ea21192f2a',31),('sp_DBR_words_by_recipe','dba',2,'2015-08-14 00:29:05','2015-08-14 00:29:06','call sp_DBR_words_by_recipe(1);','::1','e14f41f376cc3701f03d93ea21192f2a',32),('sp_DBR_words_by_recipe','dba',2,'2015-08-14 00:53:23','2015-08-14 00:53:23','call sp_DBR_words_by_recipe(1);','::1','e14f41f376cc3701f03d93ea21192f2a',33),('sp_DBR_add_word_to_group','dba',2,'2015-08-14 10:58:55','2015-08-14 10:58:56','call sp_DBR_add_word_to_group(43,234);','::1','e14f41f376cc3701f03d93ea21192f2a',34),('sp_DBR_group_lookup','dba',2,'2015-08-14 17:59:43','2015-08-14 17:59:43','call sp_DBR_group_lookup(\'test\');','::1','e14f41f376cc3701f03d93ea21192f2a',35),('sp_DBR_group_lookup','dba',2,'2015-08-14 18:11:02','2015-08-14 18:11:02','call sp_DBR_group_lookup(\'test\');','::1','e14f41f376cc3701f03d93ea21192f2a',36),('sp_DBR_group_lookup','dba',2,'2015-08-14 18:13:28','2015-08-14 18:13:28','call sp_DBR_group_lookup(\'test\');','::1','e14f41f376cc3701f03d93ea21192f2a',37),('sp_DBR_group_lookup','dba',2,'2015-08-14 18:15:13','2015-08-14 18:15:13','call sp_DBR_group_lookup(\'test\');','::1','e14f41f376cc3701f03d93ea21192f2a',38),('sp_DBR_get_words_for_group_id','dba',2,'2015-08-14 18:15:20','2015-08-14 18:15:20','call sp_DBR_get_words_for_group_id(3);','::1','e14f41f376cc3701f03d93ea21192f2a',39),('sp_DBR_group_lookup','dba',2,'2015-08-14 18:15:33','2015-08-14 18:15:33','call sp_DBR_group_lookup(\'test\');','::1','e14f41f376cc3701f03d93ea21192f2a',40),('sp_DBR_get_words_for_group_id','dba',2,'2015-08-14 18:15:49','2015-08-14 18:15:50','call sp_DBR_get_words_for_group_id(4);','::1','e14f41f376cc3701f03d93ea21192f2a',41),('sp_DBR_get_words_for_group_id','dba',2,'2015-08-15 19:53:43','2015-08-15 19:53:43','call sp_DBR_get_words_for_group_id(4);','::1','1b1a9fe8dea603b93684d610b5808c02',42),('sp_DBR_add_word_to_group','dba',2,'2015-08-16 23:04:13','2015-08-16 23:04:16','call sp_DBR_add_word_to_group(3,2);','::1','1b1a9fe8dea603b93684d610b5808c02',43),('sp_DBR_add_word_to_group','dba',2,'2015-08-16 23:07:15','2015-08-16 23:07:15','call sp_DBR_add_word_to_group(3,2);','::1','1b1a9fe8dea603b93684d610b5808c02',44),('sp_DBR_get_words_for_group_id','dba',2,'2015-08-17 23:55:55','2015-08-17 23:55:56','call sp_DBR_get_words_for_group_id(2);','::1','1b1a9fe8dea603b93684d610b5808c02',45),('sp_DBR_get_words_for_group_id','dba',2,'2015-08-18 00:02:57','2015-08-18 00:02:57','call sp_DBR_get_words_for_group_id(0);','::1','1b1a9fe8dea603b93684d610b5808c02',46),('sp_DBR_get_words_for_group_id','dba',2,'2015-08-18 00:03:07','2015-08-18 00:03:07','call sp_DBR_get_words_for_group_id(2);','::1','1b1a9fe8dea603b93684d610b5808c02',47),('sp_DBR_get_words_for_group_id','dba',2,'2015-08-18 00:03:28','2015-08-18 00:03:28','call sp_DBR_get_words_for_group_id(2);','::1','1b1a9fe8dea603b93684d610b5808c02',48),('sp_DBR_get_words_for_group_id','dba',2,'2015-08-18 00:04:10','2015-08-18 00:04:11','call sp_DBR_get_words_for_group_id(2);','::1','1b1a9fe8dea603b93684d610b5808c02',49),('sp_DBR_get_words_for_group_id','dba',2,'2015-08-18 00:04:42','2015-08-18 00:04:43','call sp_DBR_get_words_for_group_id(2);','::1','1b1a9fe8dea603b93684d610b5808c02',50),('sp_DBR_dummy_rpt','dba',2,'2015-08-18 22:59:02','2015-08-18 22:59:02','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',51),('sp_DBR_dummy_rpt','dba',2,'2015-08-18 23:03:39','2015-08-18 23:03:40','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',52),('sp_DBR_dummy_rpt','dba',2,'2015-08-18 23:22:31','2015-08-18 23:22:31','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',53),('sp_DBR_dummy_rpt','dba',2,'2015-08-18 23:22:36','2015-08-18 23:22:36','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',54),('sp_DBR_dummy_rpt','dba',2,'2015-08-18 23:22:37','2015-08-18 23:22:37','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',55),('sp_DBR_dummy_rpt','dba',2,'2015-08-18 23:23:27','2015-08-18 23:23:27','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',56),('sp_DBR_dummy_rpt','dba',2,'2015-08-18 23:25:01','2015-08-18 23:25:01','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',57),('sp_DBR_dummy_rpt','dba',2,'2015-08-18 23:25:28','2015-08-18 23:25:28','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',58),('sp_DBR_dummy_rpt','dba',2,'2015-08-18 23:27:52','2015-08-18 23:27:52','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',59),('sp_DBR_dummy_rpt','dba',2,'2015-08-18 23:29:55','2015-08-18 23:29:55','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',60),('sp_DBR_dummy_rpt','dba',2,'2015-08-18 23:30:16','2015-08-18 23:30:16','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',61),('sp_DBR_dummy_rpt','dba',2,'2015-08-18 23:31:25','2015-08-18 23:31:25','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',62),('sp_DBR_dummy_rpt','dba',2,'2015-08-18 23:32:27','2015-08-18 23:32:27','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',63),('sp_DBR_dummy_rpt','dba',2,'2015-08-18 23:33:14','2015-08-18 23:33:14','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',64),('sp_DBR_dummy_rpt','dba',2,'2015-08-18 23:33:17','2015-08-18 23:33:17','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',65),('sp_DBR_dummy_rpt','dba',2,'2015-08-18 23:33:35','2015-08-18 23:33:35','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',66),('sp_DBR_dummy_rpt','dba',2,'2015-08-18 23:34:13','2015-08-18 23:34:13','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',67),('sp_DBR_dummy_rpt','dba',2,'2015-08-18 23:34:15','2015-08-18 23:34:15','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',68),('sp_DBR_dummy_rpt','dba',2,'2015-08-18 23:35:17','2015-08-18 23:35:17','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',69),('sp_DBR_dummy_rpt','dba',2,'2015-08-18 23:37:16','2015-08-18 23:37:16','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',70),('sp_DBR_dummy_rpt','dba',2,'2015-08-18 23:37:18','2015-08-18 23:37:18','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',71),('sp_DBR_dummy_rpt','dba',2,'2015-08-18 23:41:23','2015-08-18 23:41:23','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',72),('sp_DBR_dummy_rpt','dba',2,'2015-08-18 23:41:47','2015-08-18 23:41:47','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',73),('sp_DBR_dummy_rpt','dba',2,'2015-08-19 00:14:56','2015-08-19 00:14:56','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',74),('sp_DBR_dummy_rpt','dba',2,'2015-08-19 00:14:58','2015-08-19 00:14:59','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',75),('sp_DBR_dummy_rpt','dba',2,'2015-08-19 00:15:07','2015-08-19 00:15:07','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',76),('sp_DBR_dummy_rpt','dba',2,'2015-08-19 00:16:14','2015-08-19 00:16:14','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',77),('sp_DBR_dummy_rpt','dba',2,'2015-08-19 00:16:16','2015-08-19 00:16:16','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',78),('sp_DBR_dummy_rpt','dba',2,'2015-08-19 00:16:17','2015-08-19 00:16:17','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',79),('sp_DBR_dummy_rpt','dba',2,'2015-08-19 00:16:17','2015-08-19 00:16:17','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',80),('sp_DBR_dummy_rpt','dba',2,'2015-08-19 00:16:38','2015-08-19 00:16:39','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',81),('sp_DBR_dummy_rpt','dba',2,'2015-08-19 00:17:17','2015-08-19 00:17:17','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',82),('sp_DBR_dummy_rpt','dba',2,'2015-08-19 00:18:04','2015-08-19 00:18:04','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',83),('sp_DBR_dummy_rpt','dba',2,'2015-08-19 00:19:20','2015-08-19 00:19:20','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',84),('sp_DBR_dummy_rpt','dba',2,'2015-08-21 12:23:15','2015-08-21 12:23:16','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',85),('sp_DBR_dummy_rpt','dba',2,'2015-08-21 16:15:14','2015-08-21 16:15:14','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',86),('sp_DBR_dummy_rpt','dba',2,'2015-08-21 16:17:56','2015-08-21 16:17:56','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',87),('sp_DBR_dummy_rpt','dba',2,'2015-08-21 16:18:31','2015-08-21 16:18:31','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',88),('sp_DBR_dummy_rpt','dba',2,'2015-08-21 16:19:25','2015-08-21 16:19:25','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',89),('sp_DBR_words_by_recipe','dba',2,'2015-08-21 16:19:53','2015-08-21 16:19:54','call sp_DBR_words_by_recipe(0);','::1','1b1a9fe8dea603b93684d610b5808c02',90),('sp_DBR_dummy_rpt','dba',2,'2015-08-21 16:20:18','2015-08-21 16:20:18','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',91),('sp_DBR_dummy_rpt','dba',2,'2015-08-21 16:20:38','2015-08-21 16:20:38','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',92),('sp_DBR_dummy_rpt','dba',2,'2015-08-21 16:23:41','2015-08-21 16:23:41','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',93),('sp_DBR_dummy_rpt','dba',2,'2015-08-21 16:34:34','2015-08-21 16:34:34','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',94),('sp_DBR_dummy_rpt','dba',2,'2015-08-21 16:43:15','2015-08-21 16:43:15','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',95),('sp_DBR_dummy_rpt','dba',2,'2015-08-21 16:44:24','2015-08-21 16:44:24','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',96),('sp_DBR_dummy_rpt','dba',2,'2015-08-21 16:44:59','2015-08-21 16:44:59','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',97),('sp_DBR_dummy_rpt','dba',2,'2015-08-21 16:46:52','2015-08-21 16:46:52','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',98),('sp_DBR_dummy_rpt','dba',2,'2015-08-21 16:47:30','2015-08-21 16:47:30','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',99),('sp_DBR_dummy_rpt','dba',2,'2015-08-21 16:48:31','2015-08-21 16:48:31','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',100),('sp_DBR_dummy_rpt','dba',2,'2015-08-21 16:51:29','2015-08-21 16:51:29','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',101),('sp_DBR_dummy_rpt','dba',2,'2015-08-21 16:51:33','2015-08-21 16:51:34','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',102),('sp_DBR_dummy_rpt','dba',2,'2015-08-21 16:53:46','2015-08-21 16:53:46','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',103),('sp_DBR_dummy_rpt','dba',2,'2015-08-21 16:54:41','2015-08-21 16:54:41','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',104),('sp_DBR_dummy_rpt','dba',2,'2015-08-21 17:22:32','2015-08-21 17:22:32','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',105),('sp_DBR_dummy_rpt','dba',2,'2015-08-21 17:23:51','2015-08-21 17:23:51','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',106),('sp_DBR_dummy_rpt','dba',2,'2015-08-21 17:24:30','2015-08-21 17:24:30','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',107),('sp_DBR_dummy_rpt','dba',2,'2015-08-21 17:24:44','2015-08-21 17:24:44','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',108),('sp_DBR_dummy_rpt','dba',2,'2015-08-21 17:33:18','2015-08-21 17:33:18','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',109),('sp_DBR_dummy_rpt','dba',2,'2015-08-21 17:59:40','2015-08-21 17:59:41','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',110),('sp_DBR_dummy_rpt','dba',2,'2015-08-21 18:00:53','2015-08-21 18:00:54','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',111),('sp_DBR_dummy_rpt','dba',2,'2015-08-21 18:01:31','2015-08-21 18:01:31','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',112),('sp_DBR_dummy_rpt','dba',2,'2015-08-21 18:05:11','2015-08-21 18:05:12','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',113),('sp_DBR_dummy_rpt','dba',2,'2015-08-21 18:17:02','2015-08-21 18:17:02','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',114),('sp_DBR_dummy_rpt','dba',2,'2015-08-21 18:17:34','2015-08-21 18:17:34','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',115),('sp_DBR_dummy_rpt','dba',2,'2015-08-21 18:18:39','2015-08-21 18:18:39','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',116),('sp_DBR_dummy_rpt','dba',2,'2015-08-25 21:54:56','2015-08-25 21:54:56','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',117),('sp_DBR_dummy_rpt','dba',2,'2015-08-25 21:55:25','2015-08-25 21:55:25','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',118),('sp_DBR_dummy_rpt','dba',2,'2015-08-25 21:55:48','2015-08-25 21:55:48','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',119),('sp_DBR_dummy_rpt','dba',2,'2015-08-25 22:00:40','2015-08-25 22:00:40','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',120),('sp_DBR_dummy_rpt','dba',2,'2015-08-25 22:02:25','2015-08-25 22:02:25','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',121),('sp_DBR_dummy_rpt','dba',2,'2015-08-25 22:05:56','2015-08-25 22:05:56','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',122),('sp_DBR_dummy_rpt','dba',2,'2015-08-25 23:44:44','2015-08-25 23:44:44','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',123),('sp_DBR_dummy_rpt','dba',2,'2015-08-25 23:47:24','2015-08-25 23:47:24','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',124),('sp_DBR_dummy_rpt','dba',2,'2015-08-25 23:54:27','2015-08-25 23:54:27','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',125),('sp_DBR_dummy_rpt','dba',2,'2015-08-25 23:55:56','2015-08-25 23:55:56','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',126),('sp_DBR_dummy_rpt','dba',2,'2015-08-26 00:03:52','2015-08-26 00:03:52','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',127),('sp_DBR_dummy_rpt','dba',2,'2015-08-26 00:05:53','2015-08-26 00:05:53','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',128),('sp_DBR_dummy_rpt','dba',2,'2015-08-26 00:15:45','2015-08-26 00:15:45','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',129),('sp_DBR_dummy_rpt','dba',2,'2015-08-26 00:16:56','2015-08-26 00:16:56','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',130),('sp_DBR_dummy_rpt','dba',2,'2015-08-26 00:17:00','2015-08-26 00:17:00','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',131),('sp_DBR_dummy_rpt','dba',2,'2015-08-26 00:22:18','2015-08-26 00:22:18','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',132),('sp_DBR_dummy_rpt','dba',2,'2015-08-26 00:23:08','2015-08-26 00:23:08','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',133),('sp_DBR_dummy_rpt','dba',2,'2015-08-26 00:23:28','2015-08-26 00:23:28','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',134),('sp_DBR_dummy_rpt','dba',2,'2015-08-26 01:07:54','2015-08-26 01:07:54','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',135),('sp_DBR_dummy_rpt','dba',2,'2015-08-26 19:40:37','2015-08-26 19:40:37','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',136),('sp_DBR_dummy_rpt','dba',2,'2015-08-26 19:42:08','2015-08-26 19:42:08','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',137),('sp_DBR_dummy_rpt','dba',2,'2015-08-26 19:42:39','2015-08-26 19:42:39','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',138),('sp_DBR_dummy_rpt','dba',2,'2015-08-26 19:45:03','2015-08-26 19:45:03','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',139),('sp_DBR_dummy_rpt','dba',2,'2015-08-26 19:56:41','2015-08-26 19:56:42','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',140),('sp_DBR_dummy_rpt','dba',2,'2015-08-26 21:13:52','2015-08-26 21:13:52','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',141),('sp_DBR_words_by_recipe','dba',2,'2015-08-26 21:20:27','2015-08-26 21:20:28','call sp_DBR_words_by_recipe(1);','::1','1b1a9fe8dea603b93684d610b5808c02',142),('sp_DBR_dummy_rpt','dba',2,'2015-08-26 21:24:14','2015-08-26 21:24:14','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',143),('sp_DBR_words_by_recipe','dba',2,'2015-08-26 21:55:19','2015-08-26 21:55:19','call sp_DBR_words_by_recipe(1);','::1','1b1a9fe8dea603b93684d610b5808c02',144),('sp_DBR_dummy_rpt','dba',2,'2015-08-26 21:58:24','2015-08-26 21:58:24','call sp_DBR_dummy_rpt();','::1','1b1a9fe8dea603b93684d610b5808c02',145),('sp_DBR_dummy_rpt','dba',2,'2015-08-26 22:00:08','2015-08-26 22:00:08','call sp_DBR_dummy_rpt(\'ginger\');','::1','1b1a9fe8dea603b93684d610b5808c02',146),('sp_DBR_dummy_rpt','dba',2,'2015-08-26 22:05:33','2015-08-26 22:05:34','call sp_DBR_dummy_rpt(1);','::1','1b1a9fe8dea603b93684d610b5808c02',147),('sp_DBR_dummy_rpt','dba',2,'2015-08-26 22:12:39','2015-08-26 22:12:39','call sp_DBR_dummy_rpt(1);','::1','1b1a9fe8dea603b93684d610b5808c02',148),('sp_DBR_dummy_rpt','dba',2,'2015-08-26 22:13:38','2015-08-26 22:13:38','call sp_DBR_dummy_rpt(1);','::1','1b1a9fe8dea603b93684d610b5808c02',149),('sp_DBR_dummy_rpt','dba',2,'2015-08-26 22:16:57','2015-08-26 22:16:57','call sp_DBR_dummy_rpt(1);','::1','1b1a9fe8dea603b93684d610b5808c02',150),('sp_DBR_dummy_rpt','dba',2,'2015-08-26 22:17:21','2015-08-26 22:17:21','call sp_DBR_dummy_rpt(1);','::1','1b1a9fe8dea603b93684d610b5808c02',151),('sp_DBR_dummy_rpt','dba',2,'2015-08-26 22:17:50','2015-08-26 22:17:50','call sp_DBR_dummy_rpt(1);','::1','1b1a9fe8dea603b93684d610b5808c02',152),('sp_DBR_dummy_rpt','dba',2,'2015-08-26 22:17:52','2015-08-26 22:17:52','call sp_DBR_dummy_rpt(1);','::1','1b1a9fe8dea603b93684d610b5808c02',153),('sp_DBR_dummy_rpt','dba',2,'2015-08-26 22:19:05','2015-08-26 22:19:05','call sp_DBR_dummy_rpt(1);','::1','1b1a9fe8dea603b93684d610b5808c02',154),('sp_DBR_dummy_rpt','dba',2,'2015-08-26 22:23:00','2015-08-26 22:23:00','call sp_DBR_dummy_rpt(1);','::1','1b1a9fe8dea603b93684d610b5808c02',155),('sp_DBR_dummy_rpt','dba',2,'2015-08-26 22:23:03','2015-08-26 22:23:03','call sp_DBR_dummy_rpt(1);','::1','1b1a9fe8dea603b93684d610b5808c02',156),('sp_DBR_dummy_rpt','dba',2,'2015-08-26 22:23:05','2015-08-26 22:23:05','call sp_DBR_dummy_rpt(1);','::1','1b1a9fe8dea603b93684d610b5808c02',157),('sp_DBR_dummy_rpt','dba',2,'2015-08-26 22:23:41','2015-08-26 22:23:41','call sp_DBR_dummy_rpt(1);','::1','1b1a9fe8dea603b93684d610b5808c02',158),('sp_DBR_dummy_rpt','dba',2,'2015-08-26 22:23:43','2015-08-26 22:23:43','call sp_DBR_dummy_rpt(1);','::1','1b1a9fe8dea603b93684d610b5808c02',159),('sp_DBR_dummy_rpt','dba',2,'2015-08-26 22:24:11','2015-08-26 22:24:11','call sp_DBR_dummy_rpt(1);','::1','1b1a9fe8dea603b93684d610b5808c02',160),('sp_DBR_dummy_rpt','dba',2,'2015-08-26 22:25:08','2015-08-26 22:25:08','call sp_DBR_dummy_rpt(1);','::1','1b1a9fe8dea603b93684d610b5808c02',161),('sp_DBR_dummy_rpt','dba',2,'2015-08-26 22:25:25','2015-08-26 22:25:25','call sp_DBR_dummy_rpt(1);','::1','1b1a9fe8dea603b93684d610b5808c02',162),('sp_DBR_dummy_rpt','dba',2,'2015-08-26 22:26:45','2015-08-26 22:26:45','call sp_DBR_dummy_rpt(1);','::1','1b1a9fe8dea603b93684d610b5808c02',163),('sp_DBR_dummy_rpt','dba',2,'2015-08-26 22:28:27','2015-08-26 22:28:28','call sp_DBR_dummy_rpt(1);','::1','1b1a9fe8dea603b93684d610b5808c02',164),('sp_DBR_dummy_rpt','dba',2,'2015-08-26 22:29:16','2015-08-26 22:29:17','call sp_DBR_dummy_rpt(1);','::1','1b1a9fe8dea603b93684d610b5808c02',165),('sp_DBR_dummy_rpt','dba',2,'2015-08-26 22:30:23','2015-08-26 22:30:23','call sp_DBR_dummy_rpt(1);','::1','1b1a9fe8dea603b93684d610b5808c02',166),('sp_DBR_get_words_for_group_id','dba',2,'2015-08-27 23:18:48','2015-08-27 23:18:49','call sp_DBR_get_words_for_group_id(0);','::1','1b1a9fe8dea603b93684d610b5808c02',167),('sp_DBR_get_locations_for_group','dba',2,'2015-08-27 23:29:37','2015-08-27 23:29:37','call sp_DBR_get_locations_for_group(0);','::1','1b1a9fe8dea603b93684d610b5808c02',168),('sp_DBR_get_locations_for_group','dba',2,'2015-08-27 23:32:43','2015-08-27 23:32:43','call sp_DBR_get_locations_for_group(0);','::1','1b1a9fe8dea603b93684d610b5808c02',169),('sp_DBR_words_by_recipe','dba',2,'2015-08-27 23:35:06','2015-08-27 23:35:06','call sp_DBR_words_by_recipe(0);','::1','1b1a9fe8dea603b93684d610b5808c02',170),('sp_DBR_words_by_recipe','dba',2,'2015-08-27 23:36:23','2015-08-27 23:36:23','call sp_DBR_words_by_recipe(0);','::1','1b1a9fe8dea603b93684d610b5808c02',171),('sp_DBR_words_by_recipe','dba',2,'2015-08-27 23:39:44','2015-08-27 23:39:44','call sp_DBR_words_by_recipe(0);','::1','1b1a9fe8dea603b93684d610b5808c02',172),('sp_DBR_dummy_rpt','dba',2,'2015-08-27 23:41:17','2015-08-27 23:41:17','call sp_DBR_dummy_rpt(1);','::1','1b1a9fe8dea603b93684d610b5808c02',173),('sp_DBR_words_by_recipe','dba',2,'2015-08-27 23:41:40','2015-08-27 23:41:40','call sp_DBR_words_by_recipe(0);','::1','1b1a9fe8dea603b93684d610b5808c02',174),('sp_DBR_words_by_recipe','dba',2,'2015-08-27 23:41:59','2015-08-27 23:41:59','call sp_DBR_words_by_recipe(0);','::1','1b1a9fe8dea603b93684d610b5808c02',175),('sp_DBR_dummy_rpt','dba',2,'2015-08-27 23:42:07','2015-08-27 23:42:07','call sp_DBR_dummy_rpt(0);','::1','1b1a9fe8dea603b93684d610b5808c02',176),('sp_DBR_words_by_recipe','dba',2,'2015-08-27 23:42:31','2015-08-27 23:42:31','call sp_DBR_words_by_recipe(0);','::1','1b1a9fe8dea603b93684d610b5808c02',177),('sp_DBR_dummy_rpt','dba',2,'2015-08-27 23:42:34','2015-08-27 23:42:34','call sp_DBR_dummy_rpt(1);','::1','1b1a9fe8dea603b93684d610b5808c02',178),('sp_DBR_words_by_recipe','dba',2,'2015-08-27 23:43:39','2015-08-27 23:43:39','call sp_DBR_words_by_recipe(0);','::1','1b1a9fe8dea603b93684d610b5808c02',179),('sp_DBR_dummy_rpt','dba',2,'2015-08-27 23:43:42','2015-08-27 23:43:42','call sp_DBR_dummy_rpt(1);','::1','1b1a9fe8dea603b93684d610b5808c02',180),('sp_DBR_words_by_recipe','dba',2,'2015-08-27 23:43:51','2015-08-27 23:43:51','call sp_DBR_words_by_recipe(0);','::1','1b1a9fe8dea603b93684d610b5808c02',181),('sp_DBR_dummy_rpt','dba',2,'2015-08-27 23:43:55','2015-08-27 23:43:55','call sp_DBR_dummy_rpt(2);','::1','1b1a9fe8dea603b93684d610b5808c02',182),('sp_DBR_words_by_recipe','dba',2,'2015-08-27 23:46:38','2015-08-27 23:46:38','call sp_DBR_words_by_recipe(0);','::1','1b1a9fe8dea603b93684d610b5808c02',183),('sp_DBR_words_by_recipe','dba',2,'2015-08-27 23:47:04','2015-08-27 23:47:04','call sp_DBR_words_by_recipe(0);','::1','1b1a9fe8dea603b93684d610b5808c02',184),('sp_DBR_words_by_recipe','dba',2,'2015-08-27 23:48:13','2015-08-27 23:48:13','call sp_DBR_words_by_recipe(0);','::1','1b1a9fe8dea603b93684d610b5808c02',185),('sp_DBR_context_for_word','dba',2,'2015-08-27 23:48:19','2015-08-27 23:48:19','call sp_DBR_context_for_word(1);','::1','1b1a9fe8dea603b93684d610b5808c02',186),('sp_DBR_words_by_recipe','dba',2,'2015-08-27 23:51:13','2015-08-27 23:51:13','call sp_DBR_words_by_recipe(0);','::1','1b1a9fe8dea603b93684d610b5808c02',187),('sp_DBR_context_for_word','dba',2,'2015-08-27 23:51:17','2015-08-27 23:51:17','call sp_DBR_context_for_word(1);','::1','1b1a9fe8dea603b93684d610b5808c02',188),('sp_DBR_context_for_word','dba',2,'2015-08-27 23:58:11','2015-08-27 23:58:11','call sp_DBR_context_for_word(1);','::1','1b1a9fe8dea603b93684d610b5808c02',189),('sp_DBR_context_for_word','dba',2,'2015-08-27 23:59:08','2015-08-27 23:59:08','call sp_DBR_context_for_word(1);','::1','1b1a9fe8dea603b93684d610b5808c02',190),('sp_DBR_context_for_word','dba',2,'2015-08-27 23:59:37','2015-08-27 23:59:37','call sp_DBR_context_for_word(1);','::1','1b1a9fe8dea603b93684d610b5808c02',191),('sp_DBR_context_for_word','dba',2,'2015-08-28 00:00:11','2015-08-28 00:00:11','call sp_DBR_context_for_word(1);','::1','1b1a9fe8dea603b93684d610b5808c02',192),('sp_DBR_context_for_word','dba',2,'2015-08-28 00:04:41','2015-08-28 00:04:41','call sp_DBR_context_for_word(1);','::1','1b1a9fe8dea603b93684d610b5808c02',193),('sp_DBR_find_recipe','dba',2,'2015-08-28 16:40:25','2015-08-28 16:40:26','call sp_DBR_find_recipe(\'name\',\'Auther\',1,\'bla bla\');','::1','1b1a9fe8dea603b93684d610b5808c02',194),('sp_DBR_find_recipe','dba',2,'2015-08-28 16:41:15','2015-08-28 16:41:15','call sp_DBR_find_recipe(\'name\',\'Auther\',1,\'bla bla\');','::1','1b1a9fe8dea603b93684d610b5808c02',195),('sp_DBR_find_recipe','dba',2,'2015-08-28 23:48:39','2015-08-28 23:48:40','call sp_DBR_find_recipe(\'df\',\'df\',2,\'sd\');','::1','1b1a9fe8dea603b93684d610b5808c02',196),('sp_DBR_find_recipe','dba',2,'2015-08-30 01:30:05','2015-08-30 01:30:06','call sp_DBR_find_recipe(\'df\',\'df\',2,\'sd\');','::1','1b1a9fe8dea603b93684d610b5808c02',197),('sp_DBR_get_word_by_location','dba',2,'2015-08-30 02:26:13','2015-08-30 02:26:14','call sp_DBR_get_word_by_location(\'0\',1,2,1);','::1','1b1a9fe8dea603b93684d610b5808c02',198),('sp_DBR_get_word_by_location','dba',2,'2015-08-30 02:31:59','2015-08-30 02:31:59','call sp_DBR_get_word_by_location(\'0\',1,2,1);','::1','1b1a9fe8dea603b93684d610b5808c02',199),('sp_DBR_get_word_by_location','dba',2,'2015-08-30 02:32:19','2015-08-30 02:32:19','call sp_DBR_get_word_by_location(\'0\',1,2,1);','::1','1b1a9fe8dea603b93684d610b5808c02',200),('sp_DBR_get_word_by_location','dba',2,'2015-08-30 02:38:03','2015-08-30 02:38:03','call sp_DBR_get_word_by_location(\'0\',1,2,1);','::1','1b1a9fe8dea603b93684d610b5808c02',201),('sp_DBR_get_word_by_location','dba',2,'2015-08-30 02:41:33','2015-08-30 02:41:33','call sp_DBR_get_word_by_location(\'0\',1,2,1);','::1','1b1a9fe8dea603b93684d610b5808c02',202),('sp_DBR_get_word_by_location','dba',2,'2015-08-30 02:44:12','2015-08-30 02:44:12','call sp_DBR_get_word_by_location(0,1,2,1);','::1','1b1a9fe8dea603b93684d610b5808c02',203),('sp_DBR_get_word_by_location','dba',2,'2015-08-30 02:49:14','2015-08-30 02:49:14','call sp_DBR_get_word_by_location(0,1,2,0);','::1','1b1a9fe8dea603b93684d610b5808c02',204),('sp_DBR_get_word_by_location','dba',2,'2015-08-30 02:50:29','2015-08-30 02:50:29','call sp_DBR_get_word_by_location(0,1,2,0);','::1','1b1a9fe8dea603b93684d610b5808c02',205),('sp_DBR_words_by_recipe','dba',2,'2015-08-30 21:24:59','2015-08-30 21:24:59','call sp_DBR_words_by_recipe(0);','::1','1b1a9fe8dea603b93684d610b5808c02',206),('sp_DBR_get_locations_for_group','dba',2,'2015-08-30 21:27:22','2015-08-30 21:27:22','call sp_DBR_get_locations_for_group(0);','::1','1b1a9fe8dea603b93684d610b5808c02',207),('sp_DBR_get_words_for_group_id','dba',2,'2015-08-30 21:40:00','2015-08-30 21:40:00','call sp_DBR_get_words_for_group_id(1);','::1','1b1a9fe8dea603b93684d610b5808c02',208),('sp_DBR_words_by_recipe','dba',2,'2015-08-30 21:46:26','2015-08-30 21:46:26','call sp_DBR_words_by_recipe(0);','::1','1b1a9fe8dea603b93684d610b5808c02',209),('sp_DBR_words_by_recipe','dba',2,'2015-08-30 21:48:05','2015-08-30 21:48:05','call sp_DBR_words_by_recipe(0);','::1','1b1a9fe8dea603b93684d610b5808c02',210),('sp_DBR_context_for_word','dba',2,'2015-08-30 21:48:08','2015-08-30 21:48:09','call sp_DBR_context_for_word(1);','::1','1b1a9fe8dea603b93684d610b5808c02',211),('sp_DBR_find_recipe','dba',2,'2015-08-30 22:31:00','2015-08-30 22:31:01','call sp_DBR_find_recipe(\'df\',\'df\',2,\'sd\');','::1','1b1a9fe8dea603b93684d610b5808c02',212),('sp_DBR_find_recipe','dba',2,'2015-08-30 22:31:09','2015-08-30 22:31:09','call sp_DBR_find_recipe(\'df\',\'df\',2,\'sd\');','::1','1b1a9fe8dea603b93684d610b5808c02',213),('sp_DBR_find_recipe','dba',2,'2015-08-30 22:40:56','2015-08-30 22:40:56','call sp_DBR_find_recipe(\'df\',\'df\',2,\'sd\');','::1','16923c53238bd8753cd1eb89d4af2e75',214),('sp_DBR_words_by_recipe','dba',2,'2015-08-30 22:42:03','2015-08-30 22:42:03','call sp_DBR_words_by_recipe(1);','::1','6d44eab61dcf5b1f0e6fa8f6595ee1bc',215),('sp_DBR_words_by_recipe','dba',2,'2015-08-31 02:09:26','2015-08-31 02:09:27','call sp_DBR_words_by_recipe(0);','::1','1b1a9fe8dea603b93684d610b5808c02',216),('sp_DBR_get_complete_word_index','dba',2,'2015-08-31 02:21:52','2015-08-31 02:21:52','call sp_DBR_get_complete_word_index();','::1','1b1a9fe8dea603b93684d610b5808c02',217),('sp_DBR_get_locations_for_group','dba',2,'2015-08-31 02:23:21','2015-08-31 02:23:21','call sp_DBR_get_locations_for_group(0);','::1','1b1a9fe8dea603b93684d610b5808c02',218),('sp_DBR_get_complete_word_index','dba',2,'2015-08-31 02:24:26','2015-08-31 02:24:26','call sp_DBR_get_complete_word_index();','::1','1b1a9fe8dea603b93684d610b5808c02',219),('sp_DBR_get_complete_word_index','dba',2,'2015-08-31 02:24:38','2015-08-31 02:24:38','call sp_DBR_get_complete_word_index();','::1','1b1a9fe8dea603b93684d610b5808c02',220),('sp_DBR_get_complete_word_index','dba',2,'2015-08-31 02:30:32','2015-08-31 02:30:33','call sp_DBR_get_complete_word_index();','::1','1b1a9fe8dea603b93684d610b5808c02',221),('sp_DBR_get_locations_for_group','dba',2,'2015-09-01 15:26:30','2015-09-01 15:26:30','call sp_DBR_get_locations_for_group(1);','::1','1b1a9fe8dea603b93684d610b5808c02',222),('sp_DBR_get_locations_for_group','dba',2,'2015-09-01 15:32:08','2015-09-01 15:32:08','call sp_DBR_get_locations_for_group(1);','::1','1b1a9fe8dea603b93684d610b5808c02',223),('sp_DBR_words_by_recipe','dba',2,'2015-09-01 15:32:44','2015-09-01 15:32:44','call sp_DBR_words_by_recipe(0);','::1','1b1a9fe8dea603b93684d610b5808c02',224),('sp_DBR_get_words_for_group_id','dba',2,'2015-09-01 15:51:22','2015-09-01 15:51:22','call sp_DBR_get_words_for_group_id(1);','::1','1b1a9fe8dea603b93684d610b5808c02',225),('sp_DBR_get_words_for_group_id','dba',2,'2015-09-01 16:06:07','2015-09-01 16:06:07','call sp_DBR_get_words_for_group_id(123);','::1','1b1a9fe8dea603b93684d610b5808c02',226),('sp_DBR_get_words_for_group_id','dba',2,'2015-09-01 16:06:45','2015-09-01 16:06:45','call sp_DBR_get_words_for_group_id(123);','::1','1b1a9fe8dea603b93684d610b5808c02',227),('sp_DBR_get_words_for_group_id','dba',2,'2015-09-01 16:09:02','2015-09-01 16:09:02','call sp_DBR_get_words_for_group_id(0);','::1','1b1a9fe8dea603b93684d610b5808c02',228),('sp_DBR_get_words_for_group_id','dba',2,'2015-09-01 16:09:41','2015-09-01 16:09:41','call sp_DBR_get_words_for_group_id(1);','::1','1b1a9fe8dea603b93684d610b5808c02',229),('sp_DBR_get_words_for_group_id','dba',2,'2015-09-01 16:14:41','2015-09-01 16:14:41','call sp_DBR_get_words_for_group_id(102);','::1','1b1a9fe8dea603b93684d610b5808c02',230),('sp_DBR_get_words_for_group_id','dba',2,'2015-09-01 16:16:10','2015-09-01 16:16:10','call sp_DBR_get_words_for_group_id(0);','::1','1b1a9fe8dea603b93684d610b5808c02',231),('sp_DBR_get_words_for_group_id','dba',2,'2015-09-01 18:59:34','2015-09-01 18:59:34','call sp_DBR_get_words_for_group_id(0);','::1','1b1a9fe8dea603b93684d610b5808c02',232),('sp_DBR_words_by_recipe','dba',2,'2015-09-01 19:24:03','2015-09-01 19:24:03','call sp_DBR_words_by_recipe(0);','::1','1b1a9fe8dea603b93684d610b5808c02',233),('sp_DBR_words_by_recipe','dba',2,'2015-09-01 19:24:17','2015-09-01 19:24:17','call sp_DBR_words_by_recipe(1);','::1','1b1a9fe8dea603b93684d610b5808c02',234),('sp_DBR_words_by_recipe','dba',2,'2015-09-01 19:24:33','2015-09-01 19:24:33','call sp_DBR_words_by_recipe(2);','::1','1b1a9fe8dea603b93684d610b5808c02',235),('sp_DBR_dummy_rpt','dba',2,'2015-09-01 19:48:51','2015-09-01 19:48:51','call sp_DBR_dummy_rpt(2);','::1','1b1a9fe8dea603b93684d610b5808c02',236),('sp_DBR_words_by_recipe','dba',2,'2015-09-01 19:48:54','2015-09-01 19:48:54','call sp_DBR_words_by_recipe(2);','::1','1b1a9fe8dea603b93684d610b5808c02',237),('sp_DBR_add_new_relation','dba',2,'2015-09-02 20:50:58','2015-09-02 20:50:58','call sp_DBR_add_new_relation(\'bla bla1\',\'ssdasdasd\');','::1','1b1a9fe8dea603b93684d610b5808c02',238),('sp_DBR_add_new_relation','dba',2,'2015-09-02 20:51:23','2015-09-02 20:51:23','call sp_DBR_add_new_relation(\'bla bla1\',\'ssdasdasd\');','::1','1b1a9fe8dea603b93684d610b5808c02',239),('sp_DBR_add_words_to_relation','dba',2,'2015-09-03 09:29:47','2015-09-03 09:29:48','call sp_DBR_add_words_to_relation(0,1,1);','::1','1b1a9fe8dea603b93684d610b5808c02',240),('sp_DBR_add_word_to_group','dba',2,'2015-09-03 09:30:02','2015-09-03 09:30:03','call sp_DBR_add_word_to_group(1,0);','::1','1b1a9fe8dea603b93684d610b5808c02',241),('sp_DBR_add_words_to_relation','dba',2,'2015-09-03 09:35:22','2015-09-03 09:35:22','call sp_DBR_add_words_to_relation(0,1,1);','::1','1b1a9fe8dea603b93684d610b5808c02',242),('sp_DBR_add_word_to_group','dba',2,'2015-09-03 09:38:21','2015-09-03 09:38:21','call sp_DBR_add_word_to_group(1,0);','::1','1b1a9fe8dea603b93684d610b5808c02',243),('sp_DBR_add_word_to_group','dba',2,'2015-09-03 09:39:47','2015-09-03 09:39:47','call sp_DBR_add_word_to_group(1,0);','::1','1b1a9fe8dea603b93684d610b5808c02',244),('sp_DBR_get_locations_for_group','dba',2,'2015-09-03 12:52:14','2015-09-03 12:52:14','call sp_DBR_get_locations_for_group(-1);','::1','1b1a9fe8dea603b93684d610b5808c02',245),('sp_DBR_get_locations_for_group','dba',2,'2015-09-03 13:00:59','2015-09-03 13:00:59','call sp_DBR_get_locations_for_group(-1);','::1','1b1a9fe8dea603b93684d610b5808c02',246),('sp_DBR_get_locations_for_group','dba',2,'2015-09-03 13:01:25','2015-09-03 13:01:25','call sp_DBR_get_locations_for_group(-1);','::1','1b1a9fe8dea603b93684d610b5808c02',247),('sp_DBR_get_locations_for_group','dba',2,'2015-09-03 13:01:34','2015-09-03 13:01:34','call sp_DBR_get_locations_for_group(1);','::1','1b1a9fe8dea603b93684d610b5808c02',248),('sp_DBR_add_words_to_relation','dba',2,'2015-09-03 13:18:53','2015-09-03 13:18:53','call sp_DBR_add_words_to_relation(4,1,1);','::1','1b1a9fe8dea603b93684d610b5808c02',249);
/*!40000 ALTER TABLE `mydbr_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mydbr_styles`
--

DROP TABLE IF EXISTS `mydbr_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mydbr_styles` (
  `name` varchar(30) NOT NULL,
  `colstyle` tinyint(4) NOT NULL,
  `definition` varchar(400) NOT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mydbr_styles`
--

LOCK TABLES `mydbr_styles` WRITE;
/*!40000 ALTER TABLE `mydbr_styles` DISABLE KEYS */;
INSERT INTO `mydbr_styles` VALUES ('$US',0,'$ %.2f'),('3 decimals',0,'%.3f'),('Bold',0,'[font-weight: bold;]');
/*!40000 ALTER TABLE `mydbr_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mydbr_template_folders`
--

DROP TABLE IF EXISTS `mydbr_template_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mydbr_template_folders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mydbr_template_folders`
--

LOCK TABLES `mydbr_template_folders` WRITE;
/*!40000 ALTER TABLE `mydbr_template_folders` DISABLE KEYS */;
INSERT INTO `mydbr_template_folders` VALUES (1,'Main',NULL);
/*!40000 ALTER TABLE `mydbr_template_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mydbr_templates`
--

DROP TABLE IF EXISTS `mydbr_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mydbr_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `header` text,
  `row` text,
  `footer` text,
  `folder_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mydbr_templates`
--

LOCK TABLES `mydbr_templates` WRITE;
/*!40000 ALTER TABLE `mydbr_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `mydbr_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mydbr_update`
--

DROP TABLE IF EXISTS `mydbr_update`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mydbr_update` (
  `latest_version` varchar(10) DEFAULT NULL,
  `next_check` int(11) DEFAULT NULL,
  `download_link` varchar(200) DEFAULT NULL,
  `info_link` varchar(200) DEFAULT NULL,
  `last_successful_check` int(11) DEFAULT NULL,
  `signature` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mydbr_update`
--

LOCK TABLES `mydbr_update` WRITE;
/*!40000 ALTER TABLE `mydbr_update` DISABLE KEYS */;
INSERT INTO `mydbr_update` VALUES ('4.5.1',1441283148,'http://www.mydbr.com/fileserve.php?get=mydbr_app.zip','http://www.mydbr.com/getpost.php?id=6432',1441110348,'3ea98c9c366c1632e360c3e71383b46e95372ba6');
/*!40000 ALTER TABLE `mydbr_update` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mydbr_user_agents`
--

DROP TABLE IF EXISTS `mydbr_user_agents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mydbr_user_agents` (
  `hash` varchar(50) NOT NULL,
  `user_agent` text,
  PRIMARY KEY (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mydbr_user_agents`
--

LOCK TABLES `mydbr_user_agents` WRITE;
/*!40000 ALTER TABLE `mydbr_user_agents` DISABLE KEYS */;
INSERT INTO `mydbr_user_agents` VALUES ('16923c53238bd8753cd1eb89d4af2e75','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36'),('1b1a9fe8dea603b93684d610b5808c02','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0'),('6d44eab61dcf5b1f0e6fa8f6595ee1bc','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),('e14f41f376cc3701f03d93ea21192f2a','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0');
/*!40000 ALTER TABLE `mydbr_user_agents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mydbr_userlogin`
--

DROP TABLE IF EXISTS `mydbr_userlogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mydbr_userlogin` (
  `user` varchar(128) NOT NULL DEFAULT '',
  `password` char(255) DEFAULT NULL,
  `name` varchar(60) DEFAULT NULL,
  `admin` tinyint(4) NOT NULL DEFAULT '0',
  `passworddate` datetime DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telephone` varchar(100) DEFAULT NULL,
  `authentication` int(11) NOT NULL DEFAULT '2',
  `ask_pw_change` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user`,`authentication`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mydbr_userlogin`
--

LOCK TABLES `mydbr_userlogin` WRITE;
/*!40000 ALTER TABLE `mydbr_userlogin` DISABLE KEYS */;
INSERT INTO `mydbr_userlogin` VALUES ('dba','d693c4871a99d7acf43c4b1112da0c6e','myDBR Administrator',1,'2015-08-07 15:06:39',NULL,NULL,2,0);
/*!40000 ALTER TABLE `mydbr_userlogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mydbr_version`
--

DROP TABLE IF EXISTS `mydbr_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mydbr_version` (
  `version` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mydbr_version`
--

LOCK TABLES `mydbr_version` WRITE;
/*!40000 ALTER TABLE `mydbr_version` DISABLE KEYS */;
INSERT INTO `mydbr_version` VALUES ('4.5.1');
/*!40000 ALTER TABLE `mydbr_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'mydbr'
--
/*!50003 DROP FUNCTION IF EXISTS `mydbr_style` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `mydbr_style`( inStyle varchar(150) ) RETURNS varchar(400) CHARSET utf8
    READS SQL DATA
    DETERMINISTIC
begin
declare vRet varchar(400);
select definition into vRet
from mydbr_styles
where name = inStyle;
return vRet;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_DBR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DBR`(vGroupName varchar(45))
BEGIN

select
	g.group_id as 'Group_id',
	g.group_name as 'Group_name',
	g.comment as 'Comment'
from concordancedb.groups g
where g.group_name like concat ('%', vGroupName, '%');

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_DBR_add_new_group` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DBR_add_new_group`(vGroupName varchar(45))
BEGIN

call concordancedb.sp_new_group(vGroupName);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_DBR_add_new_relation` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DBR_add_new_relation`(inName varchar(45), inDesc varchar(200))
BEGIN

declare result int;
declare vtext varchar( 100 );

call concordancedb.sp_add_new_relation(inName, inDesc, result);

if (result = 1)  then
  set vtext = concat('The new ', inName, ' relation was added.');  
else
  set vtext = concat('There was a problem adding the new ', inName , ' relation.');
  
end if;

select 'dbr.text', vtext;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_DBR_add_words_to_relation` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DBR_add_words_to_relation`(inRelationId int, inFirstWordId int, inSecondWordId int)
BEGIN
call concordancedb.sp_add_words_to_relation(inRelationId, inFirstWordId, inSecondWordId);
select 'dbr.text', 'test';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_DBR_add_word_to_group` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DBR_add_word_to_group`(inWordId int, inGroupId int)
BEGIN

call concordancedb.sp_add_word_to_group(inWordId , inGroupId );
select 'Hello';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_DBR_call_db_sp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DBR_call_db_sp`(vGroupName varchar(45))
BEGIN

call concordancedb.sp_new_group(vGroupName);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_DBR_context_for_word` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DBR_context_for_word`(in_word_id int)
BEGIN

  select 'dbr.title', in_word_id;

  select 'dbr.read_recipe';
  call concordancedb.get_locations_for_word(in_word_id);
  select 'dbr.text', 'Text';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_DBR_dummy_rpt` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DBR_dummy_rpt`(inGroupId int)
BEGIN

  select 'dbr.title', inGroupId;

  select 'dbr.text', concat('<a href=\"http://localhost/dblab/mydbr/report.php?r=7&m=1&h=229ec3dd8cd18ad65bdc1fdaad919c61192b32c3&u1=', inGroupId, '\">test</a>');


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_DBR_find_recipe` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DBR_find_recipe`(inName varchar(45), inAuther varchar(45), inCategoryId int, inContainsText varchar(200))
BEGIN

call concordancedb.get_recipe_by_params(inName, inAuther, inCategoryId, inContainsText);


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_DBR_get_complete_word_index` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DBR_get_complete_word_index`()
BEGIN

call sp_DBR_get_locations_for_group(0);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_DBR_get_locations_for_group` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DBR_get_locations_for_group`(inGroupId int)
BEGIN

call concordancedb.get_word_locations_for_group(inGroupId);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_DBR_get_words_for_group_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DBR_get_words_for_group_id`(inGroupId int)
BEGIN

call concordancedb.get_words_for_group(inGroupId);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_DBR_get_word_by_location` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DBR_get_word_by_location`(inRecipeId int, inLineIndex int, inWordInLineIndex int, inSectionId int)
BEGIN

select 'dbr.title', 'Words By Locations';
call concordancedb.get_words_by_location(inRecipeId, inLineIndex, inWordInLineIndex, inSectionId);


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_DBR_group_lookup` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DBR_group_lookup`(vGroupName varchar(45))
BEGIN

select 'dbr.report', 'sp_DBR_get_words_for_group_id','inGroupId=Group_id';

select
	g.group_id as 'Group_id',
	g.group_name as 'Group_name',
	g.comment as 'Comment'
from concordancedb.groups g
where g.group_name like concat ('%', vGroupName, '%');

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_DBR_StatisticsReport` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DBR_StatisticsReport`(
inReportID int,
inStartDate date,
inEndDate date
)
BEGIN

declare vDay date;
declare vEndTime datetime;
declare vCnt int;
declare vDayCnt int;
declare vProcName varchar(100);

select proc_name into vProcName
from mydbr_reports
where report_id = inReportID;

set vEndTime = addtime(cast(inEndDate as datetime), '23:59:59');

select datediff(vEndTime, inStartDate) into vDayCnt;

select 'dbr.pageview';

select name as 'Report', 
       proc_name as 'Procedure', 
       concat( inStartDate, ' - ', inEndDate) as 'Period'
from mydbr_reports
where proc_name = vProcName;

select count(*) into vCnt
from mydbr_statistics s
where proc_name = vProcName and s.start_time between inStartDate and vEndTime;


if (vDayCnt<0) then
  select 'dbr.hideheader';
  select 'Check the dates!';
else
  if (vCnt = 0 ) then
    select 'dbr.hideheader';
    select 'Report has not been run during selected period!';
  else
    if (vDayCnt<32) then

    create temporary table tmp_cnt (
    day date,
    cnt int
    ) ENGINE=MEMORY;

    insert into tmp_cnt ( day, cnt )
    select cast(start_time as date), count(*)
    from mydbr_statistics
    where proc_name= vProcName and start_time between inStartDate and vEndTime
    group by cast(start_time as date);

    while (vDayCnt >= 0) do
      set vDay = vEndTime - interval vDayCnt day;
      insert into tmp_cnt ( day, cnt )
      values (vDay, 0);

      set vDayCnt = vDayCnt -1;
    end while;

    select 'dbr.chart', 'bar';
    select 'dbr.chart.color', '0x0099CC';

    select day, sum(cnt)
    from tmp_cnt
    group by day;

    drop temporary table tmp_cnt;
  end if;

  select 'dbr.keepwithnext';

  select 
    ifnull(u.name , s.username) as 'User', 
    count(*) as 'Run count'
  from mydbr_statistics s left join mydbr_userlogin u on s.username=u.user
  where proc_name = vProcName and s.start_time between inStartDate and vEndTime
  group by 1
  order by 2 desc;


  select 'dbr.colstyle', 'exec_time', 'hh:mm:ss';

  select 
    ifnull(u.name , s.username) as 'User', 
    start_time as 'Report run', 
    timediff(s.end_time,s.start_time) as 'Execution time[exec_time]',
    query as 'Query'
  from mydbr_statistics s left join mydbr_userlogin u on s.username=u.user
  where proc_name = vProcName and s.start_time between inStartDate and vEndTime
  order by start_time desc;

  end if;
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_DBR_StatisticsSummary` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DBR_StatisticsSummary`(
inRowCount int,
inStartDate date,
inEndDate date
)
BEGIN
declare vEndTime datetime;

select 'dbr.parameters.show';
select 'dbr.title', concat('Statistics summary ', inStartDate, ' - ', inEndDate);

set vEndTime = addtime(cast(inEndDate as datetime), '23:59:59');

select 'dbr.subtitle', concat(inRowCount, ' Most active users');

/* Not included in distribution */
select 'dbr.report', 'sp_DBR_userusage', 'popup', '[Name]', 'inUser=Username', 'inStartDate=(inStartDate)', 'inEndDate=(inEndDate)';
select 'dbr.hidecolumns', 'Username';

select 'dbr.sum', 'Cnt';

set @num = 0;

select @num := (@num + 1) as '#', 
     Name, 
     Cnt as 'Count',
     Username
from ( select ifnull(u. name , s.username) as 'Name', s.username as 'Username', count(*) as 'Cnt'
  from (select @rows := 0) as x, mydbr_statistics s left join mydbr_userlogin u on s.username= u.user
  where s.start_time between inStartDate and vEndTime
  group by 1, s.username
  having ((@rows := @rows + 1) <= inRowCount )
  order by 3 desc
) as q;


select 'dbr.subtitle', concat(inRowCount, ' Most used reports');

select 'dbr.report', 'sp_DBR_StatisticsReport','inReportID=report_id','inStartDate=(inStartDate)', 'inEndDate=(inEndDate)';
select 'dbr.hidecolumns', 'report_id';
select 'dbr.sum', 'Count';

set @num = 0;

select  @num := (@num + 1) as '#', 
    Name,
    sp as 'Stored procedure', 
    Cnt as 'Count',
    report_id
from (
  select 
    r.name as 'Name', 
    s.proc_name as 'sp', 
    count(*) as 'Cnt', 
    r.report_id
  from mydbr_statistics s, mydbr_reports r, (select @rows := 0) as x
  where s.proc_name=r.proc_name and s.start_time between inStartDate and vEndTime
  group by r.name, s.proc_name, r.report_id
  having ((@rows := @rows + 1) <= inRowCount )
  order by 3 desc
) as q;

select 'dbr.subtitle', concat(inRowCount, ' Slowest reports');


select 'dbr.report', 'sp_DBR_StatisticsReport','inReportID=report_id','inStartDate=(inStartDate)', 'inEndDate=(inEndDate)';
select 'dbr.hidecolumns', 'report_id';

set @num = 0;

select 'dbr.colstyle', 'Min', 'hh:mm:ss';
select 'dbr.colstyle', 'Avg', 'hh:mm:ss';
select 'dbr.colstyle', 'Max', 'hh:mm:ss';

select  @num := (@num + 1) as '#', 
    name as 'Report',
    proc_name as 'Stored procedure',
    Counts as 'Count',
    Mini as 'Min',
    Avge as 'Avg',
    Maxi as 'Max',
    report_id
from (
  select
    r.name,
    s.proc_name,
    count(*) as 'Counts', 
    sec_to_time(min(time_to_sec(timediff(s.end_time,s.start_time)))) as 'Mini', 
    sec_to_time(cast(avg(time_to_sec(timediff(s.end_time,s.start_time))) as signed)) as 'Avge', 
    sec_to_time(max(time_to_sec(timediff(s.end_time,s.start_time)))) as 'Maxi', 
    r.report_id
  from mydbr_statistics s, mydbr_reports r, (select @rows := 0) as x
  where s.proc_name = r.proc_name and s.start_time between inStartDate and vEndTime
  group by r.name, s.proc_name, r.report_id
  having ((@rows := @rows + 1) <= inRowCount )
  order by 5 desc
) as q;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_DBR_words_by_recipe` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DBR_words_by_recipe`(inRecipeId int)
BEGIN

select 'dbr.report', 'sp_DBR_context_for_word','in_word_id=id';

call concordancedb.get_recipe_words_by_recipe_id(inRecipeId);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_AmIAdmin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_AmIAdmin`(inUsername varchar(60), inAuth int)
BEGIN
declare vAdmin int;
declare vMyName varchar(60);


call sp_MyDBR_AmIAdminOut(inUsername, inAuth, vAdmin);

select name into vMyName
from mydbr_userlogin
where user = inUsername and authentication=inAuth;

select vAdmin, vMyName;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_AmIAdminOut` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_AmIAdminOut`( inUsername  varchar(128), inAuth int, out outAdmin int(11) )
BEGIN

declare vAdmin int;

if ((inUsername = 'root' or inUsername like 'root@%') and inAuth=1) then
	set outAdmin = 1;
else
	select admin into vAdmin
	from mydbr_userlogin
	where user = inUsername and authentication=inAuth;

	if (vAdmin=1) then
		set outAdmin = 1;
	else
		set outAdmin = 0;
	end if;
end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_checkDemo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_checkDemo`(inShowCreate int)
begin
declare vReportCount int;
declare vDemoCount int;

select count(*) into vDemoCount
from mydbr_reports 
where proc_name like 'sp_DBR_demo_%';

if ( vDemoCount > 0) then
	select 1;
else 
	if (inShowCreate=1) then
		select 0;
	else
		call sp_MyDBR_MyReportCnt( vReportCount );
		
		if ( vReportCount > 0 ) then
			select -1;
		else 
			select 0;
		end if;
	end if;
end if;
	
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_db_columns` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_db_columns`(
inDB varchar(64),
inTable varchar(64)
)
begin

select column_name, column_type
from information_schema.columns 
where table_schema=cast( inDB AS CHAR CHARACTER SET utf8) COLLATE utf8_general_ci 
and table_name=cast( inTable AS CHAR CHARACTER SET utf8) COLLATE utf8_general_ci
order by ordinal_position;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_db_dbs` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_db_dbs`(
)
begin

show databases;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_db_objects` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_db_objects`(
inDB varchar(64)
)
begin

select table_name, 'T', 1
from information_schema.tables 
where table_schema=cast( inDB AS CHAR CHARACTER SET utf8) COLLATE utf8_general_ci and table_name not like 'mydbr_%'
union
select routine_name, substr(routine_type, 1,1), 2
from information_schema.routines 
where routine_schema=cast( inDB AS CHAR CHARACTER SET utf8) COLLATE utf8_general_ci 
and routine_name not like 'sp_MyDBR%' and routine_name not like 'mydbr_%'
order by 3, 2 desc, 1;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_editor_hint` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_editor_hint`(
in_db varchar(512) 
)
begin

set @s = concat( 'select table_schema, table_name, column_name from information_schema.columns where table_schema in (',in_db,')');
prepare stmt from @s;
execute stmt;
deallocate prepare stmt;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_ext_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_ext_user`(
inUser varchar(128), 
inName varchar(60),
inEmail varchar(100),
inTelephone varchar(100),
inAdmin int,
inAuth int
)
BEGIN
	declare vExists int;
	declare vName varchar(60);
	declare vEmail varchar(100);
	declare vTelephone varchar(100);
	declare vAdmin int;

	select 1, name, email, telephone, admin into vExists, vName, vEmail, vTelephone, vAdmin
	from mydbr_userlogin
	where user = inUser and authentication=inAuth;
	
	if ( vExists = 1 ) then
		/* email & admin can be null */
		select ifnull( inEmail, vEmail ) into inEmail;
		select ifnull( inAdmin, vAdmin ) into inAdmin;
		select ifnull( inTelephone, vTelephone ) into inTelephone;
	
		if (vName!=inName or ifnull(vEmail,'')!=ifnull(inEmail,'') or ifnull(vTelephone,'')!=ifnull(inTelephone,'') or vAdmin!=inAdmin) then
			update mydbr_userlogin
			set name = inName, email=inEmail, telephone=inTelephone, admin=inAdmin
			where user = inUser and authentication=inAuth;
		end if;
	else 
		select ifnull( inAdmin, 0 ) into inAdmin;
		call sp_MyDBR_UserNew( inUser, inName, 'no_direct_access', inAdmin, inEmail, inTelephone, inAuth, 0);
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_ext_user_group` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_ext_user_group`(
inUser varchar(128),
inGroup varchar(100),
inClear int,
inAuth int
)
BEGIN

declare vExists int;

if (inClear=1) then
	call sp_MyDBR_ext_user_group_clear( inUser, inAuth );
end if;

select count(*) into vExists
from mydbr_groups
where name = inGroup;

if (vExists = 0) then
	insert into mydbr_groups ( name )
	values ( inGroup );
end if;

insert into mydbr_groupsusers ( group_id, user, authentication )
select group_id, inUser, inAuth
from mydbr_groups
where name = inGroup;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_ext_user_group_clear` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_ext_user_group_clear`(
inUser varchar(128),
inAuth int
)
BEGIN

delete from mydbr_groupsusers
where user=inUser and authentication=inAuth;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_favourites` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_favourites`(
inUser varchar(128),
inAuthentication int
)
BEGIN

select f.report_id, r.name, f.url, f.id, r.explanation
from mydbr_favourite_reports f, mydbr_reports r
where f.report_id=r.report_id
	and f.user=inUser and f.authentication=inAuthentication;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_favourite_del` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_favourite_del`(
inUser varchar(128),
inAuthentication int,
inFavID int
)
BEGIN

delete from mydbr_favourite_reports
where user = inUser and authentication=inAuthentication and id=inFavID;

select 'not_set';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_favourite_set` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_favourite_set`(
inUser varchar(128),
inAuthentication int,
inReportID int,
inURL varchar(512)
)
BEGIN
declare vRet varchar(10);
declare vCnt int;

select count(*) into vCnt
from mydbr_favourite_reports
where user = inUser and authentication=inAuthentication and report_id = inReportID and ifnull(url, '') = ifnull(inUrl, '');

if (vCnt>0) then
	set vRet = 'not_set';

	delete from mydbr_favourite_reports
	where user = inUser and authentication=inAuthentication and report_id = inReportID and ifnull(url, '') = ifnull(inUrl, '');
else 
	set vRet = 'set';

	insert into mydbr_favourite_reports ( user, authentication, report_id, url )
	values (inUser, inAuthentication, inReportID, inURL);
end if;

select vRet;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_FolderDel` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_FolderDel`( inFolderID int )
BEGIN
	declare vReportCnt int;
	declare vFolderCnt int;
	declare vFolderName varchar(100);

	select name into vFolderName
	from mydbr_folders
	where folder_id = inFolderID;

	select count(*) into vReportCnt 
	from mydbr_reports
	where folder_id = inFolderID;

	select count(*) into vFolderCnt 
	from mydbr_folders
	where mother_id = inFolderID;
	
	if (vReportCnt+ vFolderCnt >0) then
		select concat("Folder '", vFolderName , "' is not empty. Cannot delete it.");
	else
		delete 
		from mydbr_folders
		where folder_id = inFolderID and folder_id not in (
			select folder_id from mydbr_reports
		);
		
		delete from mydbr_folders_priv where folder_id = inFolderID;
			
		select 'OK';
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_FolderHavePrivs` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_FolderHavePrivs`(inLevel int, inUsername varchar(80), inAuth int)
begin
declare vIAmAdmin int;

call sp_MyDBR_AmIAdminOut(inUsername, inAuth, vIAmAdmin);

if (vIAmAdmin = 1) then 
	select 1;
else
	select count(*)
	from mydbr_folders_priv p
	where p.folder_id = inLevel and 
		( ((p.username = inUsername and p.authentication=inAuth) or (p.username = 'PUBLIC' and p.authentication=0))
		and p.group_id = 0 )
		or p.group_id in (
			select u.group_id
			from mydbr_groupsusers u
			where u.user = inUsername and u.authentication=inAuth
		);
end if;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_FolderInfoGet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_FolderInfoGet`(inFolderID int)
BEGIN
select name, reportgroup, explanation
from mydbr_folders
where folder_id=inFolderID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_FolderInfoSet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_FolderInfoSet`(
inFolderID int, 
inFname varchar(100), 
inReportgroup int,
inExplanation varchar(4096)
)
BEGIN
update mydbr_folders
set name = inFname, reportgroup = inReportgroup, explanation = inExplanation
where folder_id= inFolderID;
select 'OK';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_FolderMove` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_FolderMove`(vID int, vFolder int )
BEGIN

declare vMother int;
declare vMoveOK int;

set vMoveOK = 1;
set vMother = vFolder;

repeat
	select mother_id into vMother
	from mydbr_folders
	where folder_id = vMother;
	
	if (vMother = vID or vID = vFolder) then
		set vMoveOK = 0;
		select 'Cannot move folder into itself!';
	end if;

until (vMoveOK = 0 or vMother is null)
end repeat;

if (vMoveOK=1) then
	update mydbr_folders
	set mother_id=vFolder
	where folder_id = vID;
end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_FolderNew` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_FolderNew`( 
inLevel int, 
inFolder varchar(150), 
inHiddenFolder int, 
inReportgroup int,
inExplanation varchar(4096)
)
BEGIN

insert into mydbr_folders ( folder_id, mother_id, name, invisible, reportgroup, explanation )
values (null, inLevel, inFolder, 2, inReportgroup, inExplanation);
	
select 'OK', last_insert_id();

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_FolderPrivAdd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_FolderPrivAdd`( inFolderID int, inUsername varchar(128), inAuth int, inGroupID int )
BEGIN

declare vCnt int;

select count(*) into vCnt
from mydbr_folders_priv
where folder_id=inFolderID and username=inUsername and group_id= inGroupID and authentication=inAuth;

if (vCnt=0) then
	insert into mydbr_folders_priv (folder_id, username, authentication, group_id)
	values ( inFolderID, inUsername, inAuth, inGroupID );
end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_FolderPrivDel` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_FolderPrivDel`( inFolderID int, inUsername varchar(128), inAuth int, inGroupID int )
BEGIN

delete from mydbr_folders_priv
where folder_id=inFolderID and username=inUsername and group_id=inGroupID and authentication= inAuth;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_FolderPrivsGroupGet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_FolderPrivsGroupGet`( inFolderID int )
BEGIN
select p.group_id, g.name, 1
from mydbr_folders_priv p, mydbr_groups g
where p.group_id>0 and p.folder_id = inFolderID and p.group_id=g.group_id
union
select g.group_id, g.name, 0
from mydbr_groups g
where g.group_id not in (
	select p.group_id
	from mydbr_folders_priv p
	where p.group_id>0 and p.folder_id = inFolderID
);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_FolderPrivsUserGet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_FolderPrivsUserGet`(inFolderID int, inAuth int, inSearch varchar(200) )
BEGIN
declare vAuth_DB int;
declare vAuth_myDBR int;
declare vAuth_SSO int;
declare vAuth_LDAP int;
declare vAuth_Custom int;

select (inAuth & 1) into vAuth_DB;
select (inAuth & 2) into vAuth_myDBR;
select (inAuth & 4) into vAuth_SSO;
select (inAuth & 8) into vAuth_LDAP;
select (inAuth & 16) into vAuth_Custom;

create temporary table Users_tmp (
user varchar(128) not null,
name varchar(60) default null,
auth_source int,
haspriv int
) ENGINE=MEMORY;


if (vAuth_DB > 0) then
	insert into Users_tmp ( user, name, auth_source, haspriv )
	select p.username, i.Full_name, vAuth_DB, 1
	from mysql.user u, mydbr_folders_priv p left 
		join mysql.user_info i on ( p.username = i.User )
	where p.username!='' and p.username = u.user and p.folder_id = inFolderID and p.authentication= vAuth_DB;

	if (inSearch!='') then
		insert into Users_tmp ( user, name, auth_source, haspriv )
		select u.user, i.Full_name, vAuth_DB, 0
		from mysql.user u, mydbr_folders_priv p left join mysql.user_info i on ( u.user = i.User )
		where u.user like concat('%', inSearch ,'%') and not exists (
			select * 
			from mydbr_folders_priv p
			where p.username = u.user and p.folder_id = inFolderID and p.authentication= vAuth_DB
		)
		LIMIT 20;
	end if;
end if;

if (vAuth_myDBR > 0 or vAuth_SSO > 0 or vAuth_LDAP > 0 or vAuth_Custom>0) then
	insert into Users_tmp ( user, name, auth_source, haspriv )
	select p.username, u.name, u.authentication, 1
	from mydbr_userlogin u, mydbr_folders_priv p
	where p.username!='' and p.username = u.user and p.authentication=u.authentication
		and p.folder_id = inFolderID 
		and p.authentication in (2,4,8,16);

	if (inSearch!='') then
		insert into Users_tmp ( user, name, auth_source, haspriv )
		select u.user, u.name, u.authentication, 0
		from mydbr_userlogin u
		where (u.user like concat('%', inSearch ,'%') or u.name like concat('%', inSearch ,'%')) and not exists (
			select * 
			from mydbr_folders_priv p
			where p.username = u.user and p.authentication=u.authentication and 
			p.folder_id = inFolderID and 
			p.authentication in (2,4,8,16)
		)
		LIMIT 20;
	end if;
end if;


select t.user, t.name, a.name, t.auth_source, t.haspriv
from Users_tmp t, mydbr_authentication a
where t.auth_source = a.mask
union
select p.username, null, null, 0, 1
from mydbr_folders_priv p
where p.folder_id = inFolderID and p.authentication=0 and p.username in ('PUBLIC')
order by 5 desc, 1;

drop temporary table Users_tmp;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_GetLatestVersion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_GetLatestVersion`()
begin

select latest_version, next_check, download_link, info_link, last_successful_check, signature
from mydbr_update
limit 1;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_GetOptions` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_GetOptions`( inUser varchar(128), inAuthentication int )
begin

select o1.name, o1.value 
from mydbr_options o1
where o1.user = inUser and o1.authentication = inAuthentication or ( o1.user = '' and o1.authentication = 0 
	and not exists ( 
		select * 
		from mydbr_options o2 
		where o2.name = o1.name and o2.user = inUser and o2.authentication = inAuthentication 
	)
)
order by o1.name;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_GroupAdd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_GroupAdd`(inName varchar(100))
BEGIN
declare vCnt int;

select count(*) into vCnt
from mydbr_groups 
where name = inName;

if (vCnt=0) then
	insert into mydbr_groups ( name )
	values ( inName );
	select 'OK', null;
else
	select 'Error', concat("Group '", inName, "' already exists");
end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_GroupDel` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_GroupDel`(inGroupID int)
BEGIN

declare vCnt int;

select count(*) into vCnt
from mydbr_groupsusers 
where group_id = inGroupID;

if (vCnt>0) then
	select 'Error', '#{MYDBR_GROUP_CANNNOT_REM}';
else

	delete from mydbr_reports_priv where group_id = inGroupID;
	delete from mydbr_folders_priv where group_id = inGroupID;
	delete from mydbr_groupsusers where group_id = inGroupID;

	delete from mydbr_groups
	where group_id = inGroupID;
	
	select 'OK', null;
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_GroupGet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_GroupGet`()
BEGIN
select group_id, name
from mydbr_groups
order by name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_GroupLevelGet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_GroupLevelGet`(
inLevel int,
isAdmin int,
inUsername varchar(80), 
inAuth int
)
begin
declare vMother_id int;
declare vName varchar(100);
declare vLevel_order int;
declare vLevelExists int;

create temporary table TempTable ( 
folder_id int, 
name char(100),
level_order int,
no_priv int
) ENGINE=MEMORY;

create temporary table TempTableID ( 
folder_id int
) ENGINE=MEMORY;

select count(*) into vLevelExists
from mydbr_folders
where folder_id = inLevel;

if (vLevelExists>0) then
	set vLevel_order = 1;
	while isnull(inLevel)=0 do
		select mother_id, name into vMother_id, vName
		from mydbr_folders
		where folder_id = inLevel;

		insert into TempTable values (inLevel, vName, vLevel_order, 0);
		set inLevel = vMother_id;
		set vLevel_order = vLevel_order + 1;
	end while;
else 
	insert into TempTable 
	select 1, name, 1, 0
	from mydbr_folders
	where folder_id = 1;
end if;	

if (isAdmin=0) then
	insert into TempTableID 
	select folder_id
	from TempTable;

	update TempTable
	set no_priv = 1
	where folder_id not in (
		select p.folder_id
		from TempTableID t, mydbr_folders_priv p
		where p.folder_id = t.folder_id and 
			( ((p.username = inUsername and p.authentication=inAuth) or (p.username = 'PUBLIC' and p.authentication=0))
			and p.group_id = 0 )
			or p.group_id in (
				select u.group_id
				from mydbr_groupsusers u
				where u.user = inUsername and u.authentication=inAuth
			)
	);
end if;


select folder_id, name, no_priv
from TempTable
order by level_order desc;

drop temporary table TempTable;
drop temporary table TempTableID;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_GroupNewUserAdd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_GroupNewUserAdd`(inGroupID int, inNameSearch varchar(128), inAuth int)
BEGIN
declare vCnt int;
select count(*) into vCnt
from mydbr_groupsusers m
where group_id = inGroupID and user= inNameSearch and authentication = inAuth;

if (vCnt=0) then
	insert into mydbr_groupsusers (group_id, user, authentication)
	values (inGroupID, inNameSearch, inAuth);
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_GroupNewUserGet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_GroupNewUserGet`( inGroupID int, inNameSearch varchar(128), inAuth int)
BEGIN
declare vAuth_DB int;
declare vAuth_myDBR int;
declare vAuth_SSO int;
declare vAuth_LDAP int;

select (inAuth & 1) into vAuth_DB;
select (inAuth & 2) into vAuth_myDBR;
select (inAuth & 4) into vAuth_SSO;
select (inAuth & 8) into vAuth_LDAP;

create temporary table Users_tmp (
user varchar(128) not null,
name varchar(60) default null,
auth_source int
) ENGINE=MEMORY;

select lower(inNameSearch) into inNameSearch;

if (vAuth_DB > 0) then
	insert into Users_tmp ( user, name, auth_source )
	select u.User, i.Full_name, vAuth_DB
	from mysql.user u left join mysql.user_info i on ( u.user = i.User )
	where lower(u.user) like concat('%', inNameSearch, '%') and u.user != 'root' and u.user not in (
		select m.user
		from mydbr_groupsusers m
		where group_id = inGroupID and m.authentication= vAuth_DB
	);
end if;

if (vAuth_myDBR > 0 or vAuth_SSO > 0 or vAuth_LDAP > 0) then
	insert into Users_tmp ( user, name, auth_source )
	select u.user, u.name, u.authentication
	from mydbr_userlogin u
	where (lower(u.user) like concat('%', inNameSearch, '%') or lower(u.name) like concat('%', inNameSearch, '%'))
	and u.user != 'root' 
	and u.authentication in (2, 4, 8)
	and not exists (
		select *
		from mydbr_groupsusers m
		where m.user=u.user and m.authentication=u.authentication
		and m.group_id = inGroupID
	);
end if;

select t.user, t.name, a.name, t.auth_source
from Users_tmp t, mydbr_authentication a
where t.auth_source = a.mask;

drop temporary table Users_tmp;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_GroupUpdate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_GroupUpdate`(inGroupID int, inName varchar(100))
BEGIN
update mydbr_groups 
set  name = inName
where group_id = inGroupID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_GroupUsersDel` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_GroupUsersDel`( inGroupID int, inUsername varchar(128), inAuth int)
BEGIN
delete 
from mydbr_groupsusers
where group_id = inGroupID and user = inUsername and authentication = inAuth;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_GroupUsersDelUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_GroupUsersDelUser`( inUsername varchar(128), inAuth int)
BEGIN

delete 
from mydbr_groupsusers
where user = inUsername and authentication = inAuth;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_GroupUsersGet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_GroupUsersGet`(inGroupID int, inAuth int)
BEGIN
declare vAuth_DB int;
declare vAuth_myDBR int;
declare vAuth_SSO int;
declare vAuth_LDAP int;
declare vAuth_Custom int;

select (inAuth & 1) into vAuth_DB;
select (inAuth & 2) into vAuth_myDBR;
select (inAuth & 4) into vAuth_SSO;
select (inAuth & 8) into vAuth_LDAP;
select (inAuth & 16) into vAuth_Custom;

create temporary table Users_tmp (
user varchar(128) not null,
name varchar(60) default null,
auth_source int
) ENGINE=MEMORY;

if (vAuth_DB > 0) then
	insert into Users_tmp ( user, name, auth_source )
	select u.user, i.Full_name, u.authentication
	from mydbr_groupsusers u left join mysql.user_info i on ( u.user = i.User )
	where u.group_id = inGroupID and u.authentication=vAuth_DB;
end if;

if (vAuth_myDBR > 0 or vAuth_SSO > 0 or vAuth_LDAP > 0 or vAuth_Custom > 0) then
	insert into Users_tmp ( user, name, auth_source )
	select u.user, i.name, i.authentication
	from mydbr_groupsusers u, mydbr_userlogin i
	where u.user = i.user and u.group_id = inGroupID and u.authentication=i.authentication and
	i.authentication in (2,4,8,16);
end if;

select t.user, t.name, a.name, t.auth_source
from Users_tmp t, mydbr_authentication a
where t.auth_source = a.mask;

drop temporary table Users_tmp;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_HasStyleFunction` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_HasStyleFunction`()
begin

select count(*) from information_schema.routines where routine_name = 'mydbr_style' and routine_schema = database();	

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_has_unattached_report` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_has_unattached_report`(
in_proc varchar(128)
)
begin

declare vCnt int;

select count(*) into vCnt
from mydbr_reports
where proc_name=in_proc;

if (vCnt=0) then
	select count(*) into vCnt
	from information_schema.ROUTINES
	where ROUTINE_SCHEMA=database() and ROUTINE_TYPE='PROCEDURE' and ROUTINE_NAME COLLATE utf8_general_ci = in_proc;

	if (vCnt>0) then
		select 1;
	else
		select 0;
	end if;
else
	select 0;
end if;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_IsWebReport` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_IsWebReport`( 
inReportID int
)
begin

select count(*)
from mydbr_reports_priv p
where p.report_id = inReportID and p.authentication=0 and p.username='MYDBR_WEB';

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_IsWebReportName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_IsWebReportName`( 
vName varchar(100)
)
begin

select count(*)
from mydbr_reports_priv p
	join mydbr_reports r on p.report_id=r.report_id
where (r.proc_name = vName or lower(md5(r.proc_name)) = lower(vName)) and p.authentication=0 and p.username='MYDBR_WEB';

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_languages` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_languages`()
begin
select lang_locale, language
from mydbr_languages
order by language;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_LicensesAdd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_LicensesAdd`(
inOwner varchar(255), 
inEmail varchar(255), 
inCompany varchar(255), 
inHost varchar(255), 
inLicense_key varchar(80), 
inDB varchar(10), 
inExpiration date,
inType varchar(255),
inVersion varchar(255)
)
BEGIN
declare vCnt int;

select count(*) into vCnt
from mydbr_licenses
where license_key = inLicense_key;

if (vCnt=0) then
	insert into mydbr_licenses ( owner, email, company, host, license_key, db, expiration, `type`, version )
	values (inOwner, inEmail, inCompany, inHost, inLicense_key, inDB, inExpiration, inType, inVersion );
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_LicensesDel` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_LicensesDel`(inID int)
BEGIN
delete 
from mydbr_licenses
where id=inID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_LicensesGet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_LicensesGet`()
BEGIN
select id, owner, email, company, host, license_key, db, expiration, `type`, version
from mydbr_licenses
order by `type` desc, expiration desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_LinkedReport` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_LinkedReport`(vName varchar(30))
BEGIN

select proc_name, name
from mydbr_reports 
where name like concat('%', vName, '%') or proc_name like concat('%', vName, '%')
limit 0,20;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_locale_formats` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_locale_formats`( inLocale char(5) )
begin

select date_format, time_format, thousand_separator, decimal_separator
from mydbr_languages
where lower(lang_locale) = lower(inLocale);

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_localization` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_localization`(
in_lang_locales varchar(255) 
)
begin
select lang_locale, keyword, translation
from mydbr_localization
where in_lang_locales like concat('%',lang_locale,'%');
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_localization_cnt` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_localization_cnt`()
begin
select keyword, count(*)
from mydbr_localization
group by keyword;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_localization_get` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_localization_get`(
inKeyword varchar(50)
)
begin
select lang_locale, translation
from mydbr_localization
where keyword = inKeyword;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_localization_set` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_localization_set`(
inKeyword varchar(50),
inLangLocale varchar(50),
inTranslation varchar(1024)
)
begin
declare vCnt int;

select count(*) into vCnt
from mydbr_localization
where keyword = inKeyword and lang_locale =inLangLocale;

if (inTranslation='') then
	delete from mydbr_localization
	where keyword = inKeyword and lang_locale =inLangLocale;
else 
	if (vCnt=0) then
		insert into mydbr_localization ( keyword, lang_locale, translation)
		values (inKeyword, inLangLocale, inTranslation);
	else 
		update mydbr_localization
		set translation = inTranslation
		where keyword = inKeyword and lang_locale =inLangLocale;
	end if;
end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_Log` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_Log`( inUser varchar(128), inIP varchar(40), inTitle varchar(30), inMsg text )
begin
insert into mydbr_log ( user, log_ip, log_time, log_title, log_message )
values (  inUser, inIP, now(), inTitle, inMsg );
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_MyReportCnt` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_MyReportCnt`( out outReport int )
begin
select count(*) into outReport
from mydbr_reports 
where proc_name not in ('sp_DBR_StatisticsSummary', 'sp_DBR_StatisticsReport');
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_MyReportCount` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_MyReportCount`()
begin
declare vReportCount int;

call sp_MyDBR_MyReportCnt( vReportCount );

select vReportCount;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_NotificationGet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_NotificationGet`( inID int )
begin
select notification
from mydbr_notifications
where id=inID;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_NotificationSet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_NotificationSet`(inID int, inNotification text )
begin

declare vCnt int;

select count(*) into vCnt
from mydbr_notifications
where id=inID;

if (vCnt=0) then
	insert into mydbr_notifications (id, notification)
	values (inID, inNotification);
else
	update mydbr_notifications 
	set notification = inNotification
	where id=inID;
end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_options_reset` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_options_reset`(inUser varchar(128), inAuthentication int )
begin

delete 
from mydbr_options 
where user = inUser and authentication = inAuthentication;
	
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_ParamClear` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_ParamClear`(
inProcname varchar(100)
)
begin
delete from mydbr_params
where proc_name=inProcname;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_ParamDefaultGet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_ParamDefaultGet`(
inProcname varchar(100)
)
begin
select p.param, m.query
from mydbr_params p, mydbr_param_queries m
where p.proc_name=inProcname and default_value=m.name and p.default_value is not null;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_ParamDefaultsGet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_ParamDefaultsGet`()
BEGIN

select name, query, coltype
from mydbr_param_queries
where coltype = 3
order by name;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_ParamGet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_ParamGet`(
inProcname varchar(100)
)
begin
select param, query_name, title, default_value, ifnull(optional,0), ifnull(only_default,0), suffix, options
from mydbr_params
where proc_name=inProcname;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_ParamQueriesGet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_ParamQueriesGet`( inAll tinyint )
BEGIN

select name, query, coltype, options
from mydbr_param_queries
where coltype < inAll or (inAll=3 and coltype>3)
order by name;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_ParamQueryAdd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_ParamQueryAdd`(
inName varchar(30), 
inQuery varchar(4096), 
inColType tinyint,
inOptions varchar(255)
)
BEGIN
declare vCnt int;

select count(*) into vCnt
from mydbr_param_queries
where name = inName;

if (vCnt=0) then
	insert into mydbr_param_queries ( name, query, coltype, options )
	values ( inName, inQuery, inColType, inOptions );

	select 'OK', null;
else
	select 'Error', concat("Parameter query named '", inName, "' already exists.");
end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_ParamQueryDel` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_ParamQueryDel`(inName varchar(100))
BEGIN
declare vCnt int;

select count(*) into vCnt 
from mydbr_params
where query_name = inName;

if (vCnt = 0) then
	delete from mydbr_param_queries
	where name = inName;

	select 'OK', null;
else
	select 'ERROR', 'Cannot delete parameter query in use!';
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_ParamQueryGet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_ParamQueryGet`(inName varchar(100))
BEGIN
select query, coltype, options
from mydbr_param_queries
where name=inName;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_ParamQueryUpdate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_ParamQueryUpdate`(
inName varchar(30), 
inQuery varchar(4096), 
inColType tinyint,
inOptions varchar(255)
)
BEGIN
update mydbr_param_queries
set query = inQuery, coltype=inColType, options=inOptions
where name = inName;
select 'OK';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_ParamSet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_ParamSet`(
inProcname varchar(100),
inParam varchar(100),
inQuery varchar(30),
inTitle varchar(255),
inDefault varchar(30),
inOptional int,
inOnlyDefault int,
inSuffix varchar(80),
inOptions varchar(1024)
)
begin
insert into mydbr_params (proc_name, param, query_name, title, default_value, optional, only_default, suffix, options)
values (inProcname, inParam, inQuery, inTitle, inDefault, inOptional, inOnlyDefault, inSuffix, inOptions);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_password_reset_token` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_password_reset_token`( 
in_user varchar(128),
in_email varchar(128),
in_allow_admin_change int,
in_ip_address varchar(255)
)
begin

declare v_cnt int;
declare v_user varchar(128);
declare v_email varchar(128);
declare v_perishable varchar(20);

select count(*) into v_cnt
from mydbr_userlogin 
where user = ifnull(in_user, user) and email=ifnull(in_email, email) and authentication = 2 and (in_allow_admin_change=1 or admin=0);

if (v_cnt>1) then
	select 'multiemail', null, null;
else
	select user, email into v_user, v_email
	from mydbr_userlogin 
	where ifnull(user, '') = ifnull(in_user, ifnull(user, '')) and ifnull(email, '')=ifnull(in_email, ifnull(email, '')) 
	and authentication = 2 and (in_allow_admin_change=1 or admin=0);

	if (v_user is null) then
	  select null, null, null;
	else 
	  if (v_email='' or v_email is null) then
	    select 'noemail', null, null;
	  else 
	    set v_perishable = substring(sha1( concat(now(), rand(), v_user)), 2, 20 );

	    delete from mydbr_password_reset where user = v_user;

	    insert into mydbr_password_reset (user, perishable_token, request_time, ip_address) 
	    values ( v_user, v_perishable, now(), in_ip_address );

	    select v_perishable, name, email
	    from mydbr_userlogin 
	    where user = v_user and authentication = 2;
	  end if;
	end if;
end if;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_ProcedureParams` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_ProcedureParams`( inParam_list varchar(2500) )
begin
declare vParam_list varchar(2500);
declare vParam varchar(100);
declare vLength int;
declare vTypeDef varchar(100);
declare vNextComma int;
declare vRealComma int;
declare vParamOrder int;

set vParam_list = inParam_list;

create temporary table ReturnValuesTmp (
param_order int,
param_name varchar(100),
type varchar(20),
strlength int
) ENGINE=MEMORY;


set vParamOrder = 1;

while(length(vParam_list)>0) do

	while (ascii(vParam_list) in (32, 10, 13, 9)) do
		set vParam_list = substring( vParam_list, 2);
	end while;
	
	set vLength = 0;
	
    select substring_index(vParam_list, ',', 1) into vParam;
	
	if (locate("(", vParam) > 0 and locate(")", vParam)=0 ) then
		set vNextComma = locate(",", vParam_list);
		set vRealComma = locate(",", substring(vParam_list, vNextComma+1));
		if (vRealComma>0) then
			set vParam =  substring(vParam_list, 1, vNextComma+vRealComma);
		else
			set vParam = vParam_list;
		end if;
	end if;
    select substring(vParam_list, length(vParam)+1) into vParam_list;
    if (length(vParam_list)>0) then
        if (left(vParam_list,1)=',') then
            select trim(substr(vParam_list,2)) into vParam_list;
        end if;
    end if;
    select trim(vParam) into vParam;
	
	while (ascii(vParam) in (10, 13, 9)) do
		set vParam = substring( vParam, 2);
	end while;
    if (vParam like "in %") then
        select trim(substr(vParam,4)) into vParam;
    end if;
    if (vParam like "out %") then
        select trim(substr(vParam,5)) into vParam;
    end if;
    if (vParam like "inout %") then
        select trim(substr(vParam,7)) into vParam;
    end if;
    if (vParam like '%(%)%' and vParam not like '%(%,%)%') then
        set vLength = substring(vParam,locate('(',vParam)+1,locate(')', vParam)-locate('(',vParam)-1);
    end if;
    set vTypeDef = substring(vParam, locate(' ',vParam)+1);
    if (vTypeDef like '%(%)%') then
        select substring( vTypeDef, 1,  locate('(', vTypeDef)-1) into vTypeDef;
    end if;
	set vTypeDef = replace( vTypeDef, char(10), '');
	set vTypeDef = replace( vTypeDef, char(13), '');
	set vTypeDef = replace( vTypeDef, char(9), '');
	set vTypeDef = trim(vTypeDef);
    insert into ReturnValuesTmp
    select vParamOrder, substring_index(vParam, ' ', 1), vTypeDef, vLength;
	set vParamOrder = vParamOrder + 1;
end while;

update ReturnValuesTmp 
set strlength=255
where lower(type) like '%text%';

update ReturnValuesTmp set type='string'
where lower(type) in ('char', 'varchar', 'blob') or lower(type) like '%text' or lower(type) like '%blob';

update ReturnValuesTmp set type='integer'
where lower(type) in ('tinyint', 'smallint', 'mediumint', 'int', 'integer', 'bigint', 'year');

update ReturnValuesTmp set type='float'
where lower(type) in ('float', 'decimal', 'double', 'double precision', 'real');

update ReturnValuesTmp set type='datetime'
where lower(type) in ('timestamp');

select param_name, type, strlength
from ReturnValuesTmp
order by param_order;

drop temporary table ReturnValuesTmp;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_ProcParams` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_ProcParams`(inProc_id int, inParam_list varchar(2500), inUseConverted tinyint )
begin
declare vParam_list varchar(2500);
declare vParam varchar(100);
declare vLength int;
declare vTypeDef varchar(100);
declare vProc_name varchar(100);
declare vNextComma int;
declare vRealComma int;
declare vParamOrder int;

set vParam_list = inParam_list;

select proc_name into vProc_name
from mydbr_reports
where report_id = inProc_id;

if (vProc_name is null) then
	select 'No such procedure' as 'param_name', 'error' as 'type', 0 as 'strlength';
else

create temporary table ReturnValuesTmp (
param_order int,
param_name varchar(100),
type varchar(20),
strlength int
) ENGINE=MEMORY;


set vParamOrder = 1;

while(length(vParam_list)>0) do

	while (ascii(vParam_list) in (32, 10, 13, 9)) do
		set vParam_list = substring( vParam_list, 2);
	end while;
	
	set vLength = 0;
	
    select substring_index(vParam_list, ',', 1) into vParam;
	
	if (locate("(", vParam) > 0 and locate(")", vParam)=0 ) then
		set vNextComma = locate(",", vParam_list);
		set vRealComma = locate(",", substring(vParam_list, vNextComma+1));
		if (vRealComma>0) then
			set vParam =  substring(vParam_list, 1, vNextComma+vRealComma);
		else
			set vParam = vParam_list;
		end if;
	end if;
    select substring(vParam_list, length(vParam)+1) into vParam_list;
    if (length(vParam_list)>0) then
        if (left(vParam_list,1)=',') then
            select trim(substr(vParam_list,2)) into vParam_list;
        end if;
    end if;
    select trim(vParam) into vParam;
	
	while (ascii(vParam) in (10, 13, 9)) do
		set vParam = substring( vParam, 2);
	end while;
    if (vParam like "in %") then
        select trim(substr(vParam,4)) into vParam;
    end if;
    if (vParam like "out %") then
        select trim(substr(vParam,5)) into vParam;
    end if;
    if (vParam like "inout %") then
        select trim(substr(vParam,7)) into vParam;
    end if;
    if (vParam like '%(%)%' and vParam not like '%(%,%)%') then
        set vLength = substring(vParam,locate('(',vParam)+1,locate(')', vParam)-locate('(',vParam)-1);
    end if;
    set vTypeDef = substring(vParam, locate(' ',vParam)+1);
    if (vTypeDef like '%(%)%') then
        select substring( vTypeDef, 1,  locate('(', vTypeDef)-1) into vTypeDef;
    end if;
	set vTypeDef = replace( vTypeDef, char(10), '');
	set vTypeDef = replace( vTypeDef, char(13), '');
	set vTypeDef = replace( vTypeDef, char(9), '');
	set vTypeDef = trim(vTypeDef);
    insert into ReturnValuesTmp
    select vParamOrder, substring_index(vParam, ' ', 1), vTypeDef, vLength;
	set vParamOrder = vParamOrder + 1;
end while;

update ReturnValuesTmp 
set strlength=255
where lower(type) like '%text%';

update ReturnValuesTmp set type='string'
where lower(type) in ('char', 'varchar', 'blob') or lower(type) like '%text%' or lower(type) like '%blob%';

update ReturnValuesTmp set type='integer'
where lower(type) in ('tinyint', 'smallint', 'mediumint', 'int', 'integer', 'bigint', 'year');

update ReturnValuesTmp set type='float'
where lower(type) in ('float', 'decimal', 'double', 'double precision', 'real', 'dec', 'numeric', 'fixed');

update ReturnValuesTmp set type='datetime'
where lower(type) in ('timestamp');

if (inUseConverted=0) then
	select param_name, type, strlength
	from ReturnValuesTmp
	order by param_order;
else 
	select t.param_name, t.type, t.strlength, p.title, p.query_name, t.param_order, ifnull(p.optional,0), ifnull(p.only_default,0), p.suffix, p.options
	from ReturnValuesTmp t left join mydbr_params p on (t.param_name = p.param and p.proc_name=vProc_name)
	order by t.param_order;
end if;
drop temporary table ReturnValuesTmp;
end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_pw_reset_options_get` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_pw_reset_options_get`()
begin

select name, value
from  mydbr_options 
where name like 'password_reset%' or name like 'mail_%';

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_pw_reset_user_get` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_pw_reset_user_get`( in_token varchar(255), in_timeout int )
begin

declare v_user_id varchar(128);
declare v_cnt int;

select max(user), count(*) into v_user_id, v_cnt
from mydbr_password_reset
where perishable_token = in_token and date_add( now(), interval -1*in_timeout minute) < request_time;

if (v_cnt=1) then
  select pr.user, u.email
  from mydbr_password_reset pr
    join mydbr_userlogin u on u.user=pr.user and u.authentication=2
  where perishable_token = in_token;
end if;

delete
from mydbr_password_reset
where date_add( now(), interval -1*in_timeout minute) > request_time;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_remote_srv_del` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_remote_srv_del`(
inId int(11)
)
begin

delete 
from mydbr_remote_servers
where id=inId;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_remote_srv_ins` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_remote_srv_ins`(
inId int(11),
inServer varchar(128),
inUrl varchar(255),
inHash varchar(40),
inUsername varchar(128),
inPassword varchar(128)
)
begin
declare vCnt int;

select count(*) into vCnt
from mydbr_remote_servers
where server = inServer;

if (vCnt=0) then
	insert into mydbr_remote_servers ( server, url, hash, username, password )
	values ( inServer, inUrl, inHash, inUsername, inPassword );
end if;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_remote_srv_sel_all` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_remote_srv_sel_all`()
begin

select id, server, url, hash, username, password
from mydbr_remote_servers;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_remote_srv_upd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_remote_srv_upd`(
inId int(11),
inServer varchar(128),
inUrl varchar(255),
inHash varchar(40),
inUsername varchar(128),
inPassword varchar(128)
)
begin

update mydbr_remote_servers
set 
	server=inServer,
	url=inUrl,
	hash=inHash,
	username=inUsername,
	password=inPassword
where id=inId;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_ReportDel` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_ReportDel`(inReportID int)
BEGIN
declare vProcName varchar(100); 

select proc_name into vProcName
from mydbr_reports
where report_id = inReportID;

delete from mydbr_reports_priv where report_id = inReportID;
delete from mydbr_params where proc_name = vProcName;
delete from mydbr_report_extensions where proc_name = vProcName;

delete 
from mydbr_reports
where report_id = inReportID;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_ReportExtAdd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_ReportExtAdd`(inProcName varchar(100), inExtension varchar(100))
begin
insert into mydbr_report_extensions (proc_name, extension)
values (inProcName, inExtension);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_ReportExtClean` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_ReportExtClean`(inProcName varchar(100) )
begin
delete 
from mydbr_report_extensions
where proc_name=inProcName;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_ReportExtGet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_ReportExtGet`(inProcName varchar(100))
begin
select extension
from mydbr_report_extensions
where proc_name=inProcName;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_ReportExtGetByID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_ReportExtGetByID`(inReportID int)
begin

select e.extension
from mydbr_reports r, mydbr_report_extensions e
where r.proc_name=e.proc_name and r.report_id=inReportID;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_ReportGetIDByName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_ReportGetIDByName`(inProc varchar(100))
begin
select report_id, name
from mydbr_reports
where  proc_name = inProc;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_Reportgroups` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_Reportgroups`()
begin

select id, name, sortorder, color
from mydbr_reportgroups
order by sortorder;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_Reportgroup_del` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_Reportgroup_del`(
inId int
)
begin
declare vCntf int;
declare vCntr int;

select count(*) into vCntf
from mydbr_folders
where reportgroup = inId;

select count(*) into vCntr
from mydbr_reports
where reportgroup = inId;

if (vCntf+vCntr>0) then
	select 'Cannot delete item in use!';
else

delete 
from mydbr_reportgroups
where id=inId and inId>1;

end if;


end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_Reportgroup_set` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_Reportgroup_set`(
inId int, 
inName varchar(128), 
inSortorder int, 
inColor	char(6)
)
begin

if (inId<-1) then
	insert into mydbr_reportgroups (name, sortorder, color) 
	values (inName, inSortorder, inColor);
else
	update mydbr_reportgroups
	set name=inName,
		sortorder=inSortorder,
		color=inColor
	where id=inId;
end if;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_ReportInfoGet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_ReportInfoGet`(inReportID int)
BEGIN
select name, proc_name, explanation, reportgroup, sortorder, runreport, autoexecute, parameter_help, export
from mydbr_reports
where report_id = inReportID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_ReportInfoSet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_ReportInfoSet`(
inReportID int, 
inReportName varchar(150), 
inExplanation varchar(4096),
inReportgroup int,
inSortorder int,
inRunreport varchar(50),
inAutoexecute tinyint,
inParameter_help varchar(10000),
inExport varchar(10)
)
BEGIN
update mydbr_reports
set name = inReportName, explanation=inExplanation, reportgroup=inReportgroup, sortorder=inSortorder,
  runreport=inRunreport, autoexecute=inAutoexecute, parameter_help=inParameter_help, export=inExport
where report_id = inReportID;
select 'OK';
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_ReportIsValidForMe` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_ReportIsValidForMe`(inSPreport char(64), inUsername varchar(80), inAuth int)
BEGIN
declare vIAmAdmin int;

call sp_MyDBR_AmIAdminOut(inUsername, inAuth, vIAmAdmin);

select 'OK', r.report_id, r.name
from mydbr_reports r
where r.proc_name = inSPreport and (vIAmAdmin = 1 or r.report_id in (
	select p.report_id
	from mydbr_reports_priv p
	where ((p.username = inUsername and p.authentication=inAuth) or (p.username in ('PUBLIC', 'MYDBR_WEB')  and p.authentication=0))
		and p.group_id = 0
) or r.report_id in (
	select p.report_id
	from mydbr_reports_priv p, mydbr_groupsusers u
	where p.group_id = u.group_id and u.user = inUsername and u.authentication=inAuth and p.group_id != 0
));

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_ReportMove` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_ReportMove`( vID int, vFolder int )
BEGIN

update mydbr_reports
set folder_id=vFolder
where report_id = vID;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_ReportNameGet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_ReportNameGet`(
InReport_id int, 
inUsername varchar(80), 
inAuth int, 
inProcName varchar(150)
)
begin
declare vReportName varchar(150);
declare vProcName varchar(150);
declare vRunbutton varchar(50);
declare vHasPriv int;
declare vIAmAdmin int;
declare vFolder_id int;
declare vReportID int;
declare vAutoexecute tinyint;
declare vParameter_help varchar(10000);
declare vExport varchar(10);

call sp_MyDBR_AmIAdminOut(inUsername, inAuth, vIAmAdmin);

select r.name, r.proc_name, r.folder_id, r.report_id, r.runreport, r.autoexecute, r.parameter_help, r.export
  into vReportName, vProcName, vFolder_id, vReportID, vRunbutton, vAutoexecute, vParameter_help, vExport
from mydbr_reports r
where (r.report_id=InReport_id or r.proc_name=inProcName) and (vIAmAdmin = 1 or r.report_id in (
  select p.report_id
  from mydbr_reports_priv p
  where ((p.username = inUsername and p.authentication=inAuth) or (p.username in ('PUBLIC', 'MYDBR_WEB') and p.authentication=0))
  and p.group_id = 0
) or r.report_id in (
  select p.report_id
  from mydbr_reports_priv p, mydbr_groupsusers u
  where p.group_id = u.group_id and u.user = inUsername and u.authentication=inAuth and p.group_id != 0
));

if (vProcName is null) then
    select 0, 'No access privileges', null, 1, 0, null;
else
    select 1, vReportName, vProcName, vFolder_id, vReportID, vRunbutton, vAutoexecute, vParameter_help, vExport;
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_ReportNew` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_ReportNew`(
inLevel int, 
inReportName varchar(150), 
inStored_proc varchar(100), 
inExplanation varchar(4096),
inReportgroup int,
inSortorder int,
inRunreport varchar(50)
)
BEGIN
declare vReport_id int;

select report_id into vReport_id
from mydbr_reports
where proc_name = inStored_proc and folder_id = inLevel;

if (vReport_id>0) then
	select 'OK', vReport_id;
else
	insert into mydbr_reports (name, proc_name, folder_id, explanation, reportgroup, sortorder, runreport )
	values( inReportName, inStored_proc, inLevel, inExplanation, inReportgroup, inSortorder, inRunreport );

	select 'OK', last_insert_id();
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_ReportNewGet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_ReportNewGet`(inProcname varchar(30), inProcPrefix varchar(10))
BEGIN

if (isnull(inProcname)) then
	set inProcname = '';
end if;

select p.ROUTINE_NAME 
from information_schema.ROUTINES p 
where routine_schema=database() and routine_type='PROCEDURE' and p.ROUTINE_NAME not like 'sp_MyDBR_%' 
and p.ROUTINE_NAME like concat( cast( inProcPrefix AS CHAR CHARACTER SET utf8) COLLATE utf8_general_ci, '%') 
and p.ROUTINE_NAME like concat('%', cast( inProcname  AS CHAR CHARACTER SET utf8) COLLATE utf8_general_ci,'%') 
and p.ROUTINE_NAME not in (
	select cast( proc_name AS CHAR CHARACTER SET utf8) COLLATE utf8_general_ci
	from mydbr_reports
)
order by p.LAST_ALTERED desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_ReportPrivAdd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_ReportPrivAdd`( inReportID int, inUsername varchar(128), inAuth int, inGroupID int )
BEGIN

declare vCnt int;

select count(*) into vCnt
from mydbr_reports_priv
where report_id=inReportID and username=inUsername and group_id= inGroupID and authentication=inAuth;

if (vCnt=0) then
	insert into mydbr_reports_priv (report_id, username, authentication, group_id)
	values ( inReportID, inUsername, inAuth, inGroupID );
end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_ReportPrivDel` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_ReportPrivDel`( inReportID int, inUsername varchar(128), inAuth int, inGroupID int )
BEGIN

delete from mydbr_reports_priv
where report_id=inReportID and username=inUsername and group_id=inGroupID and authentication= inAuth;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_ReportPrivsGroupGet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_ReportPrivsGroupGet`( inReportID int )
BEGIN
select p.group_id, g.name, 1
from mydbr_reports_priv p, mydbr_groups g
where p.group_id>0 and p.report_id = inReportID and p.group_id=g.group_id
union
select g.group_id, g.name, 0
from mydbr_groups g
where g.group_id not in (
	select p.group_id
	from mydbr_reports_priv p
	where p.group_id>0 and p.report_id = inReportID
);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_ReportPrivsUserGet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_ReportPrivsUserGet`(inReportID int, inAuth int, inSearch varchar(30))
BEGIN
declare vAuth_DB int;
declare vAuth_myDBR int;
declare vAuth_SSO int;
declare vAuth_LDAP int;
declare vAuth_Custom int;

select (inAuth & 1) into vAuth_DB;
select (inAuth & 2) into vAuth_myDBR;
select (inAuth & 4) into vAuth_SSO;
select (inAuth & 8) into vAuth_LDAP;
select (inAuth & 16) into vAuth_Custom;

create temporary table Users_tmp (
user varchar(128) not null,
name varchar(60) default null,
auth_source int,
haspriv int
) ENGINE=MEMORY;


if (vAuth_DB > 0) then
	insert into Users_tmp ( user, name, auth_source, haspriv )
	select p.username, i.Full_name, vAuth_DB, 1
	from mysql.user u, mydbr_reports_priv p left join mysql.user_info i on ( p.username = i.User )
	where p.username!='' and p.username = u.user and p.report_id = inReportID and p.authentication= vAuth_DB;

	if (inSearch!='') then
		insert into Users_tmp ( user, name, auth_source, haspriv )
		select u.user, i.Full_name, vAuth_DB, 0
		from mysql.user u, mydbr_reports_priv p left join mysql.user_info i on ( u.user = i.User )
		where u.user like concat('%', inSearch ,'%') and not exists (
			select * 
			from mydbr_reports_priv p
			where p.username = u.user and p.report_id = inReportID and p.authentication= vAuth_DB
		)
		LIMIT 20;
	end if;
end if;

if (vAuth_myDBR > 0 or vAuth_SSO > 0 or vAuth_LDAP > 0 or vAuth_Custom > 0) then
	insert into Users_tmp ( user, name, auth_source, haspriv )
	select p.username, u.name, u.authentication, 1
	from mydbr_userlogin u, mydbr_reports_priv p
	where p.username!='' and p.username = u.user and p.authentication=u.authentication
		and p.report_id = inReportID 
		and p.authentication in (2,4,8,16);

	if (inSearch!='') then
		insert into Users_tmp ( user, name, auth_source, haspriv )
		select u.user, u.name, u.authentication, 0
		from mydbr_userlogin u
		where (u.user like concat('%', inSearch ,'%') or u.name like concat('%', inSearch ,'%')) and not exists (
			select * 
			from mydbr_reports_priv p
			where p.username = u.user and p.authentication=u.authentication and 
			p.report_id = inReportID and 
			p.authentication in (2,4,8,16)
		)
		LIMIT 20;
	end if;
end if;


select t.user, t.name, a.name, t.auth_source, t.haspriv
from Users_tmp t, mydbr_authentication a
where t.auth_source = a.mask
union
select p.username, null, null, 0, 1
from mydbr_reports_priv p
where p.report_id = inReportID and p.authentication=0 and p.username in ('PUBLIC', 'MYDBR_WEB')
order by 5 desc, 1;

drop temporary table Users_tmp;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_ReportsShow` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_ReportsShow`(inLevel int, inUsername varchar(80), inAuth int)
begin
declare vIAmAdmin int;

call sp_MyDBR_AmIAdminOut(inUsername, inAuth, vIAmAdmin);

select  f.folder_id as 'folderID', 
        null as 'report_id', 
        f.name, 
        0 as 'hasgrant', 
        f.explanation, 
        1 as 'isReport', 
        f.reportgroup, 
        g.sortorder as 'gsortorder',
        g.name as 'gname',
        g.color as 'color',
        '',
        0  as 'rsortorder',
        '' as 'directurl',
        0 as 'notinuse',
        null as 'export'
from mydbr_folders f, mydbr_reportgroups g
where f.reportgroup=g.id and f.mother_id=inLevel and (vIAmAdmin = 1 or f.folder_id in (
    select p.folder_id
    from mydbr_folders_priv p
    where ((p.username = inUsername and p.authentication=inAuth) or (p.username = 'PUBLIC' and p.authentication=0))
    and p.group_id = 0
    union
    select p.folder_id
    from mydbr_folders_priv p, mydbr_groupsusers u
    where p.group_id = u.group_id and u.user = inUsername and u.authentication=inAuth
))
union
select     null, 
        r.report_id, 
        r.name, 
        0, 
        r.explanation, 
        0,
        r.reportgroup, 
        g.sortorder, 
        g.name, 
        g.color,
        r.proc_name,
        r.sortorder,
        '' as 'directurl',
        0,
        r.export
from mydbr_reports r, mydbr_reportgroups g
where r.reportgroup=g.id and r.folder_id = inLevel and (vIAmAdmin = 1 or r.report_id in (
    select p.report_id
    from mydbr_reports_priv p
    where ((p.username = inUsername and p.authentication=inAuth) or (p.username = 'PUBLIC' and p.authentication=0))
    and p.group_id = 0
    union
    select p.report_id
    from mydbr_reports_priv p, mydbr_groupsusers u
    where p.group_id = u.group_id and u.user = inUsername and u.authentication=inAuth and p.group_id!=0
))
union
select     null, 
        r.report_id, 
        r.name, 
        0, 
        r.explanation, 
        0,
        g.id, 
        g.sortorder, 
        g.name, 
        g.color,
        r.proc_name,
        r.sortorder,
        f.url as 'directurl',
        0,
        r.export
from mydbr_reports r, mydbr_reportgroups g, mydbr_favourite_reports f
where f.user=inUsername and f.authentication=inAuth and f.report_id=r.report_id
and g.id=-1 and inLevel=1
order by gsortorder, reportgroup, isReport, rsortorder, 3;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_ReportsShow_Privs` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_ReportsShow_Privs`(inLevel int, inUsername varchar(80), inAuth int)
begin

create temporary table tmp_report_ids (
report_id int
) ENGINE=MEMORY;

create temporary table tmp_report_result (
report_id int,
type varchar(20),
name varchar(128)
) ENGINE=MEMORY;

create temporary table tmp_folder_result (
folder_id int,
type varchar(20),
name varchar(128)
) ENGINE=MEMORY;


insert into tmp_report_ids (report_id)
select r.report_id
from mydbr_reports r
where r.folder_id = inLevel 
union
select 	r.report_id
from mydbr_reports r, mydbr_reportgroups g, mydbr_favourite_reports f
where f.user=inUsername and f.authentication=inAuth and f.report_id=r.report_id
and g.id=-1 and inLevel=1;

insert into tmp_report_result 
select p.report_id, 'user', u.name
from mydbr_reports_priv p, mydbr_userlogin u
where p.username = u.user and p.authentication=u.authentication
and p.report_id in (
	select report_id
	from tmp_report_ids
);

insert into tmp_folder_result 
select p.folder_id, 'user', u.name
from mydbr_folders_priv p, mydbr_userlogin u, mydbr_folders f
where p.username = u.user and p.authentication=u.authentication
and p.folder_id = f.folder_id and f.mother_id= inLevel;


insert into tmp_report_result 
select p.report_id, 'group', g.name
from mydbr_reports_priv p, mydbr_groups g
where p.group_id = g.group_id
and p.report_id in (
	select report_id
	from tmp_report_ids
);

insert into tmp_folder_result 
select p.folder_id, 'group', g.name
from mydbr_folders_priv p, mydbr_groups g, mydbr_folders f
where p.group_id = g.group_id
and p.folder_id = f.folder_id and f.mother_id= inLevel;


insert into tmp_report_result 
select p.report_id, 'public', p.username
from mydbr_reports_priv p
where p.username in  ('PUBLIC', 'MYDBR_WEB') and p.authentication=0
and p.report_id in (
	select report_id
	from tmp_report_ids
);


insert into tmp_folder_result 
select p.folder_id, 'public', p.username
from mydbr_folders_priv p, mydbr_folders f
where p.username in  ('PUBLIC') and p.authentication=0
and p.folder_id = f.folder_id and f.mother_id= inLevel;


create temporary table tmp_sort (
type varchar(10),
sort_order int
) ENGINE=MEMORY;
create temporary table tmp_sort_f (
type varchar(10),
sort_order int
) ENGINE=MEMORY;

insert into tmp_sort values ('user', 1);
insert into tmp_sort values ('group', 2);
insert into tmp_sort values ('public', 3);
	
insert into tmp_sort_f values ('user', 1);
insert into tmp_sort_f values ('group', 2);
insert into tmp_sort_f values ('public', 3);

select 'report', t.report_id, t.type, t.name, s.sort_order
from tmp_report_result t
	left outer join tmp_sort s on s.type=t.type
union
select 'folder', t.folder_id, t.type, t.name, s.sort_order
from tmp_folder_result t
	left outer join tmp_sort_f s on s.type=t.type
order by 1,2,5;


drop temporary table tmp_report_result;
drop temporary table tmp_report_ids;
drop temporary table tmp_folder_result;

drop temporary table tmp_sort;
drop temporary table tmp_sort_f;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_report_copy` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_report_copy`(
inOriginal varchar(100),
inNew varchar(100)
)
begin

declare vOriginalID int;
declare vNewID int;
declare vName varchar(150);
declare vCnt int;
declare vCntAll int;

select report_id, name into vOriginalID, vName
from mydbr_reports
where proc_name = inOriginal;

select report_id into vNewID
from mydbr_reports
where proc_name = inNew;

select count(*) into vCnt
from information_schema.ROUTINES p 
where routine_schema=database() and routine_type='PROCEDURE' 
and p.ROUTINE_NAME = cast( inNew AS CHAR CHARACTER SET utf8) COLLATE utf8_general_ci;

set vCntAll = 0;

/* Do we have both procedures? */
if (vCnt!=1 or vNewID is not null or vOriginalID is null) then
  set vCntAll = -1;
end if;

/* Make sure the new one is really a new one */
if (vCntAll=0) then
  select count(*) into vCnt
  from mydbr_reports
  where proc_name = inNew;

  set vCntAll = vCntAll+vCnt;

  select count(*) into vCnt
  from mydbr_params
  where proc_name = inNew;

  set vCntAll = vCntAll+vCnt;

  select count(*) into vCnt
  from mydbr_report_extensions
  where proc_name = inNew;

  set vCntAll = vCntAll+vCnt;

  select count(*) into vCnt
  from mydbr_reports_priv
  where report_id = vNewID;

  set vCntAll = vCntAll+vCnt;
end if;

if (vCntAll=0) then
  START TRANSACTION;

  insert into mydbr_reports ( name, proc_name, folder_id, explanation, reportgroup, 
    sortorder, runreport, autoexecute, parameter_help, export )
  select concat(name, ' +'), inNew, folder_id, explanation, reportgroup, 
    sortorder, runreport, autoexecute, parameter_help, export
  from mydbr_reports
  where report_id = vOriginalID;
  
  select report_id into vNewID
  from mydbr_reports
  where proc_name = inNew;

  insert into mydbr_params ( proc_name, param, query_name, title, default_value, optional, only_default, suffix, options )
  select inNew, param, query_name, title, default_value, optional, only_default, suffix, options
  from mydbr_params
  where proc_name = inOriginal;

  insert into mydbr_report_extensions( proc_name, extension )
  select inNew, extension
  from mydbr_report_extensions
  where proc_name = inOriginal;

  insert into mydbr_reports_priv( report_id, username, group_id, authentication )
  select vNewID, username, group_id, authentication
  from mydbr_reports_priv
  where report_id = vOriginalID;

  COMMIT;
  select 0;
else 
  select vCntAll;
end if;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_report_from_hash` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_report_from_hash`( 
vHash varchar(100)
)
begin

select r.proc_name
from mydbr_reports r
where md5(r.proc_name)=vHash;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_report_info` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_report_info`(
inProcName varchar(64)
)
begin

declare vName varchar(150);
declare vExplanation varchar(4096);
declare vFolderID int;
declare vFolderIDPrev int;
declare vFName varchar(100);
declare vPath varchar(1000);
declare vSep varchar(6);
declare vStop int;

select r.name, r.explanation, r.folder_id into vName, vExplanation, vFolderID
from mydbr_reports r
where r.proc_name=inProcName;

if (vName is not null) then
	set vPath = '';
	set vSep = '';
	set vStop = 0;
	repeat
		set vFolderIDPrev = vFolderID;
		select name, mother_id into vFName, vFolderID
		from mydbr_folders
		where folder_id=vFolderID;
	
		select concat( '<a href="index.php?m=',cast(vFolderIDPrev as char(8)),'">', vFName,'</a>', vSep, vPath ) into vPath;
		select vStop +1 into vStop;
		select ' &gt; ' into vSep;
	until(vFolderID is null or vStop=100)
	end repeat;

	select vName, vExplanation, vPath;
end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_SetLatestVersion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_SetLatestVersion`( 
inLatestVersion varchar(10), 
inNextCheck int, 
inDownloadLink varchar(200), 
inInfoLink varchar(200),
inLast_successful_check int,
inSignature varchar(50)
)
begin

delete from mydbr_update;
	
insert into mydbr_update (latest_version, next_check, download_link, info_link, last_successful_check, signature ) 
values( inLatestVersion, inNextCheck, inDownloadLink, inInfoLink, inLast_successful_check, inSignature );

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_SetOption` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_SetOption`( 
inUser varchar(128), 
inAuthentication int, 
inName varchar(30), 
inValue varchar(200) 
)
begin

delete 
from mydbr_options 
where user = inUser and authentication = inAuthentication and name = inName;
	
insert into mydbr_options (user, authentication, name, value) 
values ( inUser, inAuthentication, inName, inValue );

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_snippets_delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_snippets_delete`(
in_id int
)
begin

delete 
from mydbr_snippets
where id = in_id;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_snippets_get` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_snippets_get`()
begin

select id, name, code, shortcut, cright, cdown
from mydbr_snippets;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_snippets_save` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_snippets_save`(
in_id int,
in_name varchar(30),
in_code text
)
begin

declare v_cnt int;

select count(*) into v_cnt
from mydbr_snippets
where id = in_id;

if (v_cnt>0) then
  update mydbr_snippets
  set name = in_name, code = in_code
  where id = in_id;
else 
  insert into mydbr_snippets (name, code, cright, cdown)
  values (in_name, in_code, 0, 0);
  
  select last_insert_id();
end if;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_snippets_save_move` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_snippets_save_move`(
in_id int,
in_right int,
in_down int
)
begin

update mydbr_snippets
set cright = in_right, cdown = in_down
where id = in_id;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_snippets_shortcut` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_snippets_shortcut`(
in_id int,
in_shortcut varchar(20)
)
begin

update mydbr_snippets
set shortcut = in_shortcut
where id = in_id;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_sproc_exists` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_sproc_exists`(
inProcName varchar(64)
)
begin

select count(*) 
from information_schema.routines 
where routine_name COLLATE utf8_general_ci = cast( inProcName AS CHAR CHARACTER SET utf8) COLLATE utf8_general_ci 
and routine_schema = database();	

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_StatReportIDGet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_StatReportIDGet`()
BEGIN

select report_id 
from mydbr_reports
where proc_name = 'sp_DBR_StatisticsReport';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_Stat_AddEnd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_Stat_AddEnd`(inID int)
BEGIN

update mydbr_statistics
set end_time = now()
where id = inID;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_Stat_AddStart` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_Stat_AddStart`(
inProc_name varchar(100),
inUsername varchar(128),
inAuthentication int,
inQuery text,
inIPAddress varchar(255), 
inUserAgent text
)
BEGIN

declare vCnt int;
declare vStart_time datetime;
declare vUserAgentHash varchar(50);

select md5(inUserAgent) into vUserAgentHash;

select count(*) into vCnt
from mydbr_user_agents
where hash = vUserAgentHash;

if (vCnt=0) then
  insert into mydbr_user_agents ( hash, user_agent)
  values (vUserAgentHash, inUserAgent);
end if;

select now() into vStart_time;

insert into mydbr_statistics ( proc_name, username, authentication, start_time, query, ip_address, user_agent_hash )
values (inProc_name, inUsername, inAuthentication, vStart_time, inQuery, inIPAddress, vUserAgentHash );

select last_insert_id();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_StyleAdd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_StyleAdd`(
inName varchar(30), 
inType varchar(20), 
inDef varchar(400)
)
BEGIN
declare vCnt int;
declare vColType int;
select count(*) into vCnt
from mydbr_styles
where name = inName;
if (vCnt=0) then
	if (inType='column') then
		set vColType = 0;
	else
		set vColType = 1;
	end if;
	insert into mydbr_styles ( name, colstyle, definition )
	values ( inName, vColType, inDef );
	select 'OK', null;
else
	select 'Error', concat("Style '", inName, "' already exists.");
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_StyleDel` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_StyleDel`(inName varchar(100))
BEGIN
delete from mydbr_styles
where name = inName;
select 'OK', null;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_StyleGet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_StyleGet`()
BEGIN
select name, if (colstyle=0, 'column', 'row'), definition
from mydbr_styles;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_StyleUpdate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_StyleUpdate`(inName varchar(30), inType varchar(20), inDef varchar(400))
BEGIN
declare vColType int;
if (inType='column') then
	set vColType = 0;
else
	set vColType = 1;
end if;
update mydbr_styles
set colstyle=vColType, definition = inDef
where name = inName;
select 'OK';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_table_reference` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_table_reference`(
inDB varchar(64),
inTable varchar(64)
)
begin

select 
	u.COLUMN_NAME COLLATE utf8_general_ci, 
	u.REFERENCED_TABLE_SCHEMA COLLATE utf8_general_ci, 
	u.REFERENCED_TABLE_NAME COLLATE utf8_general_ci, 
	u.REFERENCED_COLUMN_NAME COLLATE utf8_general_ci
from information_schema.KEY_COLUMN_USAGE u
where u.TABLE_SCHEMA=cast( inDB AS CHAR CHARACTER SET utf8) COLLATE utf8_general_ci 
and u.TABLE_NAME=cast( inTable AS CHAR CHARACTER SET utf8) COLLATE utf8_general_ci
union
select column_name, referenced_table_schema, referenced_table_name, referenced_column_name
from mydbr_key_column_usage
where table_schema=inDB and table_name=inTable;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_templates_get` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_templates_get`(inID int)
begin

select p.id, p.name, 'folder_up', 1
from mydbr_template_folders f
  join mydbr_template_folders p on p.id=f.parent_id
where f.id=inID
union
select id, name, 'folder', 2
from mydbr_template_folders
where parent_id=inID
union
select id, name, 'template', 3
from mydbr_templates
where folder_id=inID
order by 4, 2;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_template_del` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_template_del`(
inId int(11)
)
begin

delete 
from mydbr_templates
where id=inId;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_template_folder` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_template_folder`(
inId int
)
begin
declare v_order int;
declare v_cnt int;

create temporary table folders_tmp (
id int,
dorder int
);

set v_order=0;

while( inId>0 ) do
	insert into folders_tmp values ( inID, v_order );

	set v_order = v_order + 1;

	select parent_id into inID
	from mydbr_template_folders
	where id =  inID;
	
	select count(*) into v_cnt
	from folders_tmp
	where id = inID;
	
	if (v_cnt>0) then
		set inId = -1;
	end if;
end while;

select f.id, f.name, t.dorder
from mydbr_template_folders f 
  join folders_tmp t on t.id=f.id
order by t.dorder;

drop temporary table folders_tmp;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_template_folder_del` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_template_folder_del`(
inId int(11)
)
begin

declare v_cnt int;

select count(*) into v_cnt
from mydbr_template_folders
where parent_id=inId;

delete 
from mydbr_template_folders
where id=inId and v_cnt=0 and id not in (
	select folder_id
	from mydbr_templates
);

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_template_folder_move` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_template_folder_move`(
in_id int,
in_folder_id int
)
begin

update mydbr_template_folders
set parent_id = in_folder_id
where id=in_id;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_template_folder_new` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_template_folder_new`(
in_parent_id int,
in_name varchar(128)
)
begin

insert into mydbr_template_folders (name, parent_id)
select in_name, id
from mydbr_template_folders
where id=in_parent_id;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_template_folder_ren` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_template_folder_ren`(
in_id int,
in_name varchar(128)
)
begin

update mydbr_template_folders 
set name = in_name
where id = in_id;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_template_get` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_template_get`(
inId int(11)
)
begin

select header, row, footer
from mydbr_templates
where id=inId;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_template_get_name` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_template_get_name`(
inName varchar(128)
)
begin

select header, row, footer
from mydbr_templates
where name=inName;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_template_move` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_template_move`(
in_id int,
in_folder_id int
)
begin

update mydbr_templates
set folder_id = in_folder_id
where id=in_id;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_template_set` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_template_set`(
inId int,
inName varchar(128),
inHeader text,
inRow text,
inFooter text,
inFolder_id int
)
begin

declare vCnt int;

select count(*) into vCnt
from mydbr_templates
where id != inId and name = inName;

if (vCnt>0) then
	select 0;
else
	select count(*) into vCnt
	from mydbr_templates
	where id = inId and ifnull(inId,0)!=0;

	if (vCnt=0) then
		insert into mydbr_templates ( name, header, row, footer, folder_id )
		values ( inName, inHeader, inRow, inFooter, inFolder_id );
	
		select 1;
	else 
		update mydbr_templates
		set name=inName, 
			header=inHeader,
			row=inRow,
			footer=inFooter
		where id=inId;

		select 1;
	end if;
end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_Usage` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_Usage`()
BEGIN

select p.routine_definition, p.routine_name, r.name
from information_schema.ROUTINES p, mydbr_reports r
where p.routine_name COLLATE utf8_general_ci=r.proc_name and routine_schema=database();

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_UserDel` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_UserDel`(inUser varchar(128), inAuth int)
BEGIN

delete from mydbr_favourite_reports where authentication=inAuth and user = inUser;
delete from mydbr_reports_priv where authentication=inAuth and username = inUser;
delete from mydbr_folders_priv where authentication=inAuth and username = inUser;
delete from mydbr_groupsusers where authentication=inAuth and user = inUser;
delete from mydbr_options where authentication=inAuth and user = inUser;

delete 
from mydbr_userlogin 
where user = inUser and authentication=inAuth;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_UserInfo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_UserInfo`( 
inUsername varchar(128), 
inAuth int 
)
begin
select u.name, u.email, u.telephone
from mydbr_userlogin u
where u.user = inUsername and u.authentication=inAuth;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_UserInfoSet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_UserInfoSet`( 
inUsername varchar(128), 
inAuth int,
inName varchar(60),
inEmail varchar(100),
inTelephone varchar(100)
)
begin

update mydbr_userlogin
set name=inName, email=inEmail, telephone=inTelephone
where user = inUsername and authentication=inAuth;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_UserLogins` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_UserLogins`( inDays int )
begin
select u.user, u.name, u.admin, u.email, u.telephone, date_add( u.passworddate, interval inDays day ), a.name, u.authentication
from mydbr_userlogin u, mydbr_authentication a
where u.authentication=a.mask
order by u.name;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_UserLoginsAuth` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_UserLoginsAuth`( inAuth int )
begin
select u.user, u.name
from mydbr_userlogin u
where u.authentication=inAuth
order by u.name;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_UserNew` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_UserNew`(
inUser varchar(128), 
inName varchar(60), 
inPassword varchar(255), 
inAdmin tinyint,
inEmail varchar(100),
inTelephone varchar(100),
inAuth int,
inAskPwChange int
)
BEGIN

declare vExists int;

select count(*) into vExists 
from mydbr_userlogin
where user = inUser and authentication=inAuth;

if (vExists=0) then
	insert into mydbr_userlogin ( user, password, name, admin, passworddate, email, telephone, authentication, ask_pw_change )
	values ( inUser, inPassword, inName, inAdmin, now(), inEmail, inTelephone, inAuth, inAskPwChange );

	select 'OK';
else
	select concat("User '", inUser, "' already exists");
end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_UserPassword` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_UserPassword`(inUsername varchar(128), inExpiration int)
BEGIN

select user, password, date_add( ifnull( passworddate, now() ), interval inExpiration day ), ask_pw_change
from mydbr_userlogin 
where user= inUsername and authentication=2;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_UserUpd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_UserUpd`(
inUser varchar(128), 
inName varchar(60), 
inPassword varchar(255),
inAdmin tinyint,
inEmail varchar(100),
inTelephone varchar(100),
inAuth int,
inAskPwChange int
)
BEGIN

declare vPass varchar(255);
declare vPassDate datetime;

if (inPassword is not null) then
	set vPass = inPassword;
	select now() into vPassDate;
else
	set vPass = null;
 	set vPassDate = null;
end if;

update mydbr_userlogin
set name = ifnull( inName, name ), 
	admin= ifnull( inAdmin, admin ),
	password = ifnull( vPass, password ), 
	passworddate = ifnull( vPassDate , passworddate ),
	email = ifnull( inEmail, email ),
	telephone = ifnull( inTelephone, telephone),
	ask_pw_change = ifnull( inAskPwChange, ask_pw_change )
where user = inUser and authentication=inAuth;

if (vPass is not null and inAuth=2) then
	delete 
	from mydbr_password_reset
	where user = inUser;
end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_UserUpdUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_UserUpdUser`(
inUser varchar(128), 
inPassword varchar(255),
inAuth int
)
BEGIN

update mydbr_userlogin
set password = inPassword, 
	passworddate = now(),
	ask_pw_change = 0
where user = inUser and authentication=inAuth;

if (inAuth=2) then
	delete 
	from mydbr_password_reset
	where user = inUser;
end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_user_find` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_user_find`(
inNameSearch varchar(100),
inExpiration int
)
begin

select u.user, u.name, u.authentication, a.name
from mydbr_userlogin u
	join mydbr_authentication a on u.authentication=a.mask
where (lower(u.user) like concat('%', inNameSearch, '%') or lower(u.name) like concat('%', inNameSearch, '%'))
and (inExpiration=0 or date_add( ifnull( u.passworddate, now() ), interval inExpiration day )>=current_date())
and u.admin=0
limit 40;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_MyDBR_user_groups` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MyDBR_user_groups`( 
inUser varchar(128), 
inAuth int
)
begin

select g.group_id, g.name, 0
from mydbr_groups g
where g.group_id not in (
  select gu.group_id
  from mydbr_groupsusers gu
  where gu.user=inUser and gu.authentication=inAuth
)
union
select g.group_id, g.name, 1
from mydbr_groups g
  join mydbr_groupsusers gu on g.group_id=gu.group_id
where gu.user=inUser and gu.authentication=inAuth
order by 3 desc, 2;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-09-03 13:21:59
