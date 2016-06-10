CREATE DATABASE  IF NOT EXISTS `concordancedb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `concordancedb`;
-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: concordancedb
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
-- Table structure for table `expression_words`
--

DROP TABLE IF EXISTS `expression_words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expression_words` (
  `id` int(11) NOT NULL,
  `word_index` int(11) NOT NULL,
  `word_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`word_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expression_words`
--

LOCK TABLES `expression_words` WRITE;
/*!40000 ALTER TABLE `expression_words` DISABLE KEYS */;
INSERT INTO `expression_words` VALUES (1,1,6215),(1,2,6216),(1,3,6217),(2,1,6216),(2,2,6217),(29,1,6216),(29,2,6217),(30,1,6227),(30,2,6213),(31,1,6563),(31,2,6238),(31,3,6564);
/*!40000 ALTER TABLE `expression_words` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expressions`
--

DROP TABLE IF EXISTS `expressions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expressions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expressions`
--

LOCK TABLES `expressions` WRITE;
/*!40000 ALTER TABLE `expressions` DISABLE KEYS */;
INSERT INTO `expressions` VALUES (2,'Expr #2'),(29,'\'s'),(30,'by that'),(31,'fear to wet');
/*!40000 ALTER TABLE `expressions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(45) NOT NULL,
  `comment` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'g1','g1'),(2,'g2','g2'),(3,'test',NULL),(4,'test2',NULL),(5,'test3',NULL),(6,'test3',NULL),(7,'test4',NULL),(8,'test5',NULL),(9,'e1',NULL),(10,'GroupAAA',NULL),(11,'GroupAAA1',NULL),(12,'GroupAAA2',NULL),(13,'Shiri1',NULL),(14,'group #1',NULL);
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `index_view`
--

DROP TABLE IF EXISTS `index_view`;
/*!50001 DROP VIEW IF EXISTS `index_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `index_view` AS SELECT 
 1 AS `word_id`,
 1 AS `word_value`,
 1 AS `line_index`,
 1 AS `word_index_in_line`,
 1 AS `word_index_in_sonnet`,
 1 AS `section_index`,
 1 AS `sonnet_id`,
 1 AS `sonnet_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `latest_searches_circular_log_table`
--

DROP TABLE IF EXISTS `latest_searches_circular_log_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `latest_searches_circular_log_table` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `row_id` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `term` varchar(255) DEFAULT NULL,
  `sound_score` varchar(45) NOT NULL,
  PRIMARY KEY (`log_id`),
  UNIQUE KEY `row_id` (`row_id`),
  KEY `timestamp` (`timestamp`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `latest_searches_circular_log_table`
--

LOCK TABLES `latest_searches_circular_log_table` WRITE;
/*!40000 ALTER TABLE `latest_searches_circular_log_table` DISABLE KEYS */;
INSERT INTO `latest_searches_circular_log_table` VALUES (10,10,'2016-06-08 21:09:47','Search #3',''),(11,1,'2016-06-08 21:09:48','Search #3',''),(12,2,'2016-06-08 21:09:48','Search #3',''),(13,3,'2016-06-08 21:09:48','Search #3',''),(14,4,'2016-06-08 21:09:49','Search #3',''),(15,5,'2016-06-08 21:15:02','Search #4','S620'),(16,6,'2016-06-08 21:15:39','Search #3','S620'),(17,7,'2016-06-08 21:16:04','Look','L200'),(18,8,'2016-06-08 21:16:13','Luke','L200'),(19,9,'2016-06-08 21:16:37','Luke','L200');
/*!40000 ALTER TABLE `latest_searches_circular_log_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `real_word_list_with_empty`
--

DROP TABLE IF EXISTS `real_word_list_with_empty`;
/*!50001 DROP VIEW IF EXISTS `real_word_list_with_empty`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `real_word_list_with_empty` AS SELECT 
 1 AS `-1`,
 1 AS `Name_exp_2`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `real_words_view`
--

DROP TABLE IF EXISTS `real_words_view`;
/*!50001 DROP VIEW IF EXISTS `real_words_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `real_words_view` AS SELECT 
 1 AS `word_id`,
 1 AS `word`,
 1 AS `total_num_of_appearance`,
 1 AS `num_of_files_appearance`,
 1 AS `is_real`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `relations`
--

DROP TABLE IF EXISTS `relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Comment` varchar(140) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Name_UNIQUE` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relations`
--

LOCK TABLES `relations` WRITE;
/*!40000 ALTER TABLE `relations` DISABLE KEYS */;
INSERT INTO `relations` VALUES (1,'C1','First Relation'),(2,'C2','Second Relation'),(3,'rel1','desc1'),(4,'bla_bla1','bla_bla2'),(7,'bla bla1','ssdasdasd'),(8,'Shiri10','desc1'),(10,'Rel2211','This is my first relation');
/*!40000 ALTER TABLE `relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sonnets`
--

DROP TABLE IF EXISTS `sonnets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sonnets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `rhyme_scheme` varchar(32) NOT NULL,
  `author` varchar(45) DEFAULT 'Unknown',
  `sequence_id` int(11) NOT NULL DEFAULT '0',
  `file_name` varchar(45) DEFAULT NULL,
  `full_path` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_sequence_id_idx` (`sequence_id`),
  CONSTRAINT `fk_sequence_id` FOREIGN KEY (`sequence_id`) REFERENCES `sonnets_sequences` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='		';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sonnets`
--

LOCK TABLES `sonnets` WRITE;
/*!40000 ALTER TABLE `sonnets` DISABLE KEYS */;
INSERT INTO `sonnets` VALUES (32,'1','abab_cdcd_efef_gg','William Shakespeare',10,'ShakespeareSonnet1.txt','G:\\OpenU\\Projects\\sonnets\\txt_files\\ShakespeareSonnet1.txt'),(33,'2','abab_cdcd_efef_gg','Author2',10,'ShakespeareSonnet2.txt','G:\\OpenU\\Projects\\sonnets\\txt_files\\ShakespeareSonnet2.txt'),(34,'Sonnet3','abab_cdcd_efef_gg','Author2',10,'ShakespeareSonnet3.txt','G:\\OpenU\\Projects\\sonnets\\txt_files\\ShakespeareSonnet3.txt'),(35,'4','abab_cdcd_efef_gg','William Shakespeare',0,'ShakespeareSonnet4.txt','G:\\OpenU\\Projects\\sonnets\\txt_files\\ShakespeareSonnet4.txt'),(36,'5','aaaa_bbbb_cccc_ggggg','William Shakespeare',10,'ShakespeareSonnet5.txt','G:\\OpenU\\Projects\\sonnets\\txt_files\\ShakespeareSonnet5.txt'),(37,'8','abab_cdcd_efef_gg','William Shakespeare',10,'ShakespeareSonnet8.txt','G:\\OpenU\\Projects\\sonnets\\txt_files\\ShakespeareSonnet8.txt'),(38,'#9','aaaa_bbbb_cccc_ggggg','author #9',0,'ShakespeareSonnet9.txt','G:\\OpenU\\Projects\\sonnets\\txt_files\\ShakespeareSonnet9.txt');
/*!40000 ALTER TABLE `sonnets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sonnets_sections`
--

DROP TABLE IF EXISTS `sonnets_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sonnets_sections` (
  `sonnet_id` int(11) NOT NULL,
  `line_index` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  PRIMARY KEY (`sonnet_id`,`line_index`),
  KEY `sonnetIndex` (`sonnet_id`) USING BTREE KEY_BLOCK_SIZE=3,
  CONSTRAINT `sonnetFK` FOREIGN KEY (`sonnet_id`) REFERENCES `sonnets` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sonnets_sections`
--

LOCK TABLES `sonnets_sections` WRITE;
/*!40000 ALTER TABLE `sonnets_sections` DISABLE KEYS */;
INSERT INTO `sonnets_sections` VALUES (32,1,1),(32,2,1),(32,3,1),(32,4,1),(32,5,2),(32,6,2),(32,7,2),(32,8,2),(32,9,3),(32,10,3),(32,11,3),(32,12,3),(32,13,4),(32,14,4),(33,1,1),(33,2,1),(33,3,1),(33,4,1),(33,5,2),(33,6,2),(33,7,2),(33,8,2),(33,9,3),(33,10,3),(33,11,3),(33,12,3),(33,13,4),(33,14,4),(34,1,1),(34,2,1),(34,3,1),(34,4,1),(34,5,2),(34,6,2),(34,7,2),(34,8,2),(34,9,3),(34,10,3),(34,11,3),(34,12,3),(34,13,4),(34,14,4),(35,1,1),(35,2,1),(35,3,1),(35,4,1),(35,5,2),(35,6,2),(35,7,2),(35,8,2),(35,9,3),(35,10,3),(35,11,3),(35,12,3),(35,13,4),(35,14,4),(36,1,1),(36,2,1),(36,3,1),(36,4,1),(36,5,2),(36,6,2),(36,7,2),(36,8,2),(36,9,3),(36,10,3),(36,11,3),(36,12,3),(36,13,4),(36,14,4),(36,15,4),(36,16,4),(36,17,4),(37,1,1),(37,2,1),(37,3,1),(37,4,1),(37,5,2),(37,6,2),(37,7,2),(37,8,2),(37,9,3),(37,10,3),(37,11,3),(37,12,3),(37,13,4),(37,14,4),(38,1,1),(38,2,1),(38,3,1),(38,4,1),(38,5,2),(38,6,2),(38,7,2),(38,8,2),(38,9,3),(38,10,3),(38,11,3),(38,12,3),(38,13,4),(38,14,4),(38,15,4),(38,16,4),(38,17,4);
/*!40000 ALTER TABLE `sonnets_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sonnets_sequences`
--

DROP TABLE IF EXISTS `sonnets_sequences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sonnets_sequences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `year` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sonnets_sequences`
--

LOCK TABLES `sonnets_sequences` WRITE;
/*!40000 ALTER TABLE `sonnets_sequences` DISABLE KEYS */;
INSERT INTO `sonnets_sequences` VALUES (0,'No Sequence',0),(10,'Shakespeare\'s sonnets',1609);
/*!40000 ALTER TABLE `sonnets_sequences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `sonnets_with_meta_data`
--

DROP TABLE IF EXISTS `sonnets_with_meta_data`;
/*!50001 DROP VIEW IF EXISTS `sonnets_with_meta_data`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `sonnets_with_meta_data` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `rhyme_scheme`,
 1 AS `author`,
 1 AS `sequence_id`,
 1 AS `sequence_name`,
 1 AS `file_name`,
 1 AS `full_path`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `words`
--

DROP TABLE IF EXISTS `words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `words` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(80) NOT NULL,
  `total_num_of_appearance` int(11) DEFAULT '0',
  `num_of_files_appearance` int(11) DEFAULT '0',
  `is_real` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `value_UNIQUE` (`value`),
  KEY `idx_is_read` (`is_real`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6604 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `words`
--

LOCK TABLES `words` WRITE;
/*!40000 ALTER TABLE `words` DISABLE KEYS */;
INSERT INTO `words` VALUES (6206,'From',1,1,1),(6207,'fairest',1,1,1),(6208,'creatures',1,1,1),(6209,'we',1,1,1),(6210,'desire',1,1,1),(6211,'increase',1,1,1),(6212,',',72,7,0),(6213,'That',11,5,1),(6214,'thereby',1,1,1),(6215,'beauty',11,5,1),(6216,'\'',31,7,0),(6217,'s',16,6,1),(6218,'rose',1,1,1),(6219,'might',2,1,1),(6220,'never',2,2,1),(6221,'die',3,3,1),(6222,'But',9,6,1),(6223,'as',1,1,1),(6224,'the',25,7,1),(6225,'riper',1,1,1),(6226,'should',2,2,1),(6227,'by',6,4,1),(6228,'time',4,3,1),(6229,'decease',1,1,1),(6230,'His',5,4,1),(6231,'tender',2,1,1),(6232,'heir',1,1,1),(6233,'bear',2,2,1),(6234,'memory',1,1,1),(6235,':',9,5,0),(6236,'thou',24,6,1),(6237,'contracted',1,1,1),(6238,'to',19,7,1),(6239,'thine',8,4,1),(6240,'own',3,2,1),(6241,'bright',1,1,1),(6242,'eyes',3,3,1),(6243,'Feed',1,1,1),(6244,'st',4,3,1),(6245,'thy',20,5,1),(6246,'light',1,1,1),(6247,'flame',1,1,1),(6248,'with',10,5,1),(6249,'self',5,3,1),(6250,'-',6,5,0),(6251,'substantial',1,1,1),(6252,'fuel',1,1,1),(6253,'Making',1,1,1),(6254,'a',6,5,1),(6255,'famine',1,1,1),(6256,'where',6,4,1),(6257,'abundance',1,1,1),(6258,'lies',2,2,1),(6259,'foe',1,1,1),(6260,'sweet',4,4,1),(6261,'too',1,1,1),(6262,'cruel',1,1,1),(6263,'art',3,3,1),(6264,'now',4,3,1),(6265,'world',9,3,1),(6266,'fresh',2,2,1),(6267,'ornament',1,1,1),(6268,'And',19,7,1),(6269,'only',1,1,1),(6270,'herald',1,1,1),(6271,'gaudy',1,1,1),(6272,'spring',1,1,1),(6273,'Within',2,2,1),(6274,'bud',1,1,1),(6275,'buriest',1,1,1),(6276,'content',1,1,1),(6277,'churl',1,1,1),(6278,'mak',1,1,1),(6279,'waste',2,2,1),(6280,'in',14,6,1),(6281,'niggarding',1,1,1),(6282,'Pity',1,1,1),(6283,'or',3,3,1),(6284,'else',2,2,1),(6285,'this',5,4,1),(6286,'glutton',1,1,1),(6287,'be',9,5,1),(6288,'eat',1,1,1),(6289,'due',1,1,1),(6290,'grave',1,1,1),(6291,'thee',10,5,1),(6292,'.',16,7,0),(6293,'When',5,3,1),(6294,'forty',1,1,1),(6295,'winters',1,1,1),(6296,'shall',3,2,1),(6297,'beseige',1,1,1),(6298,'brow',1,1,1),(6299,'dig',1,1,1),(6300,'deep',2,1,1),(6301,'trenches',1,1,1),(6302,'field',1,1,1),(6303,'youth',1,1,1),(6304,'proud',1,1,1),(6305,'livery',1,1,1),(6306,'so',6,4,1),(6307,'gazed',1,1,1),(6308,'on',3,3,1),(6309,'Will',5,4,1),(6310,'tatter',1,1,1),(6311,'d',8,4,1),(6312,'weed',1,1,1),(6313,'of',13,6,1),(6314,'small',1,1,1),(6315,'worth',1,1,1),(6316,'held',1,1,1),(6317,'Then',4,3,1),(6318,'being',3,3,1),(6319,'ask',1,1,1),(6320,'all',4,2,1),(6321,'treasure',1,1,1),(6322,'lusty',2,2,1),(6323,'days',1,1,1),(6324,'say',1,1,1),(6325,'sunken',1,1,1),(6326,'Were',4,2,1),(6327,'an',3,2,1),(6328,'eating',1,1,1),(6329,'shame',2,2,1),(6330,'thriftless',1,1,1),(6331,'praise',2,1,1),(6332,'How',3,3,1),(6333,'much',1,1,1),(6334,'more',1,1,1),(6335,'deserved',1,1,1),(6336,'use',2,2,1),(6337,'If',5,4,1),(6338,'couldst',1,1,1),(6339,'answer',1,1,1),(6340,'fair',2,2,1),(6341,'child',2,2,1),(6342,'mine',1,1,1),(6343,'sum',2,2,1),(6344,'my',2,1,1),(6345,'count',1,1,1),(6346,'make',1,1,1),(6347,'old',2,1,1),(6348,'excuse',1,1,1),(6349,',\'',1,1,0),(6350,'Proving',1,1,1),(6351,'succession',1,1,1),(6352,'!',2,2,0),(6353,'new',1,1,1),(6354,'made',1,1,1),(6355,'see',2,2,1),(6356,'blood',1,1,1),(6357,'warm',1,1,1),(6358,'feel',1,1,1),(6359,'it',6,3,1),(6360,'cold',1,1,1),(6361,'Look',2,2,1),(6362,'glass',3,2,1),(6363,'tell',1,1,1),(6364,'face',2,1,1),(6365,'viewest',1,1,1),(6366,'is',4,2,1),(6367,'form',2,2,1),(6368,'another',2,2,1),(6369,';',5,3,0),(6370,'Whose',3,2,1),(6371,'repair',1,1,1),(6372,'not',6,4,1),(6373,'renewest',1,1,1),(6374,'dost',5,2,1),(6375,'beguile',1,1,1),(6376,'unbless',1,1,1),(6377,'some',1,1,1),(6378,'mother',3,2,1),(6379,'For',5,4,1),(6380,'she',3,2,1),(6381,'unear',1,1,1),(6382,'womb',1,1,1),(6383,'Disdains',1,1,1),(6384,'tillage',1,1,1),(6385,'husbandry',1,1,1),(6386,'?',9,4,0),(6387,'who',3,2,1),(6388,'he',1,1,1),(6389,'fond',1,1,1),(6390,'tomb',2,2,1),(6391,'love',2,2,1),(6392,'stop',1,1,1),(6393,'posterity',1,1,1),(6394,'Calls',2,2,1),(6395,'back',1,1,1),(6396,'lovely',2,2,1),(6397,'April',1,1,1),(6398,'her',2,2,1),(6399,'prime',1,1,1),(6400,'through',1,1,1),(6401,'windows',1,1,1),(6402,'age',1,1,1),(6403,'Despite',1,1,1),(6404,'wrinkles',1,1,1),(6405,'golden',1,1,1),(6406,'live',2,2,1),(6407,'remember',1,1,1),(6408,'single',3,3,1),(6409,'image',1,1,1),(6410,'dies',1,1,1),(6411,'Unthrifty',1,1,1),(6412,'loveliness',1,1,1),(6413,'why',5,2,1),(6414,'spend',2,2,1),(6415,'Upon',1,1,1),(6416,'thyself',4,2,1),(6417,'legacy',1,1,1),(6418,'Nature',2,1,1),(6419,'bequest',1,1,1),(6420,'gives',1,1,1),(6421,'nothing',1,1,1),(6422,'doth',4,3,1),(6423,'lend',1,1,1),(6424,'frank',1,1,1),(6425,'lends',1,1,1),(6426,'those',2,2,1),(6427,'are',1,1,1),(6428,'free',1,1,1),(6429,'beauteous',1,1,1),(6430,'niggard',1,1,1),(6431,'abuse',1,1,1),(6432,'bounteous',1,1,1),(6433,'largess',1,1,1),(6434,'given',1,1,1),(6435,'give',1,1,1),(6436,'Profitless',1,1,1),(6437,'usurer',1,1,1),(6438,'great',1,1,1),(6439,'sums',1,1,1),(6440,'yet',1,1,1),(6441,'canst',2,1,1),(6442,'having',1,1,1),(6443,'traffic',1,1,1),(6444,'alone',1,1,1),(6445,'deceive',1,1,1),(6446,'gone',2,2,1),(6447,'What',3,3,1),(6448,'acceptable',1,1,1),(6449,'audit',1,1,1),(6450,'leave',1,1,1),(6451,'unused',2,2,1),(6452,'must',1,1,1),(6453,'Which',3,3,1),(6454,'used',1,1,1),(6455,'lives',2,2,1),(6456,'th',1,1,1),(6457,'executor',1,1,1),(6458,'hours',1,1,1),(6459,'gentle',1,1,1),(6460,'work',1,1,1),(6461,'did',1,1,1),(6462,'frame',1,1,1),(6463,'gaze',1,1,1),(6464,'every',3,2,1),(6465,'eye',2,2,1),(6466,'dwell',1,1,1),(6467,'play',1,1,1),(6468,'tyrants',1,1,1),(6469,'very',1,1,1),(6470,'same',1,1,1),(6471,'unfair',1,1,1),(6472,'fairly',1,1,1),(6473,'excel',1,1,1),(6474,'resting',1,1,1),(6475,'leads',1,1,1),(6476,'summer',2,1,1),(6477,'hideous',1,1,1),(6478,'winter',2,1,1),(6479,'confounds',2,2,1),(6480,'him',1,1,1),(6481,'there',1,1,1),(6482,'Sap',1,1,1),(6483,'cheque',1,1,1),(6484,'frost',1,1,1),(6485,'leaves',1,1,1),(6486,'quite',1,1,1),(6487,'o',1,1,1),(6488,'ersnow',1,1,1),(6489,'bareness',1,1,1),(6490,'distillation',1,1,1),(6491,'left',2,2,1),(6492,'liquid',1,1,1),(6493,'prisoner',1,1,1),(6494,'pent',1,1,1),(6495,'walls',1,1,1),(6496,'effect',1,1,1),(6497,'bereft',1,1,1),(6498,'Nor',2,1,1),(6499,'no',3,2,1),(6500,'remembrance',1,1,1),(6501,'was',1,1,1),(6502,'flowers',1,1,1),(6503,'distill',1,1,1),(6504,'though',1,1,1),(6505,'they',2,2,1),(6506,'meet',1,1,1),(6507,'Leese',1,1,1),(6508,'their',2,1,1),(6509,'show',1,1,1),(6510,'substance',1,1,1),(6511,'still',3,2,1),(6512,'Music',2,1,1),(6513,'hear',2,1,1),(6514,'sadly',1,1,1),(6515,'Sweets',2,1,1),(6516,'war',1,1,1),(6517,'joy',2,1,1),(6518,'delights',1,1,1),(6519,'lovest',1,1,1),(6520,'receivest',2,1,1),(6521,'gladly',1,1,1),(6522,'pleasure',1,1,1),(6523,'annoy',1,1,1),(6524,'true',1,1,1),(6525,'concord',1,1,1),(6526,'well',2,2,1),(6527,'tuned',1,1,1),(6528,'sounds',1,1,1),(6529,'unions',1,1,1),(6530,'married',1,1,1),(6531,'do',3,1,1),(6532,'offend',1,1,1),(6533,'ear',1,1,1),(6534,'sweetly',1,1,1),(6535,'chide',1,1,1),(6536,'singleness',1,1,1),(6537,'parts',1,1,1),(6538,'shouldst',1,1,1),(6539,'Mark',1,1,1),(6540,'one',4,1,1),(6541,'string',1,1,1),(6542,'husband',2,2,1),(6543,'Strikes',1,1,1),(6544,'each',2,1,1),(6545,'mutual',1,1,1),(6546,'ordering',1,1,1),(6547,'Resembling',1,1,1),(6548,'sire',1,1,1),(6549,'happy',1,1,1),(6550,'pleasing',1,1,1),(6551,'note',1,1,1),(6552,'sing',1,1,1),(6553,'speechless',1,1,1),(6554,'song',1,1,1),(6555,'many',1,1,1),(6556,'seeming',1,1,1),(6557,'Sings',1,1,1),(6558,': \'',1,1,0),(6559,'wilt',1,1,1),(6560,'prove',1,1,1),(6561,'none',1,1,1),(6562,'.\'',1,1,0),(6563,'fear',1,1,1),(6564,'wet',1,1,1),(6565,'widow',3,1,1),(6566,'consumest',1,1,1),(6567,'life',1,1,1),(6568,'Ah',1,1,1),(6569,'issueless',1,1,1),(6570,'shalt',1,1,1),(6571,'hap',1,1,1),(6572,'wail',1,1,1),(6573,'like',1,1,1),(6574,'makeless',1,1,1),(6575,'wife',1,1,1),(6576,'weep',1,1,1),(6577,'hast',1,1,1),(6578,'behind',1,1,1),(6579,'private',1,1,1),(6580,'may',1,1,1),(6581,'keep',1,1,1),(6582,'children',1,1,1),(6583,'shape',1,1,1),(6584,'mind',1,1,1),(6585,'unthrift',1,1,1),(6586,'Shifts',1,1,1),(6587,'place',1,1,1),(6588,'enjoys',1,1,1),(6589,'hath',1,1,1),(6590,'end',1,1,1),(6591,'kept',1,1,1),(6592,'user',1,1,1),(6593,'destroys',1,1,1),(6594,'toward',1,1,1),(6595,'others',1,1,1),(6596,'bosom',1,1,1),(6597,'sits',1,1,1),(6598,'himself',1,1,1),(6599,'such',1,1,1),(6600,'murderous',1,1,1),(6601,'commits',1,1,1),(6602,'Hello',0,0,1),(6603,'lklk',0,0,1);
/*!40000 ALTER TABLE `words` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `words_in_groups`
--

DROP TABLE IF EXISTS `words_in_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `words_in_groups` (
  `group_id` int(11) NOT NULL,
  `word_id` int(11) NOT NULL,
  PRIMARY KEY (`group_id`,`word_id`),
  KEY `wig_word_id_idx` (`word_id`),
  CONSTRAINT `wig_gropu_id` FOREIGN KEY (`group_id`) REFERENCES `groups` (`group_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `wig_word_id` FOREIGN KEY (`word_id`) REFERENCES `words` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `words_in_groups`
--

LOCK TABLES `words_in_groups` WRITE;
/*!40000 ALTER TABLE `words_in_groups` DISABLE KEYS */;
INSERT INTO `words_in_groups` VALUES (14,6230),(14,6431);
/*!40000 ALTER TABLE `words_in_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `words_in_relations`
--

DROP TABLE IF EXISTS `words_in_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `words_in_relations` (
  `relation_id` int(11) NOT NULL,
  `first_word_id` int(11) NOT NULL,
  `second_word_id` int(11) NOT NULL,
  PRIMARY KEY (`relation_id`,`first_word_id`,`second_word_id`),
  KEY `wir_first_word_id_idx` (`first_word_id`),
  KEY `wir_second_word_id_idx` (`second_word_id`),
  CONSTRAINT `wir_first_word_id` FOREIGN KEY (`first_word_id`) REFERENCES `words` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `wir_relation_id` FOREIGN KEY (`relation_id`) REFERENCES `relations` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `wir_second_word_id` FOREIGN KEY (`second_word_id`) REFERENCES `words` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `words_in_relations`
--

LOCK TABLES `words_in_relations` WRITE;
/*!40000 ALTER TABLE `words_in_relations` DISABLE KEYS */;
INSERT INTO `words_in_relations` VALUES (7,6431,6254),(10,6431,6254);
/*!40000 ALTER TABLE `words_in_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `words_in_sonnets`
--

DROP TABLE IF EXISTS `words_in_sonnets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `words_in_sonnets` (
  `word_id` int(11) NOT NULL,
  `sonnet_id` int(11) NOT NULL,
  `word_index_in_sonnet` int(11) NOT NULL,
  `line_index` int(11) NOT NULL,
  `word_index_in_line` int(11) NOT NULL,
  PRIMARY KEY (`sonnet_id`,`word_index_in_sonnet`),
  KEY `wir_word_id_idx` (`word_id`),
  KEY `sonnet_lines_idx` (`sonnet_id`,`line_index`) USING BTREE KEY_BLOCK_SIZE=3,
  CONSTRAINT `fk_sonnet_id` FOREIGN KEY (`sonnet_id`) REFERENCES `sonnets` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_word_id` FOREIGN KEY (`word_id`) REFERENCES `words` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `words_in_sonnets`
--

LOCK TABLES `words_in_sonnets` WRITE;
/*!40000 ALTER TABLE `words_in_sonnets` DISABLE KEYS */;
INSERT INTO `words_in_sonnets` VALUES (6206,32,1,1,1),(6207,32,2,1,2),(6208,32,3,1,3),(6209,32,4,1,4),(6210,32,5,1,5),(6211,32,6,1,6),(6212,32,7,1,6),(6213,32,8,2,1),(6214,32,9,2,2),(6215,32,10,2,3),(6216,32,11,2,3),(6217,32,12,2,4),(6218,32,13,2,5),(6219,32,14,2,6),(6220,32,15,2,7),(6221,32,16,2,8),(6212,32,17,2,8),(6222,32,18,3,1),(6223,32,19,3,2),(6224,32,20,3,3),(6225,32,21,3,4),(6226,32,22,3,5),(6227,32,23,3,6),(6228,32,24,3,7),(6229,32,25,3,8),(6212,32,26,3,8),(6230,32,27,4,1),(6231,32,28,4,2),(6232,32,29,4,3),(6219,32,30,4,4),(6233,32,31,4,5),(6230,32,32,4,6),(6234,32,33,4,7),(6235,32,34,4,7),(6222,32,35,5,1),(6236,32,36,5,2),(6237,32,37,5,3),(6238,32,38,5,4),(6239,32,39,5,5),(6240,32,40,5,6),(6241,32,41,5,7),(6242,32,42,5,8),(6212,32,43,5,8),(6243,32,44,6,1),(6216,32,45,6,1),(6244,32,46,6,2),(6245,32,47,6,3),(6246,32,48,6,4),(6216,32,49,6,4),(6217,32,50,6,5),(6247,32,51,6,6),(6248,32,52,6,7),(6249,32,53,6,8),(6250,32,54,6,8),(6251,32,55,6,9),(6252,32,56,6,10),(6212,32,57,6,10),(6253,32,58,7,1),(6254,32,59,7,2),(6255,32,60,7,3),(6256,32,61,7,4),(6257,32,62,7,5),(6258,32,63,7,6),(6212,32,64,7,6),(6245,32,65,8,1),(6249,32,66,8,2),(6245,32,67,8,3),(6259,32,68,8,4),(6212,32,69,8,4),(6238,32,70,8,5),(6245,32,71,8,6),(6260,32,72,8,7),(6249,32,73,8,8),(6261,32,74,8,9),(6262,32,75,8,10),(6235,32,76,8,10),(6236,32,77,9,1),(6213,32,78,9,2),(6263,32,79,9,3),(6264,32,80,9,4),(6224,32,81,9,5),(6265,32,82,9,6),(6216,32,83,9,6),(6217,32,84,9,7),(6266,32,85,9,8),(6267,32,86,9,9),(6212,32,87,9,9),(6268,32,88,10,1),(6269,32,89,10,2),(6270,32,90,10,3),(6238,32,91,10,4),(6224,32,92,10,5),(6271,32,93,10,6),(6272,32,94,10,7),(6212,32,95,10,7),(6273,32,96,11,1),(6239,32,97,11,2),(6240,32,98,11,3),(6274,32,99,11,4),(6275,32,100,11,5),(6245,32,101,11,6),(6276,32,102,11,7),(6212,32,103,11,7),(6268,32,104,12,1),(6231,32,105,12,2),(6277,32,106,12,3),(6278,32,107,12,4),(6216,32,108,12,4),(6244,32,109,12,5),(6279,32,110,12,6),(6280,32,111,12,7),(6281,32,112,12,8),(6235,32,113,12,8),(6282,32,114,13,1),(6224,32,115,13,2),(6265,32,116,13,3),(6212,32,117,13,3),(6283,32,118,13,4),(6284,32,119,13,5),(6285,32,120,13,6),(6286,32,121,13,7),(6287,32,122,13,8),(6212,32,123,13,8),(6238,32,124,14,1),(6288,32,125,14,2),(6224,32,126,14,3),(6265,32,127,14,4),(6216,32,128,14,4),(6217,32,129,14,5),(6289,32,130,14,6),(6212,32,131,14,6),(6227,32,132,14,7),(6224,32,133,14,8),(6290,32,134,14,9),(6268,32,135,14,10),(6291,32,136,14,11),(6292,32,137,14,11),(6293,33,1,1,1),(6294,33,2,1,2),(6295,33,3,1,3),(6296,33,4,1,4),(6297,33,5,1,5),(6245,33,6,1,6),(6298,33,7,1,7),(6212,33,8,1,7),(6268,33,9,2,1),(6299,33,10,2,2),(6300,33,11,2,3),(6301,33,12,2,4),(6280,33,13,2,5),(6245,33,14,2,6),(6215,33,15,2,7),(6216,33,16,2,7),(6217,33,17,2,8),(6302,33,18,2,9),(6212,33,19,2,9),(6245,33,20,3,1),(6303,33,21,3,2),(6216,33,22,3,2),(6217,33,23,3,3),(6304,33,24,3,4),(6305,33,25,3,5),(6212,33,26,3,5),(6306,33,27,3,6),(6307,33,28,3,7),(6308,33,29,3,8),(6264,33,30,3,9),(6212,33,31,3,9),(6309,33,32,4,1),(6287,33,33,4,2),(6254,33,34,4,3),(6310,33,35,4,4),(6216,33,36,4,4),(6311,33,37,4,5),(6312,33,38,4,6),(6212,33,39,4,6),(6313,33,40,4,7),(6314,33,41,4,8),(6315,33,42,4,9),(6316,33,43,4,10),(6235,33,44,4,10),(6317,33,45,5,1),(6318,33,46,5,2),(6319,33,47,5,3),(6216,33,48,5,3),(6311,33,49,5,4),(6256,33,50,5,5),(6320,33,51,5,6),(6245,33,52,5,7),(6215,33,53,5,8),(6258,33,54,5,9),(6212,33,55,5,9),(6256,33,56,6,1),(6320,33,57,6,2),(6224,33,58,6,3),(6321,33,59,6,4),(6313,33,60,6,5),(6245,33,61,6,6),(6322,33,62,6,7),(6323,33,63,6,8),(6212,33,64,6,8),(6238,33,65,7,1),(6324,33,66,7,2),(6212,33,67,7,2),(6273,33,68,7,3),(6239,33,69,7,4),(6240,33,70,7,5),(6300,33,71,7,6),(6250,33,72,7,6),(6325,33,73,7,7),(6242,33,74,7,8),(6212,33,75,7,8),(6326,33,76,8,1),(6327,33,77,8,2),(6320,33,78,8,3),(6250,33,79,8,3),(6328,33,80,8,4),(6329,33,81,8,5),(6268,33,82,8,6),(6330,33,83,8,7),(6331,33,84,8,8),(6292,33,85,8,8),(6332,33,86,9,1),(6333,33,87,9,2),(6334,33,88,9,3),(6331,33,89,9,4),(6335,33,90,9,5),(6245,33,91,9,6),(6215,33,92,9,7),(6216,33,93,9,7),(6217,33,94,9,8),(6336,33,95,9,9),(6212,33,96,9,9),(6337,33,97,10,1),(6236,33,98,10,2),(6338,33,99,10,3),(6339,33,100,10,4),(6216,33,101,10,4),(6285,33,102,10,5),(6340,33,103,10,6),(6341,33,104,10,7),(6313,33,105,10,8),(6342,33,106,10,9),(6296,33,107,11,1),(6343,33,108,11,2),(6344,33,109,11,3),(6345,33,110,11,4),(6268,33,111,11,5),(6346,33,112,11,6),(6344,33,113,11,7),(6347,33,114,11,8),(6348,33,115,11,9),(6349,33,116,11,9),(6350,33,117,12,1),(6230,33,118,12,2),(6215,33,119,12,3),(6227,33,120,12,4),(6351,33,121,12,5),(6239,33,122,12,6),(6352,33,123,12,6),(6285,33,124,13,1),(6326,33,125,13,2),(6238,33,126,13,3),(6287,33,127,13,4),(6353,33,128,13,5),(6354,33,129,13,6),(6293,33,130,13,7),(6236,33,131,13,8),(6263,33,132,13,9),(6347,33,133,13,10),(6212,33,134,13,10),(6268,33,135,14,1),(6355,33,136,14,2),(6245,33,137,14,3),(6356,33,138,14,4),(6357,33,139,14,5),(6293,33,140,14,6),(6236,33,141,14,7),(6358,33,142,14,8),(6216,33,143,14,8),(6244,33,144,14,9),(6359,33,145,14,10),(6360,33,146,14,11),(6292,33,147,14,11),(6361,34,1,1,1),(6280,34,2,1,2),(6245,34,3,1,3),(6362,34,4,1,4),(6212,34,5,1,4),(6268,34,6,1,5),(6363,34,7,1,6),(6224,34,8,1,7),(6364,34,9,1,8),(6236,34,10,1,9),(6365,34,11,1,10),(6264,34,12,2,1),(6366,34,13,2,2),(6224,34,14,2,3),(6228,34,15,2,4),(6213,34,16,2,5),(6364,34,17,2,6),(6226,34,18,2,7),(6367,34,19,2,8),(6368,34,20,2,9),(6369,34,21,2,9),(6370,34,22,3,1),(6266,34,23,3,2),(6371,34,24,3,3),(6337,34,25,3,4),(6264,34,26,3,5),(6236,34,27,3,6),(6372,34,28,3,7),(6373,34,29,3,8),(6212,34,30,3,8),(6236,34,31,4,1),(6374,34,32,4,2),(6375,34,33,4,3),(6224,34,34,4,4),(6265,34,35,4,5),(6212,34,36,4,5),(6376,34,37,4,6),(6377,34,38,4,7),(6378,34,39,4,8),(6292,34,40,4,8),(6379,34,41,5,1),(6256,34,42,5,2),(6366,34,43,5,3),(6380,34,44,5,4),(6306,34,45,5,5),(6340,34,46,5,6),(6370,34,47,5,7),(6381,34,48,5,8),(6216,34,49,5,8),(6311,34,50,5,9),(6382,34,51,5,10),(6383,34,52,6,1),(6224,34,53,6,2),(6384,34,54,6,3),(6313,34,55,6,4),(6245,34,56,6,5),(6385,34,57,6,6),(6386,34,58,6,6),(6283,34,59,7,1),(6387,34,60,7,2),(6366,34,61,7,3),(6388,34,62,7,4),(6306,34,63,7,5),(6389,34,64,7,6),(6309,34,65,7,7),(6287,34,66,7,8),(6224,34,67,7,9),(6390,34,68,7,10),(6313,34,69,8,1),(6230,34,70,8,2),(6249,34,71,8,3),(6250,34,72,8,3),(6391,34,73,8,4),(6212,34,74,8,4),(6238,34,75,8,5),(6392,34,76,8,6),(6393,34,77,8,7),(6386,34,78,8,7),(6236,34,79,9,1),(6263,34,80,9,2),(6245,34,81,9,3),(6378,34,82,9,4),(6216,34,83,9,4),(6217,34,84,9,5),(6362,34,85,9,6),(6212,34,86,9,6),(6268,34,87,9,7),(6380,34,88,9,8),(6280,34,89,9,9),(6291,34,90,9,10),(6394,34,91,10,1),(6395,34,92,10,2),(6224,34,93,10,3),(6396,34,94,10,4),(6397,34,95,10,5),(6313,34,96,10,6),(6398,34,97,10,7),(6399,34,98,10,8),(6235,34,99,10,8),(6306,34,100,11,1),(6236,34,101,11,2),(6400,34,102,11,3),(6401,34,103,11,4),(6313,34,104,11,5),(6239,34,105,11,6),(6402,34,106,11,7),(6296,34,107,11,8),(6355,34,108,11,9),(6403,34,109,12,1),(6313,34,110,12,2),(6404,34,111,12,3),(6285,34,112,12,4),(6245,34,113,12,5),(6405,34,114,12,6),(6228,34,115,12,7),(6292,34,116,12,7),(6222,34,117,13,1),(6337,34,118,13,2),(6236,34,119,13,3),(6406,34,120,13,4),(6212,34,121,13,4),(6407,34,122,13,5),(6216,34,123,13,5),(6311,34,124,13,6),(6372,34,125,13,7),(6238,34,126,13,8),(6287,34,127,13,9),(6212,34,128,13,9),(6221,34,129,14,1),(6408,34,130,14,2),(6212,34,131,14,2),(6268,34,132,14,3),(6239,34,133,14,4),(6409,34,134,14,5),(6410,34,135,14,6),(6248,34,136,14,7),(6291,34,137,14,8),(6292,34,138,14,8),(6411,35,1,1,1),(6412,35,2,1,2),(6212,35,3,1,2),(6413,35,4,1,3),(6374,35,5,1,4),(6236,35,6,1,5),(6414,35,7,1,6),(6415,35,8,2,1),(6416,35,9,2,2),(6245,35,10,2,3),(6215,35,11,2,4),(6216,35,12,2,4),(6217,35,13,2,5),(6417,35,14,2,6),(6386,35,15,2,6),(6418,35,16,3,1),(6216,35,17,3,1),(6217,35,18,3,2),(6419,35,19,3,3),(6420,35,20,3,4),(6421,35,21,3,5),(6222,35,22,3,6),(6422,35,23,3,7),(6423,35,24,3,8),(6212,35,25,3,8),(6268,35,26,4,1),(6318,35,27,4,2),(6424,35,28,4,3),(6380,35,29,4,4),(6425,35,30,4,5),(6238,35,31,4,6),(6426,35,32,4,7),(6427,35,33,4,8),(6428,35,34,4,9),(6292,35,35,4,9),(6317,35,36,5,1),(6212,35,37,5,1),(6429,35,38,5,2),(6430,35,39,5,3),(6212,35,40,5,3),(6413,35,41,5,4),(6374,35,42,5,5),(6236,35,43,5,6),(6431,35,44,5,7),(6224,35,45,6,1),(6432,35,46,6,2),(6433,35,47,6,3),(6434,35,48,6,4),(6291,35,49,6,5),(6238,35,50,6,6),(6435,35,51,6,7),(6386,35,52,6,7),(6436,35,53,7,1),(6437,35,54,7,2),(6212,35,55,7,2),(6413,35,56,7,3),(6374,35,57,7,4),(6236,35,58,7,5),(6336,35,59,7,6),(6306,35,60,8,1),(6438,35,61,8,2),(6254,35,62,8,3),(6343,35,63,8,4),(6313,35,64,8,5),(6439,35,65,8,6),(6212,35,66,8,6),(6440,35,67,8,7),(6441,35,68,8,8),(6372,35,69,8,9),(6406,35,70,8,10),(6386,35,71,8,10),(6379,35,72,9,1),(6442,35,73,9,2),(6443,35,74,9,3),(6248,35,75,9,4),(6416,35,76,9,5),(6444,35,77,9,6),(6212,35,78,9,6),(6236,35,79,10,1),(6313,35,80,10,2),(6416,35,81,10,3),(6245,35,82,10,4),(6260,35,83,10,5),(6249,35,84,10,6),(6374,35,85,10,7),(6445,35,86,10,8),(6292,35,87,10,8),(6317,35,88,11,1),(6332,35,89,11,2),(6212,35,90,11,2),(6293,35,91,11,3),(6418,35,92,11,4),(6394,35,93,11,5),(6291,35,94,11,6),(6238,35,95,11,7),(6287,35,96,11,8),(6446,35,97,11,9),(6212,35,98,11,9),(6447,35,99,12,1),(6448,35,100,12,2),(6449,35,101,12,3),(6441,35,102,12,4),(6236,35,103,12,5),(6450,35,104,12,6),(6386,35,105,12,6),(6245,35,106,13,1),(6451,35,107,13,2),(6215,35,108,13,3),(6452,35,109,13,4),(6287,35,110,13,5),(6390,35,111,13,6),(6216,35,112,13,6),(6311,35,113,13,7),(6248,35,114,13,8),(6291,35,115,13,9),(6212,35,116,13,9),(6453,35,117,14,1),(6212,35,118,14,1),(6454,35,119,14,2),(6212,35,120,14,2),(6455,35,121,14,3),(6456,35,122,14,4),(6216,35,123,14,4),(6457,35,124,14,5),(6238,35,125,14,6),(6287,35,126,14,7),(6292,35,127,14,7),(6426,36,1,1,1),(6458,36,2,1,2),(6212,36,3,1,2),(6213,36,4,1,3),(6248,36,5,1,4),(6459,36,6,1,5),(6460,36,7,1,6),(6461,36,8,1,7),(6462,36,9,1,8),(6224,36,10,2,1),(6396,36,11,2,2),(6463,36,12,2,3),(6256,36,13,2,4),(6464,36,14,2,5),(6465,36,15,2,6),(6422,36,16,2,7),(6466,36,17,2,8),(6212,36,18,2,8),(6309,36,19,3,1),(6467,36,20,3,2),(6224,36,21,3,3),(6468,36,22,3,4),(6238,36,23,3,5),(6224,36,24,3,6),(6469,36,25,3,7),(6470,36,26,3,8),(6268,36,27,4,1),(6213,36,28,4,2),(6471,36,29,4,3),(6453,36,30,4,4),(6472,36,31,4,5),(6422,36,32,4,6),(6473,36,33,4,7),(6235,36,34,4,7),(6379,36,35,5,1),(6220,36,36,5,2),(6250,36,37,5,2),(6474,36,38,5,3),(6228,36,39,5,4),(6475,36,40,5,5),(6476,36,41,5,6),(6308,36,42,5,7),(6238,36,43,6,1),(6477,36,44,6,2),(6478,36,45,6,3),(6268,36,46,6,4),(6479,36,47,6,5),(6480,36,48,6,6),(6481,36,49,6,7),(6369,36,50,6,7),(6482,36,51,7,1),(6483,36,52,7,2),(6216,36,53,7,2),(6311,36,54,7,3),(6248,36,55,7,4),(6484,36,56,7,5),(6268,36,57,7,6),(6322,36,58,7,7),(6485,36,59,7,8),(6486,36,60,7,9),(6446,36,61,7,10),(6212,36,62,7,10),(6215,36,63,8,1),(6487,36,64,8,2),(6216,36,65,8,2),(6488,36,66,8,3),(6216,36,67,8,3),(6311,36,68,8,4),(6268,36,69,8,5),(6489,36,70,8,6),(6464,36,71,8,7),(6256,36,72,8,8),(6235,36,73,8,8),(6317,36,74,9,1),(6212,36,75,9,1),(6326,36,76,9,2),(6372,36,77,9,3),(6476,36,78,9,4),(6216,36,79,9,4),(6217,36,80,9,5),(6490,36,81,9,6),(6491,36,82,9,7),(6212,36,83,9,7),(6254,36,84,10,1),(6492,36,85,10,2),(6493,36,86,10,3),(6494,36,87,10,4),(6280,36,88,10,5),(6495,36,89,10,6),(6313,36,90,10,7),(6362,36,91,10,8),(6212,36,92,10,8),(6215,36,93,11,1),(6216,36,94,11,1),(6217,36,95,11,2),(6496,36,96,11,3),(6248,36,97,11,4),(6215,36,98,11,5),(6326,36,99,11,6),(6497,36,100,11,7),(6212,36,101,11,7),(6498,36,102,12,1),(6359,36,103,12,2),(6498,36,104,12,3),(6499,36,105,12,4),(6500,36,106,12,5),(6447,36,107,12,6),(6359,36,108,12,7),(6501,36,109,12,8),(6235,36,110,12,8),(6222,36,111,13,1),(6502,36,112,13,2),(6503,36,113,13,3),(6216,36,114,13,3),(6311,36,115,13,4),(6504,36,116,13,5),(6505,36,117,13,6),(6248,36,118,13,7),(6478,36,119,13,8),(6506,36,120,13,9),(6212,36,121,13,9),(6507,36,122,14,1),(6222,36,123,14,2),(6508,36,124,14,3),(6509,36,125,14,4),(6369,36,126,14,4),(6508,36,127,14,5),(6510,36,128,14,6),(6511,36,129,14,7),(6455,36,130,14,8),(6260,36,131,14,9),(6292,36,132,14,9),(6512,37,1,1,1),(6238,37,2,1,2),(6513,37,3,1,3),(6212,37,4,1,3),(6413,37,5,1,4),(6513,37,6,1,5),(6216,37,7,1,5),(6244,37,8,1,6),(6236,37,9,1,7),(6512,37,10,1,8),(6514,37,11,1,9),(6386,37,12,1,9),(6515,37,13,2,1),(6248,37,14,2,2),(6515,37,15,2,3),(6516,37,16,2,4),(6372,37,17,2,5),(6212,37,18,2,5),(6517,37,19,2,6),(6518,37,20,2,7),(6280,37,21,2,8),(6517,37,22,2,9),(6292,37,23,2,9),(6413,37,24,3,1),(6519,37,25,3,2),(6236,37,26,3,3),(6213,37,27,3,4),(6453,37,28,3,5),(6236,37,29,3,6),(6520,37,30,3,7),(6372,37,31,3,8),(6521,37,32,3,9),(6212,37,33,3,9),(6283,37,34,4,1),(6284,37,35,4,2),(6520,37,36,4,3),(6248,37,37,4,4),(6522,37,38,4,5),(6239,37,39,4,6),(6523,37,40,4,7),(6386,37,41,4,7),(6337,37,42,5,1),(6224,37,43,5,2),(6524,37,44,5,3),(6525,37,45,5,4),(6313,37,46,5,5),(6526,37,47,5,6),(6250,37,48,5,6),(6527,37,49,5,7),(6528,37,50,5,8),(6212,37,51,5,8),(6227,37,52,6,1),(6529,37,53,6,2),(6530,37,54,6,3),(6212,37,55,6,3),(6531,37,56,6,4),(6532,37,57,6,5),(6239,37,58,6,6),(6533,37,59,6,7),(6212,37,60,6,7),(6505,37,61,7,1),(6531,37,62,7,2),(6222,37,63,7,3),(6534,37,64,7,4),(6535,37,65,7,5),(6291,37,66,7,6),(6212,37,67,7,6),(6387,37,68,7,7),(6479,37,69,7,8),(6280,37,70,8,1),(6536,37,71,8,2),(6224,37,72,8,3),(6537,37,73,8,4),(6213,37,74,8,5),(6236,37,75,8,6),(6538,37,76,8,7),(6233,37,77,8,8),(6292,37,78,8,8),(6539,37,79,9,1),(6332,37,80,9,2),(6540,37,81,9,3),(6541,37,82,9,4),(6212,37,83,9,4),(6260,37,84,9,5),(6542,37,85,9,6),(6238,37,86,9,7),(6368,37,87,9,8),(6212,37,88,9,8),(6543,37,89,10,1),(6544,37,90,10,2),(6280,37,91,10,3),(6544,37,92,10,4),(6227,37,93,10,5),(6545,37,94,10,6),(6546,37,95,10,7),(6212,37,96,10,7),(6547,37,97,11,1),(6548,37,98,11,2),(6268,37,99,11,3),(6341,37,100,11,4),(6268,37,101,11,5),(6549,37,102,11,6),(6378,37,103,11,7),(6387,37,104,12,1),(6320,37,105,12,2),(6280,37,106,12,3),(6540,37,107,12,4),(6212,37,108,12,4),(6540,37,109,12,5),(6550,37,110,12,6),(6551,37,111,12,7),(6531,37,112,12,8),(6552,37,113,12,9),(6235,37,114,12,9),(6370,37,115,13,1),(6553,37,116,13,2),(6554,37,117,13,3),(6212,37,118,13,3),(6318,37,119,13,4),(6555,37,120,13,5),(6212,37,121,13,5),(6556,37,122,13,6),(6540,37,123,13,7),(6212,37,124,13,7),(6557,37,125,14,1),(6285,37,126,14,2),(6238,37,127,14,3),(6291,37,128,14,4),(6558,37,129,14,4),(6236,37,130,14,5),(6408,37,131,14,6),(6559,37,132,14,7),(6560,37,133,14,8),(6561,37,134,14,9),(6562,37,135,14,9),(6366,38,1,1,1),(6359,38,2,1,2),(6379,38,3,1,3),(6563,38,4,1,4),(6238,38,5,1,5),(6564,38,6,1,6),(6254,38,7,1,7),(6565,38,8,1,8),(6216,38,9,1,8),(6217,38,10,1,9),(6465,38,11,1,10),(6213,38,12,2,1),(6236,38,13,2,2),(6566,38,14,2,3),(6416,38,15,2,4),(6280,38,16,2,5),(6408,38,17,2,6),(6567,38,18,2,7),(6386,38,19,2,7),(6568,38,20,3,1),(6352,38,21,3,1),(6337,38,22,3,2),(6236,38,23,3,3),(6569,38,24,3,4),(6570,38,25,3,5),(6571,38,26,3,6),(6238,38,27,3,7),(6221,38,28,3,8),(6292,38,29,3,8),(6224,38,30,4,1),(6265,38,31,4,2),(6309,38,32,4,3),(6572,38,33,4,4),(6291,38,34,4,5),(6212,38,35,4,5),(6573,38,36,4,6),(6254,38,37,4,7),(6574,38,38,4,8),(6575,38,39,4,9),(6369,38,40,4,9),(6224,38,41,5,1),(6265,38,42,5,2),(6309,38,43,5,3),(6287,38,44,5,4),(6245,38,45,5,5),(6565,38,46,5,6),(6268,38,47,5,7),(6511,38,48,5,8),(6576,38,49,5,9),(6213,38,50,6,1),(6236,38,51,6,2),(6499,38,52,6,3),(6367,38,53,6,4),(6313,38,54,6,5),(6291,38,55,6,6),(6577,38,56,6,7),(6491,38,57,6,8),(6578,38,58,6,9),(6212,38,59,6,9),(6293,38,60,7,1),(6464,38,61,7,2),(6579,38,62,7,3),(6565,38,63,7,4),(6526,38,64,7,5),(6580,38,65,7,6),(6581,38,66,7,7),(6227,38,67,8,1),(6582,38,68,8,2),(6216,38,69,8,2),(6217,38,70,8,3),(6242,38,71,8,4),(6398,38,72,8,5),(6542,38,73,8,6),(6216,38,74,8,6),(6217,38,75,8,7),(6583,38,76,8,8),(6280,38,77,8,9),(6584,38,78,8,10),(6292,38,79,8,10),(6361,38,80,9,1),(6212,38,81,9,1),(6447,38,82,9,2),(6327,38,83,9,3),(6585,38,84,9,4),(6280,38,85,9,5),(6224,38,86,9,6),(6265,38,87,9,7),(6422,38,88,9,8),(6414,38,89,9,9),(6586,38,90,10,1),(6222,38,91,10,2),(6230,38,92,10,3),(6587,38,93,10,4),(6212,38,94,10,4),(6379,38,95,10,5),(6511,38,96,10,6),(6224,38,97,10,7),(6265,38,98,10,8),(6588,38,99,10,9),(6359,38,100,10,10),(6369,38,101,10,10),(6222,38,102,11,1),(6215,38,103,11,2),(6216,38,104,11,2),(6217,38,105,11,3),(6279,38,106,11,4),(6589,38,107,11,5),(6280,38,108,11,6),(6224,38,109,11,7),(6265,38,110,11,8),(6327,38,111,11,9),(6590,38,112,11,10),(6212,38,113,11,10),(6268,38,114,12,1),(6591,38,115,12,2),(6451,38,116,12,3),(6212,38,117,12,3),(6224,38,118,12,4),(6592,38,119,12,5),(6306,38,120,12,6),(6593,38,121,12,7),(6359,38,122,12,8),(6292,38,123,12,8),(6499,38,124,13,1),(6391,38,125,13,2),(6594,38,126,13,3),(6595,38,127,13,4),(6280,38,128,13,5),(6213,38,129,13,6),(6596,38,130,13,7),(6597,38,131,13,8),(6213,38,132,14,1),(6308,38,133,14,2),(6598,38,134,14,3),(6599,38,135,14,4),(6600,38,136,14,5),(6329,38,137,14,6),(6601,38,138,14,7),(6292,38,139,14,7);
/*!40000 ALTER TABLE `words_in_sonnets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `words_in_sonnets_with_sections`
--

DROP TABLE IF EXISTS `words_in_sonnets_with_sections`;
/*!50001 DROP VIEW IF EXISTS `words_in_sonnets_with_sections`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `words_in_sonnets_with_sections` AS SELECT 
 1 AS `word_id`,
 1 AS `sonnet_id`,
 1 AS `word_index_in_sonnet`,
 1 AS `line_index`,
 1 AS `word_index_in_line`,
 1 AS `section_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'concordancedb'
--

--
-- Dumping routines for database 'concordancedb'
--
/*!50003 DROP FUNCTION IF EXISTS `dm` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `dm`(st VARCHAR(55)) RETURNS varchar(128) CHARSET utf8
    NO SQL
BEGIN
	DECLARE length, first, last, pos, prevpos, is_slavo_germanic SMALLINT;
	DECLARE pri, sec VARCHAR(45) DEFAULT '';
	DECLARE ch CHAR(1);
	-- returns the double metaphone code OR codes for given string
	-- if there is a secondary dm it is separated with a semicolon
	-- there are no checks done on the input string, but it should be a single word OR name.
	--  st is short for string. I usually prefer descriptive over short, but this var is used a lot!
	SET first = 3;
	SET length = CHAR_LENGTH(st);
	SET last = first + length -1;
	SET st = CONCAT(REPEAT('-', first -1), UCASE(st), REPEAT(' ', 5)); --  pad st so we can index beyond the begining AND end of the input string
	SET is_slavo_germanic = (st LIKE '%W%' OR st LIKE '%K%' OR st LIKE '%CZ%');  -- the check for '%W%' will catch WITZ
	SET pos = first; --  pos is short for position
	-- skip these silent letters when at start of word
	IF SUBSTRING(st, first, 2) IN ('GN', 'KN', 'PN', 'WR', 'PS') THEN
		SET pos = pos + 1;
	END IF;
	--  Initial 'X' is pronounced 'Z' e.g. 'Xavier'
	IF SUBSTRING(st, first, 1) = 'X' THEN
		SET pri = 'S', sec = 'S', pos = pos  + 1; -- 'Z' maps to 'S'
	END IF;
	--  main loop through chars IN st
	WHILE pos <= last DO
		-- print str(pos) + '\t' + SUBSTRING(st, pos)
    SET prevpos = pos;
		SET ch = SUBSTRING(st, pos, 1); --  ch is short for character
		CASE
		WHEN ch IN ('A', 'E', 'I', 'O', 'U', 'Y') THEN
			IF pos = first THEN --  all init vowels now map to 'A'
				SET pri = CONCAT(pri, 'A'), sec = CONCAT(sec, 'A'), pos = pos  + 1; -- nxt = ('A', 1)
			ELSE
				SET pos = pos + 1;
			END IF;
		WHEN ch = 'B' THEN
			-- '-mb', e.g', 'dumb', already skipped over... see 'M' below
			IF SUBSTRING(st, pos+1, 1) = 'B' THEN
				SET pri = CONCAT(pri, 'P'), sec = CONCAT(sec, 'P'), pos = pos  + 2; -- nxt = ('P', 2)
			ELSE
				SET pri = CONCAT(pri, 'P'), sec = CONCAT(sec, 'P'), pos = pos  + 1; -- nxt = ('P', 1)
			END IF;
		WHEN ch = 'C' THEN
			--  various germanic
			IF (pos > (first + 1) AND SUBSTRING(st, pos-2, 1) NOT IN ('A', 'E', 'I', 'O', 'U', 'Y') AND SUBSTRING(st, pos-1, 3) = 'ACH' AND
			   (SUBSTRING(st, pos+2, 1) NOT IN ('I', 'E') OR SUBSTRING(st, pos-2, 6) IN ('BACHER', 'MACHER'))) THEN
				SET pri = CONCAT(pri, 'K'), sec = CONCAT(sec, 'K'), pos = pos  + 2; -- nxt = ('K', 2)
			--  special case 'CAESAR'
			ELSEIF pos = first AND SUBSTRING(st, first, 6) = 'CAESAR' THEN
				SET pri = CONCAT(pri, 'S'), sec = CONCAT(sec, 'S'), pos = pos  + 2; -- nxt = ('S', 2)
			ELSEIF SUBSTRING(st, pos, 4) = 'CHIA' THEN -- italian 'chianti'
				SET pri = CONCAT(pri, 'K'), sec = CONCAT(sec, 'K'), pos = pos  + 2; -- nxt = ('K', 2)
			ELSEIF SUBSTRING(st, pos, 2) = 'CH' THEN
				--  find 'michael'
				IF pos > first AND SUBSTRING(st, pos, 4) = 'CHAE' THEN
					SET pri = CONCAT(pri, 'K'), sec = CONCAT(sec, 'X'), pos = pos  + 2; -- nxt = ('K', 'X', 2)
				ELSEIF pos = first AND (SUBSTRING(st, pos+1, 5) IN ('HARAC', 'HARIS') OR
				   SUBSTRING(st, pos+1, 3) IN ('HOR', 'HYM', 'HIA', 'HEM')) AND SUBSTRING(st, first, 5) != 'CHORE' THEN
					SET pri = CONCAT(pri, 'K'), sec = CONCAT(sec, 'K'), pos = pos  + 2; -- nxt = ('K', 2)
				-- germanic, greek, OR otherwise 'ch' for 'kh' sound
				ELSEIF SUBSTRING(st, first, 4) IN ('VAN ', 'VON ') OR SUBSTRING(st, first, 3) = 'SCH'
				   OR SUBSTRING(st, pos-2, 6) IN ('ORCHES', 'ARCHIT', 'ORCHID')
				   OR SUBSTRING(st, pos+2, 1) IN ('T', 'S')
				   OR ((SUBSTRING(st, pos-1, 1) IN ('A', 'O', 'U', 'E') OR pos = first)
				   AND SUBSTRING(st, pos+2, 1) IN ('L', 'R', 'N', 'M', 'B', 'H', 'F', 'V', 'W', ' ')) THEN
					SET pri = CONCAT(pri, 'K'), sec = CONCAT(sec, 'K'), pos = pos  + 2; -- nxt = ('K', 2)
				ELSE
					IF pos > first THEN
						IF SUBSTRING(st, first, 2) = 'MC' THEN
							SET pri = CONCAT(pri, 'K'), sec = CONCAT(sec, 'K'), pos = pos  + 2; -- nxt = ('K', 2)
						ELSE
							SET pri = CONCAT(pri, 'X'), sec = CONCAT(sec, 'K'), pos = pos  + 2; -- nxt = ('X', 'K', 2)
						END IF;
					ELSE
						SET pri = CONCAT(pri, 'X'), sec = CONCAT(sec, 'X'), pos = pos  + 2; -- nxt = ('X', 2)
					END IF;
				END IF;
			-- e.g, 'czerny'
			ELSEIF SUBSTRING(st, pos, 2) = 'CZ' AND SUBSTRING(st, pos-2, 4) != 'WICZ' THEN
				SET pri = CONCAT(pri, 'S'), sec = CONCAT(sec, 'X'), pos = pos  + 2; -- nxt = ('S', 'X', 2)
			-- e.g., 'focaccia'
			ELSEIF SUBSTRING(st, pos+1, 3) = 'CIA' THEN
				SET pri = CONCAT(pri, 'X'), sec = CONCAT(sec, 'X'), pos = pos  + 3; -- nxt = ('X', 3)
			-- double 'C', but not IF e.g. 'McClellan'
			ELSEIF SUBSTRING(st, pos, 2) = 'CC' AND NOT (pos = (first +1) AND SUBSTRING(st, first, 1) = 'M') THEN
				-- 'bellocchio' but not 'bacchus'
				IF SUBSTRING(st, pos+2, 1) IN ('I', 'E', 'H') AND SUBSTRING(st, pos+2, 2) != 'HU' THEN
					-- 'accident', 'accede' 'succeed'
					IF (pos = first +1 AND SUBSTRING(st, first) = 'A') OR
					   SUBSTRING(st, pos-1, 5) IN ('UCCEE', 'UCCES') THEN
						SET pri = CONCAT(pri, 'KS'), sec = CONCAT(sec, 'KS'), pos = pos  + 3; -- nxt = ('KS', 3)
					-- 'bacci', 'bertucci', other italian
					ELSE
						SET pri = CONCAT(pri, 'X'), sec = CONCAT(sec, 'X'), pos = pos  + 3; -- nxt = ('X', 3)
					END IF;
				ELSE
					SET pri = CONCAT(pri, 'K'), sec = CONCAT(sec, 'K'), pos = pos  + 2; -- nxt = ('K', 2)
				END IF;
			ELSEIF SUBSTRING(st, pos, 2) IN ('CK', 'CG', 'CQ') THEN
				SET pri = CONCAT(pri, 'K'), sec = CONCAT(sec, 'K'), pos = pos  + 2; -- nxt = ('K', 'K', 2)
			ELSEIF SUBSTRING(st, pos, 2) IN ('CI', 'CE', 'CY') THEN
				-- italian vs. english
				IF SUBSTRING(st, pos, 3) IN ('CIO', 'CIE', 'CIA') THEN
					SET pri = CONCAT(pri, 'S'), sec = CONCAT(sec, 'X'), pos = pos  + 2; -- nxt = ('S', 'X', 2)
				ELSE
					SET pri = CONCAT(pri, 'S'), sec = CONCAT(sec, 'S'), pos = pos  + 2; -- nxt = ('S', 2)
				END IF;
			ELSE 
				-- name sent IN 'mac caffrey', 'mac gregor
				IF SUBSTRING(st, pos+1, 2) IN (' C', ' Q', ' G') THEN
					SET pri = CONCAT(pri, 'K'), sec = CONCAT(sec, 'K'), pos = pos  + 3; -- nxt = ('K', 3)
				ELSE
					IF SUBSTRING(st, pos+1, 1) IN ('C', 'K', 'Q') AND SUBSTRING(st, pos+1, 2) NOT IN ('CE', 'CI') THEN
						SET pri = CONCAT(pri, 'K'), sec = CONCAT(sec, 'K'), pos = pos  + 2; -- nxt = ('K', 2)
					ELSE --  default for 'C'
						SET pri = CONCAT(pri, 'K'), sec = CONCAT(sec, 'K'), pos = pos  + 1; -- nxt = ('K', 1)
					END IF;
				END IF;
			END IF;
		-- ELSEIF ch = 'Ç' THEN --  will never get here with st.encode('ascii', 'replace') above
			-- SET pri = CONCAT(pri, '5'), sec = CONCAT(sec, '5'), pos = pos  + 1; -- nxt = ('S', 1)
		WHEN ch = 'D' THEN
			IF SUBSTRING(st, pos, 2) = 'DG' THEN
				IF SUBSTRING(st, pos+2, 1) IN ('I', 'E', 'Y') THEN -- e.g. 'edge'
					SET pri = CONCAT(pri, 'J'), sec = CONCAT(sec, 'J'), pos = pos  + 3; -- nxt = ('J', 3)
				ELSE
					SET pri = CONCAT(pri, 'TK'), sec = CONCAT(sec, 'TK'), pos = pos  + 2; -- nxt = ('TK', 2)
				END IF;
			ELSEIF SUBSTRING(st, pos, 2) IN ('DT', 'DD') THEN
				SET pri = CONCAT(pri, 'T'), sec = CONCAT(sec, 'T'), pos = pos  + 2; -- nxt = ('T', 2)
			ELSE
				SET pri = CONCAT(pri, 'T'), sec = CONCAT(sec, 'T'), pos = pos  + 1; -- nxt = ('T', 1)
			END IF;
		WHEN ch = 'F' THEN
			IF SUBSTRING(st, pos+1, 1) = 'F' THEN
				SET pri = CONCAT(pri, 'F'), sec = CONCAT(sec, 'F'), pos = pos  + 2; -- nxt = ('F', 2)
			ELSE
				SET pri = CONCAT(pri, 'F'), sec = CONCAT(sec, 'F'), pos = pos  + 1; -- nxt = ('F', 1)
			END IF;
		WHEN ch = 'G' THEN
			IF SUBSTRING(st, pos+1, 1) = 'H' THEN
				IF (pos > first AND SUBSTRING(st, pos-1, 1) NOT IN ('A', 'E', 'I', 'O', 'U', 'Y')) 
					OR ( pos = first AND SUBSTRING(st, pos+2, 1) != 'I') THEN
					SET pri = CONCAT(pri, 'K'), sec = CONCAT(sec, 'K'), pos = pos  + 2; -- nxt = ('K', 2)
				ELSEIF pos = first AND SUBSTRING(st, pos+2, 1) = 'I' THEN
					 SET pri = CONCAT(pri, 'J'), sec = CONCAT(sec, 'J'), pos = pos  + 2; -- nxt = ('J', 2)
				-- Parker's rule (with some further refinements) - e.g., 'hugh'
				ELSEIF (pos > (first + 1) AND SUBSTRING(st, pos-2, 1) IN ('B', 'H', 'D') )
				   OR (pos > (first + 2) AND SUBSTRING(st, pos-3, 1) IN ('B', 'H', 'D') )
				   OR (pos > (first + 3) AND SUBSTRING(st, pos-4, 1) IN ('B', 'H') ) THEN
					SET pos = pos + 2; -- nxt = (None, 2)
				ELSE
					--  e.g., 'laugh', 'McLaughlin', 'cough', 'gough', 'rough', 'tough'
					IF pos > (first + 2) AND SUBSTRING(st, pos-1, 1) = 'U'
					   AND SUBSTRING(st, pos-3, 1) IN ('C', 'G', 'L', 'R', 'T') THEN
						SET pri = CONCAT(pri, 'F'), sec = CONCAT(sec, 'F'), pos = pos  + 2; -- nxt = ('F', 2)
					ELSEIF pos > first AND SUBSTRING(st, pos-1, 1) != 'I' THEN
						SET pri = CONCAT(pri, 'K'), sec = CONCAT(sec, 'K'), pos = pos  + 2; -- nxt = ('K', 2)
          ELSE
              SET pos = pos + 1;
					END IF;
				END IF;
			ELSEIF SUBSTRING(st, pos+1, 1) = 'N' THEN
				IF pos = (first +1) AND SUBSTRING(st, first, 1) IN ('A', 'E', 'I', 'O', 'U', 'Y') AND NOT is_slavo_germanic THEN
					SET pri = CONCAT(pri, 'KN'), sec = CONCAT(sec, 'N'), pos = pos  + 2; -- nxt = ('KN', 'N', 2)
				ELSE
					--  not e.g. 'cagney'
					IF SUBSTRING(st, pos+2, 2) != 'EY' AND SUBSTRING(st, pos+1, 1) != 'Y'
						AND NOT is_slavo_germanic THEN
						SET pri = CONCAT(pri, 'N'), sec = CONCAT(sec, 'KN'), pos = pos  + 2; -- nxt = ('N', 'KN', 2)
					ELSE
						SET pri = CONCAT(pri, 'KN'), sec = CONCAT(sec, 'KN'), pos = pos  + 2; -- nxt = ('KN', 2)
					END IF;
				END IF;
			--  'tagliaro'
			ELSEIF SUBSTRING(st, pos+1, 2) = 'LI' AND NOT is_slavo_germanic THEN
				SET pri = CONCAT(pri, 'KL'), sec = CONCAT(sec, 'L'), pos = pos  + 2; -- nxt = ('KL', 'L', 2)
			--  -ges-,-gep-,-gel-, -gie- at beginning
			ELSEIF pos = first AND (SUBSTRING(st, pos+1, 1) = 'Y'
			   OR SUBSTRING(st, pos+1, 2) IN ('ES', 'EP', 'EB', 'EL', 'EY', 'IB', 'IL', 'IN', 'IE', 'EI', 'ER')) THEN
				SET pri = CONCAT(pri, 'K'), sec = CONCAT(sec, 'J'), pos = pos  + 2; -- nxt = ('K', 'J', 2)
			--  -ger-,  -gy-
			ELSEIF (SUBSTRING(st, pos+1, 2) = 'ER' OR SUBSTRING(st, pos+1, 1) = 'Y')
			   AND SUBSTRING(st, first, 6) NOT IN ('DANGER', 'RANGER', 'MANGER')
			   AND SUBSTRING(st, pos-1, 1) not IN ('E', 'I') AND SUBSTRING(st, pos-1, 3) NOT IN ('RGY', 'OGY') THEN
				SET pri = CONCAT(pri, 'K'), sec = CONCAT(sec, 'J'), pos = pos  + 2; -- nxt = ('K', 'J', 2)
			--  italian e.g, 'biaggi'
			ELSEIF SUBSTRING(st, pos+1, 1) IN ('E', 'I', 'Y') OR SUBSTRING(st, pos-1, 4) IN ('AGGI', 'OGGI') THEN
				--  obvious germanic
				IF SUBSTRING(st, first, 4) IN ('VON ', 'VAN ') OR SUBSTRING(st, first, 3) = 'SCH'
				   OR SUBSTRING(st, pos+1, 2) = 'ET' THEN
					SET pri = CONCAT(pri, 'K'), sec = CONCAT(sec, 'K'), pos = pos  + 2; -- nxt = ('K', 2)
				ELSE
					--  always soft IF french ending
					IF SUBSTRING(st, pos+1, 4) = 'IER ' THEN
						SET pri = CONCAT(pri, 'J'), sec = CONCAT(sec, 'J'), pos = pos  + 2; -- nxt = ('J', 2)
					ELSE
						SET pri = CONCAT(pri, 'J'), sec = CONCAT(sec, 'K'), pos = pos  + 2; -- nxt = ('J', 'K', 2)
					END IF;
				END IF;
			ELSEIF SUBSTRING(st, pos+1, 1) = 'G' THEN
				SET pri = CONCAT(pri, 'K'), sec = CONCAT(sec, 'K'), pos = pos  + 2; -- nxt = ('K', 2)
			ELSE
				SET pri = CONCAT(pri, 'K'), sec = CONCAT(sec, 'K'), pos = pos  + 1; -- nxt = ('K', 1)
			END IF;
		WHEN ch = 'H' THEN
			--  only keep IF first & before vowel OR btw. 2 ('A', 'E', 'I', 'O', 'U', 'Y')
			IF (pos = first OR SUBSTRING(st, pos-1, 1) IN ('A', 'E', 'I', 'O', 'U', 'Y')) 
				AND SUBSTRING(st, pos+1, 1) IN ('A', 'E', 'I', 'O', 'U', 'Y') THEN
				SET pri = CONCAT(pri, 'H'), sec = CONCAT(sec, 'H'), pos = pos  + 2; -- nxt = ('H', 2)
			ELSE --  (also takes care of 'HH')
				SET pos = pos + 1; -- nxt = (None, 1)
			END IF;
		WHEN ch = 'J' THEN
			--  obvious spanish, 'jose', 'san jacinto'
			IF SUBSTRING(st, pos, 4) = 'JOSE' OR SUBSTRING(st, first, 4) = 'SAN ' THEN
				IF (pos = first AND SUBSTRING(st, pos+4, 1) = ' ') OR SUBSTRING(st, first, 4) = 'SAN ' THEN
					SET pri = CONCAT(pri, 'H'), sec = CONCAT(sec, 'H'); -- nxt = ('H',)
				ELSE
					SET pri = CONCAT(pri, 'J'), sec = CONCAT(sec, 'H'); -- nxt = ('J', 'H')
				END IF;
			ELSEIF pos = first AND SUBSTRING(st, pos, 4) != 'JOSE' THEN
				SET pri = CONCAT(pri, 'J'), sec = CONCAT(sec, 'A'); -- nxt = ('J', 'A') --  Yankelovich/Jankelowicz
			ELSE
				--  spanish pron. of e.g. 'bajador'
				IF SUBSTRING(st, pos-1, 1) IN ('A', 'E', 'I', 'O', 'U', 'Y') AND NOT is_slavo_germanic
				   AND SUBSTRING(st, pos+1, 1) IN ('A', 'O') THEN
					SET pri = CONCAT(pri, 'J'), sec = CONCAT(sec, 'H'); -- nxt = ('J', 'H')
				ELSE
					IF pos = last THEN
						SET pri = CONCAT(pri, 'J'); -- nxt = ('J', ' ')
					ELSE
						IF SUBSTRING(st, pos+1, 1) not IN ('L', 'T', 'K', 'S', 'N', 'M', 'B', 'Z')
						   AND SUBSTRING(st, pos-1, 1) not IN ('S', 'K', 'L') THEN
							SET pri = CONCAT(pri, 'J'), sec = CONCAT(sec, 'J'); -- nxt = ('J',)
						END IF;
					END IF;
				END IF;
			END IF;
			IF SUBSTRING(st, pos+1, 1) = 'J' THEN
				SET pos = pos + 2;
			ELSE
				SET pos = pos + 1;
			END IF;
		WHEN ch = 'K' THEN
			IF SUBSTRING(st, pos+1, 1) = 'K' THEN
				SET pri = CONCAT(pri, 'K'), sec = CONCAT(sec, 'K'), pos = pos  + 2; -- nxt = ('K', 2)
			ELSE
				SET pri = CONCAT(pri, 'K'), sec = CONCAT(sec, 'K'), pos = pos  + 1; -- nxt = ('K', 1)
			END IF;
		WHEN ch = 'L' THEN
			IF SUBSTRING(st, pos+1, 1) = 'L' THEN
				--  spanish e.g. 'cabrillo', 'gallegos'
				IF (pos = (last - 2) AND SUBSTRING(st, pos-1, 4) IN ('ILLO', 'ILLA', 'ALLE'))
				   OR ((SUBSTRING(st, last-1, 2) IN ('AS', 'OS') OR SUBSTRING(st, last) IN ('A', 'O'))
				   AND SUBSTRING(st, pos-1, 4) = 'ALLE') THEN
					SET pri = CONCAT(pri, 'L'), pos = pos  + 2; -- nxt = ('L', ' ', 2)
				ELSE
					SET pri = CONCAT(pri, 'L'), sec = CONCAT(sec, 'L'), pos = pos  + 2; -- nxt = ('L', 2)
				END IF;
			ELSE
				SET pri = CONCAT(pri, 'L'), sec = CONCAT(sec, 'L'), pos = pos  + 1; -- nxt = ('L', 1)
			END IF;
		WHEN ch = 'M' THEN
			IF SUBSTRING(st, pos-1, 3) = 'UMB'
			   AND (pos + 1 = last OR SUBSTRING(st, pos+2, 2) = 'ER')
			   OR SUBSTRING(st, pos+1, 1) = 'M' THEN
				SET pri = CONCAT(pri, 'M'), sec = CONCAT(sec, 'M'), pos = pos  + 2; -- nxt = ('M', 2)
			ELSE
				SET pri = CONCAT(pri, 'M'), sec = CONCAT(sec, 'M'), pos = pos  + 1; -- nxt = ('M', 1)
			END IF;
		WHEN ch = 'N' THEN
			IF SUBSTRING(st, pos+1, 1) = 'N' THEN
				SET pri = CONCAT(pri, 'N'), sec = CONCAT(sec, 'N'), pos = pos  + 2; -- nxt = ('N', 2)
			ELSE
				SET pri = CONCAT(pri, 'N'), sec = CONCAT(sec, 'N'), pos = pos  + 1; -- nxt = ('N', 1)
			END IF;
		-- ELSEIF ch = u'Ñ' THEN
			-- SET pri = CONCAT(pri, '5'), sec = CONCAT(sec, '5'), pos = pos  + 1; -- nxt = ('N', 1)
		WHEN ch = 'P' THEN
			IF SUBSTRING(st, pos+1, 1) = 'H' THEN
				SET pri = CONCAT(pri, 'F'), sec = CONCAT(sec, 'F'), pos = pos  + 2; -- nxt = ('F', 2)
			ELSEIF SUBSTRING(st, pos+1, 1) IN ('P', 'B') THEN --  also account for 'campbell', 'raspberry'
				SET pri = CONCAT(pri, 'P'), sec = CONCAT(sec, 'P'), pos = pos  + 2; -- nxt = ('P', 2)
			ELSE
				SET pri = CONCAT(pri, 'P'), sec = CONCAT(sec, 'P'), pos = pos  + 1; -- nxt = ('P', 1)
			END IF;
		WHEN ch = 'Q' THEN
			IF SUBSTRING(st, pos+1, 1) = 'Q' THEN
				SET pri = CONCAT(pri, 'K'), sec = CONCAT(sec, 'K'), pos = pos  + 2; -- nxt = ('K', 2)
			ELSE
				SET pri = CONCAT(pri, 'K'), sec = CONCAT(sec, 'K'), pos = pos  + 1; -- nxt = ('K', 1)
			END IF;
		WHEN ch = 'R' THEN
			--  french e.g. 'rogier', but exclude 'hochmeier'
			IF pos = last AND not is_slavo_germanic
			   AND SUBSTRING(st, pos-2, 2) = 'IE' AND SUBSTRING(st, pos-4, 2) NOT IN ('ME', 'MA') THEN
				SET sec = CONCAT(sec, 'R'); -- nxt = ('', 'R')
			ELSE
				SET pri = CONCAT(pri, 'R'), sec = CONCAT(sec, 'R'); -- nxt = ('R',)
			END IF;
			IF SUBSTRING(st, pos+1, 1) = 'R' THEN
				SET pos = pos + 2;
			ELSE
				SET pos = pos + 1;
			END IF;
		WHEN ch = 'S' THEN
			--  special cases 'island', 'isle', 'carlisle', 'carlysle'
			IF SUBSTRING(st, pos-1, 3) IN ('ISL', 'YSL') THEN
				SET pos = pos + 1;
			--  special case 'sugar-'
			ELSEIF pos = first AND SUBSTRING(st, first, 5) = 'SUGAR' THEN
				SET pri = CONCAT(pri, 'X'), sec = CONCAT(sec, 'S'), pos = pos  + 1; --  nxt =('X', 'S', 1)
			ELSEIF SUBSTRING(st, pos, 2) = 'SH' THEN
				--  germanic
				IF SUBSTRING(st, pos+1, 4) IN ('HEIM', 'HOEK', 'HOLM', 'HOLZ') THEN
					SET pri = CONCAT(pri, 'S'), sec = CONCAT(sec, 'S'), pos = pos  + 2; -- nxt = ('S', 2)
				ELSE
					SET pri = CONCAT(pri, 'X'), sec = CONCAT(sec, 'X'), pos = pos  + 2; -- nxt = ('X', 2)
				END IF;
			--  italian & armenian
			ELSEIF SUBSTRING(st, pos, 3) IN ('SIO', 'SIA') OR SUBSTRING(st, pos, 4) = 'SIAN' THEN
				IF NOT is_slavo_germanic THEN
					SET pri = CONCAT(pri, 'S'), sec = CONCAT(sec, 'X'), pos = pos  + 3; -- nxt = ('S', 'X', 3)
				ELSE
					SET pri = CONCAT(pri, 'S'), sec = CONCAT(sec, 'S'), pos = pos  + 3; -- nxt = ('S', 3)
				END IF;
			--  german & anglicisations, e.g. 'smith' match 'schmidt', 'snider' match 'schneider'
			--  also, -sz- IN slavic language altho IN hungarian it is pronounced 's'
			ELSEIF (pos = first AND SUBSTRING(st, pos+1, 1) IN ('M', 'N', 'L', 'W')) OR SUBSTRING(st, pos+1, 1) = 'Z' THEN
				SET pri = CONCAT(pri, 'S'), sec = CONCAT(sec, 'X'); -- nxt = ('S', 'X')
				IF SUBSTRING(st, pos+1, 1) = 'Z' THEN
					SET pos = pos + 2;
				ELSE
					SET pos = pos + 1;
				END IF;
			ELSEIF SUBSTRING(st, pos, 2) = 'SC' THEN
				--  Schlesinger's rule
				IF SUBSTRING(st, pos+2, 1) = 'H' THEN
					--  dutch origin, e.g. 'school', 'schooner'
					IF SUBSTRING(st, pos+3, 2) IN ('OO', 'ER', 'EN', 'UY', 'ED', 'EM') THEN
						--  'schermerhorn', 'schenker'
						IF SUBSTRING(st, pos+3, 2) IN ('ER', 'EN') THEN
							SET pri = CONCAT(pri, 'X'), sec = CONCAT(sec, 'SK'), pos = pos  + 3; -- nxt = ('X', 'SK', 3)
						ELSE
							SET pri = CONCAT(pri, 'SK'), sec = CONCAT(sec, 'SK'), pos = pos  + 3; -- nxt = ('SK', 3)
						END IF;
					ELSE
						IF pos = first AND SUBSTRING(st, first+3, 1) not IN ('A', 'E', 'I', 'O', 'U', 'Y') AND SUBSTRING(st, first+3, 1) != 'W' THEN
							SET pri = CONCAT(pri, 'X'), sec = CONCAT(sec, 'S'), pos = pos  + 3; -- nxt = ('X', 'S', 3)
						ELSE
							SET pri = CONCAT(pri, 'X'), sec = CONCAT(sec, 'X'), pos = pos  + 3; -- nxt = ('X', 3)
						END IF;
					END IF;
				ELSEIF SUBSTRING(st, pos+2, 1) IN ('I', 'E', 'Y') THEN
					SET pri = CONCAT(pri, 'S'), sec = CONCAT(sec, 'S'), pos = pos  + 3; -- nxt = ('S', 3)
				ELSE
					SET pri = CONCAT(pri, 'SK'), sec = CONCAT(sec, 'SK'), pos = pos  + 3; -- nxt = ('SK', 3)
				END IF;
			--  french e.g. 'resnais', 'artois'
			ELSEIF pos = last AND SUBSTRING(st, pos-2, 2) IN ('AI', 'OI') THEN
				SET sec = CONCAT(sec, 'S'), pos = pos  + 1; -- nxt = ('', 'S')
			ELSE
				SET pri = CONCAT(pri, 'S'), sec = CONCAT(sec, 'S'); -- nxt = ('S',)
				IF SUBSTRING(st, pos+1, 1) IN ('S', 'Z') THEN
					SET pos = pos + 2;
				ELSE
					SET pos = pos + 1;
				END IF;
			END IF;
		WHEN ch = 'T' THEN
			IF SUBSTRING(st, pos, 4) = 'TION' THEN
				SET pri = CONCAT(pri, 'X'), sec = CONCAT(sec, 'X'), pos = pos  + 3; -- nxt = ('X', 3)
			ELSEIF SUBSTRING(st, pos, 3) IN ('TIA', 'TCH') THEN
				SET pri = CONCAT(pri, 'X'), sec = CONCAT(sec, 'X'), pos = pos  + 3; -- nxt = ('X', 3)
			ELSEIF SUBSTRING(st, pos, 2) = 'TH' OR SUBSTRING(st, pos, 3) = 'TTH' THEN
				--  special case 'thomas', 'thames' OR germanic
				IF SUBSTRING(st, pos+2, 2) IN ('OM', 'AM') OR SUBSTRING(st, first, 4) IN ('VON ', 'VAN ')
				   OR SUBSTRING(st, first, 3) = 'SCH' THEN
					SET pri = CONCAT(pri, 'T'), sec = CONCAT(sec, 'T'), pos = pos  + 2; -- nxt = ('T', 2)
				ELSE
					SET pri = CONCAT(pri, '0'), sec = CONCAT(sec, 'T'), pos = pos  + 2; -- nxt = ('0', 'T', 2)
				END IF;
			ELSEIF SUBSTRING(st, pos+1, 1) IN ('T', 'D') THEN
				SET pri = CONCAT(pri, 'T'), sec = CONCAT(sec, 'T'), pos = pos  + 2; -- nxt = ('T', 2)
			ELSE
				SET pri = CONCAT(pri, 'T'), sec = CONCAT(sec, 'T'), pos = pos  + 1; -- nxt = ('T', 1)
			END IF;
		WHEN ch = 'V' THEN
			IF SUBSTRING(st, pos+1, 1) = 'V' THEN
				SET pri = CONCAT(pri, 'F'), sec = CONCAT(sec, 'F'), pos = pos  + 2; -- nxt = ('F', 2)
			ELSE
				SET pri = CONCAT(pri, 'F'), sec = CONCAT(sec, 'F'), pos = pos  + 1; -- nxt = ('F', 1)
			END IF;
		WHEN ch = 'W' THEN
			--  can also be IN middle of word
			IF SUBSTRING(st, pos, 2) = 'WR' THEN
				SET pri = CONCAT(pri, 'R'), sec = CONCAT(sec, 'R'), pos = pos  + 2; -- nxt = ('R', 2)
			ELSEIF pos = first AND (SUBSTRING(st, pos+1, 1) IN ('A', 'E', 'I', 'O', 'U', 'Y')
				OR SUBSTRING(st, pos, 2) = 'WH') THEN
				--  Wasserman should match Vasserman
				IF SUBSTRING(st, pos+1, 1) IN ('A', 'E', 'I', 'O', 'U', 'Y') THEN
					SET pri = CONCAT(pri, 'A'), sec = CONCAT(sec, 'F'), pos = pos  + 1; -- nxt = ('A', 'F', 1)
				ELSE
					SET pri = CONCAT(pri, 'A'), sec = CONCAT(sec, 'A'), pos = pos  + 1; -- nxt = ('A', 1)
				END IF;
			--  Arnow should match Arnoff
			ELSEIF (pos = last AND SUBSTRING(st, pos-1, 1) IN ('A', 'E', 'I', 'O', 'U', 'Y'))
			   OR SUBSTRING(st, pos-1, 5) IN ('EWSKI', 'EWSKY', 'OWSKI', 'OWSKY')
			   OR SUBSTRING(st, first, 3) = 'SCH' THEN
				SET sec = CONCAT(sec, 'F'), pos = pos  + 1; -- nxt = ('', 'F', 1)
			-- END IF;
			--  polish e.g. 'filipowicz'
			ELSEIF SUBSTRING(st, pos, 4) IN ('WICZ', 'WITZ') THEN
				SET pri = CONCAT(pri, 'TS'), sec = CONCAT(sec, 'FX'), pos = pos  + 4; -- nxt = ('TS', 'FX', 4)
			ELSE --  default is to skip it
				SET pos = pos + 1;
			END IF;
		WHEN ch = 'X' THEN
			--  french e.g. breaux
			IF not(pos = last AND (SUBSTRING(st, pos-3, 3) IN ('IAU', 'EAU')
			   OR SUBSTRING(st, pos-2, 2) IN ('AU', 'OU'))) THEN
				SET pri = CONCAT(pri, 'KS'), sec = CONCAT(sec, 'KS'); -- nxt = ('KS',)
			END IF;
			IF SUBSTRING(st, pos+1, 1) IN ('C', 'X') THEN
				SET pos = pos + 2;
			ELSE
				SET pos = pos + 1;
			END IF;
		WHEN ch = 'Z' THEN
			--  chinese pinyin e.g. 'zhao'
			IF SUBSTRING(st, pos+1, 1) = 'H' THEN
				SET pri = CONCAT(pri, 'J'), sec = CONCAT(sec, 'J'), pos = pos  + 1; -- nxt = ('J', 2)
			ELSEIF SUBSTRING(st, pos+1, 3) IN ('ZO', 'ZI', 'ZA')
			   OR (is_slavo_germanic AND pos > first AND SUBSTRING(st, pos-1, 1) != 'T') THEN
				SET pri = CONCAT(pri, 'S'), sec = CONCAT(sec, 'TS'); -- nxt = ('S', 'TS')
			ELSE
				SET pri = CONCAT(pri, 'S'), sec = CONCAT(sec, 'S'); -- nxt = ('S',)
			END IF;
			IF SUBSTRING(st, pos+1, 1) = 'Z' THEN
				SET pos = pos + 2;
			ELSE
				SET pos = pos + 1;
			END IF;
		ELSE
			SET pos = pos + 1; -- DEFAULT is to move to next char
		END CASE;
    IF pos = prevpos THEN
       SET pos = pos +1;
       SET pri = CONCAT(pri,'<didnt incr>'); -- it might be better to throw an error here if you really must be accurate
    END IF;
	END WHILE;
	IF pri != sec THEN
		SET pri = CONCAT(pri, ';', sec);
  END IF;
	RETURN (pri);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `strSplit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `strSplit`(x varchar(255), delim varchar(12), pos int) RETURNS varchar(255) CHARSET utf8
return replace(substring(substring_index(x, delim, pos), length(substring_index(x, delim, pos - 1)) + 1), delim, '') ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_expr_in_sonnet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_expr_in_sonnet`(inExprId int, inSonnetId int)
BEGIN

	DECLARE first_word_id INT;	
    DECLARE expr_length INT;	

	select word_id, count(*) into first_word_id, expr_length
    from expression_words
	where id = inExprId;	
    
	select sonnets.id as 'sonnet id', sonnets.name as 'sonnet name', expr_start_word_index
	from
	(
		select wis1.sonnet_id, wis1.word_id as 'expr_start_word_id', wis1.word_index_in_sonnet as 'expr_start_word_index',
				wis2.word_id, wis2.word_index_in_sonnet
		from words_in_sonnets wis1 inner join words_in_sonnets wis2
		on wis1.sonnet_id = wis2.sonnet_id
		AND wis2.word_index_in_sonnet - wis1.word_index_in_sonnet < expr_length
		AND wis2.word_index_in_sonnet - wis1.word_index_in_sonnet >= 0
		where
		wis1.word_id = first_word_id
	) radius_words 
    inner join expression_words
		ON radius_words.word_id = expression_words.word_id
	inner join sonnets
		on radius_words.sonnet_id = sonnets.id
	where expression_words.id = inExprId
    AND (inSonnetId = 0 or radius_words.sonnet_id = inSonnetId)
	group by sonnet_id, expr_start_word_index
	having count(*) = expr_length
	;    

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_authors` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_authors`()
BEGIN
	select 'NA'
    union
	select distinct(sonnets.author) from sonnets;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_char_count_per_line_for_section` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_char_count_per_line_for_section`(inSonnetId int, inSectionIndex int)
BEGIN
	select index_view.sonnet_id as 'sonnet_id', index_view.sonnet_name as 'Sonnet',
	index_view.section_index as 'section index', index_view.line_index as 'line index',
	sum(CHAR_LENGTH(index_view.word_value)) as 'Num of Chars'
	from  index_view
	where index_view.sonnet_id = inSonnetId
    AND index_view.section_index = inSectionIndex
	group by index_view.line_index;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_char_count_per_section_for_sonnet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_char_count_per_section_for_sonnet`(inSonnetId int)
BEGIN
	select index_view.sonnet_id as 'sonnet_id', index_view.sonnet_name as 'Sonnet',
		index_view.section_index as 'section index', sum(CHAR_LENGTH(index_view.word_value)) as 'Num of Chars'
	from  index_view
	where index_view.sonnet_id = inSonnetId
	group by index_view.section_index;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_char_count_per_sonnet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_char_count_per_sonnet`()
BEGIN
	select index_view.sonnet_id as 'sonnet_id', index_view.sonnet_name as 'Sonnet', sum(CHAR_LENGTH(index_view.word_value)) as 'Num of Chars'
	from  index_view
	group by index_view.sonnet_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_char_count_per_word_for_line` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_char_count_per_word_for_line`(inSonnetId int, inSectionIndex int, inLineIndex int)
BEGIN
	select index_view.sonnet_id as 'sonnet_id', index_view.sonnet_name as 'Sonnet',
	index_view.section_index as 'section index', index_view.line_index as 'line index',
     index_view.word_index_in_line as 'Word Index In Line', index_view.word_value as 'Word',
	sum(CHAR_LENGTH(index_view.word_value)) as 'Num of Chars'
	from  index_view
	where index_view.sonnet_id = inSonnetId
    AND index_view.section_index = inSectionIndex
    AND index_view.line_index = inLineIndex
	group by index_view.word_index_in_line, index_view.word_value;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_context_words_for_word` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_context_words_for_word`(inWordId int)
BEGIN
	Select words.* 
	from words inner join  
		(Select a.* 
		From words_in_sonnets_with_sections a inner join 
		(Select wis.sonnet_id, wis.section_id
			From words_in_sonnets_with_sections wis
			Where wis.word_id = inWordId
			group by wis.sonnet_id, wis.section_id) b
		ON (a.sonnet_id = b.sonnet_id and a.section_id = b.section_id)) section_words
	ON section_words.word_id = words.id 
	;	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_expressions` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_expressions`()
BEGIN
	select expressions.id, expressions.label
    from expressions;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_extended_group_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_extended_group_list`()
BEGIN
	select -1 as 'id', 'No Group' as 'name'-- The -1 is for words without any group
    union
	select groups.group_id as 'id', groups.group_name as 'name'
    from groups;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_extended_relation_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_extended_relation_list`()
BEGIN
	select -1 as 'id', 'No Relations' as 'name'
    union
	SELECT relations.id, relations.Name
	From relations;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_group_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_group_list`()
BEGIN
	select groups.group_id as 'id', groups.group_name as 'name'
    from groups;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_locations_for_word` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_locations_for_word`(IN inWordId int)
BEGIN

CREATE TEMPORARY TABLE IF NOT EXISTS 
temp1 as (select words_in_sonnets.word_id, words_in_sonnets.line_index, words_in_sonnets.word_index_in_line, words_in_sonnets.sonnet_id from words_in_sonnets
WHERE
words_in_sonnets.word_id = inWordId);

select * from temp1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_relation_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_relation_list`()
BEGIN
	SELECT relations.id, relations.Name
	From relations;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_rhyme_schemes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_rhyme_schemes`()
BEGIN
	select 'NA'
    union
	select distinct(sonnets.rhyme_scheme) from sonnets;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_sections` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_sections`()
BEGIN
	select 0, 'All'
    union
    select recipe_sections.section_id, recipe_sections.section_name 
    from recipe_sections;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_seq_names` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_seq_names`()
BEGIN
    select sonnets_sequences.id, sonnets_sequences.name from sonnets_sequences;	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_seq_names_with_unknown` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_seq_names_with_unknown`()
BEGIN
	select -1, 'Unknown' 
    union
    select sonnets_sequences.id, sonnets_sequences.name from sonnets_sequences;	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_sonnet_by_author` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_sonnet_by_author`(inAuthorName varchar(50))
BEGIN
	SELECT *
    FROM sonnets_with_meta_data
    WHERE IF(inAuthorName IS NULL or inAuthorName = 'NA', -1, inAuthorName) = -1 OR sonnets_with_meta_data.author = inAuthorName;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_sonnet_by_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_sonnet_by_id`(inSonnetId int)
BEGIN
	SELECT * FROM concordancedb.sonnets_with_meta_data
	WHERE 
	inSonnetId = -1 OR sonnets_with_meta_data.id = inSonnetId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_sonnet_by_rhyme_scheme` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_sonnet_by_rhyme_scheme`(inRhymeScheme varchar(32))
BEGIN
	SELECT *
    FROM sonnets_with_meta_data
    WHERE IF(inRhymeScheme IS NULL or inRhymeScheme = 'NA', -1, inRhymeScheme) = -1 OR sonnets_with_meta_data.rhyme_scheme = inRhymeScheme;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_sonnet_by_sequence` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_sonnet_by_sequence`(inSeqId int)
BEGIN
	SELECT *
    FROM sonnets_with_meta_data
    WHERE inSeqId = -1 OR sonnets_with_meta_data.sequence_id = inSeqId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_sonnet_by_word` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_sonnet_by_word`(inWordId int)
BEGIN
	SELECT sonnets_with_meta_data.id, sonnets_with_meta_data.name, 
		sonnets_with_meta_data.rhyme_scheme, sonnets_with_meta_data.author, 
        sonnets_with_meta_data.sequence_name, sonnets_with_meta_data.file_name,
        sonnets_with_meta_data.full_path
    FROM sonnets_with_meta_data inner join words_in_sonnets
    ON sonnets_with_meta_data.id = words_in_sonnets.sonnet_id
    WHERE inWordId = -1 OR words_in_sonnets.word_id = inWordId
    group by sonnets_with_meta_data.id, sonnets_with_meta_data.name, 
		sonnets_with_meta_data.rhyme_scheme, sonnets_with_meta_data.author, 
        sonnets_with_meta_data.sequence_name, sonnets_with_meta_data.file_name,
        sonnets_with_meta_data.full_path
    ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_sonnet_names` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_sonnet_names`()
BEGIN
	select 0, 'All' 
    union
    select sonnets.id, sonnets.name from sonnets;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_sonnet_names_with_unknown` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_sonnet_names_with_unknown`()
BEGIN
	select -1, 'Unknown' 
    union
    select sonnets.id, sonnets.name from sonnets;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_sonnet_words_by_sonnet_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_sonnet_words_by_sonnet_id`(inSonnetId int)
BEGIN
	select words.id as 'word_id', words.value as 'word_value'
    from (words
		inner join words_in_sonnets on words_in_sonnets.word_id = words.id)
	where 
    (inSonnetId = 0     
    OR
    words_in_sonnets.sonnet_id = inSonnetId)    
    AND words.is_real = 1
    group by words.id, words.value;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_words_by_location` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_words_by_location`(inSonnetId int, inLineIndex int, inWordInLineIndex int)
BEGIN
	select real_words_view.word_id as 'word_id', real_words_view.word as 'word_value', 
    words_in_sonnets.line_index as 'line_index', 
    words_in_sonnets.word_index_in_line as 'word_index_in_line',
    words_in_sonnets.word_index_in_sonnet as 'word_index_in_sonnet',
    #words_in_sonnets.section_index as 'section_index',
    words_in_sonnets.sonnet_id as 'sonnet_id', sonnets.name as 'sonnet_name'
    from (real_words_view
		inner join words_in_sonnets on words_in_sonnets.word_id = real_words_view.word_id
        inner jOIN sonnets on sonnets.id = words_in_sonnets.sonnet_id)
    where 
    (inSonnetId = 0 OR sonnets.id = inSonnetId) AND        
    words_in_sonnets.line_index = inLineIndex AND
    words_in_sonnets.word_index_in_line = inWordInLineIndex;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_words_for_group` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_words_for_group`(inGroupId int)
BEGIN
	if(inGroupId = -1) then -- The -1 is for words without any relation
		select real_words_view.word_id, real_words_view.word 
        from real_words_view left join words_in_groups
        on words_in_groups.word_id  = real_words_view.word_id
        where words_in_groups.word_id is null
        ;
    else
		select real_words_view.word_id, real_words_view.word 
        from real_words_view inner join words_in_groups
        on words_in_groups.word_id  = real_words_view.word_id
        where words_in_groups.group_id = inGroupId
		;
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_words_for_relation` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_words_for_relation`(inRelationId int)
BEGIN
	select words_first.word as 'first', words_second.word as 'second'
    
	from words_in_relations inner join real_words_view as words_first
    inner join real_words_view as words_second
	on words_in_relations.first_word_id = words_first.word_id
	and words_in_relations.second_word_id = words_second.word_id
	where words_in_relations.relation_id = inRelationId
	;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_words_in_same_line_with_offset` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_words_in_same_line_with_offset`(inWordId int, inOffset int)
BEGIN
	select words_in_sonnets.line_index + inOffset
    from words_in_sonnets
    where words_in_sonnets.word_id = inWordId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_word_count_per_section_for_sonnet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_word_count_per_section_for_sonnet`(inSonnetId int)
BEGIN
	select index_view.sonnet_id as 'sonnet_id', index_view.sonnet_name as 'Sonnet',
		index_view.section_index as 'section index', count(index_view.word_id) as 'Num of Words'
	from  index_view
	where index_view.sonnet_id = inSonnetId
	group by index_view.section_index;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_word_count_per_sonnet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_word_count_per_sonnet`()
BEGIN
	select index_view.sonnet_id as 'sonnet_id', index_view.sonnet_name as 'Sonnet', count(index_view.word_id) as 'Num of Words'
	from  index_view
	group by index_view.sonnet_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_word_count_total_for_sonnet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_word_count_total_for_sonnet`(inSonnentId int)
BEGIN
	select count(distinct(real_words_view.word_id)) as 'Numebr of Unique Words' 
    from  
	words_in_sonnets inner join real_words_view
	on words_in_sonnets.word_id = real_words_view.word_id
	where words_in_sonnets.sonnet_id = inSonnentId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_word_frequency` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_word_frequency`(inWordId int)
BEGIN
	Select words.value as 'Word', 
		words.total_num_of_appearance as 'Frequency', 
        words.num_of_files_appearance as 'File Frequency'
        from words
    where words.id = inWordId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_word_index_for_group` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_word_index_for_group`(IN inGroupId int)
BEGIN

	if(inGroupId = -1) then		
		select index_view.* 
		from index_view left join words_in_groups
		on index_view.word_id = words_in_groups.word_id
		where 
		words_in_groups.group_id is null;
	else
		select index_view.* 
		from index_view inner join words_in_groups
		on index_view.word_id = words_in_groups.word_id
		where 
		words_in_groups.group_id = inGroupId
		;
    end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_word_index_for_sonnet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_word_index_for_sonnet`(IN inSonnetId int)
BEGIN
	select * from index_view
    where 
	(inSonnetId = 0     
    OR
    sonnet_id = inSonnetId) 
    ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_word_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_word_list`()
BEGIN
	select real_words_view.word_id as 'id', real_words_view.word as 'value'
    from real_words_view
    ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_word_list_with_empty` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_word_list_with_empty`()
BEGIN	
    select * from real_word_list_with_empty;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_word_locations_for_group` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_word_locations_for_group`(inGroupId int)
BEGIN
if(inGroupId = -1) then -- The -1 is for words without any group
	select 'No Group' as 'group', 'Ginger' as 'word', 'Adrak' as 'recipe_name', '10' as 'line_index', 'Ingredients' as 'section';
else  
	select 'Group A' as 'group', 'Ginger' as 'word', 'Adrak' as 'recipe_name', '10' as 'line_index', 'Ingredients' as 'section'
	union
	select 'Group A' as 'group', 'Ginger' as 'word', 'Adrak' as 'recipe_name', '18' as 'line_index', 'Instructions' as 'section'
	union
	select 'Group A' as 'group', 'Ginger' as 'word', 'Adrak' as 'recipe_name', '20' as 'line_index', 'Instructions' as 'section';
end if;	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_new_word` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_new_word`(in inWord varchar(50), in inIsReal tinyint, 
	IN inTotalNumOfAppearance int,
	IN inNumOfFilesAppearance int, OUT outWordId int)
BEGIN
		insert into words(words.value, words.is_real, words.total_num_of_appearance, words.num_of_files_appearance)
        values(inWord, inIsReal, inTotalNumOfAppearance, inNumOfFilesAppearance);
        set outWordId = (SELECT LAST_INSERT_ID());
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `set_author_for_sonnet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `set_author_for_sonnet`(inSonnetId int, inAuthorName varchar(50), 
OUT outSonnetName varchar(50), OUT outAuthorName varchar(50))
BEGIN
	update sonnets
	set sonnets.author = inAuthorName
	where sonnets.id = inSonnetId;
    
	select sonnets.name, sonnets.author into outSonnetName, outAuthorName
    from sonnets
    where sonnets.id = inSonnetId;
            
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `set_name_for_sonnet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `set_name_for_sonnet`(inSonnetId int, inSonnetName varchar(50), 
	OUT outOldSonnetName varchar(50), OUT outNewSonnetName varchar(50))
BEGIN

	select sonnets.name into outOldSonnetName
    from sonnets
    where sonnets.id = inSonnetId;
    
	update sonnets
	set sonnets.name = inSonnetName
	where sonnets.id = inSonnetId;    
    
	select sonnets.name into outNewSonnetName
    from sonnets
    where sonnets.id = inSonnetId;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `set_rhyme_scheme_for_sonnet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `set_rhyme_scheme_for_sonnet`(IN inSonnetId int, IN inRhymeScheme varchar(32), 
				OUT outSonnetName varchar(50), OUT outRhymeScheme varchar(32))
BEGIN

	call set_sections_for_sonnet(inSonnetId, inRhymeScheme);
    
	select sonnets.name, sonnets.rhyme_scheme into outSonnetName, outRhymeScheme
    from sonnets
    where sonnets.id = inSonnetId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `set_sections_for_sonnet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `set_sections_for_sonnet`(IN inSonnetId int, IN inRhymeScheme varchar(50))
BEGIN

	DECLARE section_id INT DEFAULT 1;	
    DECLARE delim varchar(32);             
    DECLARE charIndex INT DEFAULT 1;  
    DECLARE length INT DEFAULT 0; 
    DECLARE currentChar varchar(2);
    DECLARE line_index INT DEFAULT 1;
    
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
        ROLLBACK;
        #EXIT PROCEDURE;
    END;
    
    START TRANSACTION;
    
    delete from sonnets_sections where sonnets_sections.sonnet_id = inSonnetId;
    
    SET delim = '_';
    
    SET length =  CHAR_LENGTH(inRhymeScheme);    
    WHILE(charIndex <= length) DO	
		SET currentChar = SUBSTRING(inRhymeScheme, charIndex, 1);        
		IF(STRCMP(currentChar,delim) <> 0) then
			insert into sonnets_sections values(inSonnetId, line_index, section_id);            
            SET line_index = line_index + 1;
		else
			SET section_id = section_id + 1;
		END IF;
        SET charIndex = charIndex + 1;
    END WHILE;
    
    update sonnets 
    set sonnets.rhyme_scheme = inRhymeScheme
    where sonnets.id = inSonnetId;
    
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `set_seq_for_sonnet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `set_seq_for_sonnet`(
		inSonnetId int, inSeqId int,
		OUT outSonnetName varchar(50), OUT outSeqName varchar(50))
BEGIN
	update sonnets
	set sonnets.sequence_id = inSeqId
	where sonnets.id = inSonnetId;
    
    select sonnets.name into outSonnetName
    from sonnets
    where sonnets.id = inSonnetId;
    
    select sonnets_sequences.name into outSeqName
	from sonnets_sequences
	where sonnets_sequences.id = inSeqId; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_add_expression` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_add_expression`(IN inLabel varchar(512))
BEGIN
	insert into expressions (label)
    values(inLabel);    
    set @outNewExprId = (SELECT LAST_INSERT_ID());
    
    select @outNewExprId as 'expr_id';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_add_expression_word` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_add_expression_word`(in inWord varchar(50), IN inExprId int, in inWwordIndex int,in inIsReal tinyint)
BEGIN

    DECLARE exit handler for SQLEXCEPTION
    BEGIN       
        ROLLBACK;
    END;
    
	START TRANSACTION;
    set @wordId = NULL;    
    
	SELECT words.id
    INTO @wordId
    FROM words 
    where words.value = inWord;    
    
	IF(@wordId IS NULL) THEN
		call insert_new_word(inWord, inIsReal, 0, 0, @wordId);
	END IF;
        
    insert into expression_words (expression_words.id, expression_words.word_index, expression_words.word_id)
    values(inExprId, inWwordIndex, @wordId);
    
    COMMIT;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_add_file` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_add_file`(in inName varchar(50), in inRhymeScheme varchar(20), in inAuthor VARCHAR(45), in inFileName VARCHAR(45), in inFilePath VARCHAR(400), in inSequenceName VARCHAR(200), in inYear int(11))
BEGIN

    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
        ROLLBACK;
        #EXIT PROCEDURE;
    END;

	START TRANSACTION;
    
	SET @seqId = (SELECT sonnets_sequences.id FROM sonnets_sequences where sonnets_sequences.Name = inSequenceName);
	if(@seqId IS NULL) THEN
		insert into sonnets_sequences(sonnets_sequences.Name, sonnets_sequences.year)
		values(inSequenceName, inYear);
        SET @seqId = (SELECT LAST_INSERT_ID()); 
	END IF;
    
    
    SET @sonnetId = (select sonnets.id from sonnets where sonnets.sequence_id = @seqId and sonnets.name = inName);
    if(@sonnetId IS NULL) THEN    
		insert into sonnets(sonnets.name, sonnets.rhyme_scheme, sonnets.sequence_id, sonnets.author, sonnets.file_name, sonnets.full_path)
		values(inName, inRhymeScheme, @seqId, inAuthor, inFileName, inFilePath);
        SET @sonnetId = (SELECT LAST_INSERT_ID()); 
    END IF;
	
    call set_sections_for_sonnet(@sonnetId, inRhymeScheme);

	SELECT @sonnetId as 'sonnet_id';
    #select sonnets.id from sonnets where sonnets.id = @sonnetId;	    
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_add_new_relation` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_add_new_relation`(inName varchar(45), inDescription varchar(200), inout outResult int)
BEGIN
	insert into relations(relations.name, relations.comment) values(inName, inDescription);
    set outResult = row_count();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_add_word` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_add_word`(in inWord varchar(50), in inSonetId int, in inWordIndexInFile int, in inLineIndex int, in inWordInLineIndex int, in inIsReal tinyint)
BEGIN

    DECLARE exit handler for SQLEXCEPTION
    BEGIN       
        ROLLBACK;
    END;
    
	#DECLARE exit handler for sqlwarning
	 #BEGIN
		-- WARNING
        #SHOW WARNINGS;
        
		#select 'WARNING' as 'WARNING';
	 #ROLLBACK;
	#END;    
		
	START TRANSACTION;
    set @wordId = NULL;
    SET @totalNumOfAppearances = 1;
    SET @numOfFilesAppearances = 1;
    SET @isWordInFile = 1;
    SET @numOfFilesForWord = 0;
    
	SELECT words.id, words.total_num_of_appearance, words.num_of_files_appearance 
    INTO @wordId, @totalNumOfAppearances, @numOfFilesAppearances
    FROM words 
    where words.value = inWord;
    
    IF(@wordId IS NULL) THEN
		insert into words(words.value, words.is_real, words.total_num_of_appearance, words.num_of_files_appearance)
        values(inWord, inIsReal, @totalNumOfAppearances, @numOfFilesAppearances);
        set @wordId = (SELECT LAST_INSERT_ID());
	ELSE	
		BEGIN
			select count(words_in_sonnets.word_id) into @numOfFilesForWord
			FROM words_in_sonnets
			WHERE words_in_sonnets.word_id = @wordId 
			AND words_in_sonnets.sonnet_id = inSonetId;
			
            SELECT IF(@numOfFilesForWord > 0, 0, 1) into @isWordInFile;
             
			update words 
			set 
			words.total_num_of_appearance = @totalNumOfAppearances + 1
			,words.num_of_files_appearance = @numOfFilesAppearances + @isWordInFile
			where words.id = @wordId;
		END;
    END IF;
    
    insert into words_in_sonnets(words_in_sonnets.word_id, words_in_sonnets.sonnet_id, words_in_sonnets.word_index_in_sonnet, words_in_sonnets.line_index, words_in_sonnets.word_index_in_line)
    values(@wordId, inSonetId, inWordIndexInFile, inLineIndex, inWordInLineIndex);
	COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_add_words_to_relation` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_add_words_to_relation`(inRelationId int, inFirstWordId int, inSecondWordId int)
BEGIN
	#Consider if adding a result parameter is needed.
    insert into words_in_relations(relation_id, first_word_id, second_word_id)
    values(inRelationId, inFirstWordId, inSecondWordId);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_add_word_to_group` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_add_word_to_group`(inWordId int, inGroupId int)
BEGIN
	insert into words_in_groups(group_id, word_id)
    values(inGroupId, inWordId);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_context_words_for_word_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_context_words_for_word_id`(IN inWordId int)
BEGIN

	CREATE TEMPORARY TABLE IF NOT EXISTS tmp_words_in_sonnets AS (
		SELECT words_in_sonnets_with_sections.sonnet_id, words_in_sonnets_with_sections.section_id
        FROM words_in_sonnets_with_sections        
        where words_in_sonnets_with_sections.word_id = inWordId
        group by words_in_sonnets_with_sections.sonnet_id, words_in_sonnets_with_sections.section_id
    );   

	CREATE TEMPORARY TABLE IF NOT EXISTS tmp_section_words_in_sonnets AS (
		SELECT tmp_words_in_sonnets.sonnet_id as 'sonnet_id', 
        tmp_words_in_sonnets.section_id as 'section_id', words_in_sonnets_with_sections.line_index,
        words_in_sonnets_with_sections.word_index_in_line, words_in_sonnets_with_sections.word_id 
        FROM words_in_sonnets_with_sections inner join tmp_words_in_sonnets
        ON words_in_sonnets_with_sections.sonnet_id = tmp_words_in_sonnets.sonnet_id
        AND words_in_sonnets_with_sections.section_id = tmp_words_in_sonnets.section_id
        
        #AND words_in_sonnets.word_index_in_sonnet = tmp_words_in_sonnets.word_index_in_sonnet
    );
       
        
	select sonnets.Name, tmp_section_words_in_sonnets.section_id, tmp_section_words_in_sonnets.line_index, tmp_section_words_in_sonnets.word_index_in_line, tmp_section_words_in_sonnets.word_id, words.value, words.is_real from
    (tmp_section_words_in_sonnets inner join words
    ON tmp_section_words_in_sonnets.word_id = words.id)
    inner join sonnets
    ON tmp_section_words_in_sonnets.sonnet_id = sonnets.id
	;
    
    
    drop temporary table if exists tmp_section_words_in_sonnets;
    drop temporary table if exists tmp_words_in_sonnets;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_words_in_context` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_words_in_context`(IN inWordId int)
BEGIN



select words_in_sonnets.* From words_in_sonnets
where 1=1 
AND words_in_sonnets.line_index IN (
	select words_in_sonnets.line_index
    from words_in_sonnets
    where 
		(words_in_sonnets.word_id = inWordId)
        or
        (words_in_sonnets.word_id = inWordId + 1)
        or
        (words_in_sonnets.word_id = inWordId - 1)    
    );
    
        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_new_group` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_new_group`(IN p_group_name varchar(45))
BEGIN
		insert into groups (group_name) values (p_group_name);
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `test` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `test`()
BEGIN

set @exprId = NULL;

call sp_add_expression("Expr #2", @exprId);
call sp_add_expression_word("'", @exprId, 1, 0);
call sp_add_expression_word("s", @exprId, 2, 1);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `transaction_test` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `transaction_test`(inWordValue varchar(45), inRecipeId int, inLineIndex int, inWordIndexInLine int, inWordIndexInRecipe int, inSectionId int)
BEGIN
DECLARE exit handler for sqlexception
  BEGIN
    -- ERROR
    show errors;
  ROLLBACK;
END;

DECLARE exit handler for sqlwarning
 BEGIN
    -- WARNING
    select 'WARNING' as 'WARNING';
 ROLLBACK;
END;

START TRANSACTION;
 
insert into words(words.value) values (inWordValue)
ON DUPLICATE KEY UPDATE words.id = LAST_INSERT_ID(words.id);

SET @poid = (SELECT LAST_INSERT_ID());

insert into words_in_recipes(words_in_recipes.word_id, words_in_recipes.recipe_id, 
words_in_recipes.line_index, words_in_recipes.word_index_in_line,
 words_in_recipes.word_index_in_recipe, words_in_recipes.section_id)
values(@poid, inRecipeId, inLineIndex, inWordIndexInLine, inWordIndexInRecipe, inSectionId);

COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_latest_search` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_latest_search`(IN inTerm varchar(255))
BEGIN

	set @MAX_CIRCULAR_LOG_ROWS = 10; 
	REPLACE INTO latest_searches_circular_log_table
	SET row_id = (SELECT COALESCE(MAX(log_id), 0) % @MAX_CIRCULAR_LOG_ROWS + 1
				  FROM latest_searches_circular_log_table AS t),
		term = inTerm,
        sound_score = SOUNDEX(inTerm);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `while_test` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `while_test`(inStrToCount varchar(5), inStr varchar(200))
BEGIN
set @a = locate(inStrToCount, inStr);

set @b = 0;
while @a > 0 do
    set @b = @b + 1;
	set @a = locate(inStrToCount, inStr, @a + 1);
    
END while;

select @b as '#';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `word_count_per_line_for_section` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `word_count_per_line_for_section`(inSonnetId int, inSectionIndex int)
BEGIN
	select index_view.sonnet_id as 'sonnet_id', index_view.sonnet_name as 'Sonnet',
	index_view.section_index as 'section index', index_view.line_index as 'line index',
	count(index_view.word_id) as 'Num of Words'
	from  index_view
	where index_view.sonnet_id = inSonnetId
    AND index_view.section_index = inSectionIndex
	group by index_view.line_index;	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `index_view`
--

/*!50001 DROP VIEW IF EXISTS `index_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `index_view` AS select `words`.`id` AS `word_id`,`words`.`value` AS `word_value`,`words_in_sonnets`.`line_index` AS `line_index`,`words_in_sonnets`.`word_index_in_line` AS `word_index_in_line`,`words_in_sonnets`.`word_index_in_sonnet` AS `word_index_in_sonnet`,`sonnets_sections`.`section_id` AS `section_index`,`sonnets`.`id` AS `sonnet_id`,`sonnets`.`name` AS `sonnet_name` from (((`words` join `words_in_sonnets` on((`words_in_sonnets`.`word_id` = `words`.`id`))) join `sonnets` on((`sonnets`.`id` = `words_in_sonnets`.`sonnet_id`))) join `sonnets_sections` on(((`sonnets`.`id` = `sonnets_sections`.`sonnet_id`) and (`words_in_sonnets`.`line_index` = `sonnets_sections`.`line_index`)))) where (`words`.`is_real` = 1) order by `words`.`value`,`sonnets`.`name`,`sonnets_sections`.`section_id`,`words_in_sonnets`.`line_index`,`words_in_sonnets`.`word_index_in_sonnet` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `real_word_list_with_empty`
--

/*!50001 DROP VIEW IF EXISTS `real_word_list_with_empty`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `real_word_list_with_empty` AS select -(1) AS `-1`,'' AS `Name_exp_2` union select `real_words_view`.`word_id` AS `id`,`real_words_view`.`word` AS `value` from `real_words_view` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `real_words_view`
--

/*!50001 DROP VIEW IF EXISTS `real_words_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `real_words_view` AS select `words`.`id` AS `word_id`,`words`.`value` AS `word`,`words`.`total_num_of_appearance` AS `total_num_of_appearance`,`words`.`num_of_files_appearance` AS `num_of_files_appearance`,`words`.`is_real` AS `is_real` from `words` where (`words`.`is_real` = 1) order by `words`.`value` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sonnets_with_meta_data`
--

/*!50001 DROP VIEW IF EXISTS `sonnets_with_meta_data`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sonnets_with_meta_data` AS select `sonnets`.`id` AS `id`,`sonnets`.`name` AS `name`,`sonnets`.`rhyme_scheme` AS `rhyme_scheme`,`sonnets`.`author` AS `author`,`sonnets`.`sequence_id` AS `sequence_id`,`sonnets_sequences`.`name` AS `sequence_name`,`sonnets`.`file_name` AS `file_name`,`sonnets`.`full_path` AS `full_path` from (`sonnets` join `sonnets_sequences` on((`sonnets`.`sequence_id` = `sonnets_sequences`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `words_in_sonnets_with_sections`
--

/*!50001 DROP VIEW IF EXISTS `words_in_sonnets_with_sections`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `words_in_sonnets_with_sections` AS select `words_in_sonnets`.`word_id` AS `word_id`,`words_in_sonnets`.`sonnet_id` AS `sonnet_id`,`words_in_sonnets`.`word_index_in_sonnet` AS `word_index_in_sonnet`,`words_in_sonnets`.`line_index` AS `line_index`,`words_in_sonnets`.`word_index_in_line` AS `word_index_in_line`,`sonnets_sections`.`section_id` AS `section_id` from (`words_in_sonnets` join `sonnets_sections` on(((`words_in_sonnets`.`sonnet_id` = `sonnets_sections`.`sonnet_id`) and (`words_in_sonnets`.`line_index` = `sonnets_sections`.`line_index`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-10 14:40:23
