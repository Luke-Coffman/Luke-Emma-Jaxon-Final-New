-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 07, 2023 at 03:49 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kitten factory database`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `Order_ID` int NOT NULL AUTO_INCREMENT,
  `EMP_ID` int NOT NULL,
  `CUST_ID` int NOT NULL,
  `DATE` date NOT NULL,
  `Total_Price` decimal(10,2) NOT NULL,
  `PMT_ID` int NOT NULL,
  `Description` varchar(256) NOT NULL,
  PRIMARY KEY (`Order_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`Order_ID`, `EMP_ID`, `CUST_ID`, `DATE`, `Total_Price`, `PMT_ID`, `Description`) VALUES
(1, 1, 1, '2022-03-05', '535.99', 1, 'Kitten Powder Skis Black 150  '),
(2, 1, 2, '0000-00-00', '1250.99', 2, 'KittenSkis Park 160 Yellow'),
(3, 1, 3, '0000-00-00', '1250.99', 3, 'KittenSkis Park 160 Yellow'),
(4, 1, 3, '0000-00-00', '1250.99', 4, 'KittenSkis Park 160 Yellow'),
(5, 1, 5, '0000-00-00', '1250.99', 5, 'KittenSkis Park 160 Yellow'),
(6, 1, 1, '0000-00-00', '1250.99', 6, 'KittenSkis Park 160 Yellow'),
(7, 1, 5, '0000-00-00', '1250.99', 7, 'KittenSkis Park 160 Yellow'),
(8, 1, 8, '0000-00-00', '1250.99', 8, 'KittenSkis Park 160 Yellow'),
(9, 1, 5, '0000-00-00', '1250.99', 9, 'KittenSkis Park 160 Yellow'),
(10, 1, 4, '0000-00-00', '1250.99', 10, 'KittenSkis Park 160 Yellow'),
(11, 1, 1, '0000-00-00', '1250.99', 11, 'KittenSkis Park 160 Yellow'),
(12, 1, 10, '0000-00-00', '1250.99', 12, 'KittenSkis Park 160 Yellow'),
(13, 1, 3, '0000-00-00', '1250.99', 13, 'KittenSkis Park 160 Yellow'),
(14, 1, 15, '0000-00-00', '1250.99', 14, 'KittenSkis Park 160 Yellow'),
(15, 1, 8, '0000-00-00', '1250.99', 15, 'KittenSkis Park 160 Yellow'),
(16, 1, 7, '0000-00-00', '1250.99', 16, 'KittenSkis Park 160 Yellow'),
(17, 1, 12, '0000-00-00', '1250.99', 17, 'KittenSkis Park 160 Yellow'),
(18, 1, 6, '0000-00-00', '1250.99', 18, 'KittenSkis Park 160 Yellow'),
(19, 1, 1, '0000-00-00', '1250.99', 19, 'KittenSkis Park 160 Yellow'),
(20, 1, 11, '0000-00-00', '1250.99', 20, 'KittenSkis Park 160 Yellow'),
(21, 1, 10, '0000-00-00', '1250.99', 21, 'KittenSkis Park 160 Yellow');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
