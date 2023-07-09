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

-- Dump completed on 2023-02-10 22:56:27
