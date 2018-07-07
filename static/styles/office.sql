-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: OFFICE
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu0.16.04.1

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
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (1);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ploffice_address`
--

DROP TABLE IF EXISTS `ploffice_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ploffice_address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `kod_pocztowy` varchar(255) DEFAULT NULL,
  `kraj` varchar(255) DEFAULT NULL,
  `miasto` varchar(255) DEFAULT NULL,
  `nr_domu` varchar(255) DEFAULT NULL,
  `nr_ulicy` varchar(255) DEFAULT NULL,
  `ulica` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ploffice_address`
--

LOCK TABLES `ploffice_address` WRITE;
/*!40000 ALTER TABLE `ploffice_address` DISABLE KEYS */;
INSERT INTO `ploffice_address` VALUES (1,'95-200','Polska','Pabianice','32','14','Podlesna'),(2,'95-200','Polska','Pabianice','32','14','Podle?na'),(3,'95-200','Polska','Pabianice','32','14','Podle?na'),(4,'95-200','Polska','Pabianice','32','14','Podle?na'),(5,'95-200','Polska','Pabianice','32','14','Podle?na'),(6,'95-200','Polska','Pabianice','32','14','Podle?na'),(7,'95-200','Polska','Pabianice','32','14','Podle?na'),(8,'95-200','Polska','Pabianice','32','14','Podle?na'),(10,'95-200','Polska','Pabianice','32','14','Podle?na'),(11,'95-200','Polska','Pabianice','32','14','Podle?na'),(12,'95-200','Polska','Pabianice','32','14','Podle?na');
/*!40000 ALTER TABLE `ploffice_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ploffice_planzajec`
--

DROP TABLE IF EXISTS `ploffice_planzajec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ploffice_planzajec` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `_description` varchar(255) DEFAULT NULL,
  `_event` varchar(255) DEFAULT NULL,
  `_event_cat` varchar(255) DEFAULT NULL,
  `_global` varchar(255) DEFAULT NULL,
  `_group` varchar(255) DEFAULT NULL,
  `_protected` varchar(255) DEFAULT NULL,
  `_module` varchar(255) DEFAULT NULL,
  `_room` varchar(255) DEFAULT NULL,
  `_staff_forenames` varchar(255) DEFAULT NULL,
  `_staff_surname` varchar(255) DEFAULT NULL,
  `_student` varchar(255) DEFAULT NULL,
  `_weighting` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ploffice_planzajec`
--

