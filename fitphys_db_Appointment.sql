-- MySQL dump 10.13  Distrib 8.0.28, for macos11 (x86_64)
--
-- Host: localhost    Database: fitphys_db
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `Appointment`
--

DROP TABLE IF EXISTS `Appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Appointment` (
  `appointment_id` int NOT NULL AUTO_INCREMENT,
  `Customer_customer_id` int NOT NULL,
  `Employee_employee_id` int NOT NULL,
  `Therapy_therapy_id` int NOT NULL,
  `appointment_startDateTime` datetime NOT NULL,
  `appointment_endDateTime` datetime NOT NULL,
  `appointment_desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`appointment_id`,`Customer_customer_id`,`Employee_employee_id`,`Therapy_therapy_id`),
  UNIQUE KEY `appointment_id_UNIQUE` (`appointment_id`),
  KEY `fk_Appointment_Customer1_idx` (`Customer_customer_id`),
  KEY `fk_Appointment_Employee1_idx` (`Employee_employee_id`),
  KEY `fk_Appointment_Therapy1_idx` (`Therapy_therapy_id`),
  CONSTRAINT `fk_Appointment_Customer1` FOREIGN KEY (`Customer_customer_id`) REFERENCES `Customer` (`customer_id`),
  CONSTRAINT `fk_Appointment_Employee1` FOREIGN KEY (`Employee_employee_id`) REFERENCES `Employee` (`employee_id`),
  CONSTRAINT `fk_Appointment_Therapy1` FOREIGN KEY (`Therapy_therapy_id`) REFERENCES `Therapy` (`therapy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Appointment`
--

LOCK TABLES `Appointment` WRITE;
/*!40000 ALTER TABLE `Appointment` DISABLE KEYS */;
/*!40000 ALTER TABLE `Appointment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-22 19:51:53
