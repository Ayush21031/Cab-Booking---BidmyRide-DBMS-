-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: bidmyride
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `approve`
--

DROP TABLE IF EXISTS `approve`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `approve` (
  `Request_Id` varchar(100) NOT NULL,
  `Driver_ID` varchar(100) NOT NULL,
  KEY `Request_Id` (`Request_Id`),
  KEY `Driver_ID` (`Driver_ID`),
  CONSTRAINT `approve_ibfk_1` FOREIGN KEY (`Request_Id`) REFERENCES `request` (`Request_ID`),
  CONSTRAINT `approve_ibfk_2` FOREIGN KEY (`Driver_ID`) REFERENCES `driver` (`Driver_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `approve`
--

LOCK TABLES `approve` WRITE;
/*!40000 ALTER TABLE `approve` DISABLE KEYS */;
/*!40000 ALTER TABLE `approve` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billing`
--

DROP TABLE IF EXISTS `billing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `billing` (
  `Trip_ID` varchar(100) NOT NULL,
  `Date_Time` datetime NOT NULL,
  `Distance` int NOT NULL,
  `Fare` int NOT NULL,
  `Pickup_Location_x` int NOT NULL,
  `Pickup_Location_y` int NOT NULL,
  `Drop_Location_x` int NOT NULL,
  `Drop_Location_y` int NOT NULL,
  KEY `Trip_ID` (`Trip_ID`),
  CONSTRAINT `billing_ibfk_1` FOREIGN KEY (`Trip_ID`) REFERENCES `trip` (`Trip_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billing`
--

LOCK TABLES `billing` WRITE;
/*!40000 ALTER TABLE `billing` DISABLE KEYS */;
INSERT INTO `billing` VALUES ('30001','2023-02-10 15:20:17',7,274,24,78,58,62),('30012','2023-02-10 15:20:17',10,315,81,27,61,91),('30023','2023-02-10 15:20:17',8,492,4,2,53,92),('30034','2023-02-10 15:20:17',13,492,18,95,47,26),('30045','2023-02-10 15:20:17',14,228,33,73,64,41),('30056','2023-02-10 15:20:17',7,375,62,57,37,59),('30067','2023-02-10 15:20:17',13,270,78,16,35,90),('30078','2023-02-10 15:20:17',12,404,64,48,46,5),('30089','2023-02-10 15:20:17',5,363,48,29,23,84),('300910','2023-02-10 15:20:17',6,210,66,76,31,8),('301011','2023-02-10 15:20:17',9,440,23,37,38,18),('301112','2023-02-10 15:20:17',13,319,39,58,4,30),('301213','2023-02-10 15:20:17',6,304,86,21,45,24),('301314','2023-02-10 15:20:17',14,350,97,12,86,90),('301415','2023-02-10 15:20:17',8,239,50,41,24,66),('301516','2023-02-10 15:20:17',10,298,57,87,53,83),('301617','2023-02-10 15:20:17',14,348,22,46,6,30),('301718','2023-02-10 15:20:17',12,313,91,62,55,10),('301819','2023-02-10 15:20:17',14,412,48,83,95,41),('301920','2023-02-10 15:20:17',13,469,20,96,21,48),('302021','2023-02-10 15:20:17',5,385,81,34,53,99),('302122','2023-02-10 15:20:17',6,365,88,27,67,28),('302223','2023-02-10 15:20:17',9,208,13,14,9,16),('302324','2023-02-10 15:20:17',12,201,24,8,44,9),('302425','2023-02-10 15:20:17',10,372,85,93,43,23),('302526','2023-02-10 15:20:17',10,270,58,18,80,96),('302627','2023-02-10 15:20:17',10,203,98,9,57,72),('302728','2023-02-10 15:20:17',5,400,57,58,91,15),('302829','2023-02-10 15:20:17',14,365,2,34,72,55),('302930','2023-02-10 15:20:17',7,347,86,75,33,69),('303031','2023-02-10 15:20:17',13,237,51,21,99,57),('303132','2023-02-10 15:20:17',7,449,3,69,61,88),('303233','2023-02-10 15:20:17',9,442,82,85,88,26),('303334','2023-02-10 15:20:17',10,421,32,69,54,21),('303435','2023-02-10 15:20:17',5,388,68,92,25,55),('303536','2023-02-10 15:20:17',9,349,12,45,60,18),('303637','2023-02-10 15:20:17',9,320,29,49,37,66),('303738','2023-02-10 15:20:17',5,236,97,16,86,5),('303839','2023-02-10 15:20:17',10,326,34,14,1,16),('303940','2023-02-10 15:20:17',6,453,85,53,12,8),('304041','2023-02-10 15:20:17',6,348,56,21,58,46),('304142','2023-02-10 15:20:17',10,357,29,61,35,50),('304243','2023-02-10 15:20:17',14,455,59,92,39,53),('304344','2023-02-10 15:20:17',5,411,45,49,86,13),('304445','2023-02-10 15:20:17',13,301,18,87,5,58),('304546','2023-02-10 15:20:17',8,484,34,74,72,59),('304647','2023-02-10 15:20:17',13,442,97,18,77,73),('304748','2023-02-10 15:20:17',12,442,99,27,25,43),('304849','2023-02-10 15:20:17',7,372,61,81,3,32),('304950','2023-02-10 15:20:17',11,273,0,87,60,13),('305051','2023-02-10 15:20:17',14,305,35,33,11,60),('305152','2023-02-10 15:20:17',8,375,2,71,66,78),('305253','2023-02-10 15:20:17',13,336,18,64,19,52),('305354','2023-02-10 15:20:17',6,414,82,86,65,87),('305455','2023-02-10 15:20:17',5,252,27,29,28,23),('305556','2023-02-10 15:20:17',8,282,37,61,95,25),('305657','2023-02-10 15:20:17',8,431,16,30,26,11),('305758','2023-02-10 15:20:17',13,425,90,24,88,63),('305859','2023-02-10 15:20:17',9,486,39,3,60,57),('305960','2023-02-10 15:20:17',13,462,13,87,1,50),('306061','2023-02-10 15:20:17',5,353,40,11,4,35),('306162','2023-02-10 15:20:17',6,408,16,26,57,26),('306263','2023-02-10 15:20:17',10,254,69,61,96,22),('306364','2023-02-10 15:20:17',9,403,65,59,32,96),('306465','2023-02-10 15:20:17',6,224,57,69,32,63),('306566','2023-02-10 15:20:17',8,309,35,67,48,75),('306667','2023-02-10 15:20:17',12,280,54,11,41,75),('306768','2023-02-10 15:20:17',8,250,70,26,34,5),('306869','2023-02-10 15:20:17',10,464,34,37,34,56),('306970','2023-02-10 15:20:17',13,443,62,48,81,0),('307071','2023-02-10 15:20:17',10,461,55,42,62,11),('307172','2023-02-10 15:20:17',11,282,73,40,13,75),('307273','2023-02-10 15:20:17',14,320,17,32,12,95),('307374','2023-02-10 15:20:17',5,431,88,85,90,97),('307475','2023-02-10 15:20:17',13,359,53,14,51,40),('307576','2023-02-10 15:20:17',14,471,81,3,29,75),('307677','2023-02-10 15:20:17',8,381,49,56,61,27);
/*!40000 ALTER TABLE `billing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credentials`
--

DROP TABLE IF EXISTS `credentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `credentials` (
  `mobile_no` varchar(100) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`mobile_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credentials`
--

LOCK TABLES `credentials` WRITE;
/*!40000 ALTER TABLE `credentials` DISABLE KEYS */;
INSERT INTO `credentials` VALUES ('9650724000','1','w9kE8FycfYBS'),('9650724001','2','4vmTBWpe9DO0'),('9650724002','3','kt7WPWus8MZF'),('9650724003','4','d9aEODdmi903'),('9650724004','5','1dy1JAxs0HFR'),('9650724005','6','uk1DZAfstRAP'),('9650724006','7','ew8IGEbco246'),('9650724007','8','1p8Z54a6jHDH'),('9650724008','9','2n9Z9I7jsO05'),('9650724009','10','oxkKWVu3a2BP'),('9650724010','11','jq7ZZI4msGU6'),('9650724011','12','0puPNAnqi64H'),('9650724012','13','d8i11YaiwQA2'),('9650724013','14','e6bUFQllw7VZ'),('9650724014','15','3whXU6noiBSL'),('9650724015','16','k5aE5Hh8mP1Y'),('9650724016','17','mooG4P6ekBBI'),('9650724017','18','v89H33qm70G6'),('9650724018','19','vapIR1fpwPDS'),('9650724019','20','iedT0Gh4dDA0'),('9650724020','21','z9xZYUoy2RQO'),('9650724021','22','7szWNQxy82H3'),('9650724022','23','ajfQ3Bm6s4WW'),('9650724023','24','27mCEAxv11OW'),('9650724024','25','6wmYRUdjtN6W'),('9650724025','26','od5T8Xmaw1BX'),('9650724026','27','m5a6AL1ffOBZ'),('9650724027','28','7eqIRO64lAJ1'),('9650724028','29','dq68NZkgr53J'),('9650724029','30','zhsBEBwt2ZQY'),('9650724030','31','7meQAIy1m0AR'),('9650724031','32','qinBH6xkk00Q'),('9650724032','33','98n132rdq7N1'),('9650724033','34','r29CMGj65CH3'),('9650724034','35','jsiAPU2roMP3'),('9650724035','36','16vJPUzapEZB'),('9650724036','37','mu8G6594fU12'),('9650724037','38','pkh1FR41vE5S'),('9650724038','39','fvbY0LcwrK6P'),('9650724039','40','ygnVMZckmSE2'),('9650724040','41','mn03G9pdbCQM'),('9650724041','42','y2pL461hcBPU'),('9650724042','43','8x3KQOcn51D5'),('9650724043','44','yrqVAU2qu41A'),('9650724044','45','eufUVUipj9LG'),('9650724045','46','nn8H14vvdRFI'),('9650724046','47','x32ENT84jL9R'),('9650724047','48','0de9D49k12XY'),('9650724048','49','93o06PzumNHW'),('9650724049','50','52pHRY6b920A'),('9650724050','51','axl61D23zM8T'),('9650724051','52','3p0YL98s2YGY'),('9650724052','53','ckvPN554gG04'),('9650724053','54','hgb9TThy8JKB'),('9650724054','55','upcK1Hr79CQ7'),('9650724055','56','wb3V75qkjLEU'),('9650724056','57','6nc8GOrb3MXG'),('9650724057','58','vqcOO8dukI89'),('9650724058','59','mznSU4v1i3KI'),('9650724059','60','60585Rhr6EZC'),('9650724060','61','7zcAWPokcA9F'),('9650724061','62','mhr3KB6gyH26'),('9650724062','63','6y96BGkr84SE'),('9650724063','64','ohxEW6ujnRZW'),('9650724064','65','6i6S5Jf8o62J'),('9650724065','66','3df8VB1wlC14'),('9650724066','67','lly5WIb89501'),('9650724067','68','6pi359afcAP8'),('9650724068','69','ky6AL3ndy73M'),('9650724069','70','dfmF2BnjvUWD'),('9650724070','71','mwh7ISupzNVZ'),('9650724071','72','latZCYj0wIWA'),('9650724072','73','sziON5rmbIUX'),('9650724073','74','drk1NEpj1A42'),('9650724074','75','q3c128ediQJD'),('9650724075','76','f0cB8Idu2PND'),('9650724076','77','s7u7VKi7hGHB'),('9650724077','78','mdwIBD34jTWQ'),('9650724078','79','dfm7YCmyrCXS'),('9650724079','80','b4pZN69ctDDX'),('9650724080','81','hplCU0q1b14G'),('9650724081','82','ghv8NEusnGEW'),('9650724082','83','ew7DESe2sRK6'),('9650724083','84','ff2GHR9n752F'),('9650724084','85','zs8MJ6bz6TYE'),('9650724085','86','lkrBVZ3dqS38'),('9650724086','87','c6dC8Kw56RGM'),('9650724087','88','cquP3Vhi79JB'),('9650724088','89','1uwH4U2q9E2E'),('9650724089','90','io1T85q02REJ'),('9650724090','91','e78K1MpsnDAK'),('9650724091','92','ofsAPSc21KUP'),('9650724092','93','94e9ZR4sm300'),('9650724093','94','qgv92Clbw1FH'),('9650724094','95','k27KEKizhKMU'),('9650724095','96','6vd4BHhu6US1'),('9650724096','97','kxhKTCtd9YMV'),('9650724097','98','ns2TYW2s96W4'),('9650724098','99','26yL4J4rvTBA'),('9650724099','100','2gj1OCh6t2WW'),('9650724100','101','zv7NXDktsDE3'),('9650724101','102','ib5F9Lsss5Z8'),('9650724102','103','mrlI4R8yrZK4'),('9650724103','104','y3dVCThq2FHZ'),('9650724104','105','run5S38zzG7W'),('9650724105','106','ny6V3R63x8M7'),('9650724106','107','iu6QXNcs7RWO'),('9650724107','108','yevQGYkl17N0'),('9650724108','109','mc53N7ey8CQ2'),('9650724109','110','pwiMQF8i93SN'),('9650724110','111','xyf5DZtnzFMO'),('9650724111','112','yct8JHq6jJDN'),('9650724112','113','jh9CN62okCYY'),('9650724113','114','xhj4PY081BD8'),('9650724114','115','pem80Otrs9IU'),('9650724115','116','8994MJycp2U3'),('9650724116','117','u5xXFRmuuQ8Z'),('9650724117','118','qs4F1Ry27P15'),('9650724118','119','6d1MZDvbi9W7'),('9650724119','120','wz7HB27vzTAN'),('9650724120','121','menH9OaycWW0'),('9650724121','122','zizBK0gme4M9'),('9650724122','123','zukJNYu048H3'),('9650724123','124','vl0Y6DwcnCIZ'),('9650724124','125','eegJ7Rmp7EJ6'),('9650724125','126','9bjWBG57uGO8'),('9650724126','127','bo1TWN03kUXV'),('9650724127','128','5flGUKa6z8WZ'),('9650724128','129','4lgIK3inoBGC'),('9650724129','130','dzd5T1allXZC'),('9650724130','131','tynPE00bjZFM'),('9650724131','132','at9RH5g3081N'),('9650724132','133','grkPR4k71D0R'),('9650724133','134','pyiS4Of8fTHI'),('9650724134','135','1g0HT53i5NN9'),('9650724135','136','2piHKRlzoPB1'),('9650724136','137','0wqL302e66HQ'),('9650724137','138','3hoNKX7m78S8'),('9650724138','139','dx9XSTy2uFCK'),('9650724139','140','tziU8Kz6aMZB'),('9650724140','141','t2cPNPnmtBP8'),('9650724141','142','y4nJL06wwM9Q'),('9650724142','143','syaN9Vp4uPVJ'),('9650724143','144','pgv98QfdmQ0F'),('9650724144','145','wx42O31pe32N'),('9650724145','146','qb5GCE6tw9I4'),('9650724146','147','u0cXLCa4d3QV'),('9650724147','148','1mrG8Re3bQD2'),('9650724148','149','tkhVNHoru71W'),('9650724149','150','hhvDSL14e0TD'),('9650724150','151','wygH3SuvzG00'),('9650724151','152','bb5EZDyyn8A9'),('9650724152','153','b87IPYdieP4H'),('9650724153','154','fmjF0Le7cS0E'),('9650724154','155','i10EYVvs3CVH'),('9650724155','156','386YCRm75OO2'),('9650724156','157','5k76NSvorRF7'),('9650724157','158','xmiH78ytoVR6'),('9650724158','159','vpqXZCjgkE3B'),('9650724159','160','jy008Eca6QQV'),('9650724160','161','0dk9JMvncY02'),('9650724161','162','bs5UUU5t9K1S'),('9650724162','163','vq8PXLue5XRY'),('9650724163','164','7qjYUR3n614X'),('9650724164','165','glwXEM2xiOK7'),('9650724165','166','0mnC0EqqoBXZ'),('9650724166','167','pedS6Opj76JR'),('9650724167','168','d1oA67dy6VU2'),('9650724168','169','3u0E6Ap2cWZ4'),('9650724169','170','howGYW32zKE7'),('9650724170','171','u5pZS5xd2L0Y'),('9650724171','172','utsIKZrhjUDW'),('9650724172','173','48pMJRna3ENQ'),('9650724173','174','h6xMHVtlkOC2'),('9650724174','175','ef1F0Lab94XU'),('9650724175','176','65oTFSompKLL'),('9650724176','177','vhsBF3gkcXDG'),('9650724177','178','45oV8Ffzd2R4'),('9650724178','179','dagEP5p3qMR6'),('9650724179','180','k7lZR1u7zF9V'),('9650724180','181','b39J2PxusX5R'),('9650724181','182','v8cL52j6kRBI'),('9650724182','183','1hpIID0toYEA'),('9650724183','184','rkfBNM2b7ARN'),('9650724184','185','knsWBS4lhLPF'),('9650724185','186','gryAJ37gmVED'),('9650724186','187','1xm9YJmwi6SC'),('9650724187','188','3b11Y52jyYBP'),('9650724188','189','gcbKXLoxbKSV'),('9650724189','190','q831TDaduBCD'),('9650724190','191','zbb9ASx3r40H'),('9650724191','192','19k8TWwlk50F'),('9650724192','193','crtIUIo17HF5'),('9650724193','194','cr7ENRccrFCO'),('9650724194','195','pdcTP21uaCWG'),('9650724195','196','idbY0Qak8ZVZ'),('9650724196','197','cwsWYSxiqIDW'),('9650724197','198','wlx03Xph5O1P'),('9650724198','199','oe9VGR8l2FYX'),('9650724199','200','wowWWD9n6LRJ');
/*!40000 ALTER TABLE `credentials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver` (
  `Driver_id` varchar(100) NOT NULL,
  `Driver_Name` varchar(100) NOT NULL,
  `Mobile_No` varchar(100) NOT NULL,
  `Current_Rating` int NOT NULL DEFAULT '0',
  `Email` varchar(100) NOT NULL,
  `No_of_Trips` int DEFAULT NULL,
  `Age` int NOT NULL,
  `Country` varchar(100) NOT NULL,
  `Wallet_Id` int NOT NULL,
  `Status` int NOT NULL DEFAULT '0',
  `Sex` varchar(100) NOT NULL,
  `Vehicle_id` varchar(100) NOT NULL,
  `Current_location_x` int NOT NULL,
  `Current_location_y` int NOT NULL,
  `Rate` int NOT NULL,
  PRIMARY KEY (`Driver_id`),
  UNIQUE KEY `Mobile_No` (`Mobile_No`),
  UNIQUE KEY `Email` (`Email`),
  UNIQUE KEY `Vehicle_id` (`Vehicle_id`),
  KEY `Wallet_Id` (`Wallet_Id`),
  CONSTRAINT `driver_ibfk_1` FOREIGN KEY (`Wallet_Id`) REFERENCES `wallet` (`wallet_id`),
  CONSTRAINT `driver_ibfk_2` FOREIGN KEY (`Vehicle_id`) REFERENCES `vehicle` (`vehicle_id`),
  CONSTRAINT `driver_chk_1` CHECK (((0 <= `Current_Rating`) <= 5))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver`
--

LOCK TABLES `driver` WRITE;
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
INSERT INTO `driver` VALUES ('101','Kariotta Evreux','9650724100',4,'wzyA24X@gmail.com',12,34,'INDIA',24800,0,'M','DL 26 CA 2700',0,69,14),('102','Joletta Arrington','9650724101',2,'dphPtQV@gmail.com',13,22,'INDIA',24801,0,'M','DL 26 CA 2701',64,5,15),('103','Joelly Laugharne','9650724102',3,'yqz90LC@gmail.com',12,21,'INDIA',24802,0,'M','DL 26 CA 2702',91,95,12),('104','Mercedes Petty','9650724103',2,'gy49bRU@gmail.com',11,31,'INDIA',24803,0,'M','DL 26 CA 2703',4,2,13),('105','Hali Esser','9650724104',3,'b2k5u7H@gmail.com',12,21,'INDIA',24804,0,'M','DL 26 CA 2704',16,18,15),('106','Thornton Girardeau','9650724105',4,'x3dE1OU@gmail.com',11,31,'INDIA',24805,0,'M','DL 26 CA 2705',38,69,17),('107','Antons Hynard','9650724106',4,'nv05d2W@gmail.com',14,35,'INDIA',24806,0,'M','DL 26 CA 2706',94,3,16),('108','Trey Gobourn','9650724107',4,'orqRp1K@gmail.com',13,33,'INDIA',24807,0,'M','DL 26 CA 2707',64,41,11),('109','Reube Bello','9650724108',4,'99qQrM3@gmail.com',13,27,'INDIA',24808,0,'M','DL 26 CA 2708',44,62,22),('110','Valentin Owttrim','9650724109',2,'w6zXdNB@gmail.com',14,23,'INDIA',24809,0,'M','DL 26 CA 2709',41,29,23),('111','Heidi MacGarrity','9650724110',3,'k9oOgZN@gmail.com',10,30,'INDIA',24810,0,'M','DL 26 CA 2710',42,88,11),('112','Rey Mulholland','9650724111',3,'9k2VdH7@gmail.com',12,24,'INDIA',24811,0,'M','DL 26 CA 2711',48,46,10),('113','Errol Thebe','9650724112',4,'wxqZs7E@gmail.com',14,30,'INDIA',24812,0,'M','DL 26 CA 2712',50,6,16),('114','Dalis Tomaszkiewicz','9650724113',2,'gutVl9A@gmail.com',13,29,'INDIA',24813,0,'M','DL 26 CA 2713',23,84,14),('115','Leigh Winstone','9650724114',2,'ickLrZP@gmail.com',10,26,'INDIA',24814,0,'M','DL 26 CA 2714',76,31,23),('116','Liam Succamore','9650724115',2,'tsbDuH1@gmail.com',14,26,'INDIA',24815,0,'M','DL 26 CA 2715',23,37,23),('117','Eduard Condell','9650724116',4,'bnc6c04@gmail.com',12,29,'INDIA',24816,0,'M','DL 26 CA 2716',41,33,15),('118','Virginia Figgins','9650724117',3,'lrmQg9M@gmail.com',13,24,'INDIA',24817,0,'M','DL 26 CA 2717',30,77,21),('119','Jenda Blade','9650724118',4,'ybbTk5J@gmail.com',11,21,'INDIA',24818,0,'M','DL 26 CA 2718',45,24,17),('120','Aldrich Thorn','9650724119',2,'7vnJq3K@gmail.com',14,37,'INDIA',24819,0,'M','DL 26 CA 2719',73,97,22),('121','Bernardo Postans','9650724120',3,'xcfOjXX@gmail.com',10,21,'INDIA',24820,0,'M','DL 26 CA 2720',36,55,12),('122','Glen Sullly','9650724121',2,'dyjJ8R1@gmail.com',14,31,'INDIA',24821,0,'M','DL 26 CA 2721',52,50,20),('123','Lon Cable','9650724122',2,'bjdA4XT@gmail.com',14,26,'INDIA',24822,0,'M','DL 26 CA 2722',30,7,21),('124','Esta DAdda','9650724123',3,'s2mCkHG@gmail.com',12,37,'INDIA',24823,0,'M','DL 26 CA 2723',87,53,13),('125','Isacco MacKellen','9650724124',4,'gevQnLO@gmail.com',14,29,'INDIA',24824,0,'M','DL 26 CA 2724',58,21,13),('126','Rivi Featenby','9650724125',4,'9e9J08G@gmail.com',11,26,'INDIA',24825,0,'M','DL 26 CA 2725',30,13,18),('127','Erin Baglan','9650724126',2,'jmo2hXM@gmail.com',11,22,'INDIA',24826,0,'M','DL 26 CA 2726',55,10,24),('128','Cherie Jaslem','9650724127',2,'sqiBf7J@gmail.com',12,28,'INDIA',24827,0,'M','DL 26 CA 2727',83,95,16),('129','Marianna Klimentyonok','9650724128',4,'snk33SI@gmail.com',10,31,'INDIA',24828,0,'M','DL 26 CA 2728',36,74,20),('130','Packston Matzkaitis','9650724129',2,'pxeI2F7@gmail.com',11,28,'INDIA',24829,0,'M','DL 26 CA 2729',99,68,14),('131','Linoel Rubberts','9650724130',3,'gixN1S9@gmail.com',14,33,'INDIA',24830,0,'M','DL 26 CA 2730',99,18,18),('132','Kore Whatmough','9650724131',2,'f3v8kNU@gmail.com',13,27,'INDIA',24831,0,'M','DL 26 CA 2731',67,28,23),('133','Georg De Bruyne','9650724132',2,'f0kBoTJ@gmail.com',13,27,'INDIA',24832,0,'M','DL 26 CA 2732',21,10,12),('134','Tades Eckersall','9650724133',3,'vy7DiTV@gmail.com',14,29,'INDIA',24833,0,'M','DL 26 CA 2733',16,35,16),('135','Tamas Baiden','9650724134',4,'8d3OlCU@gmail.com',14,39,'INDIA',24834,0,'M','DL 26 CA 2734',56,98,13),('136','Cirstoforo Goldstone','9650724135',4,'mnpMa7R@gmail.com',13,24,'INDIA',24835,0,'M','DL 26 CA 2735',9,89,12),('137','Nanice Yetton','9650724136',2,'r70YoEO@gmail.com',10,33,'INDIA',24836,0,'M','DL 26 CA 2736',43,23,22),('138','Sigfried Proske','9650724137',3,'fgkVv7K@gmail.com',13,28,'INDIA',24837,0,'M','DL 26 CA 2737',0,58,13),('139','Normie Howood','9650724138',2,'2qa1gGA@gmail.com',11,38,'INDIA',24838,0,'M','DL 26 CA 2738',81,89,18),('140','Niccolo Tebbitt','9650724139',3,'xesRlEP@gmail.com',12,32,'INDIA',24839,0,'M','DL 26 CA 2739',22,38,17),('141','Aeriel Momford','9650724140',4,'zpoHiEH@gmail.com',14,30,'INDIA',24840,0,'M','DL 26 CA 2740',57,58,21),('142','Aprilette Patria','9650724141',2,'r7327AU@gmail.com',13,36,'INDIA',24841,0,'M','DL 26 CA 2741',11,2,19),('143','Analise Wiles','9650724142',4,'m4cI57K@gmail.com',10,28,'INDIA',24842,0,'M','DL 26 CA 2742',46,62,21),('144','Lena Thomton','9650724143',4,'vgeNk9F@gmail.com',13,29,'INDIA',24843,0,'M','DL 26 CA 2743',42,44,16),('145','Judon Boundy','9650724144',4,'intOoLA@gmail.com',13,22,'INDIA',24844,0,'M','DL 26 CA 2744',51,21,24),('146','Emma Epton','9650724145',4,'vtoHaAY@gmail.com',11,32,'INDIA',24845,0,'M','DL 26 CA 2745',89,75,12),('147','Esmeralda Abrahamowitcz','9650724146',4,'7z0Q23G@gmail.com',10,23,'INDIA',24846,0,'M','DL 26 CA 2746',69,61,13),('148','Albertine Vercruysse','9650724147',2,'y1h8aGQ@gmail.com',14,35,'INDIA',24847,0,'M','DL 26 CA 2747',23,2,20),('149','Pavlov Bury','9650724148',4,'7519aT6@gmail.com',10,28,'INDIA',24848,0,'M','DL 26 CA 2748',26,17,22),('150','Vachel Norris','9650724149',3,'gq69a9F@gmail.com',12,29,'INDIA',24849,0,'M','DL 26 CA 2749',54,21,24),('151','Jourdan Di Ruggiero','9650724150',4,'9qiF0NP@gmail.com',14,28,'INDIA',24850,0,'M','DL 26 CA 2750',92,25,20),('152','Clair Harrema','9650724151',4,'9g5AxQG@gmail.com',14,21,'INDIA',24851,0,'M','DL 26 CA 2751',12,45,10),('153','Karlene Keal','9650724152',3,'7wrU370@gmail.com',13,39,'INDIA',24852,0,'M','DL 26 CA 2752',23,79,11),('154','Nikos Attrie','9650724153',3,'q3cUn2B@gmail.com',14,29,'INDIA',24853,0,'M','DL 26 CA 2753',37,66,14),('155','Billi Mothersole','9650724154',3,'yatYwA5@gmail.com',10,37,'INDIA',24854,0,'M','DL 26 CA 2754',16,86,20),('156','Hobart Daughtrey','9650724155',4,'mot9405@gmail.com',12,35,'INDIA',24855,0,'M','DL 26 CA 2755',34,14,11),('157','Rodolph Comini','9650724156',4,'jyzIk74@gmail.com',11,26,'INDIA',24856,0,'M','DL 26 CA 2756',63,13,20),('158','Emylee Heinrich','9650724157',2,'nxyTwWY@gmail.com',13,32,'INDIA',24857,0,'M','DL 26 CA 2757',8,32,15),('159','Carlyle De Beauchamp','9650724158',4,'4om6yCI@gmail.com',11,21,'INDIA',24858,0,'M','DL 26 CA 2758',58,46,17),('160','Rafaelia Simmonett','9650724159',3,'tdn3yUA@gmail.com',14,36,'INDIA',24859,0,'M','DL 26 CA 2759',22,29,11),('161','Cecily Lowmass','9650724160',2,'ghj7kDO@gmail.com',10,33,'INDIA',24860,0,'M','DL 26 CA 2760',66,44,24),('162','Barbabas Bedborough','9650724161',2,'njhUyJ1@gmail.com',14,33,'INDIA',24861,0,'M','DL 26 CA 2761',24,54,15),('163','Tomas Bercevelo','9650724162',4,'bmtD45F@gmail.com',14,26,'INDIA',24862,0,'M','DL 26 CA 2762',13,74,12),('164','Ki Farnaby','9650724163',4,'o632nLR@gmail.com',13,27,'INDIA',24863,0,'M','DL 26 CA 2763',5,58,21),('165','Yurik Duny','9650724164',4,'1r87fJ1@gmail.com',10,37,'INDIA',24864,0,'M','DL 26 CA 2764',14,14,19),('166','Nickola Gendricke','9650724165',2,'pv5B7WK@gmail.com',14,32,'INDIA',24865,0,'M','DL 26 CA 2765',59,33,15),('167','Malina Pifford','9650724166',4,'a3nTgZE@gmail.com',12,38,'INDIA',24866,0,'M','DL 26 CA 2766',77,73,15),('168','Timothy Ratnege','9650724167',4,'cpvGqJ4@gmail.com',13,32,'INDIA',24867,0,'M','DL 26 CA 2767',85,2,15),('169','Kele Lethieulier','9650724168',4,'54pOyQZ@gmail.com',12,22,'INDIA',24868,0,'M','DL 26 CA 2768',99,27,10),('170','Viviana Kaes','9650724169',3,'bvoWxEP@gmail.com',14,23,'INDIA',24869,0,'M','DL 26 CA 2769',72,61,16),('171','Cybill Gilhespy','9650724170',3,'qy3AnCM@gmail.com',12,25,'INDIA',24870,0,'M','DL 26 CA 2770',93,25,21),('172','Linzy Ovett','9650724171',4,'xibJ35N@gmail.com',12,22,'INDIA',24871,0,'M','DL 26 CA 2771',86,64,20),('173','Launce Guys','9650724172',4,'0xq92MU@gmail.com',10,33,'INDIA',24872,0,'M','DL 26 CA 2772',74,70,20),('174','Frances McGhie','9650724173',3,'b46LxGY@gmail.com',13,31,'INDIA',24873,0,'M','DL 26 CA 2773',60,96,12),('175','Pollyanna Lorenzo','9650724174',3,'pq4J1S3@gmail.com',10,20,'INDIA',24874,0,'M','DL 26 CA 2774',94,95,19),('176','Garwin Detheridge','9650724175',4,'9mmYaY7@gmail.com',10,36,'INDIA',24875,0,'M','DL 26 CA 2775',94,58,17),('177','Pammy Keyes','9650724176',3,'81zA7Z6@gmail.com',11,38,'INDIA',24876,0,'M','DL 26 CA 2776',93,51,24),('178','Lorianna Ashborn','9650724177',3,'fayD1Q1@gmail.com',14,39,'INDIA',24877,0,'M','DL 26 CA 2777',52,0,22),('179','Lita Chinnery','9650724178',3,'8wvRzM2@gmail.com',11,30,'INDIA',24878,0,'M','DL 26 CA 2778',57,70,15),('180','Baudoin Vigietti','9650724179',2,'ffhJp1I@gmail.com',12,23,'INDIA',24879,0,'M','DL 26 CA 2779',58,64,19),('181','Deloris Graver','9650724180',3,'hf061SO@gmail.com',11,25,'INDIA',24880,0,'M','DL 26 CA 2780',87,77,24),('182','Englebert Burnand','9650724181',2,'us0ChGQ@gmail.com',12,29,'INDIA',24881,0,'M','DL 26 CA 2781',28,23,15),('183','Sammy Mathelon','9650724182',4,'7ecLb1A@gmail.com',12,23,'INDIA',24882,0,'M','DL 26 CA 2782',96,37,11),('184','Sibella Scarrott','9650724183',3,'heqMk05@gmail.com',10,24,'INDIA',24883,0,'M','DL 26 CA 2783',60,2,11),('185','Brigitte Gouldeby','9650724184',4,'uox8vW8@gmail.com',11,31,'INDIA',24884,0,'M','DL 26 CA 2784',71,11,12),('186','Theresita Pechan','9650724185',2,'nue0s86@gmail.com',10,30,'INDIA',24885,0,'M','DL 26 CA 2785',24,88,23),('187','Quincy Fishleigh','9650724186',4,'z2jD7PU@gmail.com',11,22,'INDIA',24886,0,'M','DL 26 CA 2786',29,0,23),('188','Frances Gadson','9650724187',3,'oo38xRY@gmail.com',13,25,'INDIA',24887,0,'M','DL 26 CA 2787',7,77,10),('189','Britt Carnow','9650724188',2,'78e1vMC@gmail.com',14,23,'INDIA',24888,0,'M','DL 26 CA 2788',60,57,24),('190','Zabrina Moxham','9650724189',2,'z0pEzBZ@gmail.com',13,33,'INDIA',24889,0,'M','DL 26 CA 2789',87,1,15),('191','Berty Racine','9650724190',2,'wme9d3L@gmail.com',13,33,'INDIA',24890,0,'M','DL 26 CA 2790',84,5,10),('192','Elfreda Fort','9650724191',3,'2yvAeN8@gmail.com',14,35,'INDIA',24891,0,'M','DL 26 CA 2791',56,72,20),('193','Brook Gommes','9650724192',3,'vo9V40Y@gmail.com',10,36,'INDIA',24892,0,'M','DL 26 CA 2792',16,26,22),('194','Lemmie Bayle','9650724193',2,'6atNuAV@gmail.com',12,37,'INDIA',24893,0,'M','DL 26 CA 2793',71,69,16),('195','Row Ambrogiotti','9650724194',4,'4heOn3Z@gmail.com',12,37,'INDIA',24894,0,'M','DL 26 CA 2794',12,17,16),('196','Shellie Blaylock','9650724195',4,'jr2TuXD@gmail.com',11,23,'INDIA',24895,0,'M','DL 26 CA 2795',29,29,15),('197','Lucky Lovatt','9650724196',3,'fyvN25G@gmail.com',12,36,'INDIA',24896,0,'M','DL 26 CA 2796',55,53,22),('198','Dede Dyott','9650724197',4,'d6fD1D3@gmail.com',14,34,'INDIA',24897,0,'M','DL 26 CA 2797',72,57,24),('199','Shermy Marchent','9650724198',4,'d7mFvCV@gmail.com',13,27,'INDIA',24898,0,'M','DL 26 CA 2798',83,11,20),('200','Beilul Clilverd','9650724199',4,'feyZyK3@gmail.com',13,35,'INDIA',24899,0,'M','DL 26 CA 2799',38,23,12);
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request`
--

DROP TABLE IF EXISTS `request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request` (
  `Request_ID` varchar(100) NOT NULL,
  `Rider_Id` varchar(100) NOT NULL,
  `preference` int NOT NULL,
  `Preffered_Vehicle` varchar(100) NOT NULL,
  `Pickup_Location_x` int NOT NULL,
  `Pickup_Location_y` int NOT NULL,
  `Drop_Location_x` int NOT NULL,
  `Drop_Location_y` int NOT NULL,
  `Status` int NOT NULL,
  PRIMARY KEY (`Request_ID`),
  KEY `Rider_Id` (`Rider_Id`),
  CONSTRAINT `request_ibfk_1` FOREIGN KEY (`Rider_Id`) REFERENCES `rider` (`Rider_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request`
--

LOCK TABLES `request` WRITE;
/*!40000 ALTER TABLE `request` DISABLE KEYS */;
INSERT INTO `request` VALUES ('3000','2',1,'PREMIUM',24,78,58,62,0),('3001','2',2,'PREMIUM',81,27,61,91,0),('3002','3',1,'GO',4,2,53,92,0),('3003','3',2,'PREMIUM',18,95,47,26,0),('3004','9',4,'PREMIUM',33,73,64,41,0),('3005','10',4,'PREMIUM',62,57,37,59,0),('3006','10',2,'SEDAN',78,16,35,90,0),('3007','11',1,'PREMIUM',64,48,46,5,0),('3008','13',2,'GO',48,29,23,84,0),('3009','13',1,'PREMIUM',66,76,31,8,0),('3010','13',4,'PREMIUM',23,37,38,18,0),('3011','14',2,'PREMIUM',39,58,4,30,0),('3012','14',3,'PREMIUM',86,21,45,24,0),('3013','15',2,'GO',97,12,86,90,0),('3014','19',1,'PREMIUM',50,41,24,66,0),('3015','20',4,'GO',57,87,53,83,0),('3016','22',2,'GO',22,46,6,30,0),('3017','22',1,'GO',91,62,55,10,0),('3018','22',1,'PREMIUM',48,83,95,41,0),('3019','23',1,'PREMIUM',20,96,21,48,0),('3020','23',1,'SEDAN',81,34,53,99,0),('3021','23',3,'GO',88,27,67,28,0),('3022','26',3,'PREMIUM',13,14,9,16,0),('3023','30',3,'GO',24,8,44,9,0),('3024','30',3,'GO',85,93,43,23,0),('3025','31',1,'GO',58,18,80,96,0),('3026','31',2,'PREMIUM',98,9,57,72,0),('3027','33',4,'SEDAN',57,58,91,15,0),('3028','33',1,'GO',2,34,72,55,0),('3029','33',3,'SEDAN',86,75,33,69,0),('3030','35',3,'PREMIUM',51,21,99,57,0),('3031','38',1,'PREMIUM',3,69,61,88,0),('3032','40',3,'SEDAN',82,85,88,26,0),('3033','40',2,'SEDAN',32,69,54,21,0),('3034','40',1,'GO',68,92,25,55,0),('3035','40',2,'SEDAN',12,45,60,18,0),('3036','42',1,'SEDAN',29,49,37,66,0),('3037','42',2,'PREMIUM',97,16,86,5,0),('3038','42',3,'PREMIUM',34,14,1,16,0),('3039','43',2,'SEDAN',85,53,12,8,0),('3040','43',2,'PREMIUM',56,21,58,46,0),('3041','44',1,'PREMIUM',29,61,35,50,0),('3042','44',3,'PREMIUM',59,92,39,53,0),('3043','44',3,'PREMIUM',45,49,86,13,0),('3044','44',3,'PREMIUM',18,87,5,58,0),('3045','46',3,'GO',34,74,72,59,0),('3046','46',3,'PREMIUM',97,18,77,73,0),('3047','51',4,'PREMIUM',99,27,25,43,0),('3048','51',4,'PREMIUM',61,81,3,32,0),('3049','55',3,'PREMIUM',0,87,60,13,0),('3050','55',3,'SEDAN',35,33,11,60,0),('3051','62',3,'PREMIUM',2,71,66,78,0),('3052','62',4,'PREMIUM',18,64,19,52,0),('3053','70',1,'GO',82,86,65,87,0),('3054','70',3,'GO',27,29,28,23,0),('3055','71',4,'PREMIUM',37,61,95,25,0),('3056','71',1,'SEDAN',16,30,26,11,0),('3057','72',2,'SEDAN',90,24,88,63,0),('3058','80',1,'GO',39,3,60,57,0),('3059','80',2,'PREMIUM',13,87,1,50,0),('3060','81',1,'SEDAN',40,11,4,35,0),('3061','83',2,'GO',16,26,57,26,0),('3062','83',2,'GO',69,61,96,22,0),('3063','88',2,'SEDAN',65,59,32,96,0),('3064','91',3,'SEDAN',57,69,32,63,0),('3065','91',4,'PREMIUM',35,67,48,75,0),('3066','91',4,'PREMIUM',54,11,41,75,0),('3067','91',2,'PREMIUM',70,26,34,5,0),('3068','93',2,'SEDAN',34,37,34,56,0),('3069','93',1,'SEDAN',62,48,81,0,0),('3070','93',2,'SEDAN',55,42,62,11,0),('3071','95',4,'GO',73,40,13,75,0),('3072','95',3,'SEDAN',17,32,12,95,0),('3073','95',4,'GO',88,85,90,97,0),('3074','95',3,'SEDAN',53,14,51,40,0),('3075','98',2,'SEDAN',81,3,29,75,0),('3076','98',1,'GO',49,56,61,27,0);
/*!40000 ALTER TABLE `request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rider`
--

DROP TABLE IF EXISTS `rider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rider` (
  `Rider_Id` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Mobile_no` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Age` int NOT NULL,
  `Country` varchar(100) NOT NULL,
  `Wallet_id` int NOT NULL,
  `Status` int NOT NULL,
  `Sex` varchar(100) NOT NULL,
  `No_of_Trips` int DEFAULT NULL,
  `Current_location_x` int NOT NULL,
  `Current_location_y` int NOT NULL,
  PRIMARY KEY (`Rider_Id`),
  UNIQUE KEY `Mobile_no` (`Mobile_no`),
  UNIQUE KEY `Email` (`Email`),
  KEY `Wallet_id` (`Wallet_id`),
  CONSTRAINT `rider_ibfk_1` FOREIGN KEY (`Wallet_id`) REFERENCES `wallet` (`wallet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rider`
--

LOCK TABLES `rider` WRITE;
/*!40000 ALTER TABLE `rider` DISABLE KEYS */;
INSERT INTO `rider` VALUES ('1','Reuben Loudwell','9650724000','0woGuOO@iiitd.ac.in',21,'INDIA',24700,0,'F',12,34,0),('10','Cornelius Gobourn','9650724009','c7tCu44@iiitd.ac.in',27,'INDIA',24709,0,'M',14,35,94),('100','Carter Tressler','9650724099','tf4Y621@iiitd.ac.in',27,'INDIA',24799,0,'M',12,18,77),('11','Donetta Haydock','9650724010','38u0gE4@iiitd.ac.in',23,'INDIA',24710,0,'F',11,22,33),('12','Erma Taylot','9650724011','wshG47J@iiitd.ac.in',33,'INDIA',24711,0,'M',14,41,11),('13','Cathleen Lusty','9650724012','ppfOp51@iiitd.ac.in',33,'INDIA',24712,0,'F',13,47,44),('14','Lyle Smallacombe','9650724013','k71Yx9V@iiitd.ac.in',22,'INDIA',24713,0,'M',12,37,59),('15','Rani Dredge','9650724014','a7v82EG@iiitd.ac.in',23,'INDIA',24714,0,'F',11,29,78),('16','Isabelita Cowthart','9650724015','wnnS6PK@iiitd.ac.in',36,'INDIA',24715,0,'M',10,90,42),('17','Aretha Raiker','9650724016','0us7fGD@iiitd.ac.in',28,'INDIA',24716,0,'F',11,40,42),('18','Deedee Giller','9650724017','58l6cD2@iiitd.ac.in',24,'INDIA',24717,0,'M',13,46,5),('19','Derby Gilliam','9650724018','v4kA01I@iiitd.ac.in',30,'INDIA',24718,0,'F',14,70,50),('2','Sibel Almon','9650724001','njb6aQ7@iiitd.ac.in',29,'INDIA',24701,0,'M',14,78,58),('20','Arie Keepence','9650724019','r9vQ7SX@iiitd.ac.in',26,'INDIA',24719,0,'M',11,93,48),('21','Marius Swaine','9650724020','oan9r8G@iiitd.ac.in',29,'INDIA',24720,0,'F',13,84,54),('22','Desi Halpen','9650724021','42pOb46@iiitd.ac.in',36,'INDIA',24721,0,'M',10,66,76),('23','Moria Treher','9650724022','wyw9oPE@iiitd.ac.in',31,'INDIA',24722,0,'F',13,44,39),('24','Rubie Dullard','9650724023','jz863SM@iiitd.ac.in',26,'INDIA',24723,0,'M',13,37,38),('25','Hillel Huyhton','9650724024','kq71iQG@iiitd.ac.in',38,'INDIA',24724,0,'F',12,29,41),('26','Bennie Rodolphe','9650724025','aaaT6OX@iiitd.ac.in',33,'INDIA',24725,0,'M',10,39,58),('27','Sammy De Leek','9650724026','00aJ423@iiitd.ac.in',24,'INDIA',24726,0,'F',10,77,6),('28','Gracie Mundwell','9650724027','27rHnB3@iiitd.ac.in',33,'INDIA',24727,0,'M',11,21,45),('29','Vittoria Bisgrove','9650724028','g6fDnI5@iiitd.ac.in',24,'INDIA',24728,0,'F',12,70,29),('3','Aymer Nashe','9650724002','yveP3B4@iiitd.ac.in',22,'INDIA',24702,0,'F',14,5,45),('30','Devon Palffrey','9650724029','l8iT0Q0@iiitd.ac.in',37,'INDIA',24729,0,'M',13,97,12),('31','Rafa Bielefeld','9650724030','y94F56Z@iiitd.ac.in',26,'INDIA',24730,0,'F',10,61,36),('32','Kipper Cassels','9650724031','upk51A0@iiitd.ac.in',35,'INDIA',24731,0,'M',12,55,74),('33','Delmer Condict','9650724032','k55Sn2Y@iiitd.ac.in',31,'INDIA',24732,0,'F',12,50,50),('34','Nefen Biggar','9650724033','lpdSb7E@iiitd.ac.in',21,'INDIA',24733,0,'M',14,66,30),('35','Eimile Poppleston','9650724034','ekcDgG8@iiitd.ac.in',27,'INDIA',24734,0,'F',11,7,37),('36','Ivar Bertson','9650724035','a20NmDQ@iiitd.ac.in',37,'INDIA',24735,0,'M',12,53,83),('37','Maude Baynom','9650724036','uyzUzAU@iiitd.ac.in',25,'INDIA',24736,0,'F',14,9,58),('38','Sonja Michael','9650724037','8y7KuF5@iiitd.ac.in',21,'INDIA',24737,0,'M',13,22,46),('39','Melosa Fowkes','9650724038','dtzJaC1@iiitd.ac.in',26,'INDIA',24738,0,'F',10,13,68),('4','Archer Casol','9650724003','pb295XZ@iiitd.ac.in',21,'INDIA',24703,0,'M',12,61,91),('40','Diandra Faulconbridge','9650724039','mw6GhE4@iiitd.ac.in',20,'INDIA',24739,0,'M',11,62,55),('41','Mildrid Crowch','9650724040','ka4UhMK@iiitd.ac.in',30,'INDIA',24740,0,'F',14,24,37),('42','Leicester Battle','9650724041','5tp1n17@iiitd.ac.in',28,'INDIA',24741,0,'M',13,95,41),('43','Parker Gerrell','9650724042','zr7PlT9@iiitd.ac.in',22,'INDIA',24742,0,'F',10,91,36),('44','Murray McLellan','9650724043','1weDp5A@iiitd.ac.in',34,'INDIA',24743,0,'M',10,96,21),('45','Rhiamon Kenneford','9650724044','w8sDb7G@iiitd.ac.in',28,'INDIA',24744,0,'F',14,68,84),('46','Felice Delion','9650724045','ihiRt8Q@iiitd.ac.in',21,'INDIA',24745,0,'M',14,53,99),('47','Ethelyn McArte','9650724046','28e1gRM@iiitd.ac.in',38,'INDIA',24746,0,'F',13,0,88),('48','Stuart Labrom','9650724047','kovB5H0@iiitd.ac.in',27,'INDIA',24747,0,'M',12,28,93),('49','Harland Hastler','9650724048','9w27z4W@iiitd.ac.in',28,'INDIA',24748,0,'F',13,7,21),('5','Mel Doghartie','9650724004','wghKzUN@iiitd.ac.in',35,'INDIA',24704,0,'F',12,27,36),('50','Gallard Huxton','9650724049','28j8iQ5@iiitd.ac.in',30,'INDIA',24749,0,'M',12,13,14),('51','Zorina Laurenson','9650724050','tv8731U@iiitd.ac.in',29,'INDIA',24750,0,'F',11,35,51),('52','Barry Cardow','9650724051','67rAnSH@iiitd.ac.in',20,'INDIA',24751,0,'M',14,19,56),('53','Leonhard Kilmurry','9650724052','f4kL30O@iiitd.ac.in',38,'INDIA',24752,0,'F',13,24,8),('54','Arabela Connick','9650724053','mkaI9JZ@iiitd.ac.in',24,'INDIA',24753,0,'M',14,89,2),('55','Gillian Renfrew','9650724054','g699wK6@iiitd.ac.in',35,'INDIA',24754,0,'F',10,93,43),('56','Chaim Liggins','9650724055','n35L8KG@iiitd.ac.in',23,'INDIA',24755,0,'M',12,14,3),('57','Wilfred Goodburn','9650724056','ujnD6S9@iiitd.ac.in',28,'INDIA',24756,0,'F',10,58,18),('58','Micheal Thewlis','9650724057','ie22z3P@iiitd.ac.in',20,'INDIA',24757,0,'M',11,98,81),('59','Abagael Vahl','9650724058','roiQlQ2@iiitd.ac.in',29,'INDIA',24758,0,'F',13,9,57),('6','Caddric Glanders','9650724005','gnjBvRU@iiitd.ac.in',31,'INDIA',24705,0,'M',14,2,53),('60','Tessy Cawson','9650724059','rryZxDP@iiitd.ac.in',32,'INDIA',24759,0,'M',12,38,92),('61','Inessa Praill','9650724060','nk0JaAV@iiitd.ac.in',38,'INDIA',24760,0,'F',14,90,57),('62','Gradeigh Stansby','9650724061','7ghQpRV@iiitd.ac.in',38,'INDIA',24761,0,'M',11,15,88),('63','Barbaraanne Ruggen','9650724062','zav3rHE@iiitd.ac.in',36,'INDIA',24762,0,'F',11,2,34),('64','Itch Vedeneev','9650724063','qbhCtSC@iiitd.ac.in',32,'INDIA',24763,0,'M',10,28,46),('65','Alaine Evennett','9650724064','mpu4357@iiitd.ac.in',22,'INDIA',24764,0,'F',11,75,33),('66','Ivy Lucio','9650724065','o0jOm10@iiitd.ac.in',29,'INDIA',24765,0,'M',12,44,16),('67','Lisette Berkowitz','9650724066','31h4g5M@iiitd.ac.in',21,'INDIA',24766,0,'F',13,22,51),('68','Lilli Caslake','9650724067','iadEdYP@iiitd.ac.in',21,'INDIA',24767,0,'M',14,57,76),('69','Laurena Hatz','9650724068','qj86lDQ@iiitd.ac.in',32,'INDIA',24768,0,'F',14,75,12),('7','Ivett MacRorie','9650724006','0on16C3@iiitd.ac.in',32,'INDIA',24706,0,'F',12,21,16),('70','Moreen Kniveton','9650724069','7xqPw8D@iiitd.ac.in',20,'INDIA',24769,0,'M',10,3,69),('71','Sonnie Bingley','9650724070','mdhUl22@iiitd.ac.in',21,'INDIA',24770,0,'F',13,1,89),('72','Humfrid Sogg','9650724071','qfb3p83@iiitd.ac.in',35,'INDIA',24771,0,'M',13,2,85),('73','Milli MacAdam','9650724072','3iq96MJ@iiitd.ac.in',22,'INDIA',24772,0,'F',10,88,26),('74','Jordan Giacomoni','9650724073','xo9No46@iiitd.ac.in',37,'INDIA',24773,0,'M',12,32,32),('75','Althea Rigolle','9650724074','kqtS9PR@iiitd.ac.in',29,'INDIA',24774,0,'F',14,21,89),('76','Kendrick Moehler','9650724075','6m5JhD4@iiitd.ac.in',36,'INDIA',24775,0,'M',14,68,92),('77','Spencer Lintill','9650724076','c9q348A@iiitd.ac.in',25,'INDIA',24776,0,'F',10,34,49),('78','Kara Benthall','9650724077','hujYiBE@iiitd.ac.in',21,'INDIA',24777,0,'M',12,45,60),('79','Duane Babbage','9650724078','xhmK6K5@iiitd.ac.in',38,'INDIA',24778,0,'F',13,39,23),('8','Rockie Ennew','9650724007','yj5Al2R@iiitd.ac.in',38,'INDIA',24707,0,'M',10,47,26),('80','Irwinn Mackneis','9650724079','n40Jk0C@iiitd.ac.in',39,'INDIA',24779,0,'M',11,87,29),('81','Ronnie Scrannage','9650724080','ddtT0O1@iiitd.ac.in',29,'INDIA',24780,0,'F',12,66,49),('82','Ebenezer Baird','9650724081','johJ0WH@iiitd.ac.in',33,'INDIA',24781,0,'M',10,97,16),('83','Doralia Crates','9650724082','lxpC43U@iiitd.ac.in',26,'INDIA',24782,0,'F',10,88,82),('84','Mathian Maiklem','9650724083','8yyCgU2@iiitd.ac.in',35,'INDIA',24783,0,'M',14,14,1),('85','Ester Petrelli','9650724084','0r6HyWD@iiitd.ac.in',36,'INDIA',24784,0,'F',11,86,63),('86','Bryn Giraudy','9650724085','8d7Ut5W@iiitd.ac.in',33,'INDIA',24785,0,'M',10,85,53),('87','Lorettalorna Seabourne','9650724086','7p295V5@iiitd.ac.in',32,'INDIA',24786,0,'F',13,32,45),('88','Ernaline Reaman','9650724087','yyxLtFZ@iiitd.ac.in',33,'INDIA',24787,0,'M',11,21,58),('89','Whitby Verbrugge','9650724088','z7o1u7H@iiitd.ac.in',26,'INDIA',24788,0,'F',12,81,44),('9','Lonee Kellick','9650724008','rexUgIN@iiitd.ac.in',31,'INDIA',24708,0,'F',13,69,12),('90','Phoebe Ivons','9650724089','i0oN2AG@iiitd.ac.in',36,'INDIA',24789,0,'M',12,29,61),('91','Darcy Grumley','9650724090','6lmDgRZ@iiitd.ac.in',35,'INDIA',24790,0,'F',10,73,66),('92','Carissa McKew','9650724091','aoeKmL7@iiitd.ac.in',24,'INDIA',24791,0,'M',14,92,39),('93','Dennet Van Arsdall','9650724092','2qi552X@iiitd.ac.in',33,'INDIA',24792,0,'F',14,54,10),('94','Arnuad Welton','9650724093','bxcPhY7@iiitd.ac.in',25,'INDIA',24793,0,'M',14,86,13),('95','Cory Treat','9650724094','j0gUjXM@iiitd.ac.in',34,'INDIA',24794,0,'F',12,68,18),('96','Jolyn Chorlton','9650724095','r0o0v6C@iiitd.ac.in',27,'INDIA',24795,0,'M',10,58,91),('97','Cymbre Ringer','9650724096','6uySzWD@iiitd.ac.in',22,'INDIA',24796,0,'F',10,77,14),('98','Gleda DeVere','9650724097','8ffN6Y7@iiitd.ac.in',34,'INDIA',24797,0,'M',14,34,74),('99','Klarika Le Leu','9650724098','95sK6Y9@iiitd.ac.in',32,'INDIA',24798,0,'F',14,33,70);
/*!40000 ALTER TABLE `rider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sends`
--

DROP TABLE IF EXISTS `sends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sends` (
  `Active_Request` varchar(100) NOT NULL,
  KEY `Active_Request` (`Active_Request`),
  CONSTRAINT `sends_ibfk_1` FOREIGN KEY (`Active_Request`) REFERENCES `request` (`Request_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sends`
--

LOCK TABLES `sends` WRITE;
/*!40000 ALTER TABLE `sends` DISABLE KEYS */;
/*!40000 ALTER TABLE `sends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trip`
--

DROP TABLE IF EXISTS `trip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trip` (
  `Trip_ID` varchar(100) NOT NULL,
  `Fare` int NOT NULL,
  `Date_Time` datetime NOT NULL,
  `Distance` int NOT NULL,
  `Rating` int NOT NULL,
  PRIMARY KEY (`Trip_ID`),
  CONSTRAINT `trip_chk_1` CHECK (((0 <= `Rating`) <= 5))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trip`
--

LOCK TABLES `trip` WRITE;
/*!40000 ALTER TABLE `trip` DISABLE KEYS */;
INSERT INTO `trip` VALUES ('30001',274,'2023-02-10 15:20:17',6,4),('30012',315,'2023-02-10 15:20:17',8,3),('30023',492,'2023-02-10 15:20:17',9,4),('30034',492,'2023-02-10 15:20:17',14,2),('30045',228,'2023-02-10 15:20:17',12,1),('30056',375,'2023-02-10 15:20:17',11,5),('30067',270,'2023-02-10 15:20:17',12,4),('30078',404,'2023-02-10 15:20:17',8,3),('30089',363,'2023-02-10 15:20:17',11,2),('300910',210,'2023-02-10 15:20:17',6,4),('301011',440,'2023-02-10 15:20:17',9,5),('301112',319,'2023-02-10 15:20:17',8,3),('301213',304,'2023-02-10 15:20:17',13,2),('301314',350,'2023-02-10 15:20:17',10,3),('301415',239,'2023-02-10 15:20:17',8,1),('301516',298,'2023-02-10 15:20:17',12,3),('301617',348,'2023-02-10 15:20:17',6,5),('301718',313,'2023-02-10 15:20:17',10,5),('301819',412,'2023-02-10 15:20:17',11,1),('301920',469,'2023-02-10 15:20:17',7,4),('302021',385,'2023-02-10 15:20:17',14,5),('302122',365,'2023-02-10 15:20:17',5,5),('302223',208,'2023-02-10 15:20:17',13,1),('302324',201,'2023-02-10 15:20:17',8,1),('302425',372,'2023-02-10 15:20:17',7,3),('302526',270,'2023-02-10 15:20:17',8,3),('302627',203,'2023-02-10 15:20:17',8,2),('302728',400,'2023-02-10 15:20:17',14,3),('302829',365,'2023-02-10 15:20:17',13,1),('302930',347,'2023-02-10 15:20:17',13,4),('303031',237,'2023-02-10 15:20:17',14,4),('303132',449,'2023-02-10 15:20:17',6,4),('303233',442,'2023-02-10 15:20:17',13,4),('303334',421,'2023-02-10 15:20:17',13,1),('303435',388,'2023-02-10 15:20:17',11,5),('303536',349,'2023-02-10 15:20:17',8,1),('303637',320,'2023-02-10 15:20:17',13,1),('303738',236,'2023-02-10 15:20:17',8,3),('303839',326,'2023-02-10 15:20:17',10,1),('303940',453,'2023-02-10 15:20:17',14,4),('304041',348,'2023-02-10 15:20:17',8,5),('304142',357,'2023-02-10 15:20:17',11,5),('304243',455,'2023-02-10 15:20:17',13,5),('304344',411,'2023-02-10 15:20:17',10,2),('304445',301,'2023-02-10 15:20:17',14,1),('304546',484,'2023-02-10 15:20:17',10,2),('304647',442,'2023-02-10 15:20:17',10,5),('304748',442,'2023-02-10 15:20:17',11,4),('304849',372,'2023-02-10 15:20:17',11,4),('304950',273,'2023-02-10 15:20:17',14,2),('305051',305,'2023-02-10 15:20:17',11,5),('305152',375,'2023-02-10 15:20:17',8,3),('305253',336,'2023-02-10 15:20:17',11,1),('305354',414,'2023-02-10 15:20:17',9,2),('305455',252,'2023-02-10 15:20:17',11,2),('305556',282,'2023-02-10 15:20:17',10,4),('305657',431,'2023-02-10 15:20:17',5,1),('305758',425,'2023-02-10 15:20:17',6,2),('305859',486,'2023-02-10 15:20:17',5,3),('305960',462,'2023-02-10 15:20:17',9,1),('306061',353,'2023-02-10 15:20:17',11,4),('306162',408,'2023-02-10 15:20:17',7,3),('306263',254,'2023-02-10 15:20:17',8,4),('306364',403,'2023-02-10 15:20:17',11,5),('306465',224,'2023-02-10 15:20:17',12,4),('306566',309,'2023-02-10 15:20:17',13,4),('306667',280,'2023-02-10 15:20:17',13,1),('306768',250,'2023-02-10 15:20:17',10,4),('306869',464,'2023-02-10 15:20:17',8,2),('306970',443,'2023-02-10 15:20:17',14,2),('307071',461,'2023-02-10 15:20:17',14,3),('307172',282,'2023-02-10 15:20:17',8,4),('307273',320,'2023-02-10 15:20:17',7,5),('307374',431,'2023-02-10 15:20:17',14,4),('307475',359,'2023-02-10 15:20:17',13,4),('307576',471,'2023-02-10 15:20:17',8,5),('307677',381,'2023-02-10 15:20:17',9,1);
/*!40000 ALTER TABLE `trip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle` (
  `vehicle_id` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Type` varchar(100) NOT NULL,
  PRIMARY KEY (`vehicle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES ('DL 26 CA 2700','i10','GO'),('DL 26 CA 2701','i10','GO'),('DL 26 CA 2702','i10','GO'),('DL 26 CA 2703','i10','GO'),('DL 26 CA 2704','SWIFT','GO'),('DL 26 CA 2705','i10','GO'),('DL 26 CA 2706','SWIFT','GO'),('DL 26 CA 2707','SWIFT DEZIRE','SEDAN'),('DL 26 CA 2708','SWIFT','GO'),('DL 26 CA 2709','i10','GO'),('DL 26 CA 2710','SWIFT','GO'),('DL 26 CA 2711','ALTO','GO'),('DL 26 CA 2712','ALTO','GO'),('DL 26 CA 2713','SX4','SEDAN'),('DL 26 CA 2714','ALTO','GO'),('DL 26 CA 2715','SWIFT','GO'),('DL 26 CA 2716','SWIFT','GO'),('DL 26 CA 2717','SWIFT','GO'),('DL 26 CA 2718','SWIFT','GO'),('DL 26 CA 2719','SWIFT DEZIRE','SEDAN'),('DL 26 CA 2720','HONDA CITY','SEDAN'),('DL 26 CA 2721','i10','GO'),('DL 26 CA 2722','SWIFT','GO'),('DL 26 CA 2723','ALTO','GO'),('DL 26 CA 2724','LEXUS','PREMIUM'),('DL 26 CA 2725','SWIFT','GO'),('DL 26 CA 2726','BMW X4','PREMIUM'),('DL 26 CA 2727','BMW X4','PREMIUM'),('DL 26 CA 2728','SWIFT','GO'),('DL 26 CA 2729','ALTO','GO'),('DL 26 CA 2730','SWIFT','GO'),('DL 26 CA 2731','SWIFT','GO'),('DL 26 CA 2732','ALTO','GO'),('DL 26 CA 2733','SWIFT','GO'),('DL 26 CA 2734','ALTO','GO'),('DL 26 CA 2735','ALTO','GO'),('DL 26 CA 2736','ALTO','GO'),('DL 26 CA 2737','BMW X4','PREMIUM'),('DL 26 CA 2738','ALTO','GO'),('DL 26 CA 2739','SWIFT','GO'),('DL 26 CA 2740','SWIFT DEZIRE','SEDAN'),('DL 26 CA 2741','ALTO','GO'),('DL 26 CA 2742','SWIFT DEZIRE','SEDAN'),('DL 26 CA 2743','LEXUS','PREMIUM'),('DL 26 CA 2744','SWIFT','GO'),('DL 26 CA 2745','SWIFT','GO'),('DL 26 CA 2746','SX4','SEDAN'),('DL 26 CA 2747','i10','GO'),('DL 26 CA 2748','BMW X4','PREMIUM'),('DL 26 CA 2749','ALTO','GO'),('DL 26 CA 2750','SX4','SEDAN'),('DL 26 CA 2751','SWIFT','GO'),('DL 26 CA 2752','SWIFT','GO'),('DL 26 CA 2753','SWIFT','GO'),('DL 26 CA 2754','i10','GO'),('DL 26 CA 2755','ALTO','GO'),('DL 26 CA 2756','SWIFT','GO'),('DL 26 CA 2757','ALTO','GO'),('DL 26 CA 2758','SX4','SEDAN'),('DL 26 CA 2759','ALTO','GO'),('DL 26 CA 2760','SX4','SEDAN'),('DL 26 CA 2761','SWIFT','GO'),('DL 26 CA 2762','ALTO','GO'),('DL 26 CA 2763','ALTO','GO'),('DL 26 CA 2764','ALTO','GO'),('DL 26 CA 2765','ALTO','GO'),('DL 26 CA 2766','LEXUS','PREMIUM'),('DL 26 CA 2767','SX4','SEDAN'),('DL 26 CA 2768','ALTO','GO'),('DL 26 CA 2769','ALTO','GO'),('DL 26 CA 2770','i10','GO'),('DL 26 CA 2771','SWIFT','GO'),('DL 26 CA 2772','SWIFT','GO'),('DL 26 CA 2773','SWIFT','GO'),('DL 26 CA 2774','SWIFT','GO'),('DL 26 CA 2775','SWIFT','GO'),('DL 26 CA 2776','ALTO','GO'),('DL 26 CA 2777','ALTO','GO'),('DL 26 CA 2778','i10','GO'),('DL 26 CA 2779','ALTO','GO'),('DL 26 CA 2780','ALTO','GO'),('DL 26 CA 2781','SWIFT','GO'),('DL 26 CA 2782','i10','GO'),('DL 26 CA 2783','SWIFT DEZIRE','SEDAN'),('DL 26 CA 2784','HONDA CITY','SEDAN'),('DL 26 CA 2785','SX4','SEDAN'),('DL 26 CA 2786','LEXUS','PREMIUM'),('DL 26 CA 2787','ALTO','GO'),('DL 26 CA 2788','ALTO','GO'),('DL 26 CA 2789','SWIFT DEZIRE','SEDAN'),('DL 26 CA 2790','SWIFT DEZIRE','SEDAN'),('DL 26 CA 2791','i10','GO'),('DL 26 CA 2792','SWIFT','GO'),('DL 26 CA 2793','ALTO','GO'),('DL 26 CA 2794','ALTO','GO'),('DL 26 CA 2795','SWIFT DEZIRE','SEDAN'),('DL 26 CA 2796','SWIFT','GO'),('DL 26 CA 2797','SWIFT','GO'),('DL 26 CA 2798','SWIFT','GO'),('DL 26 CA 2799','i10','GO'),('DL 26 CA 2800','ALTO','GO');
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wallet`
--

DROP TABLE IF EXISTS `wallet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wallet` (
  `wallet_id` int NOT NULL,
  `amount` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`wallet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wallet`
--

LOCK TABLES `wallet` WRITE;
/*!40000 ALTER TABLE `wallet` DISABLE KEYS */;
INSERT INTO `wallet` VALUES (24700,1041),(24701,1467),(24702,1334),(24703,1500),(24704,1169),(24705,1724),(24706,1478),(24707,1358),(24708,1962),(24709,1464),(24710,1705),(24711,1145),(24712,1281),(24713,1827),(24714,1961),(24715,1491),(24716,1995),(24717,1942),(24718,1827),(24719,1436),(24720,1391),(24721,1604),(24722,1902),(24723,1153),(24724,1292),(24725,1382),(24726,1421),(24727,1716),(24728,1718),(24729,1895),(24730,1447),(24731,1726),(24732,1771),(24733,1538),(24734,1869),(24735,1912),(24736,1667),(24737,1299),(24738,1035),(24739,1894),(24740,1703),(24741,1811),(24742,1322),(24743,1333),(24744,1673),(24745,1664),(24746,1141),(24747,1711),(24748,1253),(24749,1868),(24750,1547),(24751,1644),(24752,1662),(24753,1757),(24754,1037),(24755,1859),(24756,1723),(24757,1741),(24758,1529),(24759,1778),(24760,1316),(24761,1035),(24762,1190),(24763,1842),(24764,1288),(24765,1106),(24766,1040),(24767,1942),(24768,1264),(24769,1648),(24770,1446),(24771,1805),(24772,1890),(24773,1729),(24774,1370),(24775,1350),(24776,1006),(24777,1101),(24778,1393),(24779,1548),(24780,1629),(24781,1623),(24782,1084),(24783,1954),(24784,1756),(24785,1840),(24786,1966),(24787,1376),(24788,1931),(24789,1308),(24790,1944),(24791,1439),(24792,1626),(24793,1323),(24794,1537),(24795,1538),(24796,1118),(24797,1082),(24798,1929),(24799,1541),(24800,1833),(24801,1115),(24802,1639),(24803,1658),(24804,1704),(24805,1930),(24806,1977),(24807,1306),(24808,1673),(24809,1386),(24810,1021),(24811,1745),(24812,1924),(24813,1072),(24814,1270),(24815,1829),(24816,1777),(24817,1573),(24818,1097),(24819,1512),(24820,1986),(24821,1290),(24822,1161),(24823,1636),(24824,1355),(24825,1767),(24826,1655),(24827,1574),(24828,1031),(24829,1052),(24830,1350),(24831,1150),(24832,1941),(24833,1724),(24834,1966),(24835,1430),(24836,1107),(24837,1191),(24838,1007),(24839,1337),(24840,1457),(24841,1287),(24842,1753),(24843,1383),(24844,1945),(24845,1909),(24846,1209),(24847,1758),(24848,1221),(24849,1588),(24850,1422),(24851,1946),(24852,1506),(24853,1030),(24854,1413),(24855,1168),(24856,1900),(24857,1591),(24858,1762),(24859,1655),(24860,1410),(24861,1359),(24862,1624),(24863,1537),(24864,1548),(24865,1483),(24866,1595),(24867,1041),(24868,1602),(24869,1350),(24870,1291),(24871,1836),(24872,1374),(24873,1020),(24874,1596),(24875,1021),(24876,1348),(24877,1199),(24878,1668),(24879,1484),(24880,1281),(24881,1734),(24882,1053),(24883,1999),(24884,1418),(24885,1938),(24886,1900),(24887,1788),(24888,1127),(24889,1467),(24890,1728),(24891,1893),(24892,1648),(24893,1483),(24894,1807),(24895,1421),(24896,1310),(24897,1617),(24898,1813),(24899,1514);
/*!40000 ALTER TABLE `wallet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'bidmyride'
--

--
-- Dumping routines for database 'bidmyride'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-10 22:54:21
