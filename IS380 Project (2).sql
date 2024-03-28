CREATE DATABASE  IF NOT EXISTS `is380` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `is380`;
-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: is380
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `Address_ID` int NOT NULL,
  `Address_details` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`Address_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'5860 BELAIR RD\nBaltimore, MD'),(2,'237 MONTFORD AVE\nBaltimore, MD'),(3,'614 WATER ST\nBaltimore, MD'),(4,'237 PARK AVE\nBaltimore, MD'),(5,'1407 FLEET ST\nBaltimore, MD'),(6,'5860 BELAIR RD\nBaltimore, MD\n237 MONTFORD AVE\nBaltimore, MD\n614 WATER ST\nBaltimore, MD\n237 PARK AVE\nBaltimore, MD\n1407 FLEET ST\nBaltimore, MD\n2701 BOSTON ST\nBaltimore, MD');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billing`
--

DROP TABLE IF EXISTS `billing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `billing` (
  `Billing_ID` int NOT NULL,
  `Visit_ID` int DEFAULT NULL,
  `Bill_Date` date DEFAULT NULL,
  `Amount` float DEFAULT NULL,
  `Payment_Method` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Billing_ID`),
  KEY `Visit_ID_idx` (`Visit_ID`),
  CONSTRAINT `Visit_ID` FOREIGN KEY (`Visit_ID`) REFERENCES `visit` (`Visit_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billing`
--

LOCK TABLES `billing` WRITE;
/*!40000 ALTER TABLE `billing` DISABLE KEYS */;
INSERT INTO `billing` VALUES (2132,1,'2021-02-10',35,'Cash'),(3235,8,'2020-06-15',30,'Cash'),(3242,7,'2020-08-11',28,'Cash'),(3245,2,'2020-06-15',100,'Cash'),(4232,4,'2021-02-20',20,'Card'),(4343,1,'2020-08-11',25,'Cash'),(5454,6,'2021-04-10',60,'Card'),(5464,3,'2021-03-10',40,'Cash');
/*!40000 ALTER TABLE `billing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `City_ID` int NOT NULL,
  `City_Name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`City_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (3245,'DownTown LA'),(4355,'Long Beach'),(4546,'Culver City'),(5454,'Torrance'),(6563,'Santa Ana'),(8969,'Hawthorne');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `Country_Code` varchar(5) NOT NULL,
  `Country_Name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Country_Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES ('232','Torrance'),('345','Hawthorne'),('544','Santa Ana'),('760','Long Beach'),('807','DownTown LA'),('890','Passadena');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_types_of_food`
--

DROP TABLE IF EXISTS `ref_types_of_food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ref_types_of_food` (
  `Food_Type_Code` varchar(5) NOT NULL,
  `Food_Type_Description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Food_Type_Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_types_of_food`
--

LOCK TABLES `ref_types_of_food` WRITE;
/*!40000 ALTER TABLE `ref_types_of_food` DISABLE KEYS */;
INSERT INTO `ref_types_of_food` VALUES ('127','Pancakes, waffles, French toast, other grain products'),('235','Vegetables and mixtures mostly vegetables baby food'),('257','Organ meats, frankfurters, sausages, lunchmeats'),('323','Formulated nutrition beverages, energy drinks, sports drink'),('434','Organ meats, frankfurters, sausages, lunchmeats'),('534','Milks, milk drinks, yogurts, infant formulas');
/*!40000 ALTER TABLE `ref_types_of_food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `res_types_of_food`
--

DROP TABLE IF EXISTS `res_types_of_food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `res_types_of_food` (
  `Restaurant_Type_ID` int NOT NULL,
  `Food_Type_Code` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`Restaurant_Type_ID`),
  KEY `Food_Type_Code_idx` (`Food_Type_Code`),
  CONSTRAINT `Food_Type_Code` FOREIGN KEY (`Food_Type_Code`) REFERENCES `ref_types_of_food` (`Food_Type_Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `res_types_of_food`
--

LOCK TABLES `res_types_of_food` WRITE;
/*!40000 ALTER TABLE `res_types_of_food` DISABLE KEYS */;
INSERT INTO `res_types_of_food` VALUES (17,'127'),(32,'235'),(89,'257'),(12,'323'),(21,'434'),(43,'534');
/*!40000 ALTER TABLE `res_types_of_food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurants`
--

DROP TABLE IF EXISTS `restaurants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurants` (
  `Restaurant_ID` int NOT NULL,
  `Address_ID` int DEFAULT NULL,
  `City_ID` int DEFAULT NULL,
  `State_Province_Code` varchar(3) DEFAULT NULL,
  `Country_Code` varchar(5) DEFAULT NULL,
  `Restaurant_Types_ID` int DEFAULT NULL,
  `No_Smoking_Area_YN` varchar(5) DEFAULT NULL,
  `Ranking_Number` int DEFAULT NULL,
  `Restaurant_Name` varchar(30) DEFAULT NULL,
  `Restaurant_Description` varchar(255) DEFAULT NULL,
  `How_to_Get_There` varchar(255) DEFAULT NULL,
  `Opening_Hours` varchar(50) DEFAULT NULL,
  `Map_FileName` blob,
  `Picture_FileName` blob,
  `Rates` int DEFAULT NULL,
  `Other_Details` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`Restaurant_ID`),
  KEY `Address_ID_idx` (`Address_ID`),
  KEY `City_ID_idx` (`City_ID`),
  KEY `State_Province_Code_idx` (`State_Province_Code`),
  KEY `Country_Code_idx` (`Country_Code`),
  KEY `Restaurant_Types_ID_idx` (`Restaurant_Types_ID`),
  CONSTRAINT `Address_ID` FOREIGN KEY (`Address_ID`) REFERENCES `address` (`Address_ID`),
  CONSTRAINT `City_ID` FOREIGN KEY (`City_ID`) REFERENCES `cities` (`City_ID`),
  CONSTRAINT `Country_Code` FOREIGN KEY (`Country_Code`) REFERENCES `countries` (`Country_Code`),
  CONSTRAINT `Restaurant_Types_ID` FOREIGN KEY (`Restaurant_Types_ID`) REFERENCES `res_types_of_food` (`Restaurant_Type_ID`),
  CONSTRAINT `State_Province_Code` FOREIGN KEY (`State_Province_Code`) REFERENCES `states_and_provinces` (`State_Province_Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurants`
--

LOCK TABLES `restaurants` WRITE;
/*!40000 ALTER TABLE `restaurants` DISABLE KEYS */;
INSERT INTO `restaurants` VALUES (1,1,3245,'CA','232',17,'Y',5,'BAY CAFE','Our mission is to make customers happy\nFor a more actionable mission statement, feel free to include your values:\nOur mission is to (verb) by (value one), (value two), and (value three).','Target\n14310 Hawthorne Blvd, Lawndale, CA 90260\n\nGet on I-405 N in Hawthorne\n5 min (1.3 mi)\n\nContinue to Los Angeles. Take exit 1C from I-105 W\n4 min (3.4 mi)\n\nContinue on CA-1 N/S Sepulveda Blvd to your destination\n1 min (0.8 mi)','Thursday	7AM–10PM',NULL,NULL,4,'DeliveryTakeoutCurbside pickupSit-down diningOutdoor seatingIndoor diningHeated outdoor seatingCovered outdoor seating'),(2,2,4355,'HI','345',32,'N',3,'CHAMPAGNE TONY\'S','Our mission is to be the most sustainable restaurant in New York by sourcing our ingredients locally, supplementing produce with herbs grown on our rooftop garden, and giving back to the community through urban farming education.','Get on I-405 S/San Diego Fwy in Inglewood from W Slauson Ave and La Cienega Blvd\n11 min (3.8 mi)\n\nContinue on I-405 S/San Diego Fwy. Take CA-1 S to 2nd St. in Manhattan Beach\n13 min (7.6 mi)\n\nFollow 2nd St. to 1st St/Neptune Ave','Thursday	7AM–6PM',NULL,NULL,4,'DeliveryTakeoutCurbside pickupSit-down diningOutdoor seatingIndoor diningHeated '),(3,3,4546,'FL','544',89,'Y',4,'HARD ROCK CAF','Our mission is to make customers happy.\nOur mission is to share our family’s authentic Sri Lankan recipes with the world.\nFor a more actionable mission statement, feel free to include your values:','Get on I-405 S/San Diego Fwy in Inglewood from W Slauson Ave and La Cienega Blvd\n11 min (3.8 mi)\n\nContinue on I-405 S/San Diego Fwy. Take CA-1 S to 2nd St. in Manhattan Beach\n13 min (7.6 mi)\n\nFollow 2nd St. to 1st St/Neptune Ave','Thursday	7AM–6PM',NULL,NULL,4,'DeliveryTakeoutCurbside pickupSit-down diningOutdoor seatingIndoor diningHeated '),(4,5,3245,'TX','760',32,'N',5,'BELAIR PUB','Our mission is to give our customers a place to celebrate life’s special moments by offering the best food, service, and ambiance in Toronto.','Get on I-105 E from World Way and CA-1 S/S Sepulveda Blvd\n5 min (1.8 mi)\n\nTake Exit 2 and I-405 S to Redondo Beach Blvd in Lawndale. Take exit 40B from I-405 S\n6 min (5.6 mi)\n\nContinue on Redondo Beach Blvd to your destination in El Camino Village','Thursday	7AM–10PM',NULL,NULL,4,'DeliveryTakeoutCurbside pickupSit-down diningOutdoor seatingIndoor diningHeated outdoor seatingCovered outdoor seating'),(5,4,5454,'NY','807',43,'N',3,'DRIFTERS RAW BAR & GRILL','Our mission is to be the most sustainable restaurant in New York by sourcing our ingredients locally, supplementing produce with herbs grown on our rooftop garden, and giving back to the community through urban farming education.','Target\n14310 Hawthorne Blvd, Lawndale, CA 90260\n\nGet on I-405 N in Hawthorne\n5 min (1.3 mi)\n\nContinue to Los Angeles. Take exit 1C from I-105 W\n4 min (3.4 mi)\n\nContinue on CA-1 N/S Sepulveda Blvd to your destination\n1 min (0.8 mi)','Thursday	7AM–6PM',NULL,NULL,4,'DeliveryTakeoutCurbside pickupSit-down '),(6,6,6563,'OH','890',12,'N',4,'INSIDE RAIL BAR','Our mission is to make customers happy.\nOur mission is to share our family’s authentic Sri Lankan recipes with the world.\nFor a more actionable mission statement, feel free to include your values:','Get on I-405 S/San Diego Fwy in Inglewood from W Slauson Ave and La Cienega Blvd\n11 min (3.8 mi)\n\nContinue on I-405 S/San Diego Fwy. Take CA-1 S to 2nd St. in Manhattan Beach\n13 min (7.6 mi)\n\nFollow 2nd St. to 1st St/Neptune Ave','Thursday	7AM–6PM',NULL,NULL,5,'DeliveryTakeoutCurbside pickupSit-down '),(7,1,8969,'CA','232',21,'Y',5,'CHARM CITY INN','Our mission is to be the most sustainable restaurant in New York by sourcing our ingredients locally, supplementing produce with herbs grown on our rooftop garden, and giving back to the community through urban farming education.','Target\n14310 Hawthorne Blvd, Lawndale, CA 90260\n\nGet on I-405 N in Hawthorne\n5 min (1.3 mi)\n\nContinue to Los Angeles. Take exit 1C from I-105 W\n4 min (3.4 mi)\n\nContinue on CA-1 N/S Sepulveda Blvd to your destination\n1 min (0.8 mi)','Thursday	7AM–10PM',NULL,NULL,5,'DeliveryTakeoutCurbside pickupSit-down diningOutdoor seatingIndoor diningHeated '),(8,5,4355,'TX','890',43,'N',4,'DUNKIN DONUTS','Our mission is to give our customers a place to celebrate life’s special moments by offering the best food, service, and ambiance in Toronto.','Get on I-105 E from World Way and CA-1 S/S Sepulveda Blvd\n5 min (1.8 mi)\n\nTake Exit 2 and I-405 S to Redondo Beach Blvd in Lawndale. Take exit 40B from I-405 S\n6 min (5.6 mi)\n\nContinue on Redondo Beach Blvd to your destination in El Camino Village','Thursday	7AM–6PM',NULL,NULL,4,'DeliveryTakeoutCurbside pickupSit-down ');
/*!40000 ALTER TABLE `restaurants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `star_gradings`
--

DROP TABLE IF EXISTS `star_gradings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `star_gradings` (
  `Star_Code_Awarded` int NOT NULL,
  `Star_Description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Star_Code_Awarded`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `star_gradings`
--

LOCK TABLES `star_gradings` WRITE;
/*!40000 ALTER TABLE `star_gradings` DISABLE KEYS */;
INSERT INTO `star_gradings` VALUES (21453,'EXCELLENT'),(23255,'BAD'),(32353,'VERY GOOD'),(32554,'VERY BAD'),(45345,'GOOD');
/*!40000 ALTER TABLE `star_gradings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_and_provinces`
--

DROP TABLE IF EXISTS `states_and_provinces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_and_provinces` (
  `State_Province_Code` varchar(3) NOT NULL,
  `Country_Code` varchar(50) DEFAULT NULL,
  `State_Province_Short_Name` varchar(10) DEFAULT NULL,
  `State_Province_Full_Name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`State_Province_Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_and_provinces`
--

LOCK TABLES `states_and_provinces` WRITE;
/*!40000 ALTER TABLE `states_and_provinces` DISABLE KEYS */;
INSERT INTO `states_and_provinces` VALUES ('CA','Torrance','CA','CALIFORNIA'),('FL','Hawthorne','FL','FLORIDA'),('HI','Santa Ana','HI','HAWAII'),('NY','Long Beach','NY','NEW YORK'),('OH','DownTown LA','OH','OHIO'),('TX','Passadena','TX','TEXAS');
/*!40000 ALTER TABLE `states_and_provinces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visit`
--

DROP TABLE IF EXISTS `visit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visit` (
  `Visit_ID` int NOT NULL,
  `Visitor_ID` int DEFAULT NULL,
  `Restaurant_ID` int DEFAULT NULL,
  PRIMARY KEY (`Visit_ID`),
  KEY `Visitor_ID_idx` (`Visitor_ID`),
  KEY `Restaurant_ID_idx` (`Restaurant_ID`),
  CONSTRAINT `Restaurant_ID` FOREIGN KEY (`Restaurant_ID`) REFERENCES `restaurants` (`Restaurant_ID`),
  CONSTRAINT `Visitor_ID` FOREIGN KEY (`Visitor_ID`) REFERENCES `visitors` (`Visitor_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visit`
--

LOCK TABLES `visit` WRITE;
/*!40000 ALTER TABLE `visit` DISABLE KEYS */;
INSERT INTO `visit` VALUES (1,212,1),(2,213,2),(3,324,3),(4,328,4),(5,435,5),(6,546,6),(7,324,7),(8,213,8);
/*!40000 ALTER TABLE `visit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visitor_categories`
--

DROP TABLE IF EXISTS `visitor_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visitor_categories` (
  `Visitor_Category_Code` int NOT NULL,
  `Visitor_Category_Description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Visitor_Category_Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitor_categories`
--

LOCK TABLES `visitor_categories` WRITE;
/*!40000 ALTER TABLE `visitor_categories` DISABLE KEYS */;
INSERT INTO `visitor_categories` VALUES (111,'CHILDREN'),(222,'ELDERLY'),(333,'ADULT'),(444,'DISABILITY'),(555,'MILITARY');
/*!40000 ALTER TABLE `visitor_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visitors`
--

DROP TABLE IF EXISTS `visitors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visitors` (
  `Visitor_ID` int NOT NULL,
  `Visitor_Comment_ID` int DEFAULT NULL,
  `Visitor_Category_Code` int DEFAULT NULL,
  `Visitors_Name` varchar(20) DEFAULT NULL,
  `Country_of_Origin` varchar(20) DEFAULT NULL,
  `Comment_Date` date DEFAULT NULL,
  `Comment_Details` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Visitor_ID`),
  KEY `Visitor_Comment_ID_idx` (`Visitor_Comment_ID`),
  KEY `Visitor_Category_Code_idx` (`Visitor_Category_Code`),
  CONSTRAINT `Visitor_Category_Code` FOREIGN KEY (`Visitor_Category_Code`) REFERENCES `visitor_categories` (`Visitor_Category_Code`),
  CONSTRAINT `Visitor_Comment_ID` FOREIGN KEY (`Visitor_Comment_ID`) REFERENCES `visitors_comments` (`Visitor_Comment_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitors`
--

LOCK TABLES `visitors` WRITE;
/*!40000 ALTER TABLE `visitors` DISABLE KEYS */;
INSERT INTO `visitors` VALUES (212,21,111,'WOODS FRANK','USA','2020-07-15',NULL),(213,24,111,'JOSHUA SAM','USA','2020-09-20',NULL),(324,40,222,'STEVE BEN','CAN','2021-01-25',NULL),(328,54,333,'SUE SAN','CAN','2020-11-25',NULL),(435,56,444,'TORI LOU','FRA','2021-02-15',NULL),(546,78,333,'LORENA GLENN','MEX','2021-04-05',NULL);
/*!40000 ALTER TABLE `visitors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visitors_comments`
--

DROP TABLE IF EXISTS `visitors_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visitors_comments` (
  `Visitor_Comment_ID` int NOT NULL,
  `Star_Code_Awarded` int DEFAULT NULL,
  `Comment Date` date DEFAULT NULL,
  `Comment Text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Visitor_Comment_ID`),
  KEY `Star_Code_Awarded_idx` (`Star_Code_Awarded`),
  CONSTRAINT `Star_Code_Awarded` FOREIGN KEY (`Star_Code_Awarded`) REFERENCES `star_gradings` (`Star_Code_Awarded`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitors_comments`
--

LOCK TABLES `visitors_comments` WRITE;
/*!40000 ALTER TABLE `visitors_comments` DISABLE KEYS */;
INSERT INTO `visitors_comments` VALUES (21,45345,'2020-07-15','Solid COMFORT food with decently LARGE portions!!! FYI the picture only shows half of the full croissant - so don\'t worry, there are two handfuls of the soft/crispy delicacy.'),(24,21453,'2020-09-20','Delicious philly cheesteak! It\'s spicy and filled with flavor. Love getting it on their ciabatta bread for extra toastiness. Breakfast sandwiches are really great too.'),(40,23255,'2021-01-25','i don\'t feel welcomed going into belwood anymore after seeing the employees wearing blue lives matter hats.'),(43,32353,'2020-07-15','Used to LOVE this breakfast place! The food is great, the service is fast, and it\'s reasonably priced. But the last couple years the staff have become increasingly rude. '),(54,45345,'2020-11-25','I love it here it\'s so essential. My favorite sandwich to order is the turkey on challah with cheddar cheese (special order). '),(56,21453,'2021-02-15','Hidden gem in the hills of bel air.  In a cute little shopping center in a quaint area of bel air is a tiny cafe that you can easily miss, but you don\'t want to pass up on this cute cafe/bakery.  '),(65,32353,'2021-04-05','Not sure why they should bother with online orders. I ordered something giving them 20 minutes to finish and when I arrived they didn\'t know who I was or what the order was. '),(78,32554,'2021-03-25','Delicious sandwiches and quiches. Chicken Caesar salad is tasty. Challahs are wonderful. Easy to call and place an order. Love our local coffee shop and delighted they remain open.');
/*!40000 ALTER TABLE `visitors_comments` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-20  9:34:07
