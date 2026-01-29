-- MySQL dump 10.13  Distrib 8.4.8, for Linux (x86_64)
--
-- Host: localhost    Database: CAR
-- ------------------------------------------------------
-- Server version	8.4.8

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `CUSTOMERS`
--

DROP TABLE IF EXISTS `CUSTOMERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CUSTOMERS` (
  `CUSTOMER_NUMBER` int NOT NULL,
  `CUSTOMER_FIRST_NAME` varchar(50) DEFAULT NULL,
  `CUSTOMER_MIDDLE_NAME` varchar(50) DEFAULT NULL,
  `CUSTOMER_LAST_NAME` varchar(50) DEFAULT NULL,
  `CUSTOMER_PHONE` varchar(15) DEFAULT NULL,
  `CUSTOMER_ADDRESS` varchar(50) DEFAULT NULL,
  `CUSTOMER_CITY` varchar(50) DEFAULT NULL,
  `CUSTOMER_PROVINCE` varchar(50) DEFAULT NULL,
  `CUSTOMERS_SALES_REPRESENTATION_NO` int DEFAULT NULL,
  `CUSTOMER_CREDIT_LIMIT` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CUSTOMER_NUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CUSTOMERS`
--

LOCK TABLES `CUSTOMERS` WRITE;
/*!40000 ALTER TABLE `CUSTOMERS` DISABLE KEYS */;
INSERT INTO `CUSTOMERS` VALUES (1,'Ram',NULL,'Sharma','9811111111','Kathmandu','Kathmandu','Bagmati',101,'50000'),(2,'Sita',NULL,'Sharma','9811111112','Lalitpur','Lalitpur','Bagmati',101,'60000'),(3,'Hari',NULL,'KC','9811111113','Bhaktapur','Bhaktapur','Bagmati',102,'55000'),(4,'Gita',NULL,'Rai','9811111114','Pokhara','Pokhara','Gandaki',102,'45000'),(5,'Ramesh',NULL,'Thapa','9811111115','Butwal','Butwal','Lumbini',103,'70000'),(6,'Suresh',NULL,'Karki','9811111116','Biratnagar','Biratnagar','Koshi',103,'40000'),(7,'Nita',NULL,'Adhikari','9811111117','Dharan','Dharan','Koshi',104,'65000'),(8,'Bimal',NULL,'Shrestha','9811111118','Hetauda','Hetauda','Bagmati',104,'48000'),(9,'Anita',NULL,'Poudel','9811111119','Chitwan','Chitwan','Bagmati',105,'52000'),(10,'Kiran',NULL,'Basnet','9811111120','Janakpur','Janakpur','Madhesh',105,'58000');
/*!40000 ALTER TABLE `CUSTOMERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EMPLOYEES`
--

DROP TABLE IF EXISTS `EMPLOYEES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EMPLOYEES` (
  `EMPLOYEE_NUMBER` int NOT NULL,
  `EMPLOYEE_FIRST_NAME` varchar(50) DEFAULT NULL,
  `EMPLOYEE_LAST_NAME` varchar(50) DEFAULT NULL,
  `EMPLOYEE_EMAIL` varchar(50) DEFAULT NULL,
  `EMPLOYEE_OFFICE_CODE` varchar(50) DEFAULT NULL,
  `EMPLOYEE_REPORTS_TO` int DEFAULT NULL,
  `EMPLOYEE_JOB_TITLE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`EMPLOYEE_NUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMPLOYEES`
--

LOCK TABLES `EMPLOYEES` WRITE;
/*!40000 ALTER TABLE `EMPLOYEES` DISABLE KEYS */;
INSERT INTO `EMPLOYEES` VALUES (101,'Amit','Shrestha','amit@company.com','1',NULL,'Manager'),(102,'Bina','Rai','bina@company.com','1',101,'Sales Rep'),(103,'Raju','Thapa','raju@company.com','2',101,'Sales Rep');
/*!40000 ALTER TABLE `EMPLOYEES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OFFICES`
--

DROP TABLE IF EXISTS `OFFICES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `OFFICES` (
  `OFFICE_CODE` int NOT NULL,
  `OFFICE_CITY` varchar(50) DEFAULT NULL,
  `OFFICE_PHONE` varchar(50) DEFAULT NULL,
  `OFFICE_ADDRESS` varchar(50) DEFAULT NULL,
  `OFFICE_STATE` varchar(50) DEFAULT NULL,
  `OFFICE_COUNTRY` varchar(50) DEFAULT NULL,
  `OFFICE_POSTAL_CODE` int DEFAULT NULL,
  `OFFICE_TERRITORY` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`OFFICE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OFFICES`
--

LOCK TABLES `OFFICES` WRITE;
/*!40000 ALTER TABLE `OFFICES` DISABLE KEYS */;
INSERT INTO `OFFICES` VALUES (1,'Kathmandu','01-555555','New Road','Bagmati','Nepal',44600,'Asia'),(2,'Pokhara','061-444444','Lakeside','Gandaki','Nepal',33700,'Asia');
/*!40000 ALTER TABLE `OFFICES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ORDERS`
--

DROP TABLE IF EXISTS `ORDERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ORDERS` (
  `ORDER_NUMBER` int NOT NULL,
  `ORDER_DATE` date DEFAULT NULL,
  `ORDER_REQUIRED` date DEFAULT NULL,
  `ORDER_SHIPPED` date DEFAULT NULL,
  `ORDER_STATUS` varchar(50) DEFAULT NULL,
  `ORDER_COMMENTS` varchar(50) DEFAULT NULL,
  `CUSTOMER_NUMBER` int DEFAULT NULL,
  `ORDER_DESCRIPTION` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ORDER_NUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ORDERS`
--

LOCK TABLES `ORDERS` WRITE;
/*!40000 ALTER TABLE `ORDERS` DISABLE KEYS */;
INSERT INTO `ORDERS` VALUES (1,'2025-01-01','2025-01-07','2025-01-03','SHIPPED','Delivered',1,'First order'),(2,'2025-01-02','2025-01-08','2025-01-04','SHIPPED','Delivered',2,'Second order'),(3,'2025-01-03','2025-01-09',NULL,'PENDING','Waiting',3,'Third order');
/*!40000 ALTER TABLE `ORDERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ORDER_DETAILS`
--

DROP TABLE IF EXISTS `ORDER_DETAILS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ORDER_DETAILS` (
  `ORDER_NUMBER` int NOT NULL,
  `PRODUCT_CODE` int NOT NULL,
  `PRODUCT_QUANTITY_ORDERED` int DEFAULT NULL,
  `PRODUCT_EACH_PRICE` int DEFAULT NULL,
  `PRODUCTORDER_LINE_NUMBER` int DEFAULT NULL,
  PRIMARY KEY (`ORDER_NUMBER`,`PRODUCT_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ORDER_DETAILS`
--

LOCK TABLES `ORDER_DETAILS` WRITE;
/*!40000 ALTER TABLE `ORDER_DETAILS` DISABLE KEYS */;
INSERT INTO `ORDER_DETAILS` VALUES (1,1,2,100,1),(1,2,1,120,2),(2,3,1,150,1),(3,4,2,160,1);
/*!40000 ALTER TABLE `ORDER_DETAILS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PAYMENTS`
--

DROP TABLE IF EXISTS `PAYMENTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PAYMENTS` (
  `CUSTOMER_NUMBER` int NOT NULL,
  `TRANSACTION_CODE` varchar(50) NOT NULL,
  `PAYMENT_DATE` date DEFAULT NULL,
  `PAYMENT_AMOUNT` int DEFAULT NULL,
  PRIMARY KEY (`CUSTOMER_NUMBER`,`TRANSACTION_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAYMENTS`
--

LOCK TABLES `PAYMENTS` WRITE;
/*!40000 ALTER TABLE `PAYMENTS` DISABLE KEYS */;
INSERT INTO `PAYMENTS` VALUES (1,'TXN001','2025-01-05',500),(2,'TXN002','2025-01-06',600),(3,'TXN003','2025-01-07',700);
/*!40000 ALTER TABLE `PAYMENTS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRODUCTS`
--

DROP TABLE IF EXISTS `PRODUCTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PRODUCTS` (
  `PRODUCT_CODE` int NOT NULL,
  `PRODUCT_NAME` varchar(50) DEFAULT NULL,
  `PRODUCT_LINE` varchar(50) DEFAULT NULL,
  `PRODUCT_VENDOR` varchar(50) DEFAULT NULL,
  `PRODUCT_DESCRIPTION` varchar(200) DEFAULT NULL,
  `PRODUCT_BUY_PRICE` int DEFAULT NULL,
  `PRODUCT_MSRP` int DEFAULT NULL,
  PRIMARY KEY (`PRODUCT_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCTS`
--

LOCK TABLES `PRODUCTS` WRITE;
/*!40000 ALTER TABLE `PRODUCTS` DISABLE KEYS */;
INSERT INTO `PRODUCTS` VALUES (1,'Model Car A','Classic','AutoVendor','Classic car model',50,100),(2,'Model Car B','Vintage','AutoVendor','Vintage car model',60,120),(3,'Model Car C','Sports','Speedy','Sports car model',70,150),(4,'Model Car D','SUV','AutoVendor','SUV model',80,160),(5,'Model Car E','Truck','HeavyAuto','Truck model',90,180);
/*!40000 ALTER TABLE `PRODUCTS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRODUCT_LINES`
--

DROP TABLE IF EXISTS `PRODUCT_LINES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PRODUCT_LINES` (
  `PRODUCT_LINE` int NOT NULL,
  `PRODUCT_DESCRIPTION` varchar(50) DEFAULT NULL,
  `PRODUCT_IMAGE` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`PRODUCT_LINE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCT_LINES`
--

LOCK TABLES `PRODUCT_LINES` WRITE;
/*!40000 ALTER TABLE `PRODUCT_LINES` DISABLE KEYS */;
INSERT INTO `PRODUCT_LINES` VALUES (1,'Classic Cars','classic.jpg'),(2,'Vintage Cars','vintage.jpg'),(3,'Sports Cars','sports.jpg'),(4,'SUV Cars','suv.jpg'),(5,'Truck Models','truck.jpg');
/*!40000 ALTER TABLE `PRODUCT_LINES` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-29 10:32:20