LOCK TABLES `ploffice_planzajec` WRITE;
/*!40000 ALTER TABLE `ploffice_planzajec` DISABLE KEYS */;
INSERT INTO `ploffice_planzajec` VALUES (1,'nie ma','Pn 11:14-12:00 1','1','1','6D10','1','Projekt kompetencyjny','E3','','Mantaj S.','','1'),(2,'Komunikacja cz?owiek-komputer','Pn 12:15-13:00 ','1','1','6D10','1','KCK','CTI s.406','','Chalczynski M.','N','1');
/*!40000 ALTER TABLE `ploffice_planzajec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ploffice_user`
--

DROP TABLE IF EXISTS `ploffice_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ploffice_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `address_id` bigint(20) DEFAULT NULL,
  `user_details_id` bigint(20) DEFAULT NULL,
  `user_type_detail_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK12woixiau3yiop7ygjywndn4b` (`address_id`),
  KEY `FKopawfwq1wufjd5b6wengdlpe0` (`user_details_id`),
  KEY `FKhoka32pjefksnmq37bjetdoqa` (`user_type_detail_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ploffice_user`
--

LOCK TABLES `ploffice_user` WRITE;
/*!40000 ALTER TABLE `ploffice_user` DISABLE KEYS */;
INSERT INTO `ploffice_user` VALUES (1,'mantajszymon@gmail.com','$2a$10$ee3PeOJjWKSB8xb5lvpwbe2AAV1IgAQSA66b24CQYbe1nmmZ1vsJq','ADMIN','1','smantaj',1,1,1),(10,'naklejka@gmail.com','$2a$10$NcDEZRv2MEm/YGuvTphiIu3nosO6vuqV4mq3M8uFvNOlZM7oCvx.m','USER','1','szymon',10,10,6),(11,'user@gmail.com','$2a$10$.grQbfj39okiNA7hXw7/Eu4wupagRfyIPzIzUFp2aN8jvst4NswQW','USER','1','marian',11,11,7),(12,'mantajszymo2222n@gmail.com','$2a$10$oIAUkgxLJfmrXqjUOyVow.AxXc5.Y92f5njhZSZud5ouw1AFK3Mr.','USER','1','szymonm',12,12,8);
/*!40000 ALTER TABLE `ploffice_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ploffice_user_details`
--

DROP TABLE IF EXISTS `ploffice_user_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ploffice_user_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pesel` bigint(20) DEFAULT NULL,
  `imie` varchar(255) DEFAULT NULL,
  `nazwisko` varchar(255) DEFAULT NULL,
  `nr_tel_prywatny` bigint(20) DEFAULT NULL,
  `nr_tel_sluzbowy` bigint(20) DEFAULT NULL,
  `plec` varchar(255) DEFAULT NULL,
  `typ` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ploffice_user_details`
--

LOCK TABLES `ploffice_user_details` WRITE;
/*!40000 ALTER TABLE `ploffice_user_details` DISABLE KEYS */;
INSERT INTO `ploffice_user_details` VALUES (1,95062006495,'szymon','mantaj',503356204,503356204,'M','student'),(2,95062006495,'Szymon','Mantaj',12312332,32132112,'M','student'),(3,95062006495,'Szymon','Mantaj',12312332,32132112,'M','student'),(4,95062006495,'Szymon','Mantaj',12312332,32132112,'M','student'),(5,95062006495,'Szymon','Mantaj',12312332,32132112,'M','student'),(6,95062006495,'Szymon','Mantaj',12312332,32132112,'M','student'),(7,95062006495,'Szymon','Mantaj',12312332,32132112,'M','student'),(8,95062006495,'Szymon','Mantaj',12312332,32132112,'M','student'),(10,95062006495,'Szymon','Mantaj',12312332,32132112,'M','student'),(11,68053103897,'Marian','Marian',12312332,32132112,'M','student'),(12,95062006495,'Szymon','Mantaj',12312332,32132112,'M','nauczyciel');
/*!40000 ALTER TABLE `ploffice_user_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ploffice_user_plan_zajec`
--

DROP TABLE IF EXISTS `ploffice_user_plan_zajec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ploffice_user_plan_zajec` (
  `ploffice_user_id` bigint(20) NOT NULL,
  `plan_zajec_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_jgxwbfc9uu4rcfoajy5js8ult` (`plan_zajec_id`),
  KEY `FKkieptcbnd215ckd0f3m4j53kp` (`ploffice_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ploffice_user_plan_zajec`
--

LOCK TABLES `ploffice_user_plan_zajec` WRITE;
/*!40000 ALTER TABLE `ploffice_user_plan_zajec` DISABLE KEYS */;
INSERT INTO `ploffice_user_plan_zajec` VALUES (12,1),(12,2);
/*!40000 ALTER TABLE `ploffice_user_plan_zajec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ploffice_user_type_detail`
--

DROP TABLE IF EXISTS `ploffice_user_type_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ploffice_user_type_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `identyfikator` varchar(255) DEFAULT NULL,
  `kierunek` varchar(255) DEFAULT NULL,
  `nr_indeksu` varchar(255) DEFAULT NULL,
  `rok` varchar(255) DEFAULT NULL,
  `semestr` varchar(255) DEFAULT NULL,
  `stopien_studiow` varchar(255) DEFAULT NULL,
  `tryb_studiow` varchar(255) DEFAULT NULL,
  `tytul` varchar(255) DEFAULT NULL,
  `wydzial` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ploffice_user_type_detail`
--

LOCK TABLES `ploffice_user_type_detail` WRITE;
/*!40000 ALTER TABLE `ploffice_user_type_detail` DISABLE KEYS */;
INSERT INTO `ploffice_user_type_detail` VALUES (1,NULL,'Informatyka','195012','3','6','I',NULL,NULL,'EEIA'),(2,NULL,'informatyka','195012','1','1','I','DZIENNE',NULL,'EEIA'),(3,NULL,'informatyka','195012','1','1','I','DZIENNE',NULL,'EEIA'),(4,NULL,'informatyka','195012','1','1','I','DZIENNE',NULL,'EEIA'),(6,NULL,'informatyka','195012','1','1','I','DZIENNE',NULL,'EEIA'),(7,NULL,'informatyka','195012','1','1','I','DZIENNE',NULL,'EEIA'),(8,'195012',NULL,NULL,NULL,NULL,NULL,NULL,'in?.',NULL);
/*!40000 ALTER TABLE `ploffice_user_type_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_info`
--

DROP TABLE IF EXISTS `users_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `user_details_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKm8faa275eex0lmts8lj79rtom` (`user_details_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_info`
--

LOCK TABLES `users_info` WRITE;
/*!40000 ALTER TABLE `users_info` DISABLE KEYS */;
INSERT INTO `users_info` VALUES (1,'mantajszymon@gmail.com','123','ADMIN','1','admin',NULL),(2,'user@gmail.com','dupa','USER','1','user',NULL),(4,'naklejka@gmail.com','dupa','USER','1','hejka',NULL);
/*!40000 ALTER TABLE `users_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-16 16:48:53
