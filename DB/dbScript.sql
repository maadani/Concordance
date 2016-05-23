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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='		';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sonnets`
--

LOCK TABLES `sonnets` WRITE;
/*!40000 ALTER TABLE `sonnets` DISABLE KEYS */;
INSERT INTO `sonnets` VALUES (15,'1','aaaa_bbbb_cccc_gg','William Shakespeare',5,'ShakespeareSonnet1.txt','G:\\OpenU\\Projects\\sonnets\\txt_files\\ShakespeareSonnet1.txt'),(16,'2','abab_cdcd_efef_gg','William Shakespeare',5,'ShakespeareSonnet2.txt','G:\\OpenU\\Projects\\sonnets\\txt_files\\ShakespeareSonnet2.txt'),(17,'4','abab_cdcd_efef_gg','William Shakespeare',5,'ShakespeareSonnet4.txt','G:\\OpenU\\Projects\\sonnets\\txt_files\\ShakespeareSonnet4.txt'),(18,'5','abab_cdcd_efef_gg','William Shakespeare',5,'ShakespeareSonnet5.txt','G:\\OpenU\\Projects\\sonnets\\txt_files\\ShakespeareSonnet5.txt'),(19,'8','abab_cdcd_efef_gg','William Shakespeare',5,'ShakespeareSonnet8.txt','G:\\OpenU\\Projects\\sonnets\\txt_files\\ShakespeareSonnet8.txt'),(20,'6','abab_cdcd_efef_gg','William Shakespeare',5,'ShakespeareSonnet6.txt','G:\\OpenU\\Projects\\sonnets\\txt_files\\ShakespeareSonnet6.txt');
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
  `section_id` int(11) NOT NULL,
  `first_line` int(11) NOT NULL,
  `section_length_in_lines` int(11) NOT NULL,
  PRIMARY KEY (`sonnet_id`,`section_id`),
  KEY `sonnetIndex` (`sonnet_id`) USING BTREE KEY_BLOCK_SIZE=3,
  CONSTRAINT `sonnetFK` FOREIGN KEY (`sonnet_id`) REFERENCES `sonnets` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sonnets_sections`
--

