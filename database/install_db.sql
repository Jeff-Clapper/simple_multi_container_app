CREATE DATABASE  IF NOT EXISTS `conference_demo` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `conference_demo`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: conference_demo
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `attendee_tickets`
--

DROP TABLE IF EXISTS `attendee_tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendee_tickets` (
  `attendee_ticket_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attendee_id` int NOT NULL,
  `ticket_price_id` int NOT NULL,
  `discount_code_id` int DEFAULT NULL,
  `net_price` decimal(8,2) NOT NULL,
  PRIMARY KEY (`attendee_ticket_id`),
  UNIQUE KEY `attendee_ticket_id` (`attendee_ticket_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendee_tickets`
--

LOCK TABLES `attendee_tickets` WRITE;
/*!40000 ALTER TABLE `attendee_tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `attendee_tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendees`
--

DROP TABLE IF EXISTS `attendees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendees` (
  `attendee_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `title` varchar(40) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL,
  `email` varchar(80) NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`attendee_id`),
  UNIQUE KEY `attendee_id` (`attendee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendees`
--

LOCK TABLES `attendees` WRITE;
/*!40000 ALTER TABLE `attendees` DISABLE KEYS */;
/*!40000 ALTER TABLE `attendees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discount_codes`
--

DROP TABLE IF EXISTS `discount_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discount_codes` (
  `discount_code_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `discount_code` varchar(20) NOT NULL,
  `discount_name` varchar(30) NOT NULL,
  `discount_type` varchar(1) NOT NULL,
  `discount_amount` decimal(8,2) NOT NULL,
  PRIMARY KEY (`discount_code_id`),
  UNIQUE KEY `discount_code_id` (`discount_code_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount_codes`
--

LOCK TABLES `discount_codes` WRITE;
/*!40000 ALTER TABLE `discount_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `discount_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pricing_categories`
--

DROP TABLE IF EXISTS `pricing_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pricing_categories` (
  `pricing_category_code` varchar(1) NOT NULL,
  `pricing_category_name` varchar(20) NOT NULL,
  `pricing_start_date` date NOT NULL,
  `pricing_end_date` date NOT NULL,
  PRIMARY KEY (`pricing_category_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pricing_categories`
--

LOCK TABLES `pricing_categories` WRITE;
/*!40000 ALTER TABLE `pricing_categories` DISABLE KEYS */;
INSERT INTO `pricing_categories` VALUES ('E','Early Bird','2019-12-01','2020-01-15'),('L','Last Minute','2020-03-21','2020-04-07'),('R','Regular','2020-01-16','2020-03-20');
/*!40000 ALTER TABLE `pricing_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session_schedule`
--

DROP TABLE IF EXISTS `session_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `session_schedule` (
  `schedule_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `time_slot_id` int NOT NULL,
  `session_id` int NOT NULL,
  `room` varchar(30) NOT NULL,
  PRIMARY KEY (`schedule_id`),
  UNIQUE KEY `schedule_id` (`schedule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session_schedule`
--

LOCK TABLES `session_schedule` WRITE;
/*!40000 ALTER TABLE `session_schedule` DISABLE KEYS */;
INSERT INTO `session_schedule` VALUES (1,1,1,'Grand Ballroom'),(2,2,2,'Cedar'),(3,4,3,'Cedar'),(4,5,4,'Cedar'),(5,7,5,'Cedar'),(6,8,6,'Cedar'),(7,11,7,'Cedar'),(8,3,8,'Cedar'),(9,6,9,'Cedar'),(10,9,10,'Cedar'),(11,10,11,'Cedar'),(12,2,12,'Cherry'),(13,4,13,'Cherry'),(14,5,14,'Cherry'),(15,7,15,'Cherry'),(16,8,16,'Cherry'),(17,11,17,'Cherry'),(18,3,18,'Cherry'),(19,6,19,'Cherry'),(20,9,20,'Cherry'),(21,10,21,'Cherry'),(22,2,22,'Maple'),(23,4,23,'Maple'),(24,5,24,'Maple'),(25,7,25,'Maple'),(26,8,26,'Maple'),(27,11,27,'Maple'),(28,3,28,'Maple'),(29,6,29,'Maple'),(30,9,30,'Maple'),(31,10,31,'Maple'),(32,2,32,'Aspen'),(33,4,33,'Aspen'),(34,5,34,'Aspen'),(35,7,35,'Aspen'),(36,8,36,'Aspen'),(37,11,37,'Aspen'),(38,3,38,'Aspen'),(39,6,39,'Aspen'),(40,9,40,'Aspen'),(41,10,41,'Aspen'),(42,2,42,'Hickory'),(43,4,43,'Hickory'),(44,5,44,'Hickory'),(45,7,45,'Hickory'),(46,8,46,'Hickory'),(47,11,47,'Hickory'),(48,3,48,'Hickory'),(49,6,49,'Hickory'),(50,9,50,'Hickory'),(51,10,51,'Hickory'),(62,2,62,'Cottonwood'),(63,4,63,'Cottonwood'),(64,5,64,'Cottonwood'),(65,7,65,'Cottonwood'),(66,8,66,'Cottonwood'),(67,11,67,'Cottonwood'),(68,3,68,'Cottonwood'),(69,6,69,'Cottonwood'),(70,9,70,'Cottonwood'),(71,10,71,'Cottonwood'),(82,2,82,'Sycamore'),(83,4,83,'Sycamore'),(84,5,84,'Sycamore'),(85,7,85,'Sycamore'),(86,8,86,'Sycamore'),(87,11,87,'Sycamore'),(88,3,88,'Sycamore'),(89,6,89,'Sycamore'),(90,9,90,'Sycamore'),(91,10,91,'Sycamore');
/*!40000 ALTER TABLE `session_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session_speakers`
--

DROP TABLE IF EXISTS `session_speakers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `session_speakers` (
  `session_id` int NOT NULL,
  `speaker_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session_speakers`
--

LOCK TABLES `session_speakers` WRITE;
/*!40000 ALTER TABLE `session_speakers` DISABLE KEYS */;
INSERT INTO `session_speakers` VALUES (1,40),(2,4),(3,5),(4,1),(5,15),(6,20),(7,21),(8,1),(9,4),(10,20),(11,5),(12,7),(13,23),(14,24),(15,22),(16,21),(17,22),(18,23),(19,7),(20,24),(21,15),(22,2),(23,3),(24,19),(25,25),(26,26),(27,27),(28,25),(29,9),(30,27),(31,16),(32,9),(33,16),(34,28),(35,29),(36,26),(37,28),(38,19),(39,3),(40,2),(41,29),(42,13),(43,30),(44,32),(45,31),(46,8),(47,31),(48,32),(49,13),(50,8),(51,30),(62,34),(63,39),(64,38),(65,33),(66,34),(67,38),(68,33),(69,39),(70,33),(71,33),(82,37),(83,17),(84,17),(85,14),(86,36),(87,35),(88,36),(89,37),(90,14),(91,35);
/*!40000 ALTER TABLE `session_speakers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session_tags`
--

DROP TABLE IF EXISTS `session_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `session_tags` (
  `session_id` int NOT NULL,
  `tag_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session_tags`
--

LOCK TABLES `session_tags` WRITE;
/*!40000 ALTER TABLE `session_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `session_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `session_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `session_name` varchar(80) NOT NULL,
  `session_description` varchar(1024) NOT NULL,
  `session_length` int NOT NULL,
  PRIMARY KEY (`session_id`),
  UNIQUE KEY `session_id` (`session_id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES (1,'Keynote - The Golden Age of Software','',45),(2,'A Better Way to Access Data with Spring Data','',60),(3,'A Deep Dive Into Spring IoC','',60),(4,'Building RESTful APIs with Spring Data Rest','',60),(5,'Spring Integration Quick Start','',60),(6,'Building Microservices with Spring','',60),(7,'Spring Cloud Primer','',60),(8,'Spring Boot in 30 Minutes','',30),(9,'Testing Spring Applications','',30),(10,'Writing Your First Advice with Spring AOP','',30),(11,'IntelliJ IDEA Tips and Tricks','',30),(12,'Functional Programming in Java','',60),(13,'Making the Switch from Java to Kotlin','',60),(14,'Mastering Concurrency in Java','',60),(15,'Mastering Object-Orientated Programming in Java','',60),(16,'SOLID Principles in Java','',60),(17,'The Most Important Java Design Patterns','',60),(18,'Using EasyMock for Java Testing','',30),(19,'IntelliJ IDEA Debugging Secrets','',30),(20,'Getting Started with Java Flight Recorder','',30),(21,'Clean Code Principls for Java Developers','',30),(22,'Designing Large Scale ASP.NET Core Applications','',60),(23,'Application Security in ASP.NET Core Apps','',60),(24,'.NET\'s HttpClient: The Missing Manual','',60),(25,'Using Vue.js in ASP.NET and ASP.NET Core Applications','',60),(26,'Clean Code Practices in C#','',60),(27,'Modern Desktop Applications in .NET','',60),(28,'SignalR Quickstart','',30),(29,'Visual Studio Tips and Tricks','',30),(30,'Logging in ASP.NET Core','',30),(31,'A Quick Tour of MiniProfiler','',30),(32,'Demystifying Dependency Injection in .NET','',60),(33,'Microservices Architectures using ASP.NET Core','',60),(34,'Advanced Techniques in Entity Framework Core','',60),(35,'C# Language Features You May Not Know About','',60),(36,'Asynchronous Programming in .NET','',60),(37,'Advanced Entity Framework Core','',60),(38,'A lap around the .NET Command Line Interface (CLI)','',30),(39,'Deploying .NET Apps with Azure DevOps','',30),(40,'Code Analysis for .NET Projects','',30),(41,'Better Logging with Serilog','',30),(42,'Deploying Web Applications to Azure','',60),(43,'Getting Started with Azure Cognitive Services','',60),(44,'Building Microservices with Azure Functions','',60),(45,'Big Data and Analytics on the Azure Platform','',60),(46,'Getting Started with CosmosDB','',60),(47,'Securing Azure Services','',60),(48,'Azure Event Grid Quickstart','',30),(49,'Managing Azure with the Azure CLI','',30),(50,'Migrating to Azure SQL','',30),(51,'Understanding the Azure Blockchain Service','',30),(62,'Building Hybrid Cloud Architectures in AWS','',60),(63,'Migrating On-Premises Applications to AWS','',60),(64,'IOT Solutions Using AWS','',60),(65,'Getting Startedd with Machine Learning in AWS','',60),(66,'DevOps on the AWS Platform','',60),(67,'Serverless Computing on AWS','',60),(68,'Amazon DynamoDB Quickstart','',30),(69,'Understanding the Amazon Elastic Kubernetes Service','',30),(70,'Creating Your First Data Lake in AWS','',30),(71,'Migrating to Amazon Aurora','',30),(82,'How Agile Are You Really?','',60),(83,'Better Retrospectives','',60),(84,'Developer to Leader','',60),(85,'Selling Your Ideas to Leadership: A Guide for Technology Professionals','',60),(86,'Creating a Culture of Learning','',60),(87,'The Seven Habits of Highly Effective Developers','',60),(88,'Writing Better User Stories','',30),(89,'Techniques for Better Estimates','',30),(90,'Communication Skills for the Technology Professional','',30),(91,'Personal Kanban','',30);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `speakers`
--

DROP TABLE IF EXISTS `speakers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `speakers` (
  `speaker_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `title` varchar(40) NOT NULL,
  `company` varchar(50) NOT NULL,
  `speaker_bio` varchar(2000) NOT NULL,
  `speaker_photo` blob,
  PRIMARY KEY (`speaker_id`),
  UNIQUE KEY `speaker_id` (`speaker_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `speakers`
--

LOCK TABLES `speakers` WRITE;
/*!40000 ALTER TABLE `speakers` DISABLE KEYS */;
INSERT INTO `speakers` VALUES (1,'Sergio','Becker','Senior Developer','MicroOcean Software','Test',NULL),(2,'James','Lowrey','Solutions Architect','Fabrikam Industries','Test',NULL),(3,'Gloria','Franklin','Enerprise Architect','Carved Rock Online','Test',NULL),(4,'Lori','Vanhoose','Java Technical Lead','National Bank','Test',NULL),(5,'Raymond','Hall','Senior Developer','City Power and Electric','Test',NULL),(6,'Sam','Vasquez','Software Analyst','Globalmantics Consulting','Test',NULL),(7,'Justin','Clark','Principal Engineer','Tangerine Hippopotamus Consulting','Test',NULL),(8,'Barbara','Williams','Senior DBA','Contoso','Test',NULL),(9,'James','Sharp','Technical Lead','Adventureworks','Test',NULL),(10,'Julie','Rowe','Software Architect','Northwind Trading','Test',NULL),(11,'Tonya','Burke','Senior Cloud Consultant','Big Data Consulting','Test',NULL),(12,'Nicole','Perry','Engineering Manager','World Wide Importers','Test',NULL),(13,'James','Curtis','Cloud Architect','Farmington Research','Test',NULL),(14,'Patti','White','Program Manager','State Investments','Test',NULL),(15,'Andrew','Graham','Software Architect','Property Insurance Group','Test',NULL),(16,'Lenn','van der Brug','Solutions Architect','Globalmantics Consulting','Test',NULL),(17,'Stephan','Leijtens','Application Development Manager','Bank Europe','Test',NULL),(18,'Anja','Koehler','Software Engineer','Contoso','Test',NULL),(19,'Petra','Holtzmann','Senior API Engineer','European Investment Partners','Test',NULL),(20,'Jens','Lundberg','Consultant','Aqua Sky Consulting','Test',NULL),(21,'Linda','Carver','Senior Developer','Chicago Technology Research','Test',NULL),(22,'Ronald','McMillian','Software Architect','National Bank','Test',NULL),(23,'Dustin','Finn','Software Engineer','Globalmantics Consulting','Test',NULL),(24,'Sharon','Johnson','Solutions Architect','National Aerospace Technologies','Test',NULL),(25,'Karen','McClure','.NET Architect','Adventureworks','Test',NULL),(26,'Matthew','Thompson','Technical Lead','Fabrikam Industries','Test',NULL),(27,'Chris','Moore','Solutions Architect','World Wide Importers','Test',NULL),(28,'Ken','Perry','Software Engineer','International Industrial Works','Test',NULL),(29,'Christie','Fournier','Application Architect','National Software Services','Test',NULL),(30,'Jenny','Lee','Azure Cloud Architect','Prairie Cloud Solutions','Test',NULL),(31,'Alicia','Peng','Senior Cloud Consultant','Cloud Management Partners','Test',NULL),(32,'Page','Reid','Lead Azure Engineer','State Investments','Test',NULL),(33,'Anke','Holzman','Senior AWS Consultant','Cloud Management Partners','Test',NULL),(34,'Dylan','Wilkinson','Principal AWS Engineer','Cloud Native Labs','Test',NULL),(35,'Henry','Duke','Engineering Lead','Wired Brain Coffee','Test',NULL),(36,'Cynthia','Crandall','Senior Business Analyst','Wired Brain Coffee','Test',NULL),(37,'Clara','Dawson','Agile Coach','Agile Coaches Inc','Test',NULL),(38,'Ann','Martinez','Senior AWS Consultant','Western Consulting Services','Test',NULL),(39,'James','King','Staff AWS Engineer','Northern States Bank','Test',NULL),(40,'Simon','Williams','Chief Technology Officer','NorthernSoft Systems','Test',NULL);
/*!40000 ALTER TABLE `speakers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `tag_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(30) NOT NULL,
  PRIMARY KEY (`tag_id`),
  UNIQUE KEY `tag_id` (`tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'.NET'),(2,'Java'),(3,'Python'),(4,'JavaScript'),(5,'Angular'),(6,'React'),(7,'Vue.js'),(8,'Web'),(9,'Architecture'),(10,'Soft Skills'),(11,'Agile'),(12,'Cloud');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_prices`
--

DROP TABLE IF EXISTS `ticket_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket_prices` (
  `ticket_price_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ticket_type_code` varchar(1) NOT NULL,
  `pricing_category_code` varchar(1) NOT NULL,
  `base_price` decimal(8,2) NOT NULL,
  PRIMARY KEY (`ticket_price_id`),
  UNIQUE KEY `ticket_price_id` (`ticket_price_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_prices`
--

LOCK TABLES `ticket_prices` WRITE;
/*!40000 ALTER TABLE `ticket_prices` DISABLE KEYS */;
INSERT INTO `ticket_prices` VALUES (1,'P','E',800.00),(2,'P','R',1000.00),(3,'P','L',1200.00),(4,'S','E',500.00),(5,'S','R',700.00),(6,'S','L',1000.00),(7,'C','E',100.00),(8,'C','R',200.00),(9,'C','L',300.00);
/*!40000 ALTER TABLE `ticket_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_types`
--

DROP TABLE IF EXISTS `ticket_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket_types` (
  `ticket_type_code` varchar(1) NOT NULL,
  `ticket_type_name` varchar(30) NOT NULL,
  `description` varchar(100) NOT NULL,
  `includes_workshop` tinyint(1) NOT NULL,
  PRIMARY KEY (`ticket_type_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_types`
--

LOCK TABLES `ticket_types` WRITE;
/*!40000 ALTER TABLE `ticket_types` DISABLE KEYS */;
INSERT INTO `ticket_types` VALUES ('C','Community','Access to keynotes,community open spaces and the exhibition hall',0),('P','Premium','Access to all conference events plus attend the workshop of your choice.',1),('S','Standard','Access to all conference keynotes,sessions,community open spaces and the exhibition hall',0);
/*!40000 ALTER TABLE `ticket_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_slots`
--

DROP TABLE IF EXISTS `time_slots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_slots` (
  `time_slot_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `time_slot_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `is_keynote_time_slot` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`time_slot_id`),
  UNIQUE KEY `time_slot_id` (`time_slot_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_slots`
--

LOCK TABLES `time_slots` WRITE;
/*!40000 ALTER TABLE `time_slots` DISABLE KEYS */;
INSERT INTO `time_slots` VALUES (1,'2020-04-09','09:00:00','09:45:00',1),(2,'2020-04-09','10:00:00','11:00:00',0),(3,'2020-04-09','11:15:00','11:45:00',0),(4,'2020-04-09','12:45:00','13:45:00',0),(5,'2020-04-09','14:00:00','15:00:00',0),(6,'2020-04-09','15:15:00','15:45:00',0),(7,'2020-04-09','16:00:00','17:00:00',0),(8,'2020-04-10','09:00:00','10:00:00',0),(9,'2020-04-10','10:15:00','11:15:00',0),(10,'2020-04-10','11:30:00','12:00:00',0),(11,'2020-04-10','13:00:00','14:00:00',0),(12,'2020-04-10','14:15:00','15:00:00',1);
/*!40000 ALTER TABLE `time_slots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workshop_registrations`
--

DROP TABLE IF EXISTS `workshop_registrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workshop_registrations` (
  `workshop_id` int NOT NULL,
  `attendee_ticket_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workshop_registrations`
--

LOCK TABLES `workshop_registrations` WRITE;
/*!40000 ALTER TABLE `workshop_registrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `workshop_registrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workshop_speakers`
--

DROP TABLE IF EXISTS `workshop_speakers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workshop_speakers` (
  `workshop_id` int NOT NULL,
  `speaker_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workshop_speakers`
--

LOCK TABLES `workshop_speakers` WRITE;
/*!40000 ALTER TABLE `workshop_speakers` DISABLE KEYS */;
/*!40000 ALTER TABLE `workshop_speakers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workshops`
--

DROP TABLE IF EXISTS `workshops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workshops` (
  `workshop_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `workshop_name` varchar(60) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `requirements` varchar(1024) NOT NULL,
  `room` varchar(30) NOT NULL,
  `capacity` int NOT NULL,
  PRIMARY KEY (`workshop_id`),
  UNIQUE KEY `workshop_id` (`workshop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workshops`
--

LOCK TABLES `workshops` WRITE;
/*!40000 ALTER TABLE `workshops` DISABLE KEYS */;
INSERT INTO `workshops` VALUES (1,'More Effective Agile Practices','','','Cedar',50),(2,'Azure DevOps One Day Bootcamp','','','Cherry',50),(3,'Level Up Your Architecure Skills','','','Maple',20),(4,'Building Microservices with Spring','','','Aspen',30),(5,'SQL Server Performance Tuning','','','Hickory',40),(6,'Serverless Architectures Using AWS','','','Cottonwood',30),(7,'Architecting Large Scale React Applications','','','Sycamore',30),(8,'Machine Learning Quick Start','','','Chestnut',40),(9,'Data Analytics with Tableau','','','Poplar',40),(10,'Python for Enterprise Developers','','','Birch',40),(11,'Hands on Vue.js','','','Ash',40),(12,'Building APIs in ASP.NET Core','','','Oak',30);
/*!40000 ALTER TABLE `workshops` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-07 14:43:01
