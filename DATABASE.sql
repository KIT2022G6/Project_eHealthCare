-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: ehealthcare_g6
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
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `departmentid` varchar(255) NOT NULL,
  `d_charge` int NOT NULL,
  `d_description` varchar(255) DEFAULT NULL,
  `d_name` varchar(255) DEFAULT NULL,
  `id` bigint DEFAULT NULL,
  PRIMARY KEY (`departmentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES ('KK 1',361,'synergize web-enabled channels','Ten khoa 1',1),('KK 2',969,'exploit best-of-breed systems','Ten khoa 2',2),('KK 3',740,'revolutionize proactive portals','Ten khoa 3',3),('KK 4',100,'reintermediate one-to-one technologies','Ten khoa 4',4),('KK 5',764,'morph web-enabled networks','Ten khoa 5',5);
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
  `doctorid` varchar(255) NOT NULL,
  `d_age` int unsigned DEFAULT NULL,
  `d_email` varchar(255) NOT NULL,
  `d_name` varchar(255) NOT NULL,
  `d_phone` varchar(255) NOT NULL,
  `id` bigint DEFAULT NULL,
  `deppartmentid` varchar(255) DEFAULT NULL,
  `scheduleid` varchar(255) DEFAULT NULL,
  `departmentid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`doctorid`),
  KEY `FK2goijh56ovuwaa3rdpq1v6bbf` (`deppartmentid`),
  KEY `FK50rt3o52n0nsdbjr767yby3cu` (`scheduleid`),
  KEY `FKdow9v3y2xni4r4w9mjv65momc` (`departmentid`),
  CONSTRAINT `FK2goijh56ovuwaa3rdpq1v6bbf` FOREIGN KEY (`deppartmentid`) REFERENCES `department` (`departmentid`),
  CONSTRAINT `FK50rt3o52n0nsdbjr767yby3cu` FOREIGN KEY (`scheduleid`) REFERENCES `schedule` (`scheduleid`),
  CONSTRAINT `FKdow9v3y2xni4r4w9mjv65momc` FOREIGN KEY (`departmentid`) REFERENCES `department` (`departmentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES ('BS 1',47,'Johnath.1@eheathcare.com','Johnath','7822836746',1,NULL,'LLV 13','KK 2'),('BS 10',48,'Bryana.10@eheathcare.com','Bryana','8586992793',10,NULL,'LLV 31','KK 4'),('BS 11',38,'Chane.11@eheathcare.com','Chane','6499916964',11,NULL,'LLV 27','KK 1'),('BS 12',45,'Devonne.12@eheathcare.com','Devonne','5743036973',12,NULL,'LLV 6','KK 5'),('BS 13',46,'Tandie.13@eheathcare.com','Tandie','6975493741',13,NULL,'LLV 23','KK 4'),('BS 14',50,'Coral.14@eheathcare.com','Coral','5709790963',14,NULL,'LLV 45','KK 2'),('BS 15',52,'Eli.15@eheathcare.com','Eli','6126885804',15,NULL,'LLV 28','KK 3'),('BS 16',30,'Arie.16@eheathcare.com','Arie','9391646370',16,NULL,'LLV 3','KK 2'),('BS 17',38,'Nap.17@eheathcare.com','Nap','6531649912',17,NULL,'LLV 25','KK 3'),('BS 18',39,'Ermin.18@eheathcare.com','Ermin','5014183265',18,NULL,'LLV 36','KK 1'),('BS 19',35,'Raimund.19@eheathcare.com','Raimund','1903479883',19,NULL,'LLV 41','KK 5'),('BS 2',51,'Eula.2@eheathcare.com','Eula','9709209821',2,NULL,'LLV 49','KK 3'),('BS 20',38,'Crawford.20@eheathcare.com','Crawford','6858647786',20,NULL,'LLV 43','KK 4'),('BS 21',33,'Minny.21@eheathcare.com','Minny','1571433325',21,NULL,'LLV 42','KK 4'),('BS 22',30,'Kimmy.22@eheathcare.com','Kimmy','5639569982',22,NULL,'LLV 33','KK 1'),('BS 23',37,'Sascha.23@eheathcare.com','Sascha','5401714777',23,NULL,'LLV 35','KK 5'),('BS 24',37,'Dot.24@eheathcare.com','Dot','8411143376',24,NULL,'LLV 50','KK 3'),('BS 25',36,'Reeta.25@eheathcare.com','Reeta','5638822838',25,NULL,'LLV 7','KK 2'),('BS 26',50,'Franchot.26@eheathcare.com','Franchot','9026827260',26,NULL,'LLV 12','KK 2'),('BS 27',46,'Felic.27@eheathcare.com','Felic','2704310264',27,NULL,'LLV 26','KK 3'),('BS 28',40,'Yuma.28@eheathcare.com','Yuma','6079421821',28,NULL,'LLV 37','KK 1'),('BS 29',39,'Marcellus.29@eheathcare.com','Marcellus','1474534135',29,NULL,'LLV 48','KK 5'),('BS 3',52,'Talia.3@eheathcare.com','Talia','3174488177',3,NULL,'LLV 19','KK 1'),('BS 30',45,'Andeee.30@eheathcare.com','Andeee','6065109758',30,NULL,'LLV 24','KK 4'),('BS 4',49,'Brooke.4@eheathcare.com','Brooke','9384463345',4,NULL,'LLV 14','KK 4'),('BS 5',46,'Hubert.5@eheathcare.com','Hubert','2577094425',5,NULL,'LLV 20','KK 5'),('BS 6',36,'Kirstin.6@eheathcare.com','Kirstin','4646961836',6,NULL,'LLV 5','KK 5'),('BS 7',46,'Anet.7@eheathcare.com','Anet','7681204963',7,NULL,'LLV 40','KK 1'),('BS 8',44,'Kayley.8@eheathcare.com','Kayley','8217183601',8,NULL,'LLV 44','KK 2'),('BS 9',30,'Nevsa.9@eheathcare.com','Nevsa','1476318418',9,NULL,'LLV 46','KK 3');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insurance`
--

DROP TABLE IF EXISTS `insurance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insurance` (
  `insuranceid` varchar(255) NOT NULL,
  `i_description` varchar(255) DEFAULT NULL,
  `i_name` varchar(255) DEFAULT NULL,
  `id` bigint DEFAULT NULL,
  PRIMARY KEY (`insuranceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurance`
--

LOCK TABLES `insurance` WRITE;
/*!40000 ALTER TABLE `insurance` DISABLE KEYS */;
INSERT INTO `insurance` VALUES ('BH 1','Bao hiem loai 1','1',1),('BH 10','Bao hiem loai 1','1',10),('BH 11','Bao hiem loai 1','1',11),('BH 12','Bao hiem loai 2','2',12),('BH 13','Bao hiem loai 2','2',13),('BH 14','Bao hiem loai 2','2',14),('BH 15','Bao hiem loai 1','1',15),('BH 16','Bao hiem loai 2','2',16),('BH 17','Bao hiem loai 2','2',17),('BH 18','Bao hiem loai 1','1',18),('BH 19','Bao hiem loai 1','1',19),('BH 2','Bao hiem loai 1','1',2),('BH 20','Bao hiem loai 1','1',20),('BH 21','Bao hiem loai 2','2',21),('BH 22','Bao hiem loai 1','1',22),('BH 23','Bao hiem loai 1','1',23),('BH 24','Bao hiem loai 1','1',24),('BH 25','Bao hiem loai 2','2',25),('BH 26','Bao hiem loai 1','1',26),('BH 27','Bao hiem loai 2','2',27),('BH 28','Bao hiem loai 2','2',28),('BH 29','Bao hiem loai 1','1',29),('BH 3','Bao hiem loai 2','2',3),('BH 30','Bao hiem loai 1','1',30),('BH 31','Bao hiem loai 2','2',31),('BH 32','Bao hiem loai 2','2',32),('BH 33','Bao hiem loai 1','1',33),('BH 34','Bao hiem loai 2','2',34),('BH 35','Bao hiem loai 1','1',35),('BH 36','Bao hiem loai 1','1',36),('BH 37','Bao hiem loai 2','2',37),('BH 38','Bao hiem loai 2','2',38),('BH 39','Bao hiem loai 1','1',39),('BH 4','Bao hiem loai 2','2',4),('BH 40','Bao hiem loai 2','2',40),('BH 41','Bao hiem loai 1','1',41),('BH 42','Bao hiem loai 1','1',42),('BH 43','Bao hiem loai 1','1',43),('BH 44','Bao hiem loai 1','1',44),('BH 45','Bao hiem loai 1','1',45),('BH 46','Bao hiem loai 2','2',46),('BH 47','Bao hiem loai 1','1',47),('BH 48','Bao hiem loai 1','1',48),('BH 49','Bao hiem loai 2','2',49),('BH 5','Bao hiem loai 2','2',5),('BH 50','Bao hiem loai 2','2',50),('BH 6','Bao hiem loai 2','2',6),('BH 7','Bao hiem loai 1','1',7),('BH 8','Bao hiem loai 2','2',8),('BH 9','Bao hiem loai 1','1',9);
/*!40000 ALTER TABLE `insurance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `med_invoice`
--

DROP TABLE IF EXISTS `med_invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `med_invoice` (
  `med_invoiceid` varchar(255) NOT NULL,
  `id` bigint DEFAULT NULL,
  `precriptionid` varchar(255) DEFAULT NULL,
  `medicineid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`med_invoiceid`),
  KEY `FKh81896f8bo5ovhell1mftslki` (`precriptionid`),
  KEY `FK95cyd9tts42a6difkrl1udcp2` (`medicineid`),
  CONSTRAINT `FK95cyd9tts42a6difkrl1udcp2` FOREIGN KEY (`medicineid`) REFERENCES `medicine` (`medicineid`),
  CONSTRAINT `FKh81896f8bo5ovhell1mftslki` FOREIGN KEY (`precriptionid`) REFERENCES `prescription` (`prescriptionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `med_invoice`
--

LOCK TABLES `med_invoice` WRITE;
/*!40000 ALTER TABLE `med_invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `med_invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicine`
--

DROP TABLE IF EXISTS `medicine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicine` (
  `medicineid` varchar(255) NOT NULL,
  `id` bigint DEFAULT NULL,
  `m_exp` date DEFAULT NULL,
  `m_name` varchar(255) DEFAULT NULL,
  `m_pri` int NOT NULL,
  `m_sto` int NOT NULL,
  PRIMARY KEY (`medicineid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicine`
--

LOCK TABLES `medicine` WRITE;
/*!40000 ALTER TABLE `medicine` DISABLE KEYS */;
INSERT INTO `medicine` VALUES ('LT 1',1,'2025-06-19','ANTIDANDRUFF',607,28),('LT 10',10,'2025-12-04','Trazodone Hydrochloride',960,38),('LT 11',11,'2025-07-26','Aspergillus niger',546,42),('LT 12',12,'2025-08-23','Amitriptyline Hydrochloride',801,23),('LT 13',13,'2024-04-03','ReCreate Foundation',820,75),('LT 14',14,'2024-03-11','ATORVASTATIN CALCIUM',112,92),('LT 15',15,'2024-05-27','cilostazol',816,44),('LT 16',16,'2025-10-13','HILL COUNTRY ESSENTIALS',97,61),('LT 17',17,'2025-11-19','ATOPALM Hemorrhoidal Pain Relieving',685,17),('LT 18',18,'2024-12-01','Ketorolac Tromethamine',126,75),('LT 19',19,'2026-02-13','Allegra D 12 Hour Allergy and Congestion',598,1),('LT 2',2,'2024-07-07','Dextrose',613,60),('LT 20',20,'2024-08-30','LBEL HYDRATESS',834,98),('LT 21',21,'2025-06-15','Antibacterial',640,29),('LT 22',22,'2025-11-02','Isosorbide Dinitrate',712,53),('LT 23',23,'2025-12-11','HYDRALAZINE HYDROCHLORIDE',516,18),('LT 24',24,'2025-06-29','Flaxseed',39,5),('LT 25',25,'2025-11-11','Elcure Q Serum',906,54),('LT 3',3,'2025-09-06','Lidocaine Hydrochloride',987,28),('LT 4',4,'2024-12-22','Technetium Tc99m Generator',371,76),('LT 5',5,'2025-01-12','sotalol hydrochloride',925,45),('LT 6',6,'2026-01-06','Tamoxifen Citrate',566,8),('LT 7',7,'2025-03-16','Alpet Q E2',533,21),('LT 8',8,'2025-10-31','NIACIN',974,88),('LT 9',9,'2025-12-07','Daily Moisturizing',387,6);
/*!40000 ALTER TABLE `medicine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paper`
--

DROP TABLE IF EXISTS `paper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paper` (
  `paperid` varchar(255) NOT NULL,
  `id` bigint DEFAULT NULL,
  `p_ord` int NOT NULL,
  `p_roo` int NOT NULL,
  `p_vsi` date DEFAULT NULL,
  `doctorid` varchar(255) DEFAULT NULL,
  `patientid` varchar(255) DEFAULT NULL,
  `profileid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`paperid`),
  KEY `FK62p4ccd8c40lff5akf9tta7wd` (`doctorid`),
  KEY `FKn80f63w356anu1kqk8cepcr17` (`patientid`),
  KEY `FKq21jkaovo1gfj7a9y8jtp94t4` (`profileid`),
  CONSTRAINT `FK62p4ccd8c40lff5akf9tta7wd` FOREIGN KEY (`doctorid`) REFERENCES `doctor` (`doctorid`),
  CONSTRAINT `FKn80f63w356anu1kqk8cepcr17` FOREIGN KEY (`patientid`) REFERENCES `patient` (`patientid`),
  CONSTRAINT `FKq21jkaovo1gfj7a9y8jtp94t4` FOREIGN KEY (`profileid`) REFERENCES `profile` (`profileid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paper`
--

LOCK TABLES `paper` WRITE;
/*!40000 ALTER TABLE `paper` DISABLE KEYS */;
INSERT INTO `paper` VALUES ('PK 1',1,74,10,'2022-07-28','BS 12','BN 34','BA 50'),('PK 10',10,54,6,'2022-06-13','BS 14','BN 40','BA 12'),('PK 100',100,16,5,'2022-08-27','BS 17','BN 26','BA 46'),('PK 11',11,49,9,'2021-12-06','BS 18','BN 4','BA 35'),('PK 12',12,9,6,'2021-08-13','BS 24','BN 20','BA 6'),('PK 13',13,89,9,'2022-06-23','BS 21','BN 27','BA 28'),('PK 14',14,26,10,'2022-02-06','BS 27','BN 48','BA 34'),('PK 15',15,44,2,'2022-04-26','BS 25','BN 13','BA 26'),('PK 16',16,96,7,'2022-03-23','BS 7','BN 37','BA 20'),('PK 17',17,15,4,'2022-01-16','BS 26','BN 25','BA 32'),('PK 18',18,2,10,'2021-10-23','BS 10','BN 10','BA 46'),('PK 19',19,10,5,'2021-12-29','BS 5','BN 39','BA 23'),('PK 2',2,51,8,'2022-01-08','BS 28','BN 11','BA 17'),('PK 20',20,70,3,'2021-10-16','BS 8','BN 31','BA 31'),('PK 21',21,24,3,'2022-02-05','BS 30','BN 46','BA 24'),('PK 22',22,70,5,'2021-11-28','BS 17','BN 32','BA 42'),('PK 23',23,5,9,'2022-04-02','BS 23','BN 1','BA 38'),('PK 24',24,82,8,'2022-01-02','BS 20','BN 42','BA 33'),('PK 25',25,26,2,'2022-07-16','BS 13','BN 19','BA 30'),('PK 26',26,3,8,'2022-04-10','BS 22','BN 36','BA 14'),('PK 27',27,2,1,'2022-06-02','BS 2','BN 2','BA 9'),('PK 28',28,78,8,'2022-02-22','BS 29','BN 26','BA 1'),('PK 29',29,33,8,'2021-09-15','BS 3','BN 49','BA 41'),('PK 3',3,71,1,'2021-10-07','BS 9','BN 15','BA 8'),('PK 30',30,43,4,'2022-08-26','BS 11','BN 5','BA 11'),('PK 31',31,59,5,'2021-09-24','BS 24','BN 6','BA 36'),('PK 32',32,87,3,'2022-02-13','BS 22','BN 16','BA 13'),('PK 33',33,15,1,'2022-05-18','BS 28','BN 8','BA 48'),('PK 34',34,57,6,'2021-11-12','BS 3','BN 18','BA 4'),('PK 35',35,17,3,'2022-01-05','BS 4','BN 41','BA 27'),('PK 36',36,56,7,'2022-04-25','BS 18','BN 45','BA 19'),('PK 37',37,10,9,'2022-07-17','BS 29','BN 47','BA 39'),('PK 38',38,33,2,'2022-01-19','BS 10','BN 29','BA 25'),('PK 39',39,36,5,'2021-09-10','BS 9','BN 23','BA 18'),('PK 4',4,23,9,'2022-05-03','BS 6','BN 21','BA 3'),('PK 40',40,4,7,'2022-04-18','BS 6','BN 43','BA 40'),('PK 41',41,31,4,'2022-05-08','BS 15','BN 30','BA 15'),('PK 42',42,70,10,'2021-09-19','BS 20','BN 17','BA 47'),('PK 43',43,53,4,'2021-11-09','BS 8','BN 38','BA 21'),('PK 44',44,6,2,'2021-10-26','BS 23','BN 9','BA 45'),('PK 45',45,2,5,'2021-09-28','BS 14','BN 28','BA 44'),('PK 46',46,7,5,'2022-05-25','BS 7','BN 50','BA 16'),('PK 47',47,27,8,'2022-04-08','BS 11','BN 14','BA 29'),('PK 48',48,59,8,'2022-05-09','BS 30','BN 35','BA 7'),('PK 49',49,10,9,'2021-09-12','BS 2','BN 22','BA 43'),('PK 5',5,51,9,'2021-08-19','BS 16','BN 7','BA 49'),('PK 50',50,15,10,'2022-01-21','BS 12','BN 12','BA 5'),('PK 51',51,93,3,'2022-03-24','BS 16','BN 17','BA 10'),('PK 52',52,100,3,'2021-08-22','BS 5','BN 48','BA 6'),('PK 53',53,76,6,'2022-02-15','BS 17','BN 13','BA 13'),('PK 54',54,50,9,'2021-10-08','BS 13','BN 21','BA 14'),('PK 55',55,35,5,'2022-07-07','BS 19','BN 11','BA 20'),('PK 56',56,20,5,'2021-12-11','BS 27','BN 3','BA 21'),('PK 57',57,55,7,'2022-02-08','BS 21','BN 45','BA 1'),('PK 58',58,87,10,'2021-09-29','BS 1','BN 37','BA 34'),('PK 59',59,57,6,'2022-04-10','BS 25','BN 24','BA 45'),('PK 6',6,23,4,'2022-03-05','BS 19','BN 24','BA 2'),('PK 60',60,87,8,'2021-10-15','BS 26','BN 33','BA 50'),('PK 61',61,79,8,'2022-05-04','BS 7','BN 47','BA 43'),('PK 62',62,85,3,'2021-11-12','BS 17','BN 5','BA 28'),('PK 63',63,60,6,'2022-03-15','BS 12','BN 44','BA 23'),('PK 64',64,10,4,'2021-08-14','BS 28','BN 20','BA 30'),('PK 65',65,85,2,'2022-07-09','BS 9','BN 42','BA 7'),('PK 66',66,54,8,'2021-11-07','BS 4','BN 12','BA 12'),('PK 67',67,70,10,'2021-12-31','BS 13','BN 2','BA 38'),('PK 68',68,60,8,'2022-05-04','BS 30','BN 46','BA 8'),('PK 69',69,27,7,'2022-04-02','BS 23','BN 16','BA 22'),('PK 7',7,92,7,'2022-08-30','BS 15','BN 33','BA 22'),('PK 70',70,67,6,'2021-10-26','BS 11','BN 25','BA 17'),('PK 71',71,60,10,'2022-08-03','BS 16','BN 34','BA 36'),('PK 72',72,45,8,'2021-11-08','BS 18','BN 43','BA 3'),('PK 73',73,78,1,'2022-06-11','BS 24','BN 7','BA 26'),('PK 74',74,22,1,'2022-06-12','BS 20','BN 41','BA 42'),('PK 75',75,11,7,'2022-06-19','BS 10','BN 36','BA 37'),('PK 76',76,24,7,'2022-02-13','BS 25','BN 19','BA 15'),('PK 77',77,30,1,'2022-08-08','BS 8','BN 6','BA 35'),('PK 78',78,84,10,'2021-10-24','BS 22','BN 49','BA 49'),('PK 79',79,37,3,'2021-11-15','BS 29','BN 40','BA 19'),('PK 8',8,7,3,'2022-04-24','BS 4','BN 44','BA 37'),('PK 80',80,38,7,'2021-11-21','BS 5','BN 31','BA 11'),('PK 81',81,19,3,'2021-12-23','BS 3','BN 18','BA 44'),('PK 82',82,64,5,'2022-04-06','BS 21','BN 14','BA 24'),('PK 83',83,53,4,'2021-12-25','BS 26','BN 29','BA 9'),('PK 84',84,35,10,'2021-09-19','BS 6','BN 32','BA 47'),('PK 85',85,23,7,'2022-08-10','BS 14','BN 23','BA 25'),('PK 86',86,36,9,'2021-09-15','BS 1','BN 27','BA 2'),('PK 87',87,34,5,'2022-04-02','BS 19','BN 50','BA 4'),('PK 88',88,4,9,'2022-03-07','BS 15','BN 35','BA 31'),('PK 89',89,62,2,'2022-06-17','BS 2','BN 8','BA 18'),('PK 9',9,35,9,'2021-08-21','BS 1','BN 3','BA 10'),('PK 90',90,44,9,'2021-12-30','BS 27','BN 28','BA 5'),('PK 91',91,64,10,'2022-08-03','BS 29','BN 10','BA 41'),('PK 92',92,38,9,'2022-02-12','BS 28','BN 1','BA 29'),('PK 93',93,79,3,'2022-03-19','BS 22','BN 22','BA 33'),('PK 94',94,33,3,'2021-08-14','BS 7','BN 38','BA 27'),('PK 95',95,51,8,'2022-02-24','BS 10','BN 4','BA 48'),('PK 96',96,43,3,'2021-10-27','BS 24','BN 9','BA 40'),('PK 97',97,67,2,'2022-07-13','BS 20','BN 30','BA 16'),('PK 98',98,1,3,'2022-08-23','BS 18','BN 39','BA 32'),('PK 99',99,66,5,'2021-09-17','BS 6','BN 15','BA 39');
/*!40000 ALTER TABLE `paper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `patientid` varchar(255) NOT NULL,
  `id` bigint DEFAULT NULL,
  `p_address` varchar(255) NOT NULL,
  `p_bloodtype` varchar(255) NOT NULL,
  `p_dob` date NOT NULL,
  `p_full_name` varchar(255) NOT NULL,
  `p_gender` bit(1) NOT NULL,
  `p_heartrate` int unsigned DEFAULT NULL,
  `p_height` int unsigned DEFAULT NULL,
  `p_phone` varchar(255) NOT NULL,
  `p_rhesus` bit(1) NOT NULL,
  `p_weight` int unsigned DEFAULT NULL,
  `insuranceid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`patientid`),
  KEY `FKhorehjdqbu723ap5n7btiuqsq` (`insuranceid`),
  CONSTRAINT `FKhorehjdqbu723ap5n7btiuqsq` FOREIGN KEY (`insuranceid`) REFERENCES `insurance` (`insuranceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES ('BN 1',1,'3 Cody Terrace','3','2022-05-04','Gaultiero Crossland',_binary '',92,169,'5805650739',_binary '',94,'BH 35'),('BN 10',10,'0 Mesta Court','3','2022-01-15','Melonie Swash',_binary '',88,72,'3316222680',_binary '',15,'BH 3'),('BN 11',11,'2 Caliangt Street','4','2021-12-09','Constantine Licquorish',_binary '\0',51,98,'6239833879',_binary '',75,'BH 11'),('BN 12',12,'62429 Tennessee Pass','4','2021-11-23','Currey Lambal',_binary '\0',189,65,'3293494818',_binary '',5,'BH 20'),('BN 13',13,'985 Shoshone Park','4','2022-08-01','Adelbert Barrat',_binary '\0',166,123,'1345192954',_binary '\0',80,'BH 45'),('BN 14',14,'773 Dwight Hill','4','2021-11-25','Piotr Eglin',_binary '',79,84,'7426449370',_binary '',10,'BH 18'),('BN 15',15,'65885 Sugar Point','1','2021-12-27','Melli Estcourt',_binary '\0',105,66,'2191552121',_binary '',54,'BH 14'),('BN 16',16,'498 2nd Alley','4','2022-03-21','Bentlee Dee',_binary '',161,122,'4826939872',_binary '\0',111,'BH 4'),('BN 17',17,'482 Transport Place','3','2022-06-21','Josefina Setter',_binary '',101,141,'1178938510',_binary '',39,'BH 33'),('BN 18',18,'1165 Stuart Center','2','2022-03-12','Janice Holyard',_binary '\0',149,149,'7516657796',_binary '\0',87,'BH 43'),('BN 19',19,'4441 Hayes Court','4','2021-11-25','Jaye Hooban',_binary '',175,178,'4473991850',_binary '\0',66,'BH 30'),('BN 2',2,'9 Utah Road','4','2022-06-25','Durward Tadgell',_binary '\0',187,80,'4768768595',_binary '\0',1,'BH 15'),('BN 20',20,'8086 Thompson Circle','3','2021-10-30','Clementius McVicar',_binary '\0',150,80,'1167029662',_binary '',90,'BH 5'),('BN 21',21,'9 Mifflin Parkway','3','2021-09-24','Tamera Hencke',_binary '\0',134,167,'1364127715',_binary '\0',92,'BH 17'),('BN 22',22,'84 Northview Plaza','4','2021-11-18','Milly Brickell',_binary '\0',65,124,'1435552881',_binary '\0',104,'BH 37'),('BN 23',23,'7 Crownhardt Circle','4','2022-05-24','Blair Backshaw',_binary '',106,86,'4541702507',_binary '',4,'BH 1'),('BN 24',24,'35 Jana Plaza','3','2022-01-04','Enriqueta Carswell',_binary '',63,70,'7536656094',_binary '\0',29,'BH 12'),('BN 25',25,'97196 Tennyson Road','2','2021-10-04','Wendi Clarkin',_binary '',97,90,'9847229797',_binary '',90,'BH 27'),('BN 26',26,'1 Lien Hill','3','2022-07-16','Marlo Libreros',_binary '\0',193,111,'4143958929',_binary '',37,'BH 24'),('BN 27',27,'663 Schiller Lane','4','2022-03-23','Grove Stiger',_binary '',187,107,'9875606062',_binary '\0',47,'BH 25'),('BN 28',28,'27756 Crescent Oaks Alley','1','2022-01-12','Marven Lampl',_binary '',119,165,'9634657621',_binary '',24,'BH 47'),('BN 29',29,'90500 Beilfuss Way','3','2022-03-02','Milty O\'Neal',_binary '\0',163,171,'8828187699',_binary '',94,'BH 13'),('BN 3',3,'463 Mendota Hill','4','2022-03-18','Lukas Gircke',_binary '',98,163,'7289628150',_binary '',7,'BH 10'),('BN 30',30,'82516 South Hill','4','2022-05-08','Henri Teulier',_binary '\0',78,167,'3954303801',_binary '\0',57,'BH 32'),('BN 31',31,'21 Hagan Center','3','2022-05-17','Pietro Ortelt',_binary '',99,138,'3857571291',_binary '',60,'BH 29'),('BN 32',32,'8283 Nancy Drive','1','2022-03-26','Marysa Rothchild',_binary '',199,134,'2433029583',_binary '',8,'BH 38'),('BN 33',33,'38 Forster Hill','2','2021-09-28','Ingra Acuna',_binary '\0',64,57,'1907159756',_binary '',69,'BH 8'),('BN 34',34,'4 Golden Leaf Pass','4','2022-04-13','Tabina Coverdill',_binary '',78,98,'5998659966',_binary '',35,'BH 21'),('BN 35',35,'64 School Trail','2','2022-03-24','Bobbette Garrique',_binary '',200,66,'8756988009',_binary '\0',54,'BH 48'),('BN 36',36,'5 Maple Wood Parkway','2','2021-10-12','Dougie Boij',_binary '\0',176,77,'7675406693',_binary '\0',84,'BH 36'),('BN 37',37,'6667 Buell Street','1','2022-04-23','Chrissy Lishman',_binary '\0',70,196,'2692005082',_binary '\0',27,'BH 34'),('BN 38',38,'19778 Lawn Terrace','3','2021-12-16','Margaret Deny',_binary '',75,89,'7545034334',_binary '',80,'BH 44'),('BN 39',39,'97 Meadow Ridge Circle','2','2022-01-11','Jessalin Pittaway',_binary '',117,150,'8863097636',_binary '',9,'BH 39'),('BN 4',4,'1100 New Castle Drive','4','2021-11-12','Charlene Sedgemond',_binary '',114,90,'3018622499',_binary '',91,'BH 49'),('BN 40',40,'53979 Reindahl Hill','2','2022-04-29','Sanson Philippe',_binary '',143,113,'7943856162',_binary '\0',51,'BH 46'),('BN 41',41,'627 Mitchell Trail','2','2021-10-26','Demetra Coultas',_binary '\0',76,182,'5473396380',_binary '',71,'BH 26'),('BN 42',42,'69034 International Avenue','1','2021-09-17','Henrie Watford',_binary '\0',176,92,'9071910743',_binary '',77,'BH 7'),('BN 43',43,'47 Forest Dale Trail','2','2021-10-16','Vitia Melby',_binary '',144,107,'3774440574',_binary '\0',37,'BH 9'),('BN 44',44,'768 Heffernan Way','3','2022-03-14','Ettore Hakking',_binary '',101,176,'8986552207',_binary '',111,'BH 40'),('BN 45',45,'65 Brentwood Point','3','2022-04-02','Rosalyn Binyon',_binary '\0',141,78,'5622967535',_binary '',47,'BH 31'),('BN 46',46,'228 Bellgrove Place','4','2021-09-27','Alessandro Cutmere',_binary '',147,58,'9819313243',_binary '',79,'BH 6'),('BN 47',47,'3304 Harbort Court','4','2021-11-15','Jillayne Sidebotton',_binary '\0',74,53,'6166466942',_binary '\0',21,'BH 28'),('BN 48',48,'32269 Golden Leaf Parkway','3','2022-04-05','Elisabet Bantham',_binary '',186,158,'7911042038',_binary '\0',1,'BH 42'),('BN 49',49,'8943 Farwell Drive','1','2021-08-26','Simmonds De Michele',_binary '\0',57,195,'3914594321',_binary '\0',54,'BH 16'),('BN 5',5,'6523 Scoville Parkway','3','2021-11-01','Nikaniki Tumelty',_binary '\0',64,103,'6503522321',_binary '',24,'BH 22'),('BN 50',50,'81430 Sundown Way','2','2022-03-10','Grant Thresher',_binary '',66,171,'1419716426',_binary '\0',78,'BH 23'),('BN 6',6,'706 Old Gate Hill','2','2021-12-31','Kayle Haydn',_binary '',198,184,'8064862604',_binary '\0',24,'BH 19'),('BN 7',7,'9 Lighthouse Bay Street','2','2021-10-18','Bendite Devo',_binary '\0',143,90,'4143787114',_binary '',103,'BH 50'),('BN 8',8,'38 Fremont Parkway','3','2022-02-27','Diarmid Andryushin',_binary '\0',100,192,'3268484585',_binary '\0',65,'BH 2'),('BN 9',9,'31994 Barby Lane','4','2022-01-27','Joly De Bruyne',_binary '',195,108,'7985046241',_binary '',43,'BH 41');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prescription`
--

DROP TABLE IF EXISTS `prescription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prescription` (
  `prescriptionid` varchar(255) NOT NULL,
  `id` bigint DEFAULT NULL,
  `p_amo` int NOT NULL,
  `p_det` varchar(255) DEFAULT NULL,
  `p_dos` int NOT NULL,
  `papid` varchar(255) NOT NULL,
  `paperid` varchar(255) NOT NULL,
  PRIMARY KEY (`prescriptionid`),
  KEY `FKinogy2da1uqf43ssa5lucnwak` (`papid`),
  CONSTRAINT `FKinogy2da1uqf43ssa5lucnwak` FOREIGN KEY (`papid`) REFERENCES `paper` (`paperid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prescription`
--

LOCK TABLES `prescription` WRITE;
/*!40000 ALTER TABLE `prescription` DISABLE KEYS */;
INSERT INTO `prescription` VALUES ('DT 1',1,49,'Daily',10,'PK 91',''),('DT 10',10,2,'Weekly',10,'PK 63',''),('DT 11',11,33,'Weekly',4,'PK 75',''),('DT 12',12,32,'Once',8,'PK 43',''),('DT 13',13,27,'Seldom',9,'PK 34',''),('DT 14',14,49,'Daily',6,'PK 79',''),('DT 15',15,19,'Often',4,'PK 37',''),('DT 16',16,42,'Weekly',4,'PK 65',''),('DT 17',17,35,'Seldom',7,'PK 76',''),('DT 18',18,49,'Monthly',3,'PK 35',''),('DT 19',19,26,'Weekly',7,'PK 93',''),('DT 2',2,17,'Often',4,'PK 92',''),('DT 20',20,10,'Daily',1,'PK 53',''),('DT 21',21,7,'Often',3,'PK 83',''),('DT 22',22,35,'Yearly',3,'PK 22',''),('DT 23',23,19,'Often',7,'PK 44',''),('DT 24',24,22,'Weekly',1,'PK 98',''),('DT 25',25,32,'Weekly',8,'PK 88',''),('DT 26',26,4,'Once',1,'PK 16',''),('DT 27',27,33,'Monthly',4,'PK 45',''),('DT 28',28,5,'Weekly',8,'PK 55',''),('DT 29',29,15,'Weekly',7,'PK 48',''),('DT 3',3,42,'Monthly',6,'PK 94',''),('DT 30',30,14,'Weekly',8,'PK 95',''),('DT 31',31,5,'Seldom',6,'PK 90',''),('DT 32',32,34,'Yearly',1,'PK 49',''),('DT 33',33,28,'Monthly',3,'PK 2',''),('DT 34',34,25,'Never',4,'PK 42',''),('DT 35',35,25,'Once',4,'PK 78',''),('DT 36',36,44,'Often',6,'PK 80',''),('DT 37',37,21,'Monthly',9,'PK 28',''),('DT 38',38,6,'Weekly',1,'PK 8',''),('DT 39',39,3,'Daily',1,'PK 73',''),('DT 4',4,35,'Weekly',9,'PK 69',''),('DT 40',40,6,'Often',9,'PK 12',''),('DT 41',41,31,'Never',9,'PK 81',''),('DT 42',42,16,'Often',7,'PK 27',''),('DT 43',43,40,'Once',8,'PK 89',''),('DT 44',44,24,'Weekly',9,'PK 61',''),('DT 45',45,33,'Once',4,'PK 13',''),('DT 46',46,46,'Once',7,'PK 40',''),('DT 47',47,29,'Once',3,'PK 4',''),('DT 48',48,17,'Weekly',1,'PK 74',''),('DT 49',49,10,'Yearly',9,'PK 17',''),('DT 5',5,22,'Yearly',5,'PK 57',''),('DT 50',50,34,'Weekly',7,'PK 5',''),('DT 6',6,16,'Once',7,'PK 86',''),('DT 7',7,11,'Never',3,'PK 41',''),('DT 8',8,3,'Seldom',1,'PK 96',''),('DT 9',9,32,'Monthly',3,'PK 82','');
/*!40000 ALTER TABLE `prescription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profile` (
  `profileid` varchar(255) NOT NULL,
  `id` bigint DEFAULT NULL,
  `p_dia` varchar(255) DEFAULT NULL,
  `p_his` text,
  PRIMARY KEY (`profileid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile`
--

LOCK TABLES `profile` WRITE;
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
INSERT INTO `profile` VALUES ('BA 1',1,'-1','AliquamAugue.xls'),('BA 10',10,' test ','MontesNasceturRidiculus.gif'),('BA 11',11,'﻿','CumSociis.ppt'),('BA 12',12,',。・:*:・゜’( ☻ ω ☻ )。・:*:・゜’','Ultrices.txt'),('BA 13',13,'1.00','EuismodScelerisque.jpeg'),('BA 14',14,'<script>alert(\'hi\')</script>','NuncProin.jpeg'),('BA 15',15,'١٢٣','OdioElementum.xls'),('BA 16',16,'␣','NullaNequeLibero.jpeg'),('BA 17',17,'̡͓̞ͅI̗̘̦͝n͇͇͙v̮̫ok̲̫̙͈i̖͙̭̹̠̞n̡̻̮̣̺g̲͈͙̭͙̬͎ ̰t͔̦h̞̲e̢̤ ͍̬̲͖f̴̘͕̣è͖ẹ̥̩l͖͔͚i͓͚̦͠n͖͍̗͓̳̮g͍ ̨o͚̪͡f̘̣̬ ̖̘͖̟͙̮c҉͔̫͖͓͇͖ͅh̵̤̣͚͔á̗̼͕ͅo̼̣̥s̱͈̺̖̦̻͢.̛̖̞̠̫̰','Nec.ppt'),('BA 18',18,'1E2','NibhInHac.mp3'),('BA 19',19,'<img src=x onerror=alert(\'hi\') />','NullaInteger.avi'),('BA 2',2,'0/0','EratVolutpat.xls'),('BA 20',20,'\'','CuraeDonecPharetra.tiff'),('BA 21',21,'・(￣∀￣)・:*:','Pellentesque.txt'),('BA 22',22,'../../../../../../../../../../../etc/passwd%00','NullaSuscipit.mov'),('BA 23',23,'울란바토르','InConsequatUt.mov'),('BA 24',24,'1;DROP TABLE users','Id.ppt'),('BA 25',25,'社會科學院語學研究所','Eu.jpeg'),('BA 26',26,'1E+02','DapibusDolor.xls'),('BA 27',27,'<img src=x onerror=alert(\'hi\') />','AmetDiamIn.xls'),('BA 28',28,'הָיְתָהtestالصفحات التّحول','VulputateUt.jpeg'),('BA 29',29,'␡','Massa.avi'),('BA 3',3,'ﾟ･✿ヾ╲(｡◕‿◕｡)╱✿･ﾟ','Sociis.ppt'),('BA 30',30,'울란바토르','NuncNislDuis.jpeg'),('BA 31',31,'00˙Ɩ$-','Hac.gif'),('BA 32',32,'\"\'\'\'\'\"\'\"','Ultrices.jpeg'),('BA 33',33,' test ','Vitae.avi'),('BA 34',34,'? ? ? ?','PurusPhasellus.avi'),('BA 35',35,'(｡◕ ∀ ◕｡)','BlanditNon.avi'),('BA 36',36,'-1','JustoMorbiUt.ppt'),('BA 37',37,'(╯°□°）╯︵ ┻━┻)  ','MetusVitae.avi'),('BA 38',38,'1/0','EratQuisqueErat.mp3'),('BA 39',39,'!@#$%^&*()','LuctusTinciduntNulla.mp3'),('BA 4',4,'00˙Ɩ$-','Sem.mpeg'),('BA 40',40,'社會科學院語學研究所','Congue.avi'),('BA 41',41,'\'\"\'','ConsectetuerAdipiscingElit.jpeg'),('BA 42',42,'\"\'\"\'\"\'\'\'\'\"','InFaucibusOrci.ppt'),('BA 43',43,'0️⃣ 1️⃣ 2️⃣ 3️⃣ 4️⃣ 5️⃣ 6️⃣ 7️⃣ 8️⃣ 9️⃣ ?','SedTristiqueIn.avi'),('BA 44',44,'__ﾛ(,_,*)','IntegerANibh.mov'),('BA 45',45,'␢','Vestibulum.doc'),('BA 46',46,'(｡◕ ∀ ◕｡)','Cursus.xls'),('BA 47',47,'\'\"\'','FacilisiCras.avi'),('BA 48',48,'(╯°□°）╯︵ ┻━┻)  ','IdSapienIn.xls'),('BA 49',49,'‫test‫','Odio.tiff'),('BA 5',5,'$1.00','VehiculaCondimentumCurabitur.mp3'),('BA 50',50,'1E02','AtTurpis.xls'),('BA 6',6,'<img src=x onerror=alert(\'hi\') />','IntegerAc.mpeg'),('BA 7',7,'? ? ? ? ? ? ? ?','MorbiNonQuam.ppt'),('BA 8',8,'\'\'','NullaSuscipit.tiff'),('BA 9',9,'1E02','Nunc.xls');
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule` (
  `scheduleid` varchar(255) NOT NULL,
  `id` bigint DEFAULT NULL,
  `s_shi` varchar(255) DEFAULT NULL,
  `s_wor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`scheduleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
INSERT INTO `schedule` VALUES ('LLV 1',1,'4','8/18/2021'),('LLV 10',10,'4','4/1/2022'),('LLV 11',11,'3','5/4/2022'),('LLV 12',12,'5','11/18/2021'),('LLV 13',13,'1','7/30/2022'),('LLV 14',14,'6','1/22/2022'),('LLV 15',15,'6','4/28/2022'),('LLV 16',16,'6','6/18/2022'),('LLV 17',17,'3','7/5/2022'),('LLV 18',18,'2','8/27/2022'),('LLV 19',19,'6','2/13/2022'),('LLV 2',2,'4','5/25/2022'),('LLV 20',20,'6','2/22/2022'),('LLV 21',21,'1','10/5/2021'),('LLV 22',22,'5','5/12/2022'),('LLV 23',23,'6','8/25/2022'),('LLV 24',24,'5','3/20/2022'),('LLV 25',25,'6','3/30/2022'),('LLV 26',26,'6','4/24/2022'),('LLV 27',27,'2','8/14/2022'),('LLV 28',28,'1','4/27/2022'),('LLV 29',29,'6','3/1/2022'),('LLV 3',3,'3','5/15/2022'),('LLV 30',30,'6','2/4/2022'),('LLV 31',31,'2','10/22/2021'),('LLV 32',32,'2','10/1/2021'),('LLV 33',33,'3','6/5/2022'),('LLV 34',34,'6','8/14/2021'),('LLV 35',35,'5','3/14/2022'),('LLV 36',36,'6','1/11/2022'),('LLV 37',37,'3','8/9/2022'),('LLV 38',38,'4','6/17/2022'),('LLV 39',39,'6','2/2/2022'),('LLV 4',4,'6','6/17/2022'),('LLV 40',40,'5','8/31/2021'),('LLV 41',41,'3','12/10/2021'),('LLV 42',42,'2','2/20/2022'),('LLV 43',43,'6','11/5/2021'),('LLV 44',44,'6','2/1/2022'),('LLV 45',45,'3','1/18/2022'),('LLV 46',46,'4','11/20/2021'),('LLV 47',47,'6','5/28/2022'),('LLV 48',48,'6','12/29/2021'),('LLV 49',49,'1','9/3/2021'),('LLV 5',5,'1','2/8/2022'),('LLV 50',50,'1','8/23/2021'),('LLV 6',6,'5','7/29/2022'),('LLV 7',7,'1','8/13/2021'),('LLV 8',8,'1','8/26/2022'),('LLV 9',9,'3','1/24/2022');
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `total_invoice`
--

DROP TABLE IF EXISTS `total_invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `total_invoice` (
  `invoiceid` varchar(255) NOT NULL,
  `id` bigint DEFAULT NULL,
  `t_print` date DEFAULT NULL,
  `med_invoiceid` varchar(255) NOT NULL,
  `papid` varchar(255) NOT NULL,
  PRIMARY KEY (`invoiceid`),
  KEY `FKeitdo4d4u0ge4rlwm0pwrr2hf` (`med_invoiceid`),
  KEY `FKht0k18bs44uvln4heoat3uv0i` (`papid`),
  CONSTRAINT `FKeitdo4d4u0ge4rlwm0pwrr2hf` FOREIGN KEY (`med_invoiceid`) REFERENCES `med_invoice` (`med_invoiceid`),
  CONSTRAINT `FKht0k18bs44uvln4heoat3uv0i` FOREIGN KEY (`papid`) REFERENCES `paper` (`paperid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `total_invoice`
--

LOCK TABLES `total_invoice` WRITE;
/*!40000 ALTER TABLE `total_invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `total_invoice` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-15 17:32:33
