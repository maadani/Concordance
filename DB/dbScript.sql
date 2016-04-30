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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'g1','g1'),(2,'g2','g2'),(3,'test',NULL),(4,'test2',NULL),(5,'test3',NULL),(6,'test3',NULL),(7,'test4',NULL),(8,'test5',NULL),(9,'e1',NULL),(10,'GroupAAA',NULL),(11,'GroupAAA1',NULL),(12,'GroupAAA2',NULL),(13,'Shiri1',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relations`
--

LOCK TABLES `relations` WRITE;
/*!40000 ALTER TABLE `relations` DISABLE KEYS */;
INSERT INTO `relations` VALUES (1,'C1','First Relation'),(2,'C2','Second Relation'),(3,'rel1','desc1'),(4,'bla_bla1','bla_bla2'),(7,'bla bla1','ssdasdasd'),(8,'Shiri10','desc1');
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='		';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sonnets`
--

LOCK TABLES `sonnets` WRITE;
/*!40000 ALTER TABLE `sonnets` DISABLE KEYS */;
INSERT INTO `sonnets` VALUES (11,'1','abab_cdcd_efef_gg','William Shakespeare',4,'ShakespeareSonnet1.txt','G:\\\\OpenU\\\\Projects\\\\sonets\\\\txt_files\\\\ShakespeareSonnet1.txt'),(12,'2','abab_cdcd_efef_gg','William Shakespeare',4,'ShakespeareSonnet2.txt','G:\\\\OpenU\\\\Projects\\\\sonets\\\\txt_files\\\\ShakespeareSonnet2.txt'),(13,'3','abab_cdcd_efef_gg','William Shakespeare',4,'ShakespeareSonnet3.txt','G:\\\\OpenU\\\\Projects\\\\sonets\\\\txt_files\\\\ShakespeareSonnet3.txt'),(14,'7','abab_cdcd_efef_gg','William Shakespeare',4,'ShakespeareSonnet7.txt','G:\\\\OpenU\\\\Projects\\\\sonets\\\\txt_files\\\\ShakespeareSonnet7.txt');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sonnets_sequences`
--

LOCK TABLES `sonnets_sequences` WRITE;
/*!40000 ALTER TABLE `sonnets_sequences` DISABLE KEYS */;
INSERT INTO `sonnets_sequences` VALUES (0,'unkown',0),(4,'Shakespeare\\\'s sonnets',1609);
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
) ENGINE=InnoDB AUTO_INCREMENT=5260 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `words`
--

LOCK TABLES `words` WRITE;
/*!40000 ALTER TABLE `words` DISABLE KEYS */;
INSERT INTO `words` VALUES (4998,'From',4,2,1),(4999,'fairest',1,1,1),(5000,'creatures',1,1,1),(5001,'we',1,1,1),(5002,'desire',1,1,1),(5003,'increase',1,1,1),(5004,',',45,4,0),(5005,'That',3,2,1),(5006,'thereby',1,1,1),(5007,'beauty',6,3,1),(5008,'\'',18,4,0),(5009,'s',8,3,1),(5010,'rose',1,1,1),(5011,'might',2,1,1),(5012,'never',1,1,1),(5013,'die',2,2,1),(5014,'But',4,3,1),(5015,'as',1,1,1),(5016,'the',18,4,1),(5017,'riper',1,1,1),(5018,'should',2,2,1),(5019,'by',3,2,1),(5020,'time',3,2,1),(5021,'decease',1,1,1),(5022,'His',11,4,1),(5023,'tender',2,1,1),(5024,'heir',1,1,1),(5025,'bear',1,1,1),(5026,'memory',1,1,1),(5027,':',6,4,0),(5028,'thou',13,4,1),(5029,'contracted',1,1,1),(5030,'to',9,4,1),(5031,'thine',6,3,1),(5032,'own',3,2,1),(5033,'bright',1,1,1),(5034,'eyes',3,3,1),(5035,'Feed',1,1,1),(5036,'st',3,2,1),(5037,'thy',17,4,1),(5038,'light',2,2,1),(5039,'flame',1,1,1),(5040,'with',4,3,1),(5041,'self',4,2,1),(5042,'-',7,4,0),(5043,'substantial',1,1,1),(5044,'fuel',1,1,1),(5045,'Making',1,1,1),(5046,'a',3,3,1),(5047,'famine',1,1,1),(5048,'where',4,3,1),(5049,'abundance',1,1,1),(5050,'lies',2,2,1),(5051,'foe',1,1,1),(5052,'sweet',1,1,1),(5053,'too',1,1,1),(5054,'cruel',1,1,1),(5055,'art',3,3,1),(5056,'now',5,4,1),(5057,'world',4,2,1),(5058,'fresh',2,2,1),(5059,'ornament',1,1,1),(5060,'And',12,4,1),(5061,'only',1,1,1),(5062,'herald',1,1,1),(5063,'gaudy',1,1,1),(5064,'spring',1,1,1),(5065,'Within',2,2,1),(5066,'bud',1,1,1),(5067,'buriest',1,1,1),(5068,'content',1,1,1),(5069,'churl',1,1,1),(5070,'mak',1,1,1),(5071,'waste',1,1,1),(5072,'in',7,4,1),(5073,'niggarding',1,1,1),(5074,'Pity',1,1,1),(5075,'or',2,2,1),(5076,'else',1,1,1),(5077,'this',4,3,1),(5078,'glutton',1,1,1),(5079,'be',5,3,1),(5080,'eat',1,1,1),(5081,'due',1,1,1),(5082,'grave',1,1,1),(5083,'thee',3,2,1),(5084,'.',7,4,0),(5085,'When',5,2,1),(5086,'forty',1,1,1),(5087,'winters',1,1,1),(5088,'shall',3,2,1),(5089,'beseige',1,1,1),(5090,'brow',1,1,1),(5091,'dig',1,1,1),(5092,'deep',2,1,1),(5093,'trenches',1,1,1),(5094,'field',1,1,1),(5095,'youth',2,2,1),(5096,'proud',1,1,1),(5097,'livery',1,1,1),(5098,'so',5,3,1),(5099,'gazed',1,1,1),(5100,'on',3,2,1),(5101,'Will',2,2,1),(5102,'tatter',1,1,1),(5103,'d',6,3,1),(5104,'weed',1,1,1),(5105,'of',8,2,1),(5106,'small',1,1,1),(5107,'worth',1,1,1),(5108,'held',1,1,1),(5109,'Then',1,1,1),(5110,'being',1,1,1),(5111,'ask',1,1,1),(5112,'all',3,1,1),(5113,'treasure',1,1,1),(5114,'lusty',1,1,1),(5115,'days',1,1,1),(5116,'say',1,1,1),(5117,'sunken',1,1,1),(5118,'Were',2,1,1),(5119,'an',1,1,1),(5120,'eating',1,1,1),(5121,'shame',1,1,1),(5122,'thriftless',1,1,1),(5123,'praise',2,1,1),(5124,'How',1,1,1),(5125,'much',1,1,1),(5126,'more',1,1,1),(5127,'deserved',1,1,1),(5128,'use',1,1,1),(5129,'If',3,2,1),(5130,'couldst',1,1,1),(5131,'answer',1,1,1),(5132,'fair',2,2,1),(5133,'child',1,1,1),(5134,'mine',1,1,1),(5135,'sum',1,1,1),(5136,'my',2,1,1),(5137,'count',1,1,1),(5138,'make',1,1,1),(5139,'old',2,1,1),(5140,'excuse',1,1,1),(5141,',\'',1,1,0),(5142,'Proving',1,1,1),(5143,'succession',1,1,1),(5144,'!',2,2,0),(5145,'new',2,2,1),(5146,'made',1,1,1),(5147,'see',2,2,1),(5148,'blood',1,1,1),(5149,'warm',1,1,1),(5150,'feel',1,1,1),(5151,'it',1,1,1),(5152,'cold',1,1,1),(5153,'Look',2,2,1),(5154,'glass',2,1,1),(5155,'tell',1,1,1),(5156,'face',2,1,1),(5157,'viewest',1,1,1),(5158,'is',3,1,1),(5159,'form',1,1,1),(5160,'another',2,2,1),(5161,';',3,2,0),(5162,'Whose',2,1,1),(5163,'repair',1,1,1),(5164,'not',2,1,1),(5165,'renewest',1,1,1),(5166,'dost',1,1,1),(5167,'beguile',1,1,1),(5168,'unbless',1,1,1),(5169,'some',1,1,1),(5170,'mother',2,1,1),(5171,'For',1,1,1),(5172,'she',2,1,1),(5173,'unear',1,1,1),(5174,'womb',1,1,1),(5175,'Disdains',1,1,1),(5176,'tillage',1,1,1),(5177,'husbandry',1,1,1),(5178,'?',2,1,0),(5179,'who',1,1,1),(5180,'he',2,2,1),(5181,'fond',1,1,1),(5182,'tomb',1,1,1),(5183,'love',1,1,1),(5184,'stop',1,1,1),(5185,'posterity',1,1,1),(5186,'Calls',1,1,1),(5187,'back',1,1,1),(5188,'lovely',1,1,1),(5189,'April',1,1,1),(5190,'her',1,1,1),(5191,'prime',1,1,1),(5192,'through',1,1,1),(5193,'windows',1,1,1),(5194,'age',3,2,1),(5195,'Despite',1,1,1),(5196,'wrinkles',1,1,1),(5197,'golden',2,2,1),(5198,'live',1,1,1),(5199,'remember',1,1,1),(5200,'single',1,1,1),(5201,'image',1,1,1),(5202,'dies',1,1,1),(5203,'Lo',1,1,1),(5204,'orient',1,1,1),(5205,'gracious',1,1,1),(5206,'Lifts',1,1,1),(5207,'up',2,1,1),(5208,'burning',1,1,1),(5209,'head',1,1,1),(5210,'each',1,1,1),(5211,'under',1,1,1),(5212,'eye',1,1,1),(5213,'Doth',1,1,1),(5214,'homage',1,1,1),(5215,'appearing',1,1,1),(5216,'sight',1,1,1),(5217,'Serving',1,1,1),(5218,'looks',2,1,1),(5219,'sacred',1,1,1),(5220,'majesty',1,1,1),(5221,'having',1,1,1),(5222,'climb',1,1,1),(5223,'steep',1,1,1),(5224,'heavenly',1,1,1),(5225,'hill',1,1,1),(5226,'Resembling',1,1,1),(5227,'strong',1,1,1),(5228,'middle',1,1,1),(5229,'yet',1,1,1),(5230,'mortal',1,1,1),(5231,'adore',1,1,1),(5232,'still',1,1,1),(5233,'Attending',1,1,1),(5234,'pilgrimage',1,1,1),(5235,'highmost',1,1,1),(5236,'pitch',1,1,1),(5237,'weary',1,1,1),(5238,'car',1,1,1),(5239,'Like',1,1,1),(5240,'feeble',1,1,1),(5241,'reeleth',1,1,1),(5242,'day',1,1,1),(5243,', \'',1,1,0),(5244,'fore',1,1,1),(5245,'duteous',1,1,1),(5246,'converted',1,1,1),(5247,'are',1,1,1),(5248,'low',1,1,1),(5249,'tract',1,1,1),(5250,'way',1,1,1),(5251,'thyself',1,1,1),(5252,'out',1,1,1),(5253,'going',1,1,1),(5254,'noon',1,1,1),(5255,'Unlook',1,1,1),(5256,'diest',1,1,1),(5257,'unless',1,1,1),(5258,'get',1,1,1),(5259,'son',1,1,1);
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
INSERT INTO `words_in_sonnets` VALUES (4998,11,1,1,1,1),(4999,11,2,1,2,1),(5000,11,3,1,3,1),(5001,11,4,1,4,1),(5002,11,5,1,5,1),(5003,11,6,1,6,1),(5004,11,7,1,6,1),(5005,11,8,2,1,1),(5006,11,9,2,2,1),(5007,11,10,2,3,1),(5008,11,11,2,3,1),(5009,11,12,2,4,1),(5010,11,13,2,5,1),(5011,11,14,2,6,1),(5012,11,15,2,7,1),(5013,11,16,2,8,1),(5004,11,17,2,8,1),(5014,11,18,3,1,1),(5015,11,19,3,2,1),(5016,11,20,3,3,1),(5017,11,21,3,4,1),(5018,11,22,3,5,1),(5019,11,23,3,6,1),(5020,11,24,3,7,1),(5021,11,25,3,8,1),(5004,11,26,3,8,1),(5022,11,27,4,1,1),(5023,11,28,4,2,1),(5024,11,29,4,3,1),(5011,11,30,4,4,1),(5025,11,31,4,5,1),(5022,11,32,4,6,1),(5026,11,33,4,7,1),(5027,11,34,4,7,1),(5014,11,35,5,1,2),(5028,11,36,5,2,2),(5029,11,37,5,3,2),(5030,11,38,5,4,2),(5031,11,39,5,5,2),(5032,11,40,5,6,2),(5033,11,41,5,7,2),(5034,11,42,5,8,2),(5004,11,43,5,8,2),(5035,11,44,6,1,2),(5008,11,45,6,1,2),(5036,11,46,6,2,2),(5037,11,47,6,3,2),(5038,11,48,6,4,2),(5008,11,49,6,4,2),(5009,11,50,6,5,2),(5039,11,51,6,6,2),(5040,11,52,6,7,2),(5041,11,53,6,8,2),(5042,11,54,6,8,2),(5043,11,55,6,9,2),(5044,11,56,6,10,2),(5004,11,57,6,10,2),(5045,11,58,7,1,2),(5046,11,59,7,2,2),(5047,11,60,7,3,2),(5048,11,61,7,4,2),(5049,11,62,7,5,2),(5050,11,63,7,6,2),(5004,11,64,7,6,2),(5037,11,65,8,1,2),(5041,11,66,8,2,2),(5037,11,67,8,3,2),(5051,11,68,8,4,2),(5004,11,69,8,4,2),(5030,11,70,8,5,2),(5037,11,71,8,6,2),(5052,11,72,8,7,2),(5041,11,73,8,8,2),(5053,11,74,8,9,2),(5054,11,75,8,10,2),(5027,11,76,8,10,2),(5028,11,77,9,1,3),(5005,11,78,9,2,3),(5055,11,79,9,3,3),(5056,11,80,9,4,3),(5016,11,81,9,5,3),(5057,11,82,9,6,3),(5008,11,83,9,6,3),(5009,11,84,9,7,3),(5058,11,85,9,8,3),(5059,11,86,9,9,3),(5004,11,87,9,9,3),(5060,11,88,10,1,3),(5061,11,89,10,2,3),(5062,11,90,10,3,3),(5030,11,91,10,4,3),(5016,11,92,10,5,3),(5063,11,93,10,6,3),(5064,11,94,10,7,3),(5004,11,95,10,7,3),(5065,11,96,11,1,3),(5031,11,97,11,2,3),(5032,11,98,11,3,3),(5066,11,99,11,4,3),(5067,11,100,11,5,3),(5037,11,101,11,6,3),(5068,11,102,11,7,3),(5004,11,103,11,7,3),(5060,11,104,12,1,3),(5023,11,105,12,2,3),(5069,11,106,12,3,3),(5070,11,107,12,4,3),(5008,11,108,12,4,3),(5036,11,109,12,5,3),(5071,11,110,12,6,3),(5072,11,111,12,7,3),(5073,11,112,12,8,3),(5027,11,113,12,8,3),(5074,11,114,13,1,4),(5016,11,115,13,2,4),(5057,11,116,13,3,4),(5004,11,117,13,3,4),(5075,11,118,13,4,4),(5076,11,119,13,5,4),(5077,11,120,13,6,4),(5078,11,121,13,7,4),(5079,11,122,13,8,4),(5004,11,123,13,8,4),(5030,11,124,14,1,4),(5080,11,125,14,2,4),(5016,11,126,14,3,4),(5057,11,127,14,4,4),(5008,11,128,14,4,4),(5009,11,129,14,5,4),(5081,11,130,14,6,4),(5004,11,131,14,6,4),(5019,11,132,14,7,4),(5016,11,133,14,8,4),(5082,11,134,14,9,4),(5060,11,135,14,10,4),(5083,11,136,14,11,4),(5084,11,137,14,11,4),(5085,12,1,1,1,1),(5086,12,2,1,2,1),(5087,12,3,1,3,1),(5088,12,4,1,4,1),(5089,12,5,1,5,1),(5037,12,6,1,6,1),(5090,12,7,1,7,1),(5004,12,8,1,7,1),(5060,12,9,2,1,1),(5091,12,10,2,2,1),(5092,12,11,2,3,1),(5093,12,12,2,4,1),(5072,12,13,2,5,1),(5037,12,14,2,6,1),(5007,12,15,2,7,1),(5008,12,16,2,7,1),(5009,12,17,2,8,1),(5094,12,18,2,9,1),(5004,12,19,2,9,1),(5037,12,20,3,1,1),(5095,12,21,3,2,1),(5008,12,22,3,2,1),(5009,12,23,3,3,1),(5096,12,24,3,4,1),(5097,12,25,3,5,1),(5004,12,26,3,5,1),(5098,12,27,3,6,1),(5099,12,28,3,7,1),(5100,12,29,3,8,1),(5056,12,30,3,9,1),(5004,12,31,3,9,1),(5101,12,32,4,1,1),(5079,12,33,4,2,1),(5046,12,34,4,3,1),(5102,12,35,4,4,1),(5008,12,36,4,4,1),(5103,12,37,4,5,1),(5104,12,38,4,6,1),(5004,12,39,4,6,1),(5105,12,40,4,7,1),(5106,12,41,4,8,1),(5107,12,42,4,9,1),(5108,12,43,4,10,1),(5027,12,44,4,10,1),(5109,12,45,5,1,2),(5110,12,46,5,2,2),(5111,12,47,5,3,2),(5008,12,48,5,3,2),(5103,12,49,5,4,2),(5048,12,50,5,5,2),(5112,12,51,5,6,2),(5037,12,52,5,7,2),(5007,12,53,5,8,2),(5050,12,54,5,9,2),(5004,12,55,5,9,2),(5048,12,56,6,1,2),(5112,12,57,6,2,2),(5016,12,58,6,3,2),(5113,12,59,6,4,2),(5105,12,60,6,5,2),(5037,12,61,6,6,2),(5114,12,62,6,7,2),(5115,12,63,6,8,2),(5004,12,64,6,8,2),(5030,12,65,7,1,2),(5116,12,66,7,2,2),(5004,12,67,7,2,2),(5065,12,68,7,3,2),(5031,12,69,7,4,2),(5032,12,70,7,5,2),(5092,12,71,7,6,2),(5042,12,72,7,6,2),(5117,12,73,7,7,2),(5034,12,74,7,8,2),(5004,12,75,7,8,2),(5118,12,76,8,1,2),(5119,12,77,8,2,2),(5112,12,78,8,3,2),(5042,12,79,8,3,2),(5120,12,80,8,4,2),(5121,12,81,8,5,2),(5060,12,82,8,6,2),(5122,12,83,8,7,2),(5123,12,84,8,8,2),(5084,12,85,8,8,2),(5124,12,86,9,1,3),(5125,12,87,9,2,3),(5126,12,88,9,3,3),(5123,12,89,9,4,3),(5127,12,90,9,5,3),(5037,12,91,9,6,3),(5007,12,92,9,7,3),(5008,12,93,9,7,3),(5009,12,94,9,8,3),(5128,12,95,9,9,3),(5004,12,96,9,9,3),(5129,12,97,10,1,3),(5028,12,98,10,2,3),(5130,12,99,10,3,3),(5131,12,100,10,4,3),(5008,12,101,10,4,3),(5077,12,102,10,5,3),(5132,12,103,10,6,3),(5133,12,104,10,7,3),(5105,12,105,10,8,3),(5134,12,106,10,9,3),(5088,12,107,11,1,3),(5135,12,108,11,2,3),(5136,12,109,11,3,3),(5137,12,110,11,4,3),(5060,12,111,11,5,3),(5138,12,112,11,6,3),(5136,12,113,11,7,3),(5139,12,114,11,8,3),(5140,12,115,11,9,3),(5141,12,116,11,9,3),(5142,12,117,12,1,3),(5022,12,118,12,2,3),(5007,12,119,12,3,3),(5019,12,120,12,4,3),(5143,12,121,12,5,3),(5031,12,122,12,6,3),(5144,12,123,12,6,3),(5077,12,124,13,1,4),(5118,12,125,13,2,4),(5030,12,126,13,3,4),(5079,12,127,13,4,4),(5145,12,128,13,5,4),(5146,12,129,13,6,4),(5085,12,130,13,7,4),(5028,12,131,13,8,4),(5055,12,132,13,9,4),(5139,12,133,13,10,4),(5004,12,134,13,10,4),(5060,12,135,14,1,4),(5147,12,136,14,2,4),(5037,12,137,14,3,4),(5148,12,138,14,4,4),(5149,12,139,14,5,4),(5085,12,140,14,6,4),(5028,12,141,14,7,4),(5150,12,142,14,8,4),(5008,12,143,14,8,4),(5036,12,144,14,9,4),(5151,12,145,14,10,4),(5152,12,146,14,11,4),(5084,12,147,14,11,4),(5153,13,1,1,1,1),(5072,13,2,1,2,1),(5037,13,3,1,3,1),(5154,13,4,1,4,1),(5004,13,5,1,4,1),(5060,13,6,1,5,1),(5155,13,7,1,6,1),(5016,13,8,1,7,1),(5156,13,9,1,8,1),(5028,13,10,1,9,1),(5157,13,11,1,10,1),(5056,13,12,2,1,1),(5158,13,13,2,2,1),(5016,13,14,2,3,1),(5020,13,15,2,4,1),(5005,13,16,2,5,1),(5156,13,17,2,6,1),(5018,13,18,2,7,1),(5159,13,19,2,8,1),(5160,13,20,2,9,1),(5161,13,21,2,9,1),(5162,13,22,3,1,1),(5058,13,23,3,2,1),(5163,13,24,3,3,1),(5129,13,25,3,4,1),(5056,13,26,3,5,1),(5028,13,27,3,6,1),(5164,13,28,3,7,1),(5165,13,29,3,8,1),(5004,13,30,3,8,1),(5028,13,31,4,1,1),(5166,13,32,4,2,1),(5167,13,33,4,3,1),(5016,13,34,4,4,1),(5057,13,35,4,5,1),(5004,13,36,4,5,1),(5168,13,37,4,6,1),(5169,13,38,4,7,1),(5170,13,39,4,8,1),(5084,13,40,4,8,1),(5171,13,41,5,1,2),(5048,13,42,5,2,2),(5158,13,43,5,3,2),(5172,13,44,5,4,2),(5098,13,45,5,5,2),(5132,13,46,5,6,2),(5162,13,47,5,7,2),(5173,13,48,5,8,2),(5008,13,49,5,8,2),(5103,13,50,5,9,2),(5174,13,51,5,10,2),(5175,13,52,6,1,2),(5016,13,53,6,2,2),(5176,13,54,6,3,2),(5105,13,55,6,4,2),(5037,13,56,6,5,2),(5177,13,57,6,6,2),(5178,13,58,6,6,2),(5075,13,59,7,1,2),(5179,13,60,7,2,2),(5158,13,61,7,3,2),(5180,13,62,7,4,2),(5098,13,63,7,5,2),(5181,13,64,7,6,2),(5101,13,65,7,7,2),(5079,13,66,7,8,2),(5016,13,67,7,9,2),(5182,13,68,7,10,2),(5105,13,69,8,1,2),(5022,13,70,8,2,2),(5041,13,71,8,3,2),(5042,13,72,8,3,2),(5183,13,73,8,4,2),(5004,13,74,8,4,2),(5030,13,75,8,5,2),(5184,13,76,8,6,2),(5185,13,77,8,7,2),(5178,13,78,8,7,2),(5028,13,79,9,1,3),(5055,13,80,9,2,3),(5037,13,81,9,3,3),(5170,13,82,9,4,3),(5008,13,83,9,4,3),(5009,13,84,9,5,3),(5154,13,85,9,6,3),(5004,13,86,9,6,3),(5060,13,87,9,7,3),(5172,13,88,9,8,3),(5072,13,89,9,9,3),(5083,13,90,9,10,3),(5186,13,91,10,1,3),(5187,13,92,10,2,3),(5016,13,93,10,3,3),(5188,13,94,10,4,3),(5189,13,95,10,5,3),(5105,13,96,10,6,3),(5190,13,97,10,7,3),(5191,13,98,10,8,3),(5027,13,99,10,8,3),(5098,13,100,11,1,3),(5028,13,101,11,2,3),(5192,13,102,11,3,3),(5193,13,103,11,4,3),(5105,13,104,11,5,3),(5031,13,105,11,6,3),(5194,13,106,11,7,3),(5088,13,107,11,8,3),(5147,13,108,11,9,3),(5195,13,109,12,1,3),(5105,13,110,12,2,3),(5196,13,111,12,3,3),(5077,13,112,12,4,3),(5037,13,113,12,5,3),(5197,13,114,12,6,3),(5020,13,115,12,7,3),(5084,13,116,12,7,3),(5014,13,117,13,1,4),(5129,13,118,13,2,4),(5028,13,119,13,3,4),(5198,13,120,13,4,4),(5004,13,121,13,4,4),(5199,13,122,13,5,4),(5008,13,123,13,5,4),(5103,13,124,13,6,4),(5164,13,125,13,7,4),(5030,13,126,13,8,4),(5079,13,127,13,9,4),(5004,13,128,13,9,4),(5013,13,129,14,1,4),(5200,13,130,14,2,4),(5004,13,131,14,2,4),(5060,13,132,14,3,4),(5031,13,133,14,4,4),(5201,13,134,14,5,4),(5202,13,135,14,6,4),(5040,13,136,14,7,4),(5083,13,137,14,8,4),(5084,13,138,14,8,4),(5203,14,1,1,1,1),(5144,14,2,1,1,1),(5072,14,3,1,2,1),(5016,14,4,1,3,1),(5204,14,5,1,4,1),(5085,14,6,1,5,1),(5016,14,7,1,6,1),(5205,14,8,1,7,1),(5038,14,9,1,8,1),(5206,14,10,2,1,1),(5207,14,11,2,2,1),(5022,14,12,2,3,1),(5208,14,13,2,4,1),(5209,14,14,2,5,1),(5004,14,15,2,5,1),(5210,14,16,2,6,1),(5211,14,17,2,7,1),(5212,14,18,2,8,1),(5213,14,19,3,1,1),(5214,14,20,3,2,1),(5030,14,21,3,3,1),(5022,14,22,3,4,1),(5145,14,23,3,5,1),(5042,14,24,3,5,1),(5215,14,25,3,6,1),(5216,14,26,3,7,1),(5004,14,27,3,7,1),(5217,14,28,4,1,1),(5040,14,29,4,2,1),(5218,14,30,4,3,1),(5022,14,31,4,4,1),(5219,14,32,4,5,1),(5220,14,33,4,6,1),(5161,14,34,4,6,1),(5060,14,35,5,1,2),(5221,14,36,5,2,2),(5222,14,37,5,3,2),(5008,14,38,5,3,2),(5103,14,39,5,4,2),(5016,14,40,5,5,2),(5223,14,41,5,6,2),(5042,14,42,5,6,2),(5207,14,43,5,7,2),(5224,14,44,5,8,2),(5225,14,45,5,9,2),(5004,14,46,5,9,2),(5226,14,47,6,1,2),(5227,14,48,6,2,2),(5095,14,49,6,3,2),(5072,14,50,6,4,2),(5022,14,51,6,5,2),(5228,14,52,6,6,2),(5194,14,53,6,7,2),(5004,14,54,6,7,2),(5229,14,55,7,1,2),(5230,14,56,7,2,2),(5218,14,57,7,3,2),(5231,14,58,7,4,2),(5022,14,59,7,5,2),(5007,14,60,7,6,2),(5232,14,61,7,7,2),(5004,14,62,7,7,2),(5233,14,63,8,1,2),(5100,14,64,8,2,2),(5022,14,65,8,3,2),(5197,14,66,8,4,2),(5234,14,67,8,5,2),(5161,14,68,8,5,2),(5014,14,69,9,1,3),(5085,14,70,9,2,3),(4998,14,71,9,3,3),(5235,14,72,9,4,3),(5236,14,73,9,5,3),(5004,14,74,9,5,3),(5040,14,75,9,6,3),(5237,14,76,9,7,3),(5238,14,77,9,8,3),(5004,14,78,9,8,3),(5239,14,79,10,1,3),(5240,14,80,10,2,3),(5194,14,81,10,3,3),(5004,14,82,10,3,3),(5180,14,83,10,4,3),(5241,14,84,10,5,3),(4998,14,85,10,6,3),(5016,14,86,10,7,3),(5242,14,87,10,8,3),(5004,14,88,10,8,3),(5016,14,89,11,1,3),(5034,14,90,11,2,3),(5243,14,91,11,2,3),(5244,14,92,11,3,3),(5245,14,93,11,4,3),(5004,14,94,11,4,3),(5056,14,95,11,5,3),(5246,14,96,11,6,3),(5247,14,97,11,7,3),(4998,14,98,12,1,3),(5022,14,99,12,2,3),(5248,14,100,12,3,3),(5249,14,101,12,4,3),(5060,14,102,12,5,3),(5153,14,103,12,6,3),(5160,14,104,12,7,3),(5250,14,105,12,8,3),(5027,14,106,12,8,3),(5098,14,107,13,1,4),(5028,14,108,13,2,4),(5004,14,109,13,2,4),(5251,14,110,13,3,4),(5252,14,111,13,4,4),(5042,14,112,13,4,4),(5253,14,113,13,5,4),(5072,14,114,13,6,4),(5037,14,115,13,7,4),(5254,14,116,13,8,4),(5004,14,117,13,8,4),(5255,14,118,14,1,4),(5008,14,119,14,1,4),(5103,14,120,14,2,4),(5100,14,121,14,3,4),(5256,14,122,14,4,4),(5004,14,123,14,4,4),(5257,14,124,14,5,4),(5028,14,125,14,6,4),(5258,14,126,14,7,4),(5046,14,127,14,8,4),(5259,14,128,14,9,4),(5084,14,129,14,9,4);
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

-- Dump completed on 2016-05-01  1:45:13
