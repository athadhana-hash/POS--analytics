/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.8.6-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: pos_db
-- ------------------------------------------------------
-- Server version	11.8.6-MariaDB-5 from Debian

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `audit_logs`
--

DROP TABLE IF EXISTS `audit_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_logs` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`log_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `audit_logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_logs`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `audit_logs` WRITE;
/*!40000 ALTER TABLE `audit_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_logs` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES
(1,'Minuman'),
(2,'Makanan'),
(3,'Snack'),
(4,'Produk Rumah Tangga'),
(5,'Elektronik');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES
(1,'Customer_1','0812300001','customer1@email.com'),
(2,'Customer_2','0812300002','customer2@email.com'),
(3,'Customer_3','0812300003','customer3@email.com'),
(4,'Customer_4','0812300004','customer4@email.com'),
(5,'Customer_5','0812300005','customer5@email.com'),
(6,'Customer_6','0812300006','customer6@email.com'),
(7,'Customer_7','0812300007','customer7@email.com'),
(8,'Customer_8','0812300008','customer8@email.com'),
(9,'Customer_9','0812300009','customer9@email.com'),
(10,'Customer_10','0812300010','customer10@email.com'),
(11,'Customer_11','0812300011','customer11@email.com'),
(12,'Customer_12','0812300012','customer12@email.com'),
(13,'Customer_13','0812300013','customer13@email.com'),
(14,'Customer_14','0812300014','customer14@email.com'),
(15,'Customer_15','0812300015','customer15@email.com'),
(16,'Customer_16','0812300016','customer16@email.com'),
(17,'Customer_17','0812300017','customer17@email.com'),
(18,'Customer_18','0812300018','customer18@email.com'),
(19,'Customer_19','0812300019','customer19@email.com'),
(20,'Customer_20','0812300020','customer20@email.com'),
(21,'Customer_21','0812300021','customer21@email.com'),
(22,'Customer_22','0812300022','customer22@email.com'),
(23,'Customer_23','0812300023','customer23@email.com'),
(24,'Customer_24','0812300024','customer24@email.com'),
(25,'Customer_25','0812300025','customer25@email.com'),
(26,'Customer_26','0812300026','customer26@email.com'),
(27,'Customer_27','0812300027','customer27@email.com'),
(28,'Customer_28','0812300028','customer28@email.com'),
(29,'Customer_29','0812300029','customer29@email.com'),
(30,'Customer_30','0812300030','customer30@email.com'),
(31,'Customer_31','0812300031','customer31@email.com'),
(32,'Customer_32','0812300032','customer32@email.com'),
(33,'Customer_33','0812300033','customer33@email.com'),
(34,'Customer_34','0812300034','customer34@email.com'),
(35,'Customer_35','0812300035','customer35@email.com'),
(36,'Customer_36','0812300036','customer36@email.com'),
(37,'Customer_37','0812300037','customer37@email.com'),
(38,'Customer_38','0812300038','customer38@email.com'),
(39,'Customer_39','0812300039','customer39@email.com'),
(40,'Customer_40','0812300040','customer40@email.com'),
(41,'Customer_41','0812300041','customer41@email.com'),
(42,'Customer_42','0812300042','customer42@email.com'),
(43,'Customer_43','0812300043','customer43@email.com'),
(44,'Customer_44','0812300044','customer44@email.com'),
(45,'Customer_45','0812300045','customer45@email.com'),
(46,'Customer_46','0812300046','customer46@email.com'),
(47,'Customer_47','0812300047','customer47@email.com'),
(48,'Customer_48','0812300048','customer48@email.com'),
(49,'Customer_49','0812300049','customer49@email.com'),
(50,'Customer_50','0812300050','customer50@email.com'),
(64,'Ahmad','081111111111','ahmad@email.com'),
(65,'Rina','082222222222','rina@email.com'),
(66,'Dedi','083333333333','dedi@email.com'),
(67,'Customer_1','0812300001','customer1@email.com'),
(68,'Customer_2','0812300002','customer2@email.com'),
(69,'Customer_3','0812300003','customer3@email.com'),
(70,'Customer_4','0812300004','customer4@email.com'),
(71,'Customer_5','0812300005','customer5@email.com'),
(72,'Customer_6','0812300006','customer6@email.com'),
(73,'Customer_7','0812300007','customer7@email.com'),
(74,'Customer_8','0812300008','customer8@email.com'),
(75,'Customer_9','0812300009','customer9@email.com'),
(76,'Customer_10','0812300010','customer10@email.com'),
(77,'Customer_11','0812300011','customer11@email.com'),
(78,'Customer_12','0812300012','customer12@email.com'),
(79,'Customer_13','0812300013','customer13@email.com'),
(80,'Customer_14','0812300014','customer14@email.com'),
(81,'Customer_15','0812300015','customer15@email.com'),
(82,'Customer_16','0812300016','customer16@email.com'),
(83,'Customer_17','0812300017','customer17@email.com'),
(84,'Customer_18','0812300018','customer18@email.com'),
(85,'Customer_19','0812300019','customer19@email.com'),
(86,'Customer_20','0812300020','customer20@email.com'),
(87,'Customer_21','0812300021','customer21@email.com'),
(88,'Customer_22','0812300022','customer22@email.com'),
(89,'Customer_23','0812300023','customer23@email.com'),
(90,'Customer_24','0812300024','customer24@email.com'),
(91,'Customer_25','0812300025','customer25@email.com'),
(92,'Customer_26','0812300026','customer26@email.com'),
(93,'Customer_27','0812300027','customer27@email.com'),
(94,'Customer_28','0812300028','customer28@email.com'),
(95,'Customer_29','0812300029','customer29@email.com'),
(96,'Customer_30','0812300030','customer30@email.com'),
(97,'Customer_31','0812300031','customer31@email.com'),
(98,'Customer_32','0812300032','customer32@email.com'),
(99,'Customer_33','0812300033','customer33@email.com'),
(100,'Customer_34','0812300034','customer34@email.com'),
(101,'Customer_35','0812300035','customer35@email.com'),
(102,'Customer_36','0812300036','customer36@email.com'),
(103,'Customer_37','0812300037','customer37@email.com'),
(104,'Customer_38','0812300038','customer38@email.com'),
(105,'Customer_39','0812300039','customer39@email.com'),
(106,'Customer_40','0812300040','customer40@email.com'),
(107,'Customer_41','0812300041','customer41@email.com'),
(108,'Customer_42','0812300042','customer42@email.com'),
(109,'Customer_43','0812300043','customer43@email.com'),
(110,'Customer_44','0812300044','customer44@email.com'),
(111,'Customer_45','0812300045','customer45@email.com'),
(112,'Customer_46','0812300046','customer46@email.com'),
(113,'Customer_47','0812300047','customer47@email.com'),
(114,'Customer_48','0812300048','customer48@email.com'),
(115,'Customer_49','0812300049','customer49@email.com'),
(116,'Customer_50','0812300050','customer50@email.com');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `discounts`
--

DROP TABLE IF EXISTS `discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `discounts` (
  `discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `discount_name` varchar(100) DEFAULT NULL,
  `percentage` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`discount_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discounts`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `discounts` WRITE;
/*!40000 ALTER TABLE `discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `discounts` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `payment_methods`
--

DROP TABLE IF EXISTS `payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_methods` (
  `payment_method_id` int(11) NOT NULL AUTO_INCREMENT,
  `method_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`payment_method_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_methods`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `payment_methods` WRITE;
/*!40000 ALTER TABLE `payment_methods` DISABLE KEYS */;
INSERT INTO `payment_methods` VALUES
(1,'Cash'),
(2,'Debit Card'),
(3,'QRIS');
/*!40000 ALTER TABLE `payment_methods` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_id` int(11) DEFAULT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `payment_date` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`payment_id`),
  KEY `sale_id` (`sale_id`),
  KEY `payment_method_id` (`payment_method_id`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`sale_id`),
  CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`payment_method_id`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES
(7,5,2,9000.00,'2026-04-12 10:39:23'),
(8,6,2,13000.00,'2026-04-12 10:39:23'),
(9,7,3,5000.00,'2026-04-12 10:39:23'),
(10,8,2,44298.00,'2026-04-12 10:39:23'),
(11,9,1,38731.00,'2026-04-12 10:39:23'),
(12,10,2,42426.00,'2026-04-12 10:39:23'),
(13,11,3,38391.00,'2026-04-12 10:39:23'),
(14,12,2,15771.00,'2026-04-12 10:39:23'),
(15,13,3,15172.00,'2026-04-12 10:39:23'),
(16,14,3,27957.00,'2026-04-12 10:39:23'),
(17,15,1,16927.00,'2026-04-12 10:39:23'),
(18,16,2,39336.00,'2026-04-12 10:39:23'),
(19,17,2,29888.00,'2026-04-12 10:39:23'),
(20,18,2,19027.00,'2026-04-12 10:39:23'),
(21,19,2,5225.00,'2026-04-12 10:39:23'),
(22,20,3,44306.00,'2026-04-12 10:39:23'),
(23,21,1,43419.00,'2026-04-12 10:39:23'),
(24,22,3,17248.00,'2026-04-12 10:39:23'),
(25,23,1,47548.00,'2026-04-12 10:39:23'),
(26,24,1,28187.00,'2026-04-12 10:39:23'),
(27,25,1,11154.00,'2026-04-12 10:39:23'),
(28,26,2,21324.00,'2026-04-12 10:39:23'),
(29,27,1,44791.00,'2026-04-12 10:39:23'),
(30,28,3,47563.00,'2026-04-12 10:39:23'),
(31,29,2,35681.00,'2026-04-12 10:39:23'),
(32,30,1,10303.00,'2026-04-12 10:39:23'),
(33,31,1,50860.00,'2026-04-12 10:39:23'),
(34,32,2,30691.00,'2026-04-12 10:39:23'),
(35,33,3,22106.00,'2026-04-12 10:39:23'),
(36,34,1,29819.00,'2026-04-12 10:39:23'),
(37,35,3,28661.00,'2026-04-12 10:39:23'),
(38,36,1,27779.00,'2026-04-12 10:39:23'),
(39,37,2,38533.00,'2026-04-12 10:39:23'),
(40,38,2,22597.00,'2026-04-12 10:39:23'),
(41,39,2,7365.00,'2026-04-12 10:39:23'),
(42,40,3,19084.00,'2026-04-12 10:39:23'),
(43,41,3,17912.00,'2026-04-12 10:39:23'),
(44,42,3,7751.00,'2026-04-12 10:39:23'),
(45,43,2,26433.00,'2026-04-12 10:39:23'),
(46,44,1,45425.00,'2026-04-12 10:39:23'),
(47,45,2,10342.00,'2026-04-12 10:39:23'),
(48,46,2,40885.00,'2026-04-12 10:39:23'),
(49,47,3,31629.00,'2026-04-12 10:39:23'),
(50,48,2,16464.00,'2026-04-12 10:39:23'),
(51,49,3,53190.00,'2026-04-12 10:39:23'),
(52,50,2,50696.00,'2026-04-12 10:39:23'),
(53,51,1,9587.00,'2026-04-12 10:39:23'),
(54,52,2,38207.00,'2026-04-12 10:39:23'),
(55,53,1,37747.00,'2026-04-12 10:39:23'),
(56,54,2,28170.00,'2026-04-12 10:39:23'),
(57,55,3,24441.00,'2026-04-12 10:39:23'),
(58,56,1,34744.00,'2026-04-12 10:39:23'),
(59,57,2,9630.00,'2026-04-12 10:39:23'),
(60,58,1,22333.00,'2026-04-12 10:39:23'),
(61,59,3,16681.00,'2026-04-12 10:39:23'),
(62,60,1,21519.00,'2026-04-12 10:39:23'),
(63,61,3,11141.00,'2026-04-12 10:39:23'),
(64,62,1,50263.00,'2026-04-12 10:39:23'),
(65,63,2,10239.00,'2026-04-12 10:39:23'),
(66,64,2,52045.00,'2026-04-12 10:39:23'),
(67,65,3,27163.00,'2026-04-12 10:39:23'),
(68,66,2,7830.00,'2026-04-12 10:39:23'),
(69,67,2,33031.00,'2026-04-12 10:39:23'),
(70,68,3,21063.00,'2026-04-12 10:39:23'),
(71,69,3,33245.00,'2026-04-12 10:39:23'),
(72,70,3,30899.00,'2026-04-12 10:39:23'),
(73,71,3,14374.00,'2026-04-12 10:39:23'),
(74,72,2,5651.00,'2026-04-12 10:39:23'),
(75,73,1,54034.00,'2026-04-12 10:39:23'),
(76,74,3,10163.00,'2026-04-12 10:39:23'),
(77,75,2,44120.00,'2026-04-12 10:39:23'),
(78,76,3,45266.00,'2026-04-12 10:39:23'),
(79,77,3,20087.00,'2026-04-12 10:39:23'),
(80,78,1,24766.00,'2026-04-12 10:39:23'),
(81,79,3,28955.00,'2026-04-12 10:39:23'),
(82,80,3,37759.00,'2026-04-12 10:39:23'),
(83,81,1,28966.00,'2026-04-12 10:39:23'),
(84,82,2,37836.00,'2026-04-12 10:39:23'),
(85,83,2,34827.00,'2026-04-12 10:39:23'),
(86,84,2,54617.00,'2026-04-12 10:39:23'),
(87,85,3,19015.00,'2026-04-12 10:39:23'),
(88,86,2,36608.00,'2026-04-12 10:39:23'),
(89,87,2,5256.00,'2026-04-12 10:39:23'),
(90,88,1,22110.00,'2026-04-12 10:39:23'),
(91,89,1,16907.00,'2026-04-12 10:39:23'),
(92,90,1,45617.00,'2026-04-12 10:39:23'),
(93,91,3,32877.00,'2026-04-12 10:39:23'),
(94,92,2,38541.00,'2026-04-12 10:39:23'),
(95,93,1,35643.00,'2026-04-12 10:39:23'),
(96,94,3,50887.00,'2026-04-12 10:39:23'),
(97,95,2,48575.00,'2026-04-12 10:39:23'),
(98,96,1,52119.00,'2026-04-12 10:39:23'),
(99,97,2,48006.00,'2026-04-12 10:39:23'),
(100,98,3,23256.00,'2026-04-12 10:39:23'),
(101,99,1,54391.00,'2026-04-12 10:39:23'),
(102,100,2,13414.00,'2026-04-12 10:39:23'),
(103,101,3,44565.00,'2026-04-12 10:39:23'),
(104,102,2,43013.00,'2026-04-12 10:39:23'),
(105,103,2,27826.00,'2026-04-12 10:39:23'),
(106,104,3,54751.00,'2026-04-12 10:39:23'),
(107,105,2,18829.00,'2026-04-12 10:39:23'),
(108,106,2,18096.00,'2026-04-12 10:39:23'),
(109,107,2,29322.00,'2026-04-12 10:39:23');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `product_name` varchar(150) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `barcode` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `category_id` (`category_id`),
  KEY `supplier_id` (`supplier_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`),
  CONSTRAINT `products_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES
(1,1,1,'Teh Botol Sosro',5000.00,3500.00,'89911111'),
(2,1,1,'Aqua 600ml',4000.00,2500.00,'89922222'),
(3,2,2,'Indomie Goreng',3500.00,2500.00,'89933333'),
(4,3,2,'Biskuit Roma',8000.00,6000.00,'89944444'),
(5,4,3,'Sabun Lifebuoy',4500.00,3000.00,'89955555'),
(6,5,3,'Lampu LED 10W',20000.00,15000.00,'89966666');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `purchase_items`
--

DROP TABLE IF EXISTS `purchase_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_items` (
  `purchase_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`purchase_item_id`),
  KEY `purchase_id` (`purchase_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `purchase_items_ibfk_1` FOREIGN KEY (`purchase_id`) REFERENCES `purchase_orders` (`purchase_id`),
  CONSTRAINT `purchase_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_items`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `purchase_items` WRITE;
/*!40000 ALTER TABLE `purchase_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_items` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `purchase_orders`
--

DROP TABLE IF EXISTS `purchase_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_orders` (
  `purchase_id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_id` int(11) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`purchase_id`),
  KEY `supplier_id` (`supplier_id`),
  CONSTRAINT `purchase_orders_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_orders`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `purchase_orders` WRITE;
/*!40000 ALTER TABLE `purchase_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_orders` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `return_items`
--

DROP TABLE IF EXISTS `return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `return_items` (
  `return_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`return_item_id`),
  KEY `return_id` (`return_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `return_items_ibfk_1` FOREIGN KEY (`return_id`) REFERENCES `returns` (`return_id`),
  CONSTRAINT `return_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `return_items`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `return_items` WRITE;
/*!40000 ALTER TABLE `return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `return_items` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `returns`
--

DROP TABLE IF EXISTS `returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `returns` (
  `return_id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_id` int(11) DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `reason` text DEFAULT NULL,
  PRIMARY KEY (`return_id`),
  KEY `sale_id` (`sale_id`),
  CONSTRAINT `returns_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`sale_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `returns`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `returns` WRITE;
/*!40000 ALTER TABLE `returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `returns` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES
(1,'Admin'),
(2,'Kasir'),
(3,'Manager');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `sale_items`
--

DROP TABLE IF EXISTS `sale_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sale_items` (
  `sale_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`sale_item_id`),
  KEY `sale_id` (`sale_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `sale_items_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`sale_id`),
  CONSTRAINT `sale_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale_items`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `sale_items` WRITE;
/*!40000 ALTER TABLE `sale_items` DISABLE KEYS */;
INSERT INTO `sale_items` VALUES
(16,92,5,3,5327.00,40381.00),
(17,42,6,1,21583.00,34071.00),
(18,93,3,2,22813.00,33396.00),
(19,9,6,2,16343.00,43778.00),
(20,71,3,3,5434.00,23022.00),
(21,14,2,2,11899.00,40572.00),
(22,22,1,1,21294.00,21923.00),
(23,57,6,3,19998.00,14378.00),
(24,45,6,2,9275.00,37929.00),
(25,84,4,3,18279.00,37657.00),
(26,29,3,1,13909.00,19755.00),
(27,79,5,2,4033.00,34843.00),
(28,69,3,2,15609.00,22561.00),
(29,44,4,2,21668.00,41708.00),
(30,65,3,2,3756.00,42969.00),
(31,41,1,2,22702.00,30877.00),
(32,49,5,1,8112.00,16748.00),
(33,103,4,2,13772.00,23695.00),
(34,13,2,2,7737.00,15448.00),
(35,38,1,3,4692.00,32640.00),
(36,27,2,2,7821.00,43133.00),
(37,21,4,2,12793.00,24156.00),
(38,42,6,1,8182.00,29511.00),
(39,84,2,3,7603.00,35055.00),
(40,17,5,3,22546.00,20544.00),
(41,5,2,1,8200.00,27026.00),
(42,87,6,1,10613.00,14246.00),
(43,81,6,3,4055.00,23066.00),
(44,58,5,2,7851.00,27997.00),
(45,78,5,3,3693.00,24842.00),
(46,9,4,2,9019.00,34674.00),
(47,68,1,2,11414.00,28715.00),
(48,98,2,3,3297.00,38721.00),
(49,24,2,2,5725.00,44539.00),
(50,47,1,1,11738.00,17823.00),
(51,50,5,3,15726.00,20893.00),
(52,64,3,3,17553.00,14205.00),
(53,17,1,1,6242.00,25623.00),
(54,51,5,2,11666.00,30914.00),
(55,58,3,1,14882.00,20625.00),
(56,7,6,3,4030.00,40998.00),
(57,12,6,3,7653.00,34033.00),
(58,54,3,2,10593.00,18853.00),
(59,29,5,3,6281.00,14111.00),
(60,65,1,2,18844.00,14266.00),
(61,44,4,2,22909.00,20937.00),
(62,5,3,1,5277.00,23603.00),
(63,51,4,2,12147.00,16893.00),
(64,79,6,1,18394.00,32047.00),
(65,93,4,2,3904.00,27244.00);
/*!40000 ALTER TABLE `sale_items` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `sale_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `sale_date` timestamp NULL DEFAULT current_timestamp(),
  `total` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`sale_id`),
  KEY `user_id` (`user_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES
(5,1,1,'2026-04-12 10:35:02',9000.00),
(6,2,2,'2026-04-12 10:35:02',13000.00),
(7,3,3,'2026-04-12 10:35:02',5000.00),
(8,2,12,'2026-04-10 10:36:34',44298.00),
(9,2,2,'2026-04-03 10:36:34',38731.00),
(10,2,9,'2026-04-10 10:36:34',42426.00),
(11,2,2,'2026-04-11 10:36:34',38391.00),
(12,2,16,'2026-04-03 10:36:34',15771.00),
(13,2,7,'2026-04-12 10:36:34',15172.00),
(14,2,18,'2026-04-04 10:36:34',27957.00),
(15,2,17,'2026-04-05 10:36:34',16927.00),
(16,2,20,'2026-04-11 10:36:34',39336.00),
(17,2,2,'2026-04-09 10:36:34',29888.00),
(18,2,9,'2026-04-05 10:36:34',19027.00),
(19,2,5,'2026-04-09 10:36:34',5225.00),
(20,2,20,'2026-04-03 10:36:34',44306.00),
(21,2,2,'2026-04-03 10:36:34',43419.00),
(22,2,18,'2026-04-03 10:36:34',17248.00),
(23,2,7,'2026-04-03 10:36:34',47548.00),
(24,2,7,'2026-04-12 10:36:34',28187.00),
(25,2,1,'2026-04-04 10:36:34',11154.00),
(26,2,2,'2026-04-04 10:36:34',21324.00),
(27,2,19,'2026-04-05 10:36:34',44791.00),
(28,2,17,'2026-04-06 10:36:34',47563.00),
(29,2,6,'2026-04-04 10:36:34',35681.00),
(30,2,8,'2026-04-12 10:36:34',10303.00),
(31,2,8,'2026-04-06 10:36:34',50860.00),
(32,2,15,'2026-04-03 10:36:34',30691.00),
(33,2,15,'2026-04-11 10:36:34',22106.00),
(34,2,8,'2026-04-03 10:36:34',29819.00),
(35,2,14,'2026-04-03 10:36:34',28661.00),
(36,2,14,'2026-04-04 10:36:34',27779.00),
(37,2,13,'2026-04-05 10:36:34',38533.00),
(38,2,5,'2026-04-10 10:36:34',22597.00),
(39,2,3,'2026-04-08 10:36:34',7365.00),
(40,2,17,'2026-04-03 10:36:34',19084.00),
(41,2,12,'2026-04-03 10:36:34',17912.00),
(42,2,7,'2026-04-05 10:36:34',7751.00),
(43,2,18,'2026-04-10 10:36:34',26433.00),
(44,2,11,'2026-04-10 10:36:34',45425.00),
(45,2,5,'2026-04-05 10:36:34',10342.00),
(46,2,5,'2026-04-04 10:36:34',40885.00),
(47,2,19,'2026-04-08 10:36:34',31629.00),
(48,2,6,'2026-04-04 10:36:34',16464.00),
(49,2,15,'2026-04-04 10:36:34',53190.00),
(50,2,8,'2026-04-12 10:36:34',50696.00),
(51,2,11,'2026-04-03 10:36:34',9587.00),
(52,2,13,'2026-04-03 10:36:34',38207.00),
(53,2,12,'2026-04-04 10:36:34',37747.00),
(54,2,13,'2026-04-10 10:36:34',28170.00),
(55,2,10,'2026-04-03 10:36:34',24441.00),
(56,2,2,'2026-04-11 10:36:34',34744.00),
(57,2,11,'2026-04-05 10:36:34',9630.00),
(58,2,7,'2026-04-10 10:36:34',22333.00),
(59,2,20,'2026-04-04 10:36:34',16681.00),
(60,2,14,'2026-04-06 10:36:34',21519.00),
(61,2,13,'2026-04-10 10:36:34',11141.00),
(62,2,20,'2026-04-07 10:36:34',50263.00),
(63,2,17,'2026-04-09 10:36:34',10239.00),
(64,2,13,'2026-04-05 10:36:34',52045.00),
(65,2,9,'2026-04-09 10:36:34',27163.00),
(66,2,4,'2026-04-07 10:36:34',7830.00),
(67,2,15,'2026-04-07 10:36:34',33031.00),
(68,2,3,'2026-04-03 10:36:34',21063.00),
(69,2,16,'2026-04-03 10:36:34',33245.00),
(70,2,18,'2026-04-06 10:36:34',30899.00),
(71,2,15,'2026-04-12 10:36:34',14374.00),
(72,2,15,'2026-04-12 10:36:34',5651.00),
(73,2,20,'2026-04-05 10:36:34',54034.00),
(74,2,12,'2026-04-03 10:36:34',10163.00),
(75,2,13,'2026-04-05 10:36:34',44120.00),
(76,2,16,'2026-04-08 10:36:34',45266.00),
(77,2,16,'2026-04-07 10:36:34',20087.00),
(78,2,19,'2026-04-06 10:36:34',24766.00),
(79,2,3,'2026-04-09 10:36:34',28955.00),
(80,2,7,'2026-04-11 10:36:34',37759.00),
(81,2,19,'2026-04-06 10:36:34',28966.00),
(82,2,9,'2026-04-05 10:36:34',37836.00),
(83,2,18,'2026-04-08 10:36:34',34827.00),
(84,2,13,'2026-04-09 10:36:34',54617.00),
(85,2,17,'2026-04-11 10:36:34',19015.00),
(86,2,19,'2026-04-04 10:36:34',36608.00),
(87,2,10,'2026-04-08 10:36:34',5256.00),
(88,2,12,'2026-04-04 10:36:34',22110.00),
(89,2,6,'2026-04-08 10:36:34',16907.00),
(90,2,19,'2026-04-03 10:36:34',45617.00),
(91,2,7,'2026-04-12 10:36:34',32877.00),
(92,2,11,'2026-04-04 10:36:34',38541.00),
(93,2,17,'2026-04-10 10:36:34',35643.00),
(94,2,8,'2026-04-12 10:36:34',50887.00),
(95,2,12,'2026-04-11 10:36:34',48575.00),
(96,2,1,'2026-04-09 10:36:34',52119.00),
(97,2,11,'2026-04-04 10:36:34',48006.00),
(98,2,13,'2026-04-08 10:36:34',23256.00),
(99,2,11,'2026-04-07 10:36:34',54391.00),
(100,2,9,'2026-04-12 10:36:34',13414.00),
(101,2,13,'2026-04-07 10:36:34',44565.00),
(102,2,8,'2026-04-07 10:36:34',43013.00),
(103,2,1,'2026-04-03 10:36:34',27826.00),
(104,2,11,'2026-04-09 10:36:34',54751.00),
(105,2,1,'2026-04-12 10:36:34',18829.00),
(106,2,5,'2026-04-11 10:36:34',18096.00),
(107,2,16,'2026-04-11 10:36:34',29322.00);
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock` (
  `stock_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `werehouse_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`stock_id`),
  KEY `product_id` (`product_id`),
  KEY `werehouse_id` (`werehouse_id`),
  CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  CONSTRAINT `stock_ibfk_2` FOREIGN KEY (`werehouse_id`) REFERENCES `warehouses` (`werehouse_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES
(1,1,1,100),
(2,2,1,100),
(3,3,1,200),
(4,4,1,80),
(5,5,1,150),
(6,6,1,60);
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `stock_movements`
--

DROP TABLE IF EXISTS `stock_movements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_movements` (
  `movement_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `movement_type` varchar(50) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`movement_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `stock_movements_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_movements`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `stock_movements` WRITE;
/*!40000 ALTER TABLE `stock_movements` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock_movements` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `supplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_name` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` text DEFAULT NULL,
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES
(1,'PT Indofood','081234567890','Jakarta'),
(2,'PT Mayora','081234567891','Bandung'),
(3,'PT Wings','081234567892','Surabaya');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `taxes`
--

DROP TABLE IF EXISTS `taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxes` (
  `tax_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_name` varchar(100) DEFAULT NULL,
  `percentage` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`tax_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxes`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `taxes` WRITE;
/*!40000 ALTER TABLE `taxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxes` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`user_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES
(1,1,'Admin POS','admin@pos.com','123456','2026-04-12 10:33:37'),
(2,2,'Kasir Budi','budi@pos.com','123456','2026-04-12 10:33:37'),
(3,2,'Kasir Siti','siti@pos.com','123456','2026-04-12 10:33:37');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `warehouses`
--

DROP TABLE IF EXISTS `warehouses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `warehouses` (
  `werehouse_id` int(11) NOT NULL AUTO_INCREMENT,
  `werehouse_name` varchar(100) DEFAULT NULL,
  `location` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`werehouse_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouses`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `warehouses` WRITE;
/*!40000 ALTER TABLE `warehouses` DISABLE KEYS */;
INSERT INTO `warehouses` VALUES
(1,'Gudang Utama','Banda Aceh');
/*!40000 ALTER TABLE `warehouses` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2026-04-12 19:00:24
