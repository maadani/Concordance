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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'g1','g1'),(2,'g2','g2'),(3,'test',NULL),(4,'test2',NULL),(5,'test3',NULL),(6,'test3',NULL),(7,'test4',NULL),(8,'test5',NULL),(9,'e1',NULL),(10,'GroupAAA',NULL),(11,'GroupAAA1',NULL),(12,'GroupAAA2',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relations`
--

LOCK TABLES `relations` WRITE;
/*!40000 ALTER TABLE `relations` DISABLE KEYS */;
INSERT INTO `relations` VALUES (1,'C1','First Relation'),(2,'C2','Second Relation'),(3,'rel1','desc1'),(4,'bla_bla1','bla_bla2'),(7,'bla bla1','ssdasdasd');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='		';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sonnets`
--

LOCK TABLES `sonnets` WRITE;
/*!40000 ALTER TABLE `sonnets` DISABLE KEYS */;
INSERT INTO `sonnets` VALUES (1,'0','abab_cdcd_efef_gg','aaa',0,NULL,NULL),(2,'0','abab_cdcd_efef_gg','bbb',0,NULL,NULL),(5,'test_sonnet','abab_cdcd_efef_gg','Erez',1,'ShakespeareSonnet2.txt','G:\\OpenU\\Projects\\sonets\\txt_files\\ShakespeareSonnet2.txt'),(7,'2','abab_cdcd_efef_gg','William Shakespeare',3,'ShakespeareSonnet2.txt','G:\\\\OpenU\\\\Projects\\\\sonets\\\\txt_files\\\\ShakespeareSonnet2.txt'),(8,'3','abab_cdcd_efef_gg','William Shakespeare',3,'ShakespeareSonnet3.txt','G:\\\\OpenU\\\\Projects\\\\sonets\\\\txt_files\\\\ShakespeareSonnet3.txt'),(9,'1','abab_cdcd_efef_gg','William Shakespeare',3,'ShakespeareSonnet1.txt','G:\\\\OpenU\\\\Projects\\\\sonets\\\\txt_files\\\\ShakespeareSonnet1.txt'),(10,'4','abab_cdcd_efef_gg','William Shakespeare',3,'ShakespeareSonnet4.txt','G:\\\\OpenU\\\\Projects\\\\sonets\\\\txt_files\\\\ShakespeareSonnet4.txt');
/*!40000 ALTER TABLE `sonnets` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sonnets_sequences`
--

LOCK TABLES `sonnets_sequences` WRITE;
/*!40000 ALTER TABLE `sonnets_sequences` DISABLE KEYS */;
INSERT INTO `sonnets_sequences` VALUES (0,'unkown',0),(1,'test_seq',1999),(3,'Shakespeare\\\'s sonnets',1609);
/*!40000 ALTER TABLE `sonnets_sequences` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=4951 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `words`
--

LOCK TABLES `words` WRITE;
/*!40000 ALTER TABLE `words` DISABLE KEYS */;
INSERT INTO `words` VALUES (4746,'From',1,1,1),(4747,'fairest',1,1,1),(4748,'creatures',1,1,1),(4749,'we',1,1,1),(4750,'desire',1,1,1),(4751,'increase',1,1,1),(4752,',',32,3,0),(4753,'That',3,2,1),(4754,'thereby',1,1,1),(4755,'beauty',5,2,1),(4756,'\\\'',16,3,0),(4757,'s',8,3,1),(4758,'rose',1,1,1),(4759,'might',2,1,1),(4760,'never',1,1,1),(4761,'die',2,2,1),(4762,'But',3,2,1),(4763,'as',1,1,1),(4764,'the',13,3,1),(4765,'riper',1,1,1),(4766,'should',2,2,1),(4767,'by',3,2,1),(4768,'time',3,2,1),(4769,'decease',1,1,1),(4770,'His',4,3,1),(4771,'tender',2,1,1),(4772,'heir',1,1,1),(4773,'bear',1,1,1),(4774,'memory',1,1,1),(4775,':',5,3,0),(4776,'thou',11,3,1),(4777,'contracted',1,1,1),(4778,'to',8,3,1),(4779,'thine',6,3,1),(4780,'own',3,2,1),(4781,'bright',1,1,1),(4782,'eyes',2,2,1),(4783,'Feed',1,1,1),(4784,'st',3,2,1),(4785,'thy',16,3,1),(4786,'light',1,1,1),(4787,'flame',1,1,1),(4788,'with',2,2,1),(4789,'self',4,2,1),(4790,'-',4,3,0),(4791,'substantial',1,1,1),(4792,'fuel',1,1,1),(4793,'Making',1,1,1),(4794,'a',2,2,1),(4795,'famine',1,1,1),(4796,'where',4,3,1),(4797,'abundance',1,1,1),(4798,'lies',2,2,1),(4799,'foe',1,1,1),(4800,'sweet',1,1,1),(4801,'too',1,1,1),(4802,'cruel',1,1,1),(4803,'art',3,3,1),(4804,'now',4,3,1),(4805,'world',4,2,1),(4806,'fresh',2,2,1),(4807,'ornament',1,1,1),(4808,'And',10,3,1),(4809,'only',1,1,1),(4810,'herald',1,1,1),(4811,'gaudy',1,1,1),(4812,'spring',1,1,1),(4813,'Within',2,2,1),(4814,'bud',1,1,1),(4815,'buriest',1,1,1),(4816,'content',1,1,1),(4817,'churl',1,1,1),(4818,'mak',1,1,1),(4819,'waste',1,1,1),(4820,'in',4,3,1),(4821,'niggarding',1,1,1),(4822,'Pity',1,1,1),(4823,'or',2,2,1),(4824,'else',1,1,1),(4825,'this',4,3,1),(4826,'glutton',1,1,1),(4827,'be',5,3,1),(4828,'eat',1,1,1),(4829,'due',1,1,1),(4830,'grave',1,1,1),(4831,'thee',3,2,1),(4832,'.',6,3,0),(4833,'When',3,1,1),(4834,'forty',1,1,1),(4835,'winters',1,1,1),(4836,'shall',3,2,1),(4837,'beseige',1,1,1),(4838,'brow',1,1,1),(4839,'dig',1,1,1),(4840,'deep',2,1,1),(4841,'trenches',1,1,1),(4842,'field',1,1,1),(4843,'youth',1,1,1),(4844,'proud',1,1,1),(4845,'livery',1,1,1),(4846,'so',4,2,1),(4847,'gazed',1,1,1),(4848,'on',1,1,1),(4849,'Will',2,2,1),(4850,'tatter',1,1,1),(4851,'d',4,2,1),(4852,'weed',1,1,1),(4853,'of',8,2,1),(4854,'small',1,1,1),(4855,'worth',1,1,1),(4856,'held',1,1,1),(4857,'Then',1,1,1),(4858,'being',1,1,1),(4859,'ask',1,1,1),(4860,'all',3,1,1),(4861,'treasure',1,1,1),(4862,'lusty',1,1,1),(4863,'days',1,1,1),(4864,'say',1,1,1),(4865,'sunken',1,1,1),(4866,'Were',2,1,1),(4867,'an',1,1,1),(4868,'eating',1,1,1),(4869,'shame',1,1,1),(4870,'thriftless',1,1,1),(4871,'praise',2,1,1),(4872,'How',1,1,1),(4873,'much',1,1,1),(4874,'more',1,1,1),(4875,'deserved',1,1,1),(4876,'use',1,1,1),(4877,'If',3,2,1),(4878,'couldst',1,1,1),(4879,'answer',1,1,1),(4880,'fair',2,2,1),(4881,'child',1,1,1),(4882,'mine',1,1,1),(4883,'sum',1,1,1),(4884,'my',2,1,1),(4885,'count',1,1,1),(4886,'make',1,1,1),(4887,'old',2,1,1),(4888,'excuse',1,1,1),(4889,',\\\'',1,1,0),(4890,'Proving',1,1,1),(4891,'succession',1,1,1),(4892,'!',1,1,0),(4893,'new',1,1,1),(4894,'made',1,1,1),(4895,'see',2,2,1),(4896,'blood',1,1,1),(4897,'warm',1,1,1),(4898,'feel',1,1,1),(4899,'it',1,1,1),(4900,'cold',1,1,1),(4901,'Look',1,1,1),(4902,'glass',2,1,1),(4903,'tell',1,1,1),(4904,'face',2,1,1),(4905,'viewest',1,1,1),(4906,'is',3,1,1),(4907,'form',1,1,1),(4908,'another',1,1,1),(4909,';',1,1,0),(4910,'Whose',2,1,1),(4911,'repair',1,1,1),(4912,'not',2,1,1),(4913,'renewest',1,1,1),(4914,'dost',1,1,1),(4915,'beguile',1,1,1),(4916,'unbless',1,1,1),(4917,'some',1,1,1),(4918,'mother',2,1,1),(4919,'For',1,1,1),(4920,'she',2,1,1),(4921,'unear',1,1,1),(4922,'womb',1,1,1),(4923,'Disdains',1,1,1),(4924,'tillage',1,1,1),(4925,'husbandry',1,1,1),(4926,'?',2,1,0),(4927,'who',1,1,1),(4928,'he',1,1,1),(4929,'fond',1,1,1),(4930,'tomb',1,1,1),(4931,'love',1,1,1),(4932,'stop',1,1,1),(4933,'posterity',1,1,1),(4934,'Calls',1,1,1),(4935,'back',1,1,1),(4936,'lovely',1,1,1),(4937,'April',1,1,1),(4938,'her',1,1,1),(4939,'prime',1,1,1),(4940,'through',1,1,1),(4941,'windows',1,1,1),(4942,'age',1,1,1),(4943,'Despite',1,1,1),(4944,'wrinkles',1,1,1),(4945,'golden',1,1,1),(4946,'live',1,1,1),(4947,'remember',1,1,1),(4948,'single',1,1,1),(4949,'image',1,1,1),(4950,'dies',1,1,1);
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
  `section_index` int(11) NOT NULL,
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
INSERT INTO `words_in_sonnets` VALUES (4833,7,1,1,1,1),(4834,7,2,1,2,1),(4835,7,3,1,3,1),(4836,7,4,1,4,1),(4837,7,5,1,5,1),(4785,7,6,1,6,1),(4838,7,7,1,7,1),(4752,7,8,1,7,1),(4808,7,9,2,1,1),(4839,7,10,2,2,1),(4840,7,11,2,3,1),(4841,7,12,2,4,1),(4820,7,13,2,5,1),(4785,7,14,2,6,1),(4755,7,15,2,7,1),(4756,7,16,2,7,1),(4757,7,17,2,8,1),(4842,7,18,2,9,1),(4752,7,19,2,9,1),(4785,7,20,3,1,1),(4843,7,21,3,2,1),(4756,7,22,3,2,1),(4757,7,23,3,3,1),(4844,7,24,3,4,1),(4845,7,25,3,5,1),(4752,7,26,3,5,1),(4846,7,27,3,6,1),(4847,7,28,3,7,1),(4848,7,29,3,8,1),(4804,7,30,3,9,1),(4752,7,31,3,9,1),(4849,7,32,4,1,1),(4827,7,33,4,2,1),(4794,7,34,4,3,1),(4850,7,35,4,4,1),(4756,7,36,4,4,1),(4851,7,37,4,5,1),(4852,7,38,4,6,1),(4752,7,39,4,6,1),(4853,7,40,4,7,1),(4854,7,41,4,8,1),(4855,7,42,4,9,1),(4856,7,43,4,10,1),(4775,7,44,4,10,1),(4857,7,45,5,1,2),(4858,7,46,5,2,2),(4859,7,47,5,3,2),(4756,7,48,5,3,2),(4851,7,49,5,4,2),(4796,7,50,5,5,2),(4860,7,51,5,6,2),(4785,7,52,5,7,2),(4755,7,53,5,8,2),(4798,7,54,5,9,2),(4752,7,55,5,9,2),(4796,7,56,6,1,2),(4860,7,57,6,2,2),(4764,7,58,6,3,2),(4861,7,59,6,4,2),(4853,7,60,6,5,2),(4785,7,61,6,6,2),(4862,7,62,6,7,2),(4863,7,63,6,8,2),(4752,7,64,6,8,2),(4778,7,65,7,1,2),(4864,7,66,7,2,2),(4752,7,67,7,2,2),(4813,7,68,7,3,2),(4779,7,69,7,4,2),(4780,7,70,7,5,2),(4840,7,71,7,6,2),(4790,7,72,7,6,2),(4865,7,73,7,7,2),(4782,7,74,7,8,2),(4752,7,75,7,8,2),(4866,7,76,8,1,2),(4867,7,77,8,2,2),(4860,7,78,8,3,2),(4790,7,79,8,3,2),(4868,7,80,8,4,2),(4869,7,81,8,5,2),(4808,7,82,8,6,2),(4870,7,83,8,7,2),(4871,7,84,8,8,2),(4832,7,85,8,8,2),(4872,7,86,9,1,3),(4873,7,87,9,2,3),(4874,7,88,9,3,3),(4871,7,89,9,4,3),(4875,7,90,9,5,3),(4785,7,91,9,6,3),(4755,7,92,9,7,3),(4756,7,93,9,7,3),(4757,7,94,9,8,3),(4876,7,95,9,9,3),(4752,7,96,9,9,3),(4877,7,97,10,1,3),(4776,7,98,10,2,3),(4878,7,99,10,3,3),(4879,7,100,10,4,3),(4756,7,101,10,4,3),(4825,7,102,10,5,3),(4880,7,103,10,6,3),(4881,7,104,10,7,3),(4853,7,105,10,8,3),(4882,7,106,10,9,3),(4836,7,107,11,1,3),(4883,7,108,11,2,3),(4884,7,109,11,3,3),(4885,7,110,11,4,3),(4808,7,111,11,5,3),(4886,7,112,11,6,3),(4884,7,113,11,7,3),(4887,7,114,11,8,3),(4888,7,115,11,9,3),(4889,7,116,11,9,3),(4890,7,117,12,1,3),(4770,7,118,12,2,3),(4755,7,119,12,3,3),(4767,7,120,12,4,3),(4891,7,121,12,5,3),(4779,7,122,12,6,3),(4892,7,123,12,6,3),(4825,7,124,13,1,4),(4866,7,125,13,2,4),(4778,7,126,13,3,4),(4827,7,127,13,4,4),(4893,7,128,13,5,4),(4894,7,129,13,6,4),(4833,7,130,13,7,4),(4776,7,131,13,8,4),(4803,7,132,13,9,4),(4887,7,133,13,10,4),(4752,7,134,13,10,4),(4808,7,135,14,1,4),(4895,7,136,14,2,4),(4785,7,137,14,3,4),(4896,7,138,14,4,4),(4897,7,139,14,5,4),(4833,7,140,14,6,4),(4776,7,141,14,7,4),(4898,7,142,14,8,4),(4756,7,143,14,8,4),(4784,7,144,14,9,4),(4899,7,145,14,10,4),(4900,7,146,14,11,4),(4832,7,147,14,11,4),(4901,8,1,1,1,1),(4820,8,2,1,2,1),(4785,8,3,1,3,1),(4902,8,4,1,4,1),(4752,8,5,1,4,1),(4808,8,6,1,5,1),(4903,8,7,1,6,1),(4764,8,8,1,7,1),(4904,8,9,1,8,1),(4776,8,10,1,9,1),(4905,8,11,1,10,1),(4804,8,12,2,1,1),(4906,8,13,2,2,1),(4764,8,14,2,3,1),(4768,8,15,2,4,1),(4753,8,16,2,5,1),(4904,8,17,2,6,1),(4766,8,18,2,7,1),(4907,8,19,2,8,1),(4908,8,20,2,9,1),(4909,8,21,2,9,1),(4910,8,22,3,1,1),(4806,8,23,3,2,1),(4911,8,24,3,3,1),(4877,8,25,3,4,1),(4804,8,26,3,5,1),(4776,8,27,3,6,1),(4912,8,28,3,7,1),(4913,8,29,3,8,1),(4752,8,30,3,8,1),(4776,8,31,4,1,1),(4914,8,32,4,2,1),(4915,8,33,4,3,1),(4764,8,34,4,4,1),(4805,8,35,4,5,1),(4752,8,36,4,5,1),(4916,8,37,4,6,1),(4917,8,38,4,7,1),(4918,8,39,4,8,1),(4832,8,40,4,8,1),(4919,8,41,5,1,2),(4796,8,42,5,2,2),(4906,8,43,5,3,2),(4920,8,44,5,4,2),(4846,8,45,5,5,2),(4880,8,46,5,6,2),(4910,8,47,5,7,2),(4921,8,48,5,8,2),(4756,8,49,5,8,2),(4851,8,50,5,9,2),(4922,8,51,5,10,2),(4923,8,52,6,1,2),(4764,8,53,6,2,2),(4924,8,54,6,3,2),(4853,8,55,6,4,2),(4785,8,56,6,5,2),(4925,8,57,6,6,2),(4926,8,58,6,6,2),(4823,8,59,7,1,2),(4927,8,60,7,2,2),(4906,8,61,7,3,2),(4928,8,62,7,4,2),(4846,8,63,7,5,2),(4929,8,64,7,6,2),(4849,8,65,7,7,2),(4827,8,66,7,8,2),(4764,8,67,7,9,2),(4930,8,68,7,10,2),(4853,8,69,8,1,2),(4770,8,70,8,2,2),(4789,8,71,8,3,2),(4790,8,72,8,3,2),(4931,8,73,8,4,2),(4752,8,74,8,4,2),(4778,8,75,8,5,2),(4932,8,76,8,6,2),(4933,8,77,8,7,2),(4926,8,78,8,7,2),(4776,8,79,9,1,3),(4803,8,80,9,2,3),(4785,8,81,9,3,3),(4918,8,82,9,4,3),(4756,8,83,9,4,3),(4757,8,84,9,5,3),(4902,8,85,9,6,3),(4752,8,86,9,6,3),(4808,8,87,9,7,3),(4920,8,88,9,8,3),(4820,8,89,9,9,3),(4831,8,90,9,10,3),(4934,8,91,10,1,3),(4935,8,92,10,2,3),(4764,8,93,10,3,3),(4936,8,94,10,4,3),(4937,8,95,10,5,3),(4853,8,96,10,6,3),(4938,8,97,10,7,3),(4939,8,98,10,8,3),(4775,8,99,10,8,3),(4846,8,100,11,1,3),(4776,8,101,11,2,3),(4940,8,102,11,3,3),(4941,8,103,11,4,3),(4853,8,104,11,5,3),(4779,8,105,11,6,3),(4942,8,106,11,7,3),(4836,8,107,11,8,3),(4895,8,108,11,9,3),(4943,8,109,12,1,3),(4853,8,110,12,2,3),(4944,8,111,12,3,3),(4825,8,112,12,4,3),(4785,8,113,12,5,3),(4945,8,114,12,6,3),(4768,8,115,12,7,3),(4832,8,116,12,7,3),(4762,8,117,13,1,4),(4877,8,118,13,2,4),(4776,8,119,13,3,4),(4946,8,120,13,4,4),(4752,8,121,13,4,4),(4947,8,122,13,5,4),(4756,8,123,13,5,4),(4851,8,124,13,6,4),(4912,8,125,13,7,4),(4778,8,126,13,8,4),(4827,8,127,13,9,4),(4752,8,128,13,9,4),(4761,8,129,14,1,4),(4948,8,130,14,2,4),(4752,8,131,14,2,4),(4808,8,132,14,3,4),(4779,8,133,14,4,4),(4949,8,134,14,5,4),(4950,8,135,14,6,4),(4788,8,136,14,7,4),(4831,8,137,14,8,4),(4832,8,138,14,8,4),(4746,9,1,1,1,1),(4747,9,2,1,2,1),(4748,9,3,1,3,1),(4749,9,4,1,4,1),(4750,9,5,1,5,1),(4751,9,6,1,6,1),(4752,9,7,1,6,1),(4753,9,8,2,1,1),(4754,9,9,2,2,1),(4755,9,10,2,3,1),(4756,9,11,2,3,1),(4757,9,12,2,4,1),(4758,9,13,2,5,1),(4759,9,14,2,6,1),(4760,9,15,2,7,1),(4761,9,16,2,8,1),(4752,9,17,2,8,1),(4762,9,18,3,1,1),(4763,9,19,3,2,1),(4764,9,20,3,3,1),(4765,9,21,3,4,1),(4766,9,22,3,5,1),(4767,9,23,3,6,1),(4768,9,24,3,7,1),(4769,9,25,3,8,1),(4752,9,26,3,8,1),(4770,9,27,4,1,1),(4771,9,28,4,2,1),(4772,9,29,4,3,1),(4759,9,30,4,4,1),(4773,9,31,4,5,1),(4770,9,32,4,6,1),(4774,9,33,4,7,1),(4775,9,34,4,7,1),(4762,9,35,5,1,2),(4776,9,36,5,2,2),(4777,9,37,5,3,2),(4778,9,38,5,4,2),(4779,9,39,5,5,2),(4780,9,40,5,6,2),(4781,9,41,5,7,2),(4782,9,42,5,8,2),(4752,9,43,5,8,2),(4783,9,44,6,1,2),(4756,9,45,6,1,2),(4784,9,46,6,2,2),(4785,9,47,6,3,2),(4786,9,48,6,4,2),(4756,9,49,6,4,2),(4757,9,50,6,5,2),(4787,9,51,6,6,2),(4788,9,52,6,7,2),(4789,9,53,6,8,2),(4790,9,54,6,8,2),(4791,9,55,6,9,2),(4792,9,56,6,10,2),(4752,9,57,6,10,2),(4793,9,58,7,1,2),(4794,9,59,7,2,2),(4795,9,60,7,3,2),(4796,9,61,7,4,2),(4797,9,62,7,5,2),(4798,9,63,7,6,2),(4752,9,64,7,6,2),(4785,9,65,8,1,2),(4789,9,66,8,2,2),(4785,9,67,8,3,2),(4799,9,68,8,4,2),(4752,9,69,8,4,2),(4778,9,70,8,5,2),(4785,9,71,8,6,2),(4800,9,72,8,7,2),(4789,9,73,8,8,2),(4801,9,74,8,9,2),(4802,9,75,8,10,2),(4775,9,76,8,10,2),(4776,9,77,9,1,3),(4753,9,78,9,2,3),(4803,9,79,9,3,3),(4804,9,80,9,4,3),(4764,9,81,9,5,3),(4805,9,82,9,6,3),(4756,9,83,9,6,3),(4757,9,84,9,7,3),(4806,9,85,9,8,3),(4807,9,86,9,9,3),(4752,9,87,9,9,3),(4808,9,88,10,1,3),(4809,9,89,10,2,3),(4810,9,90,10,3,3),(4778,9,91,10,4,3),(4764,9,92,10,5,3),(4811,9,93,10,6,3),(4812,9,94,10,7,3),(4752,9,95,10,7,3),(4813,9,96,11,1,3),(4779,9,97,11,2,3),(4780,9,98,11,3,3),(4814,9,99,11,4,3),(4815,9,100,11,5,3),(4785,9,101,11,6,3),(4816,9,102,11,7,3),(4752,9,103,11,7,3),(4808,9,104,12,1,3),(4771,9,105,12,2,3),(4817,9,106,12,3,3),(4818,9,107,12,4,3),(4756,9,108,12,4,3),(4784,9,109,12,5,3),(4819,9,110,12,6,3),(4820,9,111,12,7,3),(4821,9,112,12,8,3),(4775,9,113,12,8,3),(4822,9,114,13,1,4),(4764,9,115,13,2,4),(4805,9,116,13,3,4),(4752,9,117,13,3,4),(4823,9,118,13,4,4),(4824,9,119,13,5,4),(4825,9,120,13,6,4),(4826,9,121,13,7,4),(4827,9,122,13,8,4),(4752,9,123,13,8,4),(4778,9,124,14,1,4),(4828,9,125,14,2,4),(4764,9,126,14,3,4),(4805,9,127,14,4,4),(4756,9,128,14,4,4),(4757,9,129,14,5,4),(4829,9,130,14,6,4),(4752,9,131,14,6,4),(4767,9,132,14,7,4),(4764,9,133,14,8,4),(4830,9,134,14,9,4),(4808,9,135,14,10,4),(4831,9,136,14,11,4),(4832,9,137,14,11,4);
/*!40000 ALTER TABLE `words_in_sonnets` ENABLE KEYS */;
UNLOCK TABLES;

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
	select 0, 'All' 
    union
    select sonnets_sequences.id, sonnets_sequences.name from sonnets_sequences;	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_sonnet_by_params` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_sonnet_by_params`(inName varchar(45), inAuther varchar(45), inSeqId int, inContainsText varchar(20))
BEGIN
SELECT * FROM concordancedb.sonnets
WHERE 
(IF(inName IS NULL or inName = '', -1, inName) = -1 OR sonnets.name = inName)
AND
(IF(inAuther IS NULL or inAuther = '', -1, inAuther) = -1 OR sonnets.author = inAuther)
AND
(IF(inSeqId IS NULL or inSeqId = '', -1, inSeqId) = -1 OR sonnets.sequence_id = inSeqId)
AND
(IF(inContainsText IS NULL or inContainsText = '', -1, inContainsText) = -1);

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
    words_in_sonnets.section_index as 'section_index',
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
        where words_in_groups.relation_id = inGroupId
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
/*	select words.id as 'word_id', words.value as 'word_value', 
    words_in_sonnets.line_index as 'line_index', 
    words_in_sonnets.word_index_in_line as 'word_index_in_line',
    words_in_sonnets.word_index_in_sonnet as 'word_index_in_sonnet',
    words_in_sonnets.section_index as 'section_index',
    words_in_sonnets.sonnet_id as 'sonnet_id', sonnets.name as 'sonnet_name'
    from (words
		inner join words_in_sonnets on words_in_sonnets.word_id = words.id
        inner jOIN sonnets on sonnets.id = words_in_sonnets.sonnet_id)
	where 
    (inSonnetId = 0     
    OR
    sonnets.id = inSonnetId)    
    AND words.is_real = 1
    group by words.id, words.value, 
    words_in_sonnets.line_index, 
    words_in_sonnets.word_index_in_line,
    words_in_sonnets.word_index_in_sonnet,
    words_in_sonnets.section_index,
    words_in_sonnets.sonnet_id, sonnets.name;
*/
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

	SELECT @sonnetId as 'sonnet_id';
    #select sonnets.id from sonnets where sonnets.id = @sonnetId;
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_add_word`(in inWord varchar(50), in inSonetId int, in inWordIndexInFile int, in inLineIndex int, in inWordInLineIndex int, in inIsReal tinyint, in inSectionIndex int)
BEGIN

#    DECLARE exit handler for SQLEXCEPTION
#        BEGIN       
#        ROLLBACK;
#    END;
    
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
    
    insert into words_in_sonnets(words_in_sonnets.word_id, words_in_sonnets.sonnet_id, words_in_sonnets.word_index_in_sonnet, words_in_sonnets.line_index, words_in_sonnets.word_index_in_line, words_in_sonnets.section_index)
    values(@wordId, inSonetId, inWordIndexInFile, inLineIndex, inWordInLineIndex, inSectionIndex);
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
		SELECT words_in_sonnets.sonnet_id, words_in_sonnets.section_index FROM words_in_sonnets
        where words_in_sonnets.word_id = inWordId
        group by words_in_sonnets.sonnet_id, words_in_sonnets.section_index
    );   

	CREATE TEMPORARY TABLE IF NOT EXISTS tmp_section_words_in_sonnets AS (
		SELECT words_in_sonnets.sonnet_id, words_in_sonnets.section_index, words_in_sonnets.line_index, words_in_sonnets.word_index_in_line, words_in_sonnets.word_id 
        FROM words_in_sonnets inner join tmp_words_in_sonnets
        ON words_in_sonnets.sonnet_id = tmp_words_in_sonnets.sonnet_id
        AND words_in_sonnets.section_index = tmp_words_in_sonnets.section_index
        #AND words_in_sonnets.word_index_in_sonnet = tmp_words_in_sonnets.word_index_in_sonnet
    );
       
        
	select tmp_section_words_in_sonnets.sonnet_id, tmp_section_words_in_sonnets.section_index, tmp_section_words_in_sonnets.line_index, tmp_section_words_in_sonnets.word_index_in_line, tmp_section_words_in_sonnets.word_id, words.value, words.is_real from
    tmp_section_words_in_sonnets inner join words
    ON tmp_section_words_in_sonnets.word_id = words.id
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
/*!50001 VIEW `index_view` AS select `words`.`id` AS `word_id`,`words`.`value` AS `word_value`,`words_in_sonnets`.`line_index` AS `line_index`,`words_in_sonnets`.`word_index_in_line` AS `word_index_in_line`,`words_in_sonnets`.`word_index_in_sonnet` AS `word_index_in_sonnet`,`words_in_sonnets`.`section_index` AS `section_index`,`words_in_sonnets`.`sonnet_id` AS `sonnet_id`,`sonnets`.`name` AS `sonnet_name` from ((`words` join `words_in_sonnets` on((`words_in_sonnets`.`word_id` = `words`.`id`))) join `sonnets` on((`sonnets`.`id` = `words_in_sonnets`.`sonnet_id`))) where (`words`.`is_real` = 1) group by `words`.`id`,`words`.`value`,`words_in_sonnets`.`line_index`,`words_in_sonnets`.`word_index_in_line`,`words_in_sonnets`.`word_index_in_sonnet`,`words_in_sonnets`.`section_index`,`words_in_sonnets`.`sonnet_id`,`sonnets`.`name` */;
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
/*!50001 VIEW `real_words_view` AS select `words`.`id` AS `word_id`,`words`.`value` AS `word`,`words`.`total_num_of_appearance` AS `total_num_of_appearance`,`words`.`num_of_files_appearance` AS `num_of_files_appearance`,`words`.`is_real` AS `is_real` from `words` where (`words`.`is_real` = 1) */;
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

-- Dump completed on 2016-04-20 22:04:11