LOCK TABLES `sonnets_sections` WRITE;
/*!40000 ALTER TABLE `sonnets_sections` DISABLE KEYS */;
INSERT INTO `sonnets_sections` VALUES (15,1,1,4),(15,2,5,4),(15,3,9,4),(15,4,13,2),(20,1,1,4),(20,2,5,4),(20,3,9,4),(20,4,13,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sonnets_sequences`
--

LOCK TABLES `sonnets_sequences` WRITE;
/*!40000 ALTER TABLE `sonnets_sequences` DISABLE KEYS */;
INSERT INTO `sonnets_sequences` VALUES (0,'No Sequence',0),(5,'Shakespeare\'s sonnets',1609);
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
) ENGINE=InnoDB AUTO_INCREMENT=5613 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `words`
--

LOCK TABLES `words` WRITE;
/*!40000 ALTER TABLE `words` DISABLE KEYS */;
INSERT INTO `words` VALUES (5260,'From',1,1,1),(5261,'fairest',1,1,1),(5262,'creatures',1,1,1),(5263,'we',1,1,1),(5264,'desire',1,1,1),(5265,'increase',1,1,1),(5266,',',67,6,0),(5267,'That',9,4,1),(5268,'thereby',1,1,1),(5269,'beauty',11,5,1),(5270,'\'',31,6,0),(5271,'s',15,5,1),(5272,'rose',1,1,1),(5273,'might',2,1,1),(5274,'never',2,2,1),(5275,'die',1,1,1),(5276,'But',6,4,1),(5277,'as',1,1,1),(5278,'the',14,6,1),(5279,'riper',1,1,1),(5280,'should',1,1,1),(5281,'by',5,3,1),(5282,'time',2,2,1),(5283,'decease',1,1,1),(5284,'His',3,2,1),(5285,'tender',2,1,1),(5286,'heir',2,2,1),(5287,'bear',2,2,1),(5288,'memory',1,1,1),(5289,':',10,5,0),(5290,'thou',20,5,1),(5291,'contracted',1,1,1),(5292,'to',17,6,1),(5293,'thine',8,4,1),(5294,'own',3,2,1),(5295,'bright',1,1,1),(5296,'eyes',2,2,1),(5297,'Feed',1,1,1),(5298,'st',4,3,1),(5299,'thy',16,4,1),(5300,'light',1,1,1),(5301,'flame',1,1,1),(5302,'with',10,5,1),(5303,'self',6,3,1),(5304,'-',7,5,0),(5305,'substantial',1,1,1),(5306,'fuel',1,1,1),(5307,'Making',1,1,1),(5308,'a',4,4,1),(5309,'famine',1,1,1),(5310,'where',5,3,1),(5311,'abundance',1,1,1),(5312,'lies',2,2,1),(5313,'foe',1,1,1),(5314,'sweet',5,5,1),(5315,'too',2,2,1),(5316,'cruel',1,1,1),(5317,'art',4,3,1),(5318,'now',2,2,1),(5319,'world',3,1,1),(5320,'fresh',1,1,1),(5321,'ornament',1,1,1),(5322,'And',15,6,1),(5323,'only',1,1,1),(5324,'herald',1,1,1),(5325,'gaudy',1,1,1),(5326,'spring',1,1,1),(5327,'Within',2,2,1),(5328,'bud',1,1,1),(5329,'buriest',1,1,1),(5330,'content',1,1,1),(5331,'churl',1,1,1),(5332,'mak',1,1,1),(5333,'waste',1,1,1),(5334,'in',9,5,1),(5335,'niggarding',1,1,1),(5336,'Pity',1,1,1),(5337,'or',3,3,1),(5338,'else',2,2,1),(5339,'this',4,3,1),(5340,'glutton',1,1,1),(5341,'be',11,4,1),(5342,'eat',1,1,1),(5343,'due',1,1,1),(5344,'grave',1,1,1),(5345,'thee',10,4,1),(5346,'.',11,6,0),(5347,'When',4,2,1),(5348,'forty',1,1,1),(5349,'winters',1,1,1),(5350,'shall',2,1,1),(5351,'beseige',1,1,1),(5352,'brow',1,1,1),(5353,'dig',1,1,1),(5354,'deep',2,1,1),(5355,'trenches',1,1,1),(5356,'field',1,1,1),(5357,'youth',1,1,1),(5358,'proud',1,1,1),(5359,'livery',1,1,1),(5360,'so',2,2,1),(5361,'gazed',1,1,1),(5362,'on',2,2,1),(5363,'Will',3,3,1),(5364,'tatter',1,1,1),(5365,'d',9,4,1),(5366,'weed',1,1,1),(5367,'of',8,5,1),(5368,'small',1,1,1),(5369,'worth',1,1,1),(5370,'held',1,1,1),(5371,'Then',6,4,1),(5372,'being',3,3,1),(5373,'ask',1,1,1),(5374,'all',4,2,1),(5375,'treasure',3,2,1),(5376,'lusty',2,2,1),(5377,'days',1,1,1),(5378,'say',1,1,1),(5379,'sunken',1,1,1),(5380,'Were',5,3,1),(5381,'an',1,1,1),(5382,'eating',1,1,1),(5383,'shame',1,1,1),(5384,'thriftless',1,1,1),(5385,'praise',2,1,1),(5386,'How',3,3,1),(5387,'much',2,2,1),(5388,'more',1,1,1),(5389,'deserved',1,1,1),(5390,'use',3,3,1),(5391,'If',4,3,1),(5392,'couldst',1,1,1),(5393,'answer',1,1,1),(5394,'fair',2,2,1),(5395,'child',2,2,1),(5396,'mine',1,1,1),(5397,'sum',2,2,1),(5398,'my',2,1,1),(5399,'count',1,1,1),(5400,'make',3,2,1),(5401,'old',2,1,1),(5402,'excuse',1,1,1),(5403,',\'',1,1,0),(5404,'Proving',1,1,1),(5405,'succession',1,1,1),(5406,'!',1,1,0),(5407,'new',1,1,1),(5408,'made',1,1,1),(5409,'see',1,1,1),(5410,'blood',1,1,1),(5411,'warm',1,1,1),(5412,'feel',1,1,1),(5413,'it',5,3,1),(5414,'cold',1,1,1),(5415,'Unthrifty',1,1,1),(5416,'loveliness',1,1,1),(5417,'why',5,2,1),(5418,'dost',4,1,1),(5419,'spend',1,1,1),(5420,'Upon',1,1,1),(5421,'thyself',5,2,1),(5422,'legacy',1,1,1),(5423,'?',7,3,0),(5424,'Nature',2,1,1),(5425,'bequest',1,1,1),(5426,'gives',1,1,1),(5427,'nothing',1,1,1),(5428,'doth',3,2,1),(5429,'lend',1,1,1),(5430,'frank',1,1,1),(5431,'she',1,1,1),(5432,'lends',1,1,1),(5433,'those',3,3,1),(5434,'are',1,1,1),(5435,'free',1,1,1),(5436,'beauteous',1,1,1),(5437,'niggard',1,1,1),(5438,'abuse',1,1,1),(5439,'bounteous',1,1,1),(5440,'largess',1,1,1),(5441,'given',1,1,1),(5442,'give',1,1,1),(5443,'Profitless',1,1,1),(5444,'usurer',1,1,1),(5445,'great',1,1,1),(5446,'sums',1,1,1),(5447,'yet',1,1,1),(5448,'canst',2,1,1),(5449,'not',7,4,1),(5450,'live',1,1,1),(5451,'For',5,3,1),(5452,'having',1,1,1),(5453,'traffic',1,1,1),(5454,'alone',1,1,1),(5455,'deceive',1,1,1),(5456,'calls',1,1,1),(5457,'gone',2,2,1),(5458,'What',3,3,1),(5459,'acceptable',1,1,1),(5460,'audit',1,1,1),(5461,'leave',1,1,1),(5462,'unused',1,1,1),(5463,'must',1,1,1),(5464,'tomb',1,1,1),(5465,'Which',4,4,1),(5466,'used',1,1,1),(5467,'lives',2,2,1),(5468,'th',1,1,1),(5469,'executor',1,1,1),(5470,'hours',1,1,1),(5471,'gentle',1,1,1),(5472,'work',1,1,1),(5473,'did',1,1,1),(5474,'frame',1,1,1),(5475,'lovely',1,1,1),(5476,'gaze',1,1,1),(5477,'every',2,1,1),(5478,'eye',1,1,1),(5479,'dwell',1,1,1),(5480,'play',1,1,1),(5481,'tyrants',1,1,1),(5482,'very',1,1,1),(5483,'same',1,1,1),(5484,'unfair',1,1,1),(5485,'fairly',1,1,1),(5486,'excel',1,1,1),(5487,'resting',1,1,1),(5488,'leads',1,1,1),(5489,'summer',3,2,1),(5490,'hideous',1,1,1),(5491,'winter',3,2,1),(5492,'confounds',2,2,1),(5493,'him',1,1,1),(5494,'there',1,1,1),(5495,';',5,2,0),(5496,'Sap',1,1,1),(5497,'cheque',1,1,1),(5498,'frost',1,1,1),(5499,'leaves',1,1,1),(5500,'quite',1,1,1),(5501,'o',1,1,1),(5502,'ersnow',1,1,1),(5503,'bareness',1,1,1),(5504,'distillation',1,1,1),(5505,'left',1,1,1),(5506,'liquid',1,1,1),(5507,'prisoner',1,1,1),(5508,'pent',1,1,1),(5509,'walls',1,1,1),(5510,'glass',1,1,1),(5511,'effect',1,1,1),(5512,'bereft',1,1,1),(5513,'Nor',2,1,1),(5514,'no',1,1,1),(5515,'remembrance',1,1,1),(5516,'was',1,1,1),(5517,'flowers',1,1,1),(5518,'distill',2,2,1),(5519,'though',1,1,1),(5520,'they',2,2,1),(5521,'meet',1,1,1),(5522,'Leese',1,1,1),(5523,'their',2,1,1),(5524,'show',1,1,1),(5525,'substance',1,1,1),(5526,'still',1,1,1),(5527,'Music',2,1,1),(5528,'hear',2,1,1),(5529,'sadly',1,1,1),(5530,'Sweets',2,1,1),(5531,'war',1,1,1),(5532,'joy',2,1,1),(5533,'delights',1,1,1),(5534,'lovest',1,1,1),(5535,'receivest',2,1,1),(5536,'gladly',1,1,1),(5537,'pleasure',1,1,1),(5538,'annoy',1,1,1),(5539,'true',1,1,1),(5540,'concord',1,1,1),(5541,'well',1,1,1),(5542,'tuned',1,1,1),(5543,'sounds',1,1,1),(5544,'unions',1,1,1),(5545,'married',1,1,1),(5546,'do',4,2,1),(5547,'offend',1,1,1),(5548,'ear',1,1,1),(5549,'sweetly',1,1,1),(5550,'chide',1,1,1),(5551,'who',2,1,1),(5552,'singleness',1,1,1),(5553,'parts',1,1,1),(5554,'shouldst',2,2,1),(5555,'Mark',1,1,1),(5556,'one',5,2,1),(5557,'string',1,1,1),(5558,'husband',1,1,1),(5559,'another',2,2,1),(5560,'Strikes',1,1,1),(5561,'each',2,1,1),(5562,'mutual',1,1,1),(5563,'ordering',1,1,1),(5564,'Resembling',1,1,1),(5565,'sire',1,1,1),(5566,'happy',1,1,1),(5567,'mother',1,1,1),(5568,'pleasing',1,1,1),(5569,'note',1,1,1),(5570,'sing',1,1,1),(5571,'Whose',1,1,1),(5572,'speechless',1,1,1),(5573,'song',1,1,1),(5574,'many',1,1,1),(5575,'seeming',1,1,1),(5576,'Sings',1,1,1),(5577,': \'',1,1,0),(5578,'single',1,1,1),(5579,'wilt',1,1,1),(5580,'prove',1,1,1),(5581,'none',1,1,1),(5582,'.\'',1,1,0),(5583,'let',1,1,1),(5584,'ragged',1,1,1),(5585,'hand',1,1,1),(5586,'deface',1,1,1),(5587,'ere',2,1,1),(5588,'some',2,1,1),(5589,'vial',1,1,1),(5590,'place',1,1,1),(5591,'kill',1,1,1),(5592,'is',1,1,1),(5593,'forbidden',1,1,1),(5594,'usury',1,1,1),(5595,'happies',1,1,1),(5596,'pay',1,1,1),(5597,'willing',1,1,1),(5598,'loan',1,1,1),(5599,'breed',1,1,1),(5600,'ten',5,1,1),(5601,'times',3,1,1),(5602,'happier',2,1,1),(5603,'than',1,1,1),(5604,'refigured',1,1,1),(5605,'could',1,1,1),(5606,'death',2,1,1),(5607,'depart',1,1,1),(5608,'Leaving',1,1,1),(5609,'living',1,1,1),(5610,'posterity',1,1,1),(5611,'conquest',1,1,1),(5612,'worms',1,1,1);
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
INSERT INTO `words_in_sonnets` VALUES (5260,15,1,1,1,1),(5261,15,2,1,2,1),(5262,15,3,1,3,1),(5263,15,4,1,4,1),(5264,15,5,1,5,1),(5265,15,6,1,6,1),(5266,15,7,1,6,1),(5267,15,8,2,1,1),(5268,15,9,2,2,1),(5269,15,10,2,3,1),(5270,15,11,2,3,1),(5271,15,12,2,4,1),(5272,15,13,2,5,1),(5273,15,14,2,6,1),(5274,15,15,2,7,1),(5275,15,16,2,8,1),(5266,15,17,2,8,1),(5276,15,18,3,1,1),(5277,15,19,3,2,1),(5278,15,20,3,3,1),(5279,15,21,3,4,1),(5280,15,22,3,5,1),(5281,15,23,3,6,1),(5282,15,24,3,7,1),(5283,15,25,3,8,1),(5266,15,26,3,8,1),(5284,15,27,4,1,1),(5285,15,28,4,2,1),(5286,15,29,4,3,1),(5273,15,30,4,4,1),(5287,15,31,4,5,1),(5284,15,32,4,6,1),(5288,15,33,4,7,1),(5289,15,34,4,7,1),(5276,15,35,5,1,2),(5290,15,36,5,2,2),(5291,15,37,5,3,2),(5292,15,38,5,4,2),(5293,15,39,5,5,2),(5294,15,40,5,6,2),(5295,15,41,5,7,2),(5296,15,42,5,8,2),(5266,15,43,5,8,2),(5297,15,44,6,1,2),(5270,15,45,6,1,2),(5298,15,46,6,2,2),(5299,15,47,6,3,2),(5300,15,48,6,4,2),(5270,15,49,6,4,2),(5271,15,50,6,5,2),(5301,15,51,6,6,2),(5302,15,52,6,7,2),(5303,15,53,6,8,2),(5304,15,54,6,8,2),(5305,15,55,6,9,2),(5306,15,56,6,10,2),(5266,15,57,6,10,2),(5307,15,58,7,1,2),(5308,15,59,7,2,2),(5309,15,60,7,3,2),(5310,15,61,7,4,2),(5311,15,62,7,5,2),(5312,15,63,7,6,2),(5266,15,64,7,6,2),(5299,15,65,8,1,2),(5303,15,66,8,2,2),(5299,15,67,8,3,2),(5313,15,68,8,4,2),(5266,15,69,8,4,2),(5292,15,70,8,5,2),(5299,15,71,8,6,2),(5314,15,72,8,7,2),(5303,15,73,8,8,2),(5315,15,74,8,9,2),(5316,15,75,8,10,2),(5289,15,76,8,10,2),(5290,15,77,9,1,3),(5267,15,78,9,2,3),(5317,15,79,9,3,3),(5318,15,80,9,4,3),(5278,15,81,9,5,3),(5319,15,82,9,6,3),(5270,15,83,9,6,3),(5271,15,84,9,7,3),(5320,15,85,9,8,3),(5321,15,86,9,9,3),(5266,15,87,9,9,3),(5322,15,88,10,1,3),(5323,15,89,10,2,3),(5324,15,90,10,3,3),(5292,15,91,10,4,3),(5278,15,92,10,5,3),(5325,15,93,10,6,3),(5326,15,94,10,7,3),(5266,15,95,10,7,3),(5327,15,96,11,1,3),(5293,15,97,11,2,3),(5294,15,98,11,3,3),(5328,15,99,11,4,3),(5329,15,100,11,5,3),(5299,15,101,11,6,3),(5330,15,102,11,7,3),(5266,15,103,11,7,3),(5322,15,104,12,1,3),(5285,15,105,12,2,3),(5331,15,106,12,3,3),(5332,15,107,12,4,3),(5270,15,108,12,4,3),(5298,15,109,12,5,3),(5333,15,110,12,6,3),(5334,15,111,12,7,3),(5335,15,112,12,8,3),(5289,15,113,12,8,3),(5336,15,114,13,1,4),(5278,15,115,13,2,4),(5319,15,116,13,3,4),(5266,15,117,13,3,4),(5337,15,118,13,4,4),(5338,15,119,13,5,4),(5339,15,120,13,6,4),(5340,15,121,13,7,4),(5341,15,122,13,8,4),(5266,15,123,13,8,4),(5292,15,124,14,1,4),(5342,15,125,14,2,4),(5278,15,126,14,3,4),(5319,15,127,14,4,4),(5270,15,128,14,4,4),(5271,15,129,14,5,4),(5343,15,130,14,6,4),(5266,15,131,14,6,4),(5281,15,132,14,7,4),(5278,15,133,14,8,4),(5344,15,134,14,9,4),(5322,15,135,14,10,4),(5345,15,136,14,11,4),(5346,15,137,14,11,4),(5347,16,1,1,1,1),(5348,16,2,1,2,1),(5349,16,3,1,3,1),(5350,16,4,1,4,1),(5351,16,5,1,5,1),(5299,16,6,1,6,1),(5352,16,7,1,7,1),(5266,16,8,1,7,1),(5322,16,9,2,1,1),(5353,16,10,2,2,1),(5354,16,11,2,3,1),(5355,16,12,2,4,1),(5334,16,13,2,5,1),(5299,16,14,2,6,1),(5269,16,15,2,7,1),(5270,16,16,2,7,1),(5271,16,17,2,8,1),(5356,16,18,2,9,1),(5266,16,19,2,9,1),(5299,16,20,3,1,1),(5357,16,21,3,2,1),(5270,16,22,3,2,1),(5271,16,23,3,3,1),(5358,16,24,3,4,1),(5359,16,25,3,5,1),(5266,16,26,3,5,1),(5360,16,27,3,6,1),(5361,16,28,3,7,1),(5362,16,29,3,8,1),(5318,16,30,3,9,1),(5266,16,31,3,9,1),(5363,16,32,4,1,1),(5341,16,33,4,2,1),(5308,16,34,4,3,1),(5364,16,35,4,4,1),(5270,16,36,4,4,1),(5365,16,37,4,5,1),(5366,16,38,4,6,1),(5266,16,39,4,6,1),(5367,16,40,4,7,1),(5368,16,41,4,8,1),(5369,16,42,4,9,1),(5370,16,43,4,10,1),(5289,16,44,4,10,1),(5371,16,45,5,1,2),(5372,16,46,5,2,2),(5373,16,47,5,3,2),(5270,16,48,5,3,2),(5365,16,49,5,4,2),(5310,16,50,5,5,2),(5374,16,51,5,6,2),(5299,16,52,5,7,2),(5269,16,53,5,8,2),(5312,16,54,5,9,2),(5266,16,55,5,9,2),(5310,16,56,6,1,2),(5374,16,57,6,2,2),(5278,16,58,6,3,2),(5375,16,59,6,4,2),(5367,16,60,6,5,2),(5299,16,61,6,6,2),(5376,16,62,6,7,2),(5377,16,63,6,8,2),(5266,16,64,6,8,2),(5292,16,65,7,1,2),(5378,16,66,7,2,2),(5266,16,67,7,2,2),(5327,16,68,7,3,2),(5293,16,69,7,4,2),(5294,16,70,7,5,2),(5354,16,71,7,6,2),(5304,16,72,7,6,2),(5379,16,73,7,7,2),(5296,16,74,7,8,2),(5266,16,75,7,8,2),(5380,16,76,8,1,2),(5381,16,77,8,2,2),(5374,16,78,8,3,2),(5304,16,79,8,3,2),(5382,16,80,8,4,2),(5383,16,81,8,5,2),(5322,16,82,8,6,2),(5384,16,83,8,7,2),(5385,16,84,8,8,2),(5346,16,85,8,8,2),(5386,16,86,9,1,3),(5387,16,87,9,2,3),(5388,16,88,9,3,3),(5385,16,89,9,4,3),(5389,16,90,9,5,3),(5299,16,91,9,6,3),(5269,16,92,9,7,3),(5270,16,93,9,7,3),(5271,16,94,9,8,3),(5390,16,95,9,9,3),(5266,16,96,9,9,3),(5391,16,97,10,1,3),(5290,16,98,10,2,3),(5392,16,99,10,3,3),(5393,16,100,10,4,3),(5270,16,101,10,4,3),(5339,16,102,10,5,3),(5394,16,103,10,6,3),(5395,16,104,10,7,3),(5367,16,105,10,8,3),(5396,16,106,10,9,3),(5350,16,107,11,1,3),(5397,16,108,11,2,3),(5398,16,109,11,3,3),(5399,16,110,11,4,3),(5322,16,111,11,5,3),(5400,16,112,11,6,3),(5398,16,113,11,7,3),(5401,16,114,11,8,3),(5402,16,115,11,9,3),(5403,16,116,11,9,3),(5404,16,117,12,1,3),(5284,16,118,12,2,3),(5269,16,119,12,3,3),(5281,16,120,12,4,3),(5405,16,121,12,5,3),(5293,16,122,12,6,3),(5406,16,123,12,6,3),(5339,16,124,13,1,4),(5380,16,125,13,2,4),(5292,16,126,13,3,4),(5341,16,127,13,4,4),(5407,16,128,13,5,4),(5408,16,129,13,6,4),(5347,16,130,13,7,4),(5290,16,131,13,8,4),(5317,16,132,13,9,4),(5401,16,133,13,10,4),(5266,16,134,13,10,4),(5322,16,135,14,1,4),(5409,16,136,14,2,4),(5299,16,137,14,3,4),(5410,16,138,14,4,4),(5411,16,139,14,5,4),(5347,16,140,14,6,4),(5290,16,141,14,7,4),(5412,16,142,14,8,4),(5270,16,143,14,8,4),(5298,16,144,14,9,4),(5413,16,145,14,10,4),(5414,16,146,14,11,4),(5346,16,147,14,11,4),(5415,17,1,1,1,1),(5416,17,2,1,2,1),(5266,17,3,1,2,1),(5417,17,4,1,3,1),(5418,17,5,1,4,1),(5290,17,6,1,5,1),(5419,17,7,1,6,1),(5420,17,8,2,1,1),(5421,17,9,2,2,1),(5299,17,10,2,3,1),(5269,17,11,2,4,1),(5270,17,12,2,4,1),(5271,17,13,2,5,1),(5422,17,14,2,6,1),(5423,17,15,2,6,1),(5424,17,16,3,1,1),(5270,17,17,3,1,1),(5271,17,18,3,2,1),(5425,17,19,3,3,1),(5426,17,20,3,4,1),(5427,17,21,3,5,1),(5276,17,22,3,6,1),(5428,17,23,3,7,1),(5429,17,24,3,8,1),(5266,17,25,3,8,1),(5322,17,26,4,1,1),(5372,17,27,4,2,1),(5430,17,28,4,3,1),(5431,17,29,4,4,1),(5432,17,30,4,5,1),(5292,17,31,4,6,1),(5433,17,32,4,7,1),(5434,17,33,4,8,1),(5435,17,34,4,9,1),(5346,17,35,4,9,1),(5371,17,36,5,1,2),(5266,17,37,5,1,2),(5436,17,38,5,2,2),(5437,17,39,5,3,2),(5266,17,40,5,3,2),(5417,17,41,5,4,2),(5418,17,42,5,5,2),(5290,17,43,5,6,2),(5438,17,44,5,7,2),(5278,17,45,6,1,2),(5439,17,46,6,2,2),(5440,17,47,6,3,2),(5441,17,48,6,4,2),(5345,17,49,6,5,2),(5292,17,50,6,6,2),(5442,17,51,6,7,2),(5423,17,52,6,7,2),(5443,17,53,7,1,2),(5444,17,54,7,2,2),(5266,17,55,7,2,2),(5417,17,56,7,3,2),(5418,17,57,7,4,2),(5290,17,58,7,5,2),(5390,17,59,7,6,2),(5360,17,60,8,1,2),(5445,17,61,8,2,2),(5308,17,62,8,3,2),(5397,17,63,8,4,2),(5367,17,64,8,5,2),(5446,17,65,8,6,2),(5266,17,66,8,6,2),(5447,17,67,8,7,2),(5448,17,68,8,8,2),(5449,17,69,8,9,2),(5450,17,70,8,10,2),(5423,17,71,8,10,2),(5451,17,72,9,1,3),(5452,17,73,9,2,3),(5453,17,74,9,3,3),(5302,17,75,9,4,3),(5421,17,76,9,5,3),(5454,17,77,9,6,3),(5266,17,78,9,6,3),(5290,17,79,10,1,3),(5367,17,80,10,2,3),(5421,17,81,10,3,3),(5299,17,82,10,4,3),(5314,17,83,10,5,3),(5303,17,84,10,6,3),(5418,17,85,10,7,3),(5455,17,86,10,8,3),(5346,17,87,10,8,3),(5371,17,88,11,1,3),(5386,17,89,11,2,3),(5266,17,90,11,2,3),(5347,17,91,11,3,3),(5424,17,92,11,4,3),(5456,17,93,11,5,3),(5345,17,94,11,6,3),(5292,17,95,11,7,3),(5341,17,96,11,8,3),(5457,17,97,11,9,3),(5266,17,98,11,9,3),(5458,17,99,12,1,3),(5459,17,100,12,2,3),(5460,17,101,12,3,3),(5448,17,102,12,4,3),(5290,17,103,12,5,3),(5461,17,104,12,6,3),(5423,17,105,12,6,3),(5299,17,106,13,1,4),(5462,17,107,13,2,4),(5269,17,108,13,3,4),(5463,17,109,13,4,4),(5341,17,110,13,5,4),(5464,17,111,13,6,4),(5270,17,112,13,6,4),(5365,17,113,13,7,4),(5302,17,114,13,8,4),(5345,17,115,13,9,4),(5266,17,116,13,9,4),(5465,17,117,14,1,4),(5266,17,118,14,1,4),(5466,17,119,14,2,4),(5266,17,120,14,2,4),(5467,17,121,14,3,4),(5468,17,122,14,4,4),(5270,17,123,14,4,4),(5469,17,124,14,5,4),(5292,17,125,14,6,4),(5341,17,126,14,7,4),(5346,17,127,14,7,4),(5433,18,1,1,1,1),(5470,18,2,1,2,1),(5266,18,3,1,2,1),(5267,18,4,1,3,1),(5302,18,5,1,4,1),(5471,18,6,1,5,1),(5472,18,7,1,6,1),(5473,18,8,1,7,1),(5474,18,9,1,8,1),(5278,18,10,2,1,1),(5475,18,11,2,2,1),(5476,18,12,2,3,1),(5310,18,13,2,4,1),(5477,18,14,2,5,1),(5478,18,15,2,6,1),(5428,18,16,2,7,1),(5479,18,17,2,8,1),(5266,18,18,2,8,1),(5363,18,19,3,1,1),(5480,18,20,3,2,1),(5278,18,21,3,3,1),(5481,18,22,3,4,1),(5292,18,23,3,5,1),(5278,18,24,3,6,1),(5482,18,25,3,7,1),(5483,18,26,3,8,1),(5322,18,27,4,1,1),(5267,18,28,4,2,1),(5484,18,29,4,3,1),(5465,18,30,4,4,1),(5485,18,31,4,5,1),(5428,18,32,4,6,1),(5486,18,33,4,7,1),(5289,18,34,4,7,1),(5451,18,35,5,1,2),(5274,18,36,5,2,2),(5304,18,37,5,2,2),(5487,18,38,5,3,2),(5282,18,39,5,4,2),(5488,18,40,5,5,2),(5489,18,41,5,6,2),(5362,18,42,5,7,2),(5292,18,43,6,1,2),(5490,18,44,6,2,2),(5491,18,45,6,3,2),(5322,18,46,6,4,2),(5492,18,47,6,5,2),(5493,18,48,6,6,2),(5494,18,49,6,7,2),(5495,18,50,6,7,2),(5496,18,51,7,1,2),(5497,18,52,7,2,2),(5270,18,53,7,2,2),(5365,18,54,7,3,2),(5302,18,55,7,4,2),(5498,18,56,7,5,2),(5322,18,57,7,6,2),(5376,18,58,7,7,2),(5499,18,59,7,8,2),(5500,18,60,7,9,2),(5457,18,61,7,10,2),(5266,18,62,7,10,2),(5269,18,63,8,1,2),(5501,18,64,8,2,2),(5270,18,65,8,2,2),(5502,18,66,8,3,2),(5270,18,67,8,3,2),(5365,18,68,8,4,2),(5322,18,69,8,5,2),(5503,18,70,8,6,2),(5477,18,71,8,7,2),(5310,18,72,8,8,2),(5289,18,73,8,8,2),(5371,18,74,9,1,3),(5266,18,75,9,1,3),(5380,18,76,9,2,3),(5449,18,77,9,3,3),(5489,18,78,9,4,3),(5270,18,79,9,4,3),(5271,18,80,9,5,3),(5504,18,81,9,6,3),(5505,18,82,9,7,3),(5266,18,83,9,7,3),(5308,18,84,10,1,3),(5506,18,85,10,2,3),(5507,18,86,10,3,3),(5508,18,87,10,4,3),(5334,18,88,10,5,3),(5509,18,89,10,6,3),(5367,18,90,10,7,3),(5510,18,91,10,8,3),(5266,18,92,10,8,3),(5269,18,93,11,1,3),(5270,18,94,11,1,3),(5271,18,95,11,2,3),(5511,18,96,11,3,3),(5302,18,97,11,4,3),(5269,18,98,11,5,3),(5380,18,99,11,6,3),(5512,18,100,11,7,3),(5266,18,101,11,7,3),(5513,18,102,12,1,3),(5413,18,103,12,2,3),(5513,18,104,12,3,3),(5514,18,105,12,4,3),(5515,18,106,12,5,3),(5458,18,107,12,6,3),(5413,18,108,12,7,3),(5516,18,109,12,8,3),(5289,18,110,12,8,3),(5276,18,111,13,1,4),(5517,18,112,13,2,4),(5518,18,113,13,3,4),(5270,18,114,13,3,4),(5365,18,115,13,4,4),(5519,18,116,13,5,4),(5520,18,117,13,6,4),(5302,18,118,13,7,4),(5491,18,119,13,8,4),(5521,18,120,13,9,4),(5266,18,121,13,9,4),(5522,18,122,14,1,4),(5276,18,123,14,2,4),(5523,18,124,14,3,4),(5524,18,125,14,4,4),(5495,18,126,14,4,4),(5523,18,127,14,5,4),(5525,18,128,14,6,4),(5526,18,129,14,7,4),(5467,18,130,14,8,4),(5314,18,131,14,9,4),(5346,18,132,14,9,4),(5527,19,1,1,1,1),(5292,19,2,1,2,1),(5528,19,3,1,3,1),(5266,19,4,1,3,1),(5417,19,5,1,4,1),(5528,19,6,1,5,1),(5270,19,7,1,5,1),(5298,19,8,1,6,1),(5290,19,9,1,7,1),(5527,19,10,1,8,1),(5529,19,11,1,9,1),(5423,19,12,1,9,1),(5530,19,13,2,1,1),(5302,19,14,2,2,1),(5530,19,15,2,3,1),(5531,19,16,2,4,1),(5449,19,17,2,5,1),(5266,19,18,2,5,1),(5532,19,19,2,6,1),(5533,19,20,2,7,1),(5334,19,21,2,8,1),(5532,19,22,2,9,1),(5346,19,23,2,9,1),(5417,19,24,3,1,1),(5534,19,25,3,2,1),(5290,19,26,3,3,1),(5267,19,27,3,4,1),(5465,19,28,3,5,1),(5290,19,29,3,6,1),(5535,19,30,3,7,1),(5449,19,31,3,8,1),(5536,19,32,3,9,1),(5266,19,33,3,9,1),(5337,19,34,4,1,1),(5338,19,35,4,2,1),(5535,19,36,4,3,1),(5302,19,37,4,4,1),(5537,19,38,4,5,1),(5293,19,39,4,6,1),(5538,19,40,4,7,1),(5423,19,41,4,7,1),(5391,19,42,5,1,2),(5278,19,43,5,2,2),(5539,19,44,5,3,2),(5540,19,45,5,4,2),(5367,19,46,5,5,2),(5541,19,47,5,6,2),(5304,19,48,5,6,2),(5542,19,49,5,7,2),(5543,19,50,5,8,2),(5266,19,51,5,8,2),(5281,19,52,6,1,2),(5544,19,53,6,2,2),(5545,19,54,6,3,2),(5266,19,55,6,3,2),(5546,19,56,6,4,2),(5547,19,57,6,5,2),(5293,19,58,6,6,2),(5548,19,59,6,7,2),(5266,19,60,6,7,2),(5520,19,61,7,1,2),(5546,19,62,7,2,2),(5276,19,63,7,3,2),(5549,19,64,7,4,2),(5550,19,65,7,5,2),(5345,19,66,7,6,2),(5266,19,67,7,6,2),(5551,19,68,7,7,2),(5492,19,69,7,8,2),(5334,19,70,8,1,2),(5552,19,71,8,2,2),(5278,19,72,8,3,2),(5553,19,73,8,4,2),(5267,19,74,8,5,2),(5290,19,75,8,6,2),(5554,19,76,8,7,2),(5287,19,77,8,8,2),(5346,19,78,8,8,2),(5555,19,79,9,1,3),(5386,19,80,9,2,3),(5556,19,81,9,3,3),(5557,19,82,9,4,3),(5266,19,83,9,4,3),(5314,19,84,9,5,3),(5558,19,85,9,6,3),(5292,19,86,9,7,3),(5559,19,87,9,8,3),(5266,19,88,9,8,3),(5560,19,89,10,1,3),(5561,19,90,10,2,3),(5334,19,91,10,3,3),(5561,19,92,10,4,3),(5281,19,93,10,5,3),(5562,19,94,10,6,3),(5563,19,95,10,7,3),(5266,19,96,10,7,3),(5564,19,97,11,1,3),(5565,19,98,11,2,3),(5322,19,99,11,3,3),(5395,19,100,11,4,3),(5322,19,101,11,5,3),(5566,19,102,11,6,3),(5567,19,103,11,7,3),(5551,19,104,12,1,3),(5374,19,105,12,2,3),(5334,19,106,12,3,3),(5556,19,107,12,4,3),(5266,19,108,12,4,3),(5556,19,109,12,5,3),(5568,19,110,12,6,3),(5569,19,111,12,7,3),(5546,19,112,12,8,3),(5570,19,113,12,9,3),(5289,19,114,12,9,3),(5571,19,115,13,1,4),(5572,19,116,13,2,4),(5573,19,117,13,3,4),(5266,19,118,13,3,4),(5372,19,119,13,4,4),(5574,19,120,13,5,4),(5266,19,121,13,5,4),(5575,19,122,13,6,4),(5556,19,123,13,7,4),(5266,19,124,13,7,4),(5576,19,125,14,1,4),(5339,19,126,14,2,4),(5292,19,127,14,3,4),(5345,19,128,14,4,4),(5577,19,129,14,4,4),(5290,19,130,14,5,4),(5578,19,131,14,6,4),(5579,19,132,14,7,4),(5580,19,133,14,8,4),(5581,19,134,14,9,4),(5582,19,135,14,9,4),(5371,20,1,1,1,1),(5583,20,2,1,2,1),(5449,20,3,1,3,1),(5491,20,4,1,4,1),(5270,20,5,1,4,1),(5271,20,6,1,5,1),(5584,20,7,1,6,1),(5585,20,8,1,7,1),(5586,20,9,1,8,1),(5334,20,10,2,1,1),(5345,20,11,2,2,1),(5299,20,12,2,3,1),(5489,20,13,2,4,1),(5266,20,14,2,4,1),(5587,20,15,2,5,1),(5290,20,16,2,6,1),(5341,20,17,2,7,1),(5518,20,18,2,8,1),(5270,20,19,2,8,1),(5365,20,20,2,9,1),(5289,20,21,2,9,1),(5400,20,22,3,1,1),(5314,20,23,3,2,1),(5588,20,24,3,3,1),(5589,20,25,3,4,1),(5495,20,26,3,4,1),(5375,20,27,3,5,1),(5290,20,28,3,6,1),(5588,20,29,3,7,1),(5590,20,30,3,8,1),(5302,20,31,4,1,1),(5269,20,32,4,2,1),(5270,20,33,4,2,1),(5271,20,34,4,3,1),(5375,20,35,4,4,1),(5266,20,36,4,4,1),(5587,20,37,4,5,1),(5413,20,38,4,6,1),(5341,20,39,4,7,1),(5303,20,40,4,8,1),(5304,20,41,4,8,1),(5591,20,42,4,9,1),(5270,20,43,4,9,1),(5365,20,44,4,10,1),(5346,20,45,4,10,1),(5267,20,46,5,1,2),(5390,20,47,5,2,2),(5592,20,48,5,3,2),(5449,20,49,5,4,2),(5593,20,50,5,5,2),(5594,20,51,5,6,2),(5266,20,52,5,6,2),(5465,20,53,6,1,2),(5595,20,54,6,2,2),(5433,20,55,6,3,2),(5267,20,56,6,4,2),(5596,20,57,6,5,2),(5278,20,58,6,6,2),(5597,20,59,6,7,2),(5598,20,60,6,8,2),(5495,20,61,6,8,2),(5267,20,62,7,1,2),(5270,20,63,7,1,2),(5271,20,64,7,2,2),(5451,20,65,7,3,2),(5421,20,66,7,4,2),(5292,20,67,7,5,2),(5599,20,68,7,6,2),(5559,20,69,7,7,2),(5345,20,70,7,8,2),(5266,20,71,7,8,2),(5337,20,72,8,1,2),(5600,20,73,8,2,2),(5601,20,74,8,3,2),(5602,20,75,8,4,2),(5266,20,76,8,4,2),(5341,20,77,8,5,2),(5413,20,78,8,6,2),(5600,20,79,8,7,2),(5451,20,80,8,8,2),(5556,20,81,8,9,2),(5495,20,82,8,9,2),(5600,20,83,9,1,3),(5601,20,84,9,2,3),(5421,20,85,9,3,3),(5380,20,86,9,4,3),(5602,20,87,9,5,3),(5603,20,88,9,6,3),(5290,20,89,9,7,3),(5317,20,90,9,8,3),(5266,20,91,9,8,3),(5391,20,92,10,1,3),(5600,20,93,10,2,3),(5367,20,94,10,3,3),(5293,20,95,10,4,3),(5600,20,96,10,5,3),(5601,20,97,10,6,3),(5604,20,98,10,7,3),(5345,20,99,10,8,3),(5289,20,100,10,8,3),(5371,20,101,11,1,3),(5458,20,102,11,2,3),(5605,20,103,11,3,3),(5606,20,104,11,4,3),(5546,20,105,11,5,3),(5266,20,106,11,5,3),(5391,20,107,11,6,3),(5290,20,108,11,7,3),(5554,20,109,11,8,3),(5607,20,110,11,9,3),(5266,20,111,11,9,3),(5608,20,112,12,1,3),(5345,20,113,12,2,3),(5609,20,114,12,3,3),(5334,20,115,12,4,3),(5610,20,116,12,5,3),(5423,20,117,12,5,3),(5341,20,118,13,1,4),(5449,20,119,13,2,4),(5303,20,120,13,3,4),(5304,20,121,13,3,4),(5363,20,122,13,4,4),(5270,20,123,13,4,4),(5365,20,124,13,5,4),(5266,20,125,13,5,4),(5451,20,126,13,6,4),(5290,20,127,13,7,4),(5317,20,128,13,8,4),(5387,20,129,13,9,4),(5315,20,130,13,10,4),(5394,20,131,13,11,4),(5292,20,132,14,1,4),(5341,20,133,14,2,4),(5606,20,134,14,3,4),(5270,20,135,14,3,4),(5271,20,136,14,4,4),(5611,20,137,14,5,4),(5322,20,138,14,6,4),(5400,20,139,14,7,4),(5612,20,140,14,8,4),(5293,20,141,14,9,4),(5286,20,142,14,10,4),(5346,20,143,14,10,4);
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_sonnet_by_params`(inSonnetId int, inAuther varchar(45), inSeqId int, inContainsText int)
BEGIN
SELECT * FROM concordancedb.sonnets
WHERE 
(IF(inSonnetId IS NULL or inSonnetId = '', -1, inSonnetId) = -1 OR sonnets.id = inSonnetId)
AND
(IF(inAuther IS NULL or inAuther = 'NA', -1, inAuther) = -1 OR sonnets.author = inAuther)
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
	DECLARE last_pos INT DEFAULT 1;
    DECLARE delim varchar(32);    
    DECLARE section_length_in_lines INT DEFAULT 0;
    DECLARE current_pos INT DEFAULT 1;
    DECLARE first_line INT DEFAULT 1;
    
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
        ROLLBACK;
        #EXIT PROCEDURE;
    END;
    
    START TRANSACTION;
    
    delete from sonnets_sections where sonnets_sections.sonnet_id = inSonnetId;
    
    SET delim = '_';
    SET last_pos = locate(delim, inRhymeScheme, current_pos);		
    
    WHILE(last_pos > 0) DO		
		SET section_length_in_lines = length(substr(inRhymeScheme, current_pos, last_pos - current_pos));
		#SELECT section_id, first_line, current_pos, last_pos, substr(inRhymeScheme, current_pos, last_pos - current_pos), section_length_in_lines; 
        insert into sonnets_sections values(inSonnetId, section_id, first_line, section_length_in_lines);
        SET section_id = section_id + 1;
        SET first_line = first_line + section_length_in_lines;
        SET current_pos = last_pos + length(delim);
        SET last_pos = locate(delim, inRhymeScheme, current_pos);		
    END WHILE;
    
    SET last_pos = length(inRhymeScheme) + 1;    
	SET section_length_in_lines = length(substr(inRhymeScheme, current_pos, last_pos - current_pos));
	#SELECT section_id, first_line, current_pos, last_pos, substr(inRhymeScheme, current_pos, last_pos - current_pos), section_length_in_lines;     
	insert into sonnets_sections values(inSonnetId, section_id, first_line, section_length_in_lines);
    
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-23 17:27:03
