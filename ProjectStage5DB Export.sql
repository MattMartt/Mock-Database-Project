-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: 127.0.0.1    Database: conference
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `Award`
--

DROP TABLE IF EXISTS `Award`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Award` (
  `awardID` char(10) NOT NULL,
  `awardTitle` varchar(60) NOT NULL,
  PRIMARY KEY (`awardID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Award`
--

LOCK TABLES `Award` WRITE;
/*!40000 ALTER TABLE `Award` DISABLE KEYS */;
INSERT INTO `Award` VALUES ('7001','Best Research Paper'),('7002','Best Research Paper Runner Up'),('7003','Best Experiment, Analysis, & Benchmark Paper'),('7004','Best Experiment, Analysis, & Benchmark Paper Runner Up'),('7005','Best Industy Paper'),('7006','Best Industy Paper Runner Up');
/*!40000 ALTER TABLE `Award` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `awarded_paper`
--

DROP TABLE IF EXISTS `awarded_paper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `awarded_paper` (
  `aw_Id` char(10) NOT NULL,
  `ppr_Id` char(10) NOT NULL,
  PRIMARY KEY (`aw_Id`,`ppr_Id`),
  KEY `ppr_Id` (`ppr_Id`),
  CONSTRAINT `awarded_paper_ibfk_1` FOREIGN KEY (`aw_Id`) REFERENCES `Award` (`awardID`),
  CONSTRAINT `awarded_paper_ibfk_2` FOREIGN KEY (`ppr_Id`) REFERENCES `Papers` (`paperID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `awarded_paper`
--

LOCK TABLES `awarded_paper` WRITE;
/*!40000 ALTER TABLE `awarded_paper` DISABLE KEYS */;
INSERT INTO `awarded_paper` VALUES ('7001','5006'),('7001','5007'),('7002','5008'),('7003','5009'),('7004','5010'),('7004','5011'),('7005','5012'),('7006','5013'),('7006','5014');
/*!40000 ALTER TABLE `awarded_paper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Committee`
--

DROP TABLE IF EXISTS `Committee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Committee` (
  `committeeID` char(10) NOT NULL,
  `committeeName` varchar(40) NOT NULL,
  `ws_Id` char(10) NOT NULL,
  PRIMARY KEY (`committeeID`),
  KEY `ws_Id` (`ws_Id`),
  CONSTRAINT `committee_ibfk_1` FOREIGN KEY (`ws_Id`) REFERENCES `Workshop` (`workshopID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Committee`
--

LOCK TABLES `Committee` WRITE;
/*!40000 ALTER TABLE `Committee` DISABLE KEYS */;
INSERT INTO `Committee` VALUES ('2001','QDSM Program Commitee','1004'),('2002','TPCTC Program Commitee','1002');
/*!40000 ALTER TABLE `Committee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Papers`
--

DROP TABLE IF EXISTS `Papers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Papers` (
  `paperID` char(10) NOT NULL,
  `year` char(4) NOT NULL,
  `title` tinytext NOT NULL,
  `sessionID` char(10) NOT NULL,
  PRIMARY KEY (`paperID`),
  KEY `sessionID` (`sessionID`),
  CONSTRAINT `papers_ibfk_1` FOREIGN KEY (`sessionID`) REFERENCES `Session` (`sessionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Papers`
--

LOCK TABLES `Papers` WRITE;
/*!40000 ALTER TABLE `Papers` DISABLE KEYS */;
INSERT INTO `Papers` VALUES ('5001','2023','The Composable Data Management System Manifesto','4012'),('5002','2023','An Experimental Evaluation of Process Concept Drift Detection','4013'),('5003','2022','Can Foundation Models Wrangle Your Data?','4014'),('5004','2023','InfiniStore: Elastic Serverless Cloud Storage','4015'),('5005','2022','Sage: A System for Uncertain Network Analysis','4016'),('5006','2023','Auto-Tables: Synthesizing Multi-Step Transformations to Relationalize Tables without Using Examples','4017'),('5007','2023','DBSP: Automatic Incremental View Maintenance for Rich Query Languages','4018'),('5008','2022','PIM-tree: A Skew-resistant Index for Processing-in-Memory','4019'),('5009','2022','The LDBC Social Network Benchmark: Business Intelligence Workload','4020'),('5010','2023','Epistemic Parity: Reproducibility as an Evaluation Metric for Differential Privacy','4021'),('5011','2023','A Deep Dive into Common Open Formats for Analytical DBMSs','4022'),('5012','2023','Kora: A Cloud-Native Event Streaming Platform For Kafka','4023'),('5013','2023','PyTorch FSDP: Experiences on Scaling Fully Sharded Data Parallel','4024'),('5014','2023','FEBench: A Benchmark for Real-Time Relational Data Feature Extraction','4025');
/*!40000 ALTER TABLE `Papers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Participant`
--

DROP TABLE IF EXISTS `Participant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Participant` (
  `participantID` char(10) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `fname` varchar(25) NOT NULL,
  `lname` varchar(25) NOT NULL,
  `affiliation` varchar(25) DEFAULT NULL,
  `phoneNum` char(10) DEFAULT NULL,
  PRIMARY KEY (`participantID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Participant`
--

LOCK TABLES `Participant` WRITE;
/*!40000 ALTER TABLE `Participant` DISABLE KEYS */;
INSERT INTO `Participant` VALUES ('6001','eunjae@linecorp.com','Eunjae','Lee','LINE+',NULL),('6002','samhnoh@unist.ac.kr','Sam','Noh','UNIST',NULL),('6003','seojiwon@hanyang.ac.kr','Jiwon','Seo','Hanyang University',NULL),('6004','jzhang33@gmu.edu','Jingyuan','Zhang','George Mason Uni',NULL),('6005','shenlan.wa@alibaba-inc.com','Ao','Wang','Alibaba Group',NULL),('6006','xiaolongm@nevada.unr.edu','Xiaolong','Ma','Uni of Nevada',NULL),('6007','bcarver2@gmu.edu','Benjamin','Carver','George Mason Uni',NULL),('6008','nnewman7@gmu.edu','Nicholas','Newman','George Mason Uni',NULL),('6009','aanwar@umn.edu','Ali','Anwar','University of Minnesota',NULL),('6010','lukas.rupprecht@ibm.com','Lukas','Rupprecht','IBM Research',NULL),('6011','vtarasov@us.ibm.com','Vasily','Tarasov','IBM Research',NULL),('6012','skourtis@soe.ucsc.edu','Dimitrios','Skourtis','Redpanda Data',NULL),('6013','fyan5@central.uh.edu','Feng','Yan','Uni of Houston',NULL),('6014','mrz7dp@virginia.edu','Yue','Cheng','Uni of Virginia',NULL),('6015','avanika@cs.stanford.edu','Avanika','Narayan','Stanford University',NULL),('6016','ines.chami@numbersstation.ai','Ines','Chami','Numbers Station',NULL),('6017','lorr1@cs.stanford.edu','Laurel','Orr','Stanford University',NULL),('6018','chrismre@cs.stanford.edu','Christopher','Ré','Stanford University',NULL),('6019','niklas.adams@pads.rwth-aachen.de','Jan','Adams','RWTH Aachen University',NULL),('6020','brockhoff@pads.rwth-aachen.de','Tobias','Brockhoff','RWTH Aachen University',NULL),('6021','cameron.pitsch@rwth-aachen.de','Cameron','Pitsch','RWTH Aachen University',NULL),('6022','wvdaalst@pads.rwth-aachen.de','Wil','Van Der Aalst','RWTH Aachen University',NULL),('6023','pedroerp@meta.com','Pedro','Pedreira','Meta Platforms Inc.',NULL),('6024','wes@voltrondata.com','Wes','McKinney','Voltron Data',NULL),('6025','oerling@meta.com','Orri','Erling','Meta Platforms Inc.',NULL),('6026','satya.valluri@databricks.com','Satya','Valluri','Databricks Inc.',NULL),('6027','kkaranasos@meta.com','Konstantinos','Karanasos','Meta Platforms Inc.',NULL),('6028','mohamed.zait@databricks.com','Mohamed','Zait','Databricks Inc.',NULL),('6029','scottas@meta.com','Scott','Schneider','Meta Platforms Inc.',NULL),('6030','jacques@sundeck.io','Jacques','Nadeau','Sundeck',NULL);
/*!40000 ALTER TABLE `Participant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Registrant`
--

DROP TABLE IF EXISTS `Registrant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Registrant` (
  `registrantID` char(10) NOT NULL,
  `datePaid` date NOT NULL,
  `address` varchar(40) NOT NULL,
  `reg_amount` varchar(30) NOT NULL,
  `reg_type` varchar(30) NOT NULL,
  `partID` char(10) NOT NULL,
  `grt_Id` char(10) NOT NULL,
  PRIMARY KEY (`registrantID`),
  KEY `partID` (`partID`),
  KEY `grt_Id` (`grt_Id`),
  CONSTRAINT `registrant_ibfk_1` FOREIGN KEY (`partID`) REFERENCES `Participant` (`participantID`),
  CONSTRAINT `registrant_ibfk_2` FOREIGN KEY (`grt_Id`) REFERENCES `Travel_Grant` (`grantId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Registrant`
--

LOCK TABLES `Registrant` WRITE;
/*!40000 ALTER TABLE `Registrant` DISABLE KEYS */;
/*!40000 ALTER TABLE `Registrant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `ppr_Id` char(10) NOT NULL,
  `part_Id` char(10) NOT NULL,
  PRIMARY KEY (`ppr_Id`,`part_Id`),
  KEY `part_Id` (`part_Id`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`part_Id`) REFERENCES `Participant` (`participantID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Session`
--

DROP TABLE IF EXISTS `Session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Session` (
  `sessionID` char(10) NOT NULL,
  `sessionType` varchar(25) NOT NULL,
  `sessionDATE` date NOT NULL,
  `sessionRoom` varchar(40) NOT NULL,
  `startTime` time NOT NULL,
  `endTime` time NOT NULL,
  PRIMARY KEY (`sessionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Session`
--

LOCK TABLES `Session` WRITE;
/*!40000 ALTER TABLE `Session` DISABLE KEYS */;
INSERT INTO `Session` VALUES ('4001','breakfast','2023-08-28','junior Ballroom Foyers','07:30:00','08:30:00'),('4002','breakfast','2023-08-28','pavillion','07:30:00','08:30:00'),('4003','breakfast','2023-08-29','junior ballroom foyers','07:30:00','08:30:00'),('4004','breakfast','2023-08-29','pavillion','07:30:00','08:30:00'),('4005','breakfast','2023-08-29','grand ballroom foyers','07:30:00','08:30:00'),('4006','coffee break','2023-08-29','pavilion','10:00:00','10:30:00'),('4007','coffee break','2023-08-29','junior ballroom foyers','10:00:00','10:30:00'),('4008','exhibits','2023-08-29','pavilion ballroom','10:00:00','17:30:00'),('4009','VLDB Endowment Report','2023-08-31','ballroom','08:30:00','10:00:00'),('4010','Tutorial','2023-08-31','port mcneil','15:30:00','17:00:00'),('4011','Panel','2023-08-29','grand ballroom','15:30:00','17:00:00'),('4012','paper','2023-08-29','grand ballroom','10:30:00','12:00:00'),('4013','paper','2023-08-29','gulf island BC','15:30:00','17:00:00'),('4014','paper','2023-08-30','junior ballroom AB','10:30:00','12:00:00'),('4015','paper','2023-08-31','parksville','10:30:00','12:00:00'),('4016','paper','2023-08-31','finback','13:30:00','15:00:00'),('4017','paper','2023-08-29','junior ballroom AB','10:30:00','12:00:00'),('4018','paper','2023-08-30','gulf islands BC','10:30:00','12:00:00'),('4019','paper','2023-08-31','parksville','13:30:00','15:00:00'),('4020','paper','2023-08-30','parksville','15:30:00','17:00:00'),('4021','paper','2023-08-31','orca','10:30:00','12:00:00'),('4022','paper','2023-08-30','parksville','15:30:00','17:00:00'),('4023','paper','2023-08-31','grand ballroom','15:30:00','17:00:00'),('4024','paper','2023-08-30','grand ballroom','13:30:00','15:00:00'),('4025','paper','2023-09-01','online','16:00:00','17:30:00'),('4026','Sponsored Talk','2023-08-29','grand ballroom','18:00:00','18:20:00'),('4027','Sponsored Talk','2023-08-29','grand ballroom','17:30:00','18:00:00'),('4028','Sponsored Talk','2023-08-29','grand ballroom','19:05:00','19:25:00'),('4029','Sponsored Talk','2023-08-29','grand ballroom','18:50:00','19:05:00'),('4030','Sponsored Talk','2023-08-29','junior ballroom AB','18:15:00','18:45:00'),('4031','Sponsored Talk','2023-08-29','junior ballroom AB','17:30:00','17:45:00'),('4032','Sponsored Talk','2023-08-29','junior ballroom AB','17:45:00','18:00:00'),('4033','Sponsored Talk','2023-08-31','port mcneil','17:30:00','18:00:00'),('4034','Sponsored Talk','2023-08-31','port mcneil','18:00:00','18:15:00'),('4035','Sponsored Talk','2023-08-31','junior ballroom AB','17:30:00','18:00:00');
/*!40000 ALTER TABLE `Session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sponsor`
--

DROP TABLE IF EXISTS `Sponsor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Sponsor` (
  `sponsorID` char(10) NOT NULL,
  `minDonation` float NOT NULL,
  `sponsorLvl` char(10) NOT NULL,
  `companyName` varchar(30) NOT NULL,
  `seshID` char(10) NOT NULL,
  PRIMARY KEY (`sponsorID`),
  KEY `seshID` (`seshID`),
  CONSTRAINT `sponsor_ibfk_1` FOREIGN KEY (`seshID`) REFERENCES `Session` (`sessionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sponsor`
--

LOCK TABLES `Sponsor` WRITE;
/*!40000 ALTER TABLE `Sponsor` DISABLE KEYS */;
INSERT INTO `Sponsor` VALUES ('8001',30000,'Diamond','Microsoft','4033'),('8002',30000,'Diamond','Google','4030'),('8003',30000,'Diamond','Huawei','4035'),('8004',30000,'Diamond','Salesforce','4027'),('8005',20000,'Platinum','Amazon','4026'),('8006',20000,'Platinum','Databricks','4028'),('8007',10000,'Gold','Oracle','4031'),('8008',10000,'Gold','OceanBase','4032'),('8009',10000,'Gold','SnowFlake','4029'),('8010',10000,'Gold','Alibaba','4034');
/*!40000 ALTER TABLE `Sponsor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Travel_Grant`
--

DROP TABLE IF EXISTS `Travel_Grant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Travel_Grant` (
  `grantId` char(10) NOT NULL,
  `funder` varchar(40) NOT NULL,
  `eligibleApplicant` varchar(40) NOT NULL,
  `grantAmount` float NOT NULL,
  `expenses_Covered` varchar(25) NOT NULL,
  PRIMARY KEY (`grantId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Travel_Grant`
--

LOCK TABLES `Travel_Grant` WRITE;
/*!40000 ALTER TABLE `Travel_Grant` DISABLE KEYS */;
INSERT INTO `Travel_Grant` VALUES ('7001','NSF','US Students',1750,'Travel and lodging'),('7002','SPEND','Non US Students',1500,'Travel and lodging');
/*!40000 ALTER TABLE `Travel_Grant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Workshop`
--

DROP TABLE IF EXISTS `Workshop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Workshop` (
  `workshopID` char(10) NOT NULL,
  `WS_Name` varchar(50) NOT NULL,
  `WS_Date` date NOT NULL,
  `startTime` time NOT NULL,
  `endTime` time NOT NULL,
  `WS_Room` varchar(40) NOT NULL,
  PRIMARY KEY (`workshopID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Workshop`
--

LOCK TABLES `Workshop` WRITE;
/*!40000 ALTER TABLE `Workshop` DISABLE KEYS */;
INSERT INTO `Workshop` VALUES ('1001','Cloud DB','2023-08-28','08:30:00','17:00:00','Junior Ballroom D'),('1002','TPCTC','2023-08-28','08:30:00','17:00:00','Junior ballroom AB'),('1003','Industry Challenge','2023-09-01','10:00:00','17:20:00','Finback'),('1004','QDSM','2023-09-01','10:30:00','16:00:00','Junior Ballroom C');
/*!40000 ALTER TABLE `Workshop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workshop_session`
--

DROP TABLE IF EXISTS `workshop_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workshop_session` (
  `seshID` char(10) NOT NULL,
  `wkspID` char(10) NOT NULL,
  PRIMARY KEY (`seshID`),
  KEY `wkspID` (`wkspID`),
  CONSTRAINT `workshop_session_ibfk_1` FOREIGN KEY (`wkspID`) REFERENCES `Workshop` (`workshopID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workshop_session`
--

LOCK TABLES `workshop_session` WRITE;
/*!40000 ALTER TABLE `workshop_session` DISABLE KEYS */;
INSERT INTO `workshop_session` VALUES ('3004','1001'),('3001','1002'),('3002','1003'),('3003','1004');
/*!40000 ALTER TABLE `workshop_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `writes`
--

DROP TABLE IF EXISTS `writes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `writes` (
  `ppr_Id` char(10) NOT NULL,
  `part_Id` char(10) NOT NULL,
  PRIMARY KEY (`ppr_Id`,`part_Id`),
  KEY `part_Id` (`part_Id`),
  CONSTRAINT `writes_ibfk_1` FOREIGN KEY (`part_Id`) REFERENCES `Participant` (`participantID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `writes`
--

LOCK TABLES `writes` WRITE;
/*!40000 ALTER TABLE `writes` DISABLE KEYS */;
INSERT INTO `writes` VALUES ('5005','6001'),('5005','6002'),('5005','6003'),('5004','6004'),('5004','6005'),('5004','6006'),('5004','6007'),('5004','6008'),('5004','6009'),('5004','6010'),('5004','6011'),('5004','6012'),('5004','6013'),('5004','6014'),('5003','6015'),('5003','6016'),('5003','6017'),('5003','6018'),('5002','6019'),('5002','6020'),('5002','6021'),('5002','6022'),('5001','6023'),('5001','6024'),('5001','6025'),('5001','6026'),('5001','6027'),('5001','6028'),('5001','6029'),('5001','6030');
/*!40000 ALTER TABLE `writes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ws_topic`
--

DROP TABLE IF EXISTS `ws_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ws_topic` (
  `ws_topic` varchar(110) NOT NULL,
  `ws_Id` char(10) NOT NULL,
  PRIMARY KEY (`ws_Id`,`ws_topic`),
  CONSTRAINT `ws_topic_ibfk_1` FOREIGN KEY (`ws_Id`) REFERENCES `Workshop` (`workshopID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ws_topic`
--

LOCK TABLES `ws_topic` WRITE;
/*!40000 ALTER TABLE `ws_topic` DISABLE KEYS */;
INSERT INTO `ws_topic` VALUES ('autonomous databases','1001'),('cloudDBA','1001'),('disaggregation','1001'),('multitenancy','1001'),('resource usage prediction','1001'),('AI','1002'),('Big Data Analytics','1002'),('blockchain','1002'),('cloud computing','1002'),('hybrid workloads','1002'),('sustainability','1002'),('Accelerator Engine Extensions for Cloud CPUs','1003'),('Declarative Pipeline Optimization','1003'),('Multi-tenant Computing Acceleration in consistent memory access CPU-GPU architecture (e.g., Grace-Hopper','1003'),('Multi-Tenant Database Systems in Disaggregated Architecture','1003'),('Natural Language to SQL (NL2SQL)','1003'),('SQL Rewrite','1003'),('Universal Hardware Accelerated Relational Execution Engines','1003'),('Quantum Algorithms with applications in Quantum Data Science and Management','1004'),('Quantum Computing for problems related to Data Science and Management','1004'),('Quantum Data Management','1004'),('Quantum Data Science','1004'),('Quantum Machine Learning','1004'),('Quantum Software Tools for Quantum Data Science and Management','1004');
/*!40000 ALTER TABLE `ws_topic` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-05 23:16:07
