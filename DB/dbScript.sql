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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'g1','g1'),(2,'g2','g2'),(3,'test',NULL),(4,'test2',NULL),(5,'test3',NULL),(6,'test3',NULL),(7,'test4',NULL),(8,'test5',NULL),(9,'e1',NULL);
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

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
  `rhyme_scheme` varchar(20) NOT NULL,
  `author` varchar(45) DEFAULT 'Unknown',
  `sequence_id` int(11) NOT NULL DEFAULT '0',
  `file_name` varchar(45) DEFAULT NULL,
  `full_path` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_sequence_id_idx` (`sequence_id`),
  CONSTRAINT `fk_sequence_id` FOREIGN KEY (`sequence_id`) REFERENCES `sonnets_sequences` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='		';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sonnets`
--

LOCK TABLES `sonnets` WRITE;
/*!40000 ALTER TABLE `sonnets` DISABLE KEYS */;
INSERT INTO `sonnets` VALUES (1,'0','abab_cdcd_efef_gg','aaa',0,NULL,NULL),(2,'0','abab_cdcd_efef_gg','bbb',0,NULL,NULL),(5,'test_sonnet','abab_cdcd_efef_gg','Erez',1,'ShakespeareSonnet2.txt','G:\\OpenU\\Projects\\sonets\\txt_files\\ShakespeareSonnet2.txt'),(7,'2','abab_cdcd_efef_gg','William Shakespeare',3,'ShakespeareSonnet2.txt','G:\\\\OpenU\\\\Projects\\\\sonets\\\\txt_files\\\\ShakespeareSonnet2.txt');
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
  UNIQUE KEY `value_UNIQUE` (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=4084 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `words`
--

LOCK TABLES `words` WRITE;
/*!40000 ALTER TABLE `words` DISABLE KEYS */;
INSERT INTO `words` VALUES (1,'a',1,1,0),(2,'b',0,0,0),(3,'ccc',0,0,0),(4,'d',2,1,0),(5,'ababab',0,0,0),(6,'ababab441',0,0,0),(8,'jsjsjs',0,0,0),(17,'jsjsjs2',0,0,0),(18,'1',0,0,0),(19,'addWordTest1',0,0,0),(3991,'When',3,1,1),(3992,'forty',1,1,1),(3993,'winters',1,1,1),(3994,'shall',2,1,1),(3995,'beseige',1,1,1),(3996,'thy',7,1,1),(3997,'brow',1,1,1),(3998,',',11,1,0),(3999,'And',4,1,1),(4000,'dig',1,1,1),(4001,'deep',2,1,1),(4002,'trenches',1,1,1),(4003,'in',1,1,1),(4004,'beauty',4,1,1),(4005,'\\\'',7,1,0),(4006,'s',3,1,1),(4007,'field',1,1,1),(4008,'youth',1,1,1),(4009,'proud',1,1,1),(4010,'livery',1,1,1),(4011,'so',1,1,1),(4012,'gazed',1,1,1),(4013,'on',1,1,1),(4014,'now',1,1,1),(4015,'Will',1,1,1),(4016,'be',2,1,1),(4017,'tatter',1,1,1),(4018,'weed',1,1,1),(4019,'of',3,1,1),(4020,'small',1,1,1),(4021,'worth',1,1,1),(4022,'held',1,1,1),(4023,':',1,1,0),(4024,'Then',1,1,1),(4025,'being',1,1,1),(4026,'ask',1,1,1),(4027,'where',2,1,1),(4028,'all',3,1,1),(4029,'lies',1,1,1),(4030,'the',1,1,1),(4031,'treasure',1,1,1),(4032,'lusty',1,1,1),(4033,'days',1,1,1),(4034,'To',2,1,1),(4035,'say',1,1,1),(4036,'within',1,1,1),(4037,'thine',2,1,1),(4038,'own',1,1,1),(4039,'-',2,1,0),(4040,'sunken',1,1,1),(4041,'eyes',1,1,1),(4042,'Were',2,1,1),(4043,'an',1,1,1),(4044,'eating',1,1,1),(4045,'shame',1,1,1),(4046,'thriftless',1,1,1),(4047,'praise',2,1,1),(4048,'.',2,1,0),(4049,'How',1,1,1),(4050,'much',1,1,1),(4051,'more',1,1,1),(4052,'deserved',1,1,1),(4053,'use',1,1,1),(4054,'If',1,1,1),(4055,'thou',3,1,1),(4056,'couldst',1,1,1),(4057,'answer',1,1,1),(4058,'This',2,1,1),(4059,'fair',1,1,1),(4060,'child',1,1,1),(4061,'mine',1,1,1),(4062,'sum',1,1,1),(4063,'my',2,1,1),(4064,'count',1,1,1),(4065,'make',1,1,1),(4066,'old',2,1,1),(4067,'excuse',1,1,1),(4068,',\\\'',1,1,0),(4069,'Proving',1,1,1),(4070,'his',1,1,1),(4071,'by',1,1,1),(4072,'succession',1,1,1),(4073,'!',1,1,0),(4074,'new',1,1,1),(4075,'made',1,1,1),(4076,'art',1,1,1),(4077,'see',1,1,1),(4078,'blood',1,1,1),(4079,'warm',1,1,1),(4080,'feel',1,1,1),(4081,'st',1,1,1),(4082,'it',1,1,1),(4083,'cold',1,1,1);
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
INSERT INTO `words_in_groups` VALUES (1,1),(2,1),(1,2);
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
  PRIMARY KEY (`sonnet_id`,`word_index_in_sonnet`),
  KEY `wir_word_id_idx` (`word_id`),
  CONSTRAINT `fk_sonnet_id` FOREIGN KEY (`sonnet_id`) REFERENCES `sonnets` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_word_id` FOREIGN KEY (`word_id`) REFERENCES `words` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `words_in_sonnets`
--

LOCK TABLES `words_in_sonnets` WRITE;
/*!40000 ALTER TABLE `words_in_sonnets` DISABLE KEYS */;
INSERT INTO `words_in_sonnets` VALUES (3991,7,1,1,1),(3992,7,2,1,2),(3993,7,3,1,3),(3994,7,4,1,4),(3995,7,5,1,5),(3996,7,6,1,6),(3997,7,7,1,7),(3998,7,8,1,8),(3999,7,9,2,1),(4000,7,10,2,2),(4001,7,11,2,3),(4002,7,12,2,4),(4003,7,13,2,5),(3996,7,14,2,6),(4004,7,15,2,7),(4005,7,16,2,8),(4006,7,17,2,9),(4007,7,18,2,10),(3998,7,19,2,11),(3996,7,20,3,1),(4008,7,21,3,2),(4005,7,22,3,3),(4006,7,23,3,4),(4009,7,24,3,5),(4010,7,25,3,6),(3998,7,26,3,7),(4011,7,27,3,8),(4012,7,28,3,9),(4013,7,29,3,10),(4014,7,30,3,11),(3998,7,31,3,12),(4015,7,32,4,1),(4016,7,33,4,2),(1,7,34,4,3),(4017,7,35,4,4),(4005,7,36,4,5),(4,7,37,4,6),(4018,7,38,4,7),(3998,7,39,4,8),(4019,7,40,4,9),(4020,7,41,4,10),(4021,7,42,4,11),(4022,7,43,4,12),(4023,7,44,4,13),(4024,7,45,5,1),(4025,7,46,5,2),(4026,7,47,5,3),(4005,7,48,5,4),(4,7,49,5,5),(4027,7,50,5,6),(4028,7,51,5,7),(3996,7,52,5,8),(4004,7,53,5,9),(4029,7,54,5,10),(3998,7,55,5,11),(4027,7,56,6,1),(4028,7,57,6,2),(4030,7,58,6,3),(4031,7,59,6,4),(4019,7,60,6,5),(3996,7,61,6,6),(4032,7,62,6,7),(4033,7,63,6,8),(3998,7,64,6,9),(4034,7,65,7,1),(4035,7,66,7,2),(3998,7,67,7,3),(4036,7,68,7,4),(4037,7,69,7,5),(4038,7,70,7,6),(4001,7,71,7,7),(4039,7,72,7,8),(4040,7,73,7,9),(4041,7,74,7,10),(3998,7,75,7,11),(4042,7,76,8,1),(4043,7,77,8,2),(4028,7,78,8,3),(4039,7,79,8,4),(4044,7,80,8,5),(4045,7,81,8,6),(3999,7,82,8,7),(4046,7,83,8,8),(4047,7,84,8,9),(4048,7,85,8,10),(4049,7,86,9,1),(4050,7,87,9,2),(4051,7,88,9,3),(4047,7,89,9,4),(4052,7,90,9,5),(3996,7,91,9,6),(4004,7,92,9,7),(4005,7,93,9,8),(4006,7,94,9,9),(4053,7,95,9,10),(3998,7,96,9,11),(4054,7,97,10,1),(4055,7,98,10,2),(4056,7,99,10,3),(4057,7,100,10,4),(4005,7,101,10,5),(4058,7,102,10,6),(4059,7,103,10,7),(4060,7,104,10,8),(4019,7,105,10,9),(4061,7,106,10,10),(3994,7,107,11,1),(4062,7,108,11,2),(4063,7,109,11,3),(4064,7,110,11,4),(3999,7,111,11,5),(4065,7,112,11,6),(4063,7,113,11,7),(4066,7,114,11,8),(4067,7,115,11,9),(4068,7,116,11,10),(4069,7,117,12,1),(4070,7,118,12,2),(4004,7,119,12,3),(4071,7,120,12,4),(4072,7,121,12,5),(4037,7,122,12,6),(4073,7,123,12,7),(4058,7,124,13,1),(4042,7,125,13,2),(4034,7,126,13,3),(4016,7,127,13,4),(4074,7,128,13,5),(4075,7,129,13,6),(3991,7,130,13,7),(4055,7,131,13,8),(4076,7,132,13,9),(4066,7,133,13,10),(3998,7,134,13,11),(3999,7,135,14,1),(4077,7,136,14,2),(3996,7,137,14,3),(4078,7,138,14,4),(4079,7,139,14,5),(3991,7,140,14,6),(4055,7,141,14,7),(4080,7,142,14,8),(4005,7,143,14,9),(4081,7,144,14,10),(4082,7,145,14,11),(4083,7,146,14,12),(4048,7,147,14,13);
/*!40000 ALTER TABLE `words_in_sonnets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'concordancedb'
--
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_locations_for_word`(word_id int)
BEGIN
select 'Ginger' as 'word', 'Adrak' as 'recipe_name', '10' as 'line_index', 'Ingredients' as 'section'
union
select 'Ginger' as 'word', 'Adrak' as 'recipe_name', '18' as 'line_index', 'Instructions' as 'section'
union
select 'Ginger' as 'word', 'Adrak' as 'recipe_name', '20' as 'line_index', 'Instructions' as 'section';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_recipe_names` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_recipe_names`()
BEGIN
	select 0, 'All' 
    union
    select recipes.id, recipes.name from recipes;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_recipe_words_by_recipe_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_recipe_words_by_recipe_id`(inRecipeId int)
BEGIN
	select * from words;
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_sonnet_by_params`(inName varchar(45), inAuther varchar(45), inCategoryId int, inContainsText varchar(200))
BEGIN
SELECT * FROM concordancedb.sonnets;
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_words_by_location`(inRecipeId int, inLineIndex int, inWordInLineIndex int, inSectionId int)
BEGIN
	select 1 as 'word_id', 'a' as 'word';
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
	if(inGroupId = -1) then -- The -1 is for words without any group
		select 55 as 'id', 'WordWithNoGroup' as 'value';
    else
		select words.id, words.value from words;
	end if;
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
	select words.id as 'id', words.value as 'value'
    from words;
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_add_word`(in inWord varchar(50), in inSonetId int, in inWordIndexInFile int, in inLineIndex int, in inWordInLineIndex int, in inIsReal tinyint)
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-05 23:24:41
