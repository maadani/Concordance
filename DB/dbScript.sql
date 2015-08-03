CREATE DATABASE  IF NOT EXISTS `concordancedb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `concordancedb`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: localhost    Database: concordancedb
-- ------------------------------------------------------
-- Server version	5.6.22-log

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
-- Table structure for table `couples`
--

DROP TABLE IF EXISTS `couples`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `couples` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Comment` varchar(140) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `couples`
--

LOCK TABLES `couples` WRITE;
/*!40000 ALTER TABLE `couples` DISABLE KEYS */;
/*!40000 ALTER TABLE `couples` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'g1','g1'),(2,'g2','g2'),(3,'test',NULL),(4,'test2',NULL);
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipes`
--

DROP TABLE IF EXISTS `recipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `category_id` int(11) NOT NULL,
  `author` varchar(45) DEFAULT 'Unknown',
  `diff` int(11) NOT NULL DEFAULT '0',
  `file_name` varchar(45) DEFAULT NULL,
  `full_path` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='		';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipes`
--

LOCK TABLES `recipes` WRITE;
/*!40000 ALTER TABLE `recipes` DISABLE KEYS */;
/*!40000 ALTER TABLE `recipes` ENABLE KEYS */;
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
  `total_num_of_appearance` int(11) DEFAULT NULL,
  `num_of_recipes_appearance` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `value_UNIQUE` (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `words`
--

LOCK TABLES `words` WRITE;
/*!40000 ALTER TABLE `words` DISABLE KEYS */;
INSERT INTO `words` VALUES (1,'a',0,0),(2,'b',0,0),(3,'ccc',0,0),(4,'d',0,0);
/*!40000 ALTER TABLE `words` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `words_in_couples`
--

DROP TABLE IF EXISTS `words_in_couples`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `words_in_couples` (
  `couple_id` int(11) NOT NULL,
  `word_id1` int(11) NOT NULL,
  `word_id2` int(11) NOT NULL,
  PRIMARY KEY (`couple_id`),
  KEY `wic_word_id1_idx` (`word_id1`),
  KEY `wic_word_id2_idx` (`word_id2`),
  CONSTRAINT `wic_couple_id` FOREIGN KEY (`couple_id`) REFERENCES `couples` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `wic_word_id1` FOREIGN KEY (`word_id1`) REFERENCES `words` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `wic_word_id2` FOREIGN KEY (`word_id2`) REFERENCES `words` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `words_in_couples`
--

LOCK TABLES `words_in_couples` WRITE;
/*!40000 ALTER TABLE `words_in_couples` DISABLE KEYS */;
/*!40000 ALTER TABLE `words_in_couples` ENABLE KEYS */;
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
-- Table structure for table `words_in_recipes`
--

DROP TABLE IF EXISTS `words_in_recipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `words_in_recipes` (
  `word_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `word_index_in_recipe` int(11) NOT NULL,
  `line_index` int(11) NOT NULL,
  `word_index_in_line` int(11) NOT NULL,
  PRIMARY KEY (`recipe_id`,`word_index_in_recipe`),
  KEY `wir_word_id_idx` (`word_id`),
  CONSTRAINT `wir_recipe_id` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `wir_word_id` FOREIGN KEY (`word_id`) REFERENCES `words` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `words_in_recipes`
--

LOCK TABLES `words_in_recipes` WRITE;
/*!40000 ALTER TABLE `words_in_recipes` DISABLE KEYS */;
/*!40000 ALTER TABLE `words_in_recipes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'concordancedb'
--
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-08-03 22:40:04
