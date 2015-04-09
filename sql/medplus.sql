-- MySQL dump 10.13  Distrib 5.5.29, for Win32 (x86)
--
-- Host: localhost    Database: medplus
-- ------------------------------------------------------
-- Server version	5.5.29

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
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `object_type` varchar(255) NOT NULL,
  `title` varchar(1023) NOT NULL,
  `slug` varchar(1023) DEFAULT NULL,
  `teaser` text,
  `body` text NOT NULL,
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `featured` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `cat_id` int(11) unsigned DEFAULT NULL,
  `subcat_id` int(11) unsigned DEFAULT NULL,
  `sorting` int(11) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `object_type_cat_id` (`object_type`,`cat_id`,`subcat_id`),
  KEY `object_type_publish` (`object_type`,`published`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (51,'2014-12-19 16:12:39','Page','Static page 1','static-page-1',NULL,'<p><strong><img alt=\"\" src=\"/media/router/index/page/115/400x/image.jpg\" style=\"float:right; height:158px; width:211px\" />Static page 1</strong> - full text</p>\r\n',0,0,NULL,NULL,1),(52,'2014-12-21 07:59:05','Page','Page 2','page-2',NULL,'<p><strong>Page 2</strong> - full text</p>\r\n',0,0,NULL,NULL,1),(53,'2014-12-21 08:59:45','CategoryNews','News category 1','news-category-1',NULL,'<p><strong>News category 1</strong> full text article</p>\r\n',0,0,NULL,NULL,1),(54,'2014-12-21 09:05:12','CategoryNews','News category 2','news-category-2',NULL,'<p><strong>News category 2</strong> - full text article</p>\r\n',0,0,NULL,NULL,2),(55,'2014-12-21 09:14:33','News','Новость 1','novost-1','Новость 1 анонс','<p><strong>Новость 1</strong> - полный текст статьи</p>\r\n',1,1,54,NULL,1),(56,'2014-12-21 09:15:58','News','Новость 2','novost-2','Новость 2 анонс','<p><strong>Новость 2</strong> - полный текст статьи</p>\r\n',1,0,54,NULL,1),(57,'2014-12-21 09:22:31','News','Новость 3','novost-3','Новость 3 анонс','<p><strong>Новость 3</strong> - полный текст статьи</p>\r\n',1,0,53,NULL,1),(58,'2014-12-21 10:21:36','CategoryArticle','Article category 1','article-category-1',NULL,'<p><strong>Article category 1</strong> full text</p>\r\n',0,0,NULL,NULL,1),(59,'2014-12-21 10:25:22','CategoryArticle','Article category 2','article-category-2',NULL,'<p><strong>Article category 2</strong> full text article</p>\r\n',0,0,NULL,NULL,2),(60,'2014-12-30 05:07:34','CategoryArticle','Article category 3','article-category-3',NULL,'<p><strong>Article category 3</strong> full text article</p>\r\n',0,0,NULL,NULL,3),(61,'2014-12-30 05:31:45','SubcategoryArticle','Article category 2: Article subcategory 1','article-category-2-article-subcategory-1',NULL,'<p>Article category 2: <strong>Article subcategory 1</strong> - full text article</p>\r\n',0,0,59,NULL,1),(62,'2014-12-30 05:33:03','SubcategoryArticle','Article category 2: Article subcategory 2','article-category-2-article-subcategory-2',NULL,'<p><strong>Article category 2: Article subcategory 2</strong> - full text article</p>\r\n',0,0,59,NULL,2),(63,'2014-12-30 06:07:40','SiteArticle','Article 1 (subcat 2-2)','article-1-subcat-2-2','Article 1 (subcat 2-2) teaser','<p><strong>Article 1 (subcat 2-2)</strong> - full text article</p>\r\n',1,1,NULL,62,1),(64,'2015-02-28 14:33:01','CarType','Audi','audi',NULL,'',0,0,NULL,NULL,2),(65,'2015-03-01 15:29:23','CarType','BMW','bmw',NULL,'',0,0,NULL,NULL,1),(66,'2015-03-01 15:34:01','CarSubtype','BMW 02 Touring','bmw-02-touring',NULL,'',0,0,65,NULL,1),(67,'2015-03-01 15:34:28','CarSubtype','AUDI 100 Avant III','audi-100-avant-iii',NULL,'',0,0,64,NULL,1),(68,'2015-03-01 15:41:22','CarSubtype','AUDI 100 купе','audi-100-kupe',NULL,'',0,0,64,NULL,2),(69,'2015-03-15 13:11:53','CategoryProduct','Категория продукта 1','kategorija-produkta-1',NULL,'<p><strong>Категория продукта 1</strong> - полный текст статьи</p>\r\n',0,0,NULL,NULL,1),(70,'2015-03-15 13:13:27','CategoryProduct','Категория продукта 2','kategorija-produkta-2',NULL,'<p><strong>Категория продукта 2</strong> - полный текст статьи</p>\r\n',0,0,NULL,NULL,1),(71,'2015-03-15 13:17:18','Product','Продукт 1','produkt-1','Краткий текст для Продукт 1','<p><strong>Продукт 1</strong> - полный текст статьи</p>\r\n',1,0,70,NULL,1),(72,'2015-03-15 13:19:54','Product','Продукт 2','produkt-2','Краткий текст для Продукт 2','<p><strong>Продукт 2</strong> - полный текст статьи</p>\r\n',1,1,69,NULL,1);
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `media_type` enum('image','video','audio','bin_file') NOT NULL,
  `object_type` varchar(50) NOT NULL DEFAULT 'Article',
  `object_id` int(11) unsigned DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `ext` varchar(10) DEFAULT NULL,
  `main` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `orig_fname` varchar(255) DEFAULT NULL,
  `orig_fsize` bigint(20) unsigned DEFAULT NULL,
  `orig_w` int(11) unsigned DEFAULT NULL,
  `orig_h` int(11) unsigned DEFAULT NULL,
  `crop` varchar(1023) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_type` (`media_type`,`object_type`,`object_id`,`main`),
  KEY `object_type_id` (`object_type`,`object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (114,'2014-12-30 04:08:23','image','SiteArticle',63,'image','.jpg',1,'7DIF7iITm7Y.jpg',47332,700,700,NULL),(116,'2015-02-28 12:38:10','image','CarType',64,'image','.jpg',1,'logo_audi.jpg',7521,325,155,NULL),(117,'2015-03-01 13:30:29','image','CarType',65,'image','.jpg',1,'logo_bmw.jpg',7332,225,225,NULL),(122,'2015-03-15 11:31:17','image','Slider',1,'image','.jpg',1,'Новый фон дизайна 3.jpg',63008,600,398,NULL),(123,'2015-03-15 11:31:17','image','Slider',1,'image','.jpg',0,'Новый фон дизайна 2.jpg',133651,800,532,NULL),(124,'2015-03-15 11:31:18','image','Slider',1,'image','.jpg',0,'КАРТА.jpg',160891,1200,975,NULL);
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sections`
--

DROP TABLE IF EXISTS `sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sections` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `sorting` int(11) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sections`
--

LOCK TABLES `sections` WRITE;
/*!40000 ALTER TABLE `sections` DISABLE KEYS */;
INSERT INTO `sections` VALUES (1,'Section 1',3),(2,'Section 2',1),(3,'Section 3',2);
/*!40000 ALTER TABLE `sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seo`
--

DROP TABLE IF EXISTS `seo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seo` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `object_type` varchar(50) NOT NULL,
  `object_id` int(11) unsigned NOT NULL,
  `title` text,
  `descr` text,
  `keywords` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `FK_object_type_object_id` (`object_type`,`object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seo`
--

LOCK TABLES `seo` WRITE;
/*!40000 ALTER TABLE `seo` DISABLE KEYS */;
INSERT INTO `seo` VALUES (103,'Page',51,'seo page 1 title','seo page 1 descr','seo page 1 keys'),(104,'Page',52,'Page 2 title','Page 2 descr','Page 2 keys'),(105,'CategoryNews',53,'News category 1 title','News category 1 descr','News category 1 keys'),(106,'CategoryNews',54,'News category 2 title','News category 2 descr','News category 2 keys'),(107,'News',55,'Новость 1 title','Новость 1 descr','Новость 1 keys'),(108,'News',56,'Новость 2 title','Новость 2 descr','Новость 2 keys'),(109,'News',57,'Новость 3 title','Новость 3 descr','Новость 3 keys'),(110,'CategoryArticle',58,'Article category 1 title','Article category 1 descr','Article category 1 keys'),(111,'CategoryArticle',59,'Article category 2 title','Article category 2 descr','Article category 2 keys'),(112,'CategoryArticle',60,'SEO Article category 3 title','SEO Article category 3 descr','SEO Article category 3 keys'),(113,'SubcategoryArticle',61,'SEO Article category 2: Article subcategory 1 title','SEO Article category 2: Article subcategory 1 descr','SEO Article category 2: Article subcategory 1 keys'),(114,'SubcategoryArticle',62,'SEO Article category 2: Article subcategory 2 title','SEO Article category 2: Article subcategory 2 descr','SEO Article category 2: Article subcategory 2 keys'),(115,'SiteArticle',63,'SEO Article 1 (subcat 2-2) title','SEO Article 1 (subcat 2-2) descr','SEO Article 1 (subcat 2-2) keys'),(116,'CarType',64,'','',''),(117,'CarType',65,'','',''),(118,'CarSubtype',66,'','',''),(119,'CarSubtype',67,'','',''),(120,'CarSubtype',68,'','',''),(121,'CategoryProduct',69,'SEO Категория продукта 1 title','SEO Категория продукта 1 descr','SEO Категория продукта 1 keys'),(122,'CategoryProduct',70,'SEO Категория продукта 2 title','SEO Категория продукта 2  descr','SEO Категория продукта 2 keys'),(123,'Product',71,'SEO Продукт 1 title','SEO Продукт 1 descr','SEO Продукт 1 keys'),(124,'Product',72,'SEO Продукт 2 title','SEO Продукт 2 descr','SEO Продукт 2 keys');
/*!40000 ALTER TABLE `seo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `admin_email` varchar(255) DEFAULT NULL,
  `office_address` varchar(255) DEFAULT NULL,
  `phone1` varchar(20) DEFAULT NULL,
  `phone2` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'fyr@tut.by','г. Минск, пр. Независимости, 1','8 (029) 777-66-55','8 (029) 777-44-33');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `user_group_id` int(11) unsigned NOT NULL DEFAULT '1',
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `email` varchar(50) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `catalog_id` int(11) unsigned NOT NULL,
  `paid` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,NULL,NULL,1,'admin','832f337530307bda8c50adcb7dad2a8397a20816',1,'',NULL,NULL,NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-09 13:07:13
