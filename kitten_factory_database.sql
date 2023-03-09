-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 09, 2023 at 07:17 PM
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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `customerid` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(256) NOT NULL,
  `lastname` varchar(256) NOT NULL,
  `streetaddress` varchar(256) NOT NULL,
  `city` varchar(256) NOT NULL,
  `state` varchar(256) NOT NULL,
  `zipcode` varchar(256) NOT NULL,
  `userid` varchar(256) NOT NULL,
  PRIMARY KEY (`customerid`)
) ENGINE=InnoDB AUTO_INCREMENT=1231235 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerid`, `firstname`, `lastname`, `streetaddress`, `city`, `state`, `zipcode`, `userid`) VALUES
(1, 'Ben', 'Krankie', '143 Mulholland Dr', 'Los Angeles', 'CA', '90210', '1'),
(2, 'Pauline', 'Jones', '024 Twizzy Rich St', 'Los Angeles', 'CA', '90210', '2'),
(3, 'Jordan', 'Carter', '667 Vamp Ave', 'Atlanta', 'GA', '30033', '3'),
(4, 'Omari', 'West', '485 Southshore Dr', 'Chicago', 'IL', '40395', '4'),
(5, 'Jacques', 'Webster', '732 Utopia Way', 'Houston', 'TX', '83929', '5'),
(6, 'Noah', 'Oliver', '834 Afterlyfe Ave', 'Los Angeles', 'CA', '90210', '6'),
(7, 'Holata', 'Redd', '143 Mulholland Dr', 'Atlanta', 'GA', '30033', '7'),
(8, 'Ben', 'Geekt', '582 Rollin Way', 'Los Angeles', 'CA', '90210', '8'),
(9, 'Damon', 'Tyme', '920 Turnip Way', 'Los Angeles', 'CA', '90210', '9'),
(10, 'Alex', 'Kully', '143 Mulholland Dr', 'Los Angeles', 'CA', '90210', '10'),
(11, 'Scott', 'Cudder', '274 Blank Slate Rd', 'San Diego', 'CA', '94732', '11'),
(12, 'Mike', 'Clique', '193 Nobody St', 'Chicago', 'IL', '40395', '12'),
(13, 'Will', 'Trillster', '743 Cucumber Way', 'Denver', 'CO', '45892', '13'),
(14, 'Dean', 'Sean', '248 Rodeo Dr', 'Paris', 'TX', '83920', '14'),
(15, 'Garrett', 'Fobutin', '379 Watch Way', 'Billings', 'MT', '28948', '15'),
(16, 'Davis', 'Johnson', '738 Boggoton St', 'Boston', 'MA', '63271', '16'),
(17, 'Keisha', 'Cole', '632 Abernathy Circle', 'Miami', 'FL', '83034', '17'),
(18, 'Isabelle', 'Montes', '842 Cardheart Dr', 'Seattle', 'WA', '23478', '18'),
(19, 'Whitney', 'White', '283 Smickey Rd', 'Las Vegas', 'NV', '24586', '19'),
(20, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `employeeid` int NOT NULL AUTO_INCREMENT,
  `lastname` varchar(256) NOT NULL,
  `firstname` varchar(256) NOT NULL,
  `userid` varchar(256) NOT NULL,
  PRIMARY KEY (`employeeid`)
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employeeid`, `lastname`, `firstname`, `userid`) VALUES
(1, 'Stackman', 'Melvin', '1'),
(2, 'Exter', 'Deluce', '2'),
(3, 'Chong', 'Oh', '3'),
(4, 'Smith', 'Barney', '4'),
(5, 'Black', 'Brittney', '5'),
(6, 'Treben', 'Kelly', '6'),
(7, 'Chapman', 'Oliver', '7'),
(8, 'Redden', 'Stephanie', '8'),
(9, 'Hoffman', 'Owen', '9'),
(10, 'Reynolds', 'Cole', '10'),
(11, 'Barr', 'Sven', '11'),
(12, 'Wright', 'Matt', '12'),
(13, 'Gubler', 'Graham', '13'),
(14, 'Colombo', 'Ellen', '14'),
(15, 'Perkins', 'Joseph', '15'),
(16, 'john', 'james', '13'),
(17, 'todd', 'smith', '17'),
(18, 'kyle', 'kurtz', '18'),
(19, 'Wembleton', 'Yves', '19'),
(20, 'Ubruski', 'Tonata', '20');

-- --------------------------------------------------------

--
-- Table structure for table `orderline`
--

DROP TABLE IF EXISTS `orderline`;
CREATE TABLE IF NOT EXISTS `orderline` (
  `Detail_ID` int NOT NULL AUTO_INCREMENT,
  `orderid` int NOT NULL,
  `productid` int NOT NULL,
  `quantity` int NOT NULL,
  `unitprice` decimal(7,2) NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`Detail_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `orderline`
--

INSERT INTO `orderline` (`Detail_ID`, `orderid`, `productid`, `quantity`, `unitprice`, `price`) VALUES
(11, 23, 13, 4, '29.00', 116),
(12, 2, 11, 6, '98.00', 588),
(13, 5, 13, 1, '22.00', 22),
(14, 7, 25, 2, '65.00', 130),
(15, 19, 3, 1, '29.00', 29),
(16, 3, 18, 2, '45.00', 90),
(17, 38, 14, 3, '89.00', 267),
(18, 3, 16, 1, '56.00', 56),
(19, 29, 14, 1, '37.00', 37),
(20, 20, 1, 1, '75.00', 75),
(21, 53, 6, 1, '0.00', 29.99),
(22, 53, 7, 1, '0.00', 14.99),
(23, 54, 6, 1, '0.00', 29.99),
(24, 54, 7, 1, '0.00', 14.99),
(25, 55, 6, 1, '0.00', 29.99),
(26, 55, 7, 1, '0.00', 14.99),
(27, 59, 6, 1, '29.99', 29.99),
(28, 59, 7, 1, '14.99', 14.99),
(29, 60, 6, 1, '29.99', 29.99),
(30, 60, 7, 1, '14.99', 14.99),
(31, 61, 6, 1, '29.99', 29.99),
(32, 61, 7, 1, '14.99', 14.99),
(33, 62, 6, 1, '29.99', 29.99),
(34, 62, 7, 1, '14.99', 14.99),
(35, 63, 6, 1, '0.00', 29.99),
(36, 63, 7, 1, '0.00', 14.99),
(37, 64, 6, 1, '0.00', 29.99),
(38, 64, 7, 1, '0.00', 14.99),
(39, 65, 6, 1, '0.00', 29.99),
(40, 65, 7, 1, '0.00', 14.99),
(41, 66, 6, 1, '0.00', 29.99),
(42, 66, 7, 1, '0.00', 14.99),
(43, 67, 6, 1, '29.99', 29.99),
(44, 67, 7, 1, '14.99', 14.99),
(45, 68, 6, 1, '0.00', 29.99),
(46, 68, 7, 1, '0.00', 14.99),
(47, 69, 6, 1, '0.00', 29.99),
(48, 69, 7, 1, '0.00', 14.99),
(49, 70, 6, 1, '29.99', 29.99),
(50, 70, 7, 1, '14.99', 14.99),
(51, 71, 6, 1, '0.00', 29.99),
(52, 71, 7, 1, '0.00', 14.99),
(53, 72, 6, 1, '0.00', 29.99),
(54, 72, 7, 1, '0.00', 14.99),
(55, 73, 6, 1, '0.00', 29.99),
(56, 73, 7, 1, '0.00', 14.99),
(57, 74, 2, 1, '14.99', 14.99),
(58, 74, 3, 1, '9.99', 9.99),
(59, 75, 2, 1, '14.99', 14.99),
(60, 75, 3, 1, '9.99', 9.99),
(61, 76, 2, 1, '14.99', 14.99),
(62, 76, 3, 1, '9.99', 9.99),
(63, 77, 8, 1, '11.00', 11),
(64, 77, 9, 1, '4.00', 4),
(65, 78, 8, 1, '11.00', 11),
(66, 78, 9, 1, '4.00', 4),
(67, 79, 2, 1, '14.99', 14.99),
(68, 79, 4, 1, '11.99', 11.99),
(69, 79, 4, 1, '11.99', 11.99),
(70, 79, 7, 1, '18.00', 18),
(71, 80, 2, 1, '14.99', 14.99),
(72, 80, 4, 1, '11.99', 11.99),
(73, 80, 4, 1, '11.99', 11.99),
(74, 80, 7, 1, '18.00', 18),
(75, 81, 25, 1, '4.00', 4),
(76, 81, 20, 1, '16.00', 16),
(77, 82, 1, 1, '19.99', 19.99),
(78, 82, 2, 1, '14.99', 14.99),
(79, 82, 3, 1, '9.99', 9.99);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `Order_ID` int NOT NULL AUTO_INCREMENT,
  `EMP_ID` int NOT NULL,
  `customerid` int NOT NULL,
  `DATE` date NOT NULL,
  `Total_Price` decimal(10,2) NOT NULL,
  `PMT_ID` int NOT NULL,
  `Description` varchar(256) NOT NULL,
  PRIMARY KEY (`Order_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`Order_ID`, `EMP_ID`, `customerid`, `DATE`, `Total_Price`, `PMT_ID`, `Description`) VALUES
(1, 1, 2, '2023-03-05', '535.99', 1, 'Order contains 1 or more of: Boots, Skis, Hat'),
(2, 2, 2, '2023-01-17', '3001.23', 2, 'Order contains 1 or more of: Bindings, Skis, Hat'),
(3, 3, 3, '2023-02-23', '1269.73', 3, 'Order contains 1 or more of: Gloves, Skis, Hat'),
(4, 4, 1, '2023-03-01', '2354.92', 4, 'Order contains 1 or more of: Boots, Skis, Gloves'),
(5, 5, 2, '2023-02-07', '1138.79', 5, 'Order contains 1 or more of: Neckwarmer, Skis, Hat'),
(6, 6, 6, '2023-01-31', '4717.62', 6, 'Order contains 1 or more of: Gloves, Skis, Water Bottle'),
(7, 7, 4, '2022-12-28', '129.31', 7, 'Order contains 1 or more of: Lift Day Pass, Skis, Hat'),
(8, 8, 2, '2023-02-15', '3816.29', 8, 'Order contains 1 or more of: Chaptstick, Skis, Hat'),
(9, 9, 14, '2023-01-27', '972.18', 9, 'Order contains 1 or more of: Gloves, Skis, Sunglasses'),
(10, 10, 4, '2023-01-23', '2489.83', 10, 'Order contains 1 or more of: Skis, Trail Mix, Hat'),
(11, 11, 9, '2022-12-25', '2753.28', 11, 'Order contains 1 or more of: Boots, Skis, Hat'),
(12, 12, 19, '2023-01-19', '575.02', 12, 'Order contains 1 or more of: Gloves, Skis, Hat'),
(13, 13, 2, '2023-02-13', '4006.83', 13, 'Order contains 1 or more of: Helmet, Skis, Gloves'),
(14, 14, 1, '2023-01-24', '4471.20', 14, 'Order contains 1 or more of: Backpack, Helmet, Skis'),
(15, 15, 7, '2023-02-04', '418.85', 15, 'Order contains 1 or more of: Transceiver, Skis, Hat'),
(16, 16, 8, '2023-01-18', '3069.20', 16, 'Order contains 1 or more of: Boots, Skis, Hat'),
(17, 17, 10, '2023-02-14', '142.37', 17, 'Order contains 1 or more of: Helmet, Gloves, Skis, '),
(18, 18, 12, '2023-02-16', '4397.84', 18, 'Order contains 1 or more of: Skis, Lift Day Pass, Hat'),
(19, 19, 15, '2023-01-08', '1388.93', 19, 'Order contains 1 or more of: Sunglasses, Skis, Hat'),
(20, 20, 6, '2023-02-22', '3592.00', 20, 'Order contains 1 or more of: Helmet, Skis, Gloves'),
(29, 1231, 123, '2020-05-20', '123.00', 123, '123');

-- --------------------------------------------------------

--
-- Table structure for table `ordertable`
--

DROP TABLE IF EXISTS `ordertable`;
CREATE TABLE IF NOT EXISTS `ordertable` (
  `Order_ID` int NOT NULL AUTO_INCREMENT,
  `empid` int NOT NULL,
  `custid` varchar(50) NOT NULL,
  `storeid` int NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`Order_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ordertable`
--

INSERT INTO `ordertable` (`Order_ID`, `empid`, `custid`, `storeid`, `date`) VALUES
(1, 2, '3', 1, '2022-01-06'),
(2, 5, '3', 1, '2022-05-06'),
(3, 2, '6', 2, '2022-05-05'),
(4, 10, '10', 1, '2022-04-09'),
(5, 5, '10', 2, '2022-10-06'),
(6, 7, '3', 1, '2022-11-06'),
(7, 5, '6', 1, '2022-06-06'),
(8, 8, '3', 2, '2022-04-10'),
(9, 9, '7', 1, '2022-05-11'),
(10, 10, '4', 1, '2022-02-22'),
(11, 6, '3', 2, '2022-07-06'),
(12, 9, '2', 2, '2022-08-28'),
(13, 10, '6', 2, '2022-09-07'),
(14, 9, '10', 1, '2022-10-06'),
(15, 7, '2', 1, '2022-05-11'),
(16, 2, '8', 1, '2022-06-24'),
(17, 4, '9', 1, '2022-01-30'),
(18, 5, '4', 2, '2022-05-06'),
(19, 3, '10', 2, '2022-05-06'),
(20, 8, '10', 2, '2022-05-06'),
(21, 5, '5', 2, '2022-05-06'),
(22, 2, '6', 2, '2022-05-05'),
(23, 8, '2', 2, '2022-04-11'),
(24, 9, '10', 1, '2022-05-11'),
(25, 10, '4', 1, '2022-02-22'),
(26, 6, '1', 2, '2022-07-06'),
(27, 8, '10', 1, '2022-08-28'),
(28, 10, '7', 2, '2022-09-07'),
(29, 9, '4', 1, '2022-10-06'),
(30, 9, '2', 1, '2022-05-11'),
(31, 1, '10', 1, '2022-06-24'),
(32, 2, '6', 1, '2022-01-30'),
(33, 3, '4', 1, '2022-05-06'),
(34, 3, '10', 2, '2022-05-06'),
(35, 8, '10', 2, '2022-05-06'),
(36, 2, '2', 2, '2022-05-06'),
(37, 3, '3', 2, '2022-05-05'),
(38, 4, '4', 1, '2022-04-09'),
(39, 5, '5', 1, '2022-10-06'),
(40, 9, '9', 2, '2022-12-06'),
(41, 2, '2', 1, '2022-06-06'),
(42, 4, '6', 2, '2022-04-10'),
(43, 9, '8', 2, '2022-05-11'),
(44, 11, '7', 2, '2022-02-22'),
(45, 9, '10', 2, '2022-07-06'),
(46, 9, '10', 2, '2022-08-28'),
(47, 5, '5', 1, '2022-12-15'),
(48, 5, '5', 1, '2022-12-15'),
(49, 5, '5', 1, '2022-12-15'),
(50, 5, '5', 1, '2022-12-15'),
(51, 5, '5', 1, '2022-12-15'),
(52, 5, '5', 1, '2022-12-15'),
(53, 5, '5', 1, '2022-12-15'),
(54, 5, '5', 1, '2022-12-15'),
(55, 5, '5', 1, '2022-12-15'),
(56, 4, '0', 1, '2022-12-15'),
(57, 4, '0', 1, '2022-12-15'),
(58, 4, '0', 1, '2022-12-15'),
(59, 4, '0', 1, '2022-12-15'),
(60, 4, '0', 1, '2022-12-15'),
(61, 4, '0', 1, '2022-12-15'),
(62, 4, '0', 1, '2022-12-15'),
(63, 5, '5', 1, '2022-12-15'),
(64, 5, '5', 1, '2022-12-15'),
(65, 5, '5', 1, '2022-12-15'),
(66, 5, '5', 1, '2022-12-15'),
(67, 4, '0', 1, '2022-12-15'),
(68, 5, '5', 1, '2022-12-15'),
(69, 5, '5', 1, '2022-12-15'),
(70, 4, '0', 1, '2022-12-15'),
(71, 5, '5', 1, '2022-12-15'),
(72, 5, '5', 1, '2022-12-15'),
(73, 5, '5', 1, '2022-12-15'),
(74, 1001, 'bsmith', 332, '2023-03-08'),
(75, 1001, 'bsmith', 332, '2023-03-08'),
(76, 1001, 'bsmith', 332, '2023-03-08'),
(77, 1001, 'pjones', 332, '2023-03-08'),
(78, 1001, 'pjones', 332, '2023-03-08'),
(79, 1234, 'pjones', 54, '2023-03-08'),
(80, 1234, 'pjones', 54, '2023-03-08'),
(81, 1234, 'bsmith', 54, '2023-03-08'),
(82, 1234, 'bsmith', 54, '2023-03-08');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `payid` int NOT NULL AUTO_INCREMENT,
  `cardno` bigint NOT NULL,
  `expiry` varchar(50) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `cvv` int NOT NULL,
  `grandtotal` float(10,2) NOT NULL,
  `orderid` int NOT NULL,
  `date` varchar(50) NOT NULL,
  PRIMARY KEY (`payid`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payid`, `cardno`, `expiry`, `userid`, `cvv`, `grandtotal`, `orderid`, `date`) VALUES
(5, 2147483647, '12/2020', 'bsmith', 111, 130.00, 13, '2021/12/02'),
(6, 2147483647, '12/2023', 'bsmith', 222, 69.99, 14, '2021/12/02'),
(7, 1234, '12/3', 'bsmith', 123, 24.98, 76, '2023/03/08'),
(8, 52345, '12/2033', 'pjones', 123, 56.97, 79, '2023/03/08'),
(9, 5234523523, '12/2033', 'pjones', 123, 56.97, 79, '2023/03/08'),
(10, 1111222233334444, '12/2033', 'pjones', 123, 56.97, 80, '2023/03/08'),
(11, 1111222233334444, '12/2034', 'bsmith', 234, 20.00, 81, '2023/03/08'),
(12, 4532534253, '12/2345', 'bsmith', 123, 44.97, 82, '2023/03/08');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `ProductID` int NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(256) NOT NULL,
  `Price` decimal(7,2) NOT NULL,
  `Inventory` int NOT NULL,
  `SkiType` varchar(256) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProductID`, `ProductName`, `Price`, `Inventory`, `SkiType`) VALUES
(1, 'Bindings', '150.00', 63, 'All Types'),
(2, 'Goggles', '100.00', 49, 'All Types'),
(3, 'Transceiver', '60.00', 12, 'All Types'),
(4, 'Helmet', '95.00', 87, 'All Types'),
(5, 'Poles', '150.00', 63, 'All Types'),
(6, 'Skis', '600.00', 42, 'Park Type'),
(7, 'Skis', '800.00', 37, 'Powder Type'),
(8, 'Skis', '1200.00', 18, 'Custom Type'),
(9, 'Boots', '200.00', 26, 'Park Type'),
(10, 'Boots', '300.00', 93, 'Powder Type'),
(11, 'Boots', '400.00', 61, 'Custom Type'),
(12, 'Gloves', '40.00', 47, 'All Types'),
(13, 'Coats', '250.00', 95, 'All Types'),
(14, 'Neckwarmer', '20.00', 41, 'All Types'),
(15, 'Water Bottle', '30.00', 68, 'All Types'),
(16, 'Lift Day Pass', '150.00', 35, 'All Types'),
(17, 'Sunglasses', '30.00', 84, 'All Types'),
(18, 'Backpack', '80.00', 52, 'All Types'),
(19, 'Chapstick', '3.00', 72, 'All Types'),
(20, 'Trail Mix', '5.00', 50, 'All Types'),
(123, 'xxx', '123.00', 123, '123');

-- --------------------------------------------------------

--
-- Table structure for table `raw_material`
--

DROP TABLE IF EXISTS `raw_material`;
CREATE TABLE IF NOT EXISTS `raw_material` (
  `MaterialID` int NOT NULL AUTO_INCREMENT,
  `DatePurchased` date NOT NULL,
  `Quantity` int NOT NULL,
  `MaterialName` varchar(128) NOT NULL,
  PRIMARY KEY (`MaterialID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `raw_material`
--

INSERT INTO `raw_material` (`MaterialID`, `DatePurchased`, `Quantity`, `MaterialName`) VALUES
(1, '2023-02-08', 30, 'Fiberglass'),
(2, '2023-01-10', 45, 'Aspen'),
(3, '2023-03-06', 20, 'Maple'),
(4, '2023-01-07', 30, 'Bamboo'),
(5, '2023-02-16', 10, 'Carbon Composite'),
(7, '2023-02-09', 35, 'Titanium'),
(8, '2023-03-01', 25, 'Plastic'),
(9, '2023-01-19', 35, 'P-tex'),
(10, '2023-02-18', 30, 'Epoxy'),
(11, '2023-03-06', 20, 'Wax'),
(12, '2023-02-12', 25, 'Aluminum'),
(13, '2023-01-25', 20, 'Poplar'),
(14, '2023-01-31', 28, 'Steel'),
(15, '2023-02-23', 10, 'Laquer'),
(16, '2023-02-15', 15, 'Carbon Fiber'),
(17, '2023-03-02', 5, 'Glue'),
(18, '2023-02-26', 10, '\r\nPolyurethane Foam'),
(19, '2023-02-10', 5, 'Saran Wrap'),
(20, '2023-02-07', 15, 'Neoprene');

-- --------------------------------------------------------

--
-- Table structure for table `returns`
--

DROP TABLE IF EXISTS `returns`;
CREATE TABLE IF NOT EXISTS `returns` (
  `ReturnID` int NOT NULL AUTO_INCREMENT,
  `Date` date NOT NULL,
  `OrderID` int NOT NULL,
  PRIMARY KEY (`ReturnID`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `returns`
--

INSERT INTO `returns` (`ReturnID`, `Date`, `OrderID`) VALUES
(1, '2023-02-01', 1),
(2, '2023-02-01', 2),
(3, '2023-01-11', 3),
(4, '2023-01-06', 4),
(5, '2023-01-23', 5),
(6, '2023-02-24', 6),
(7, '2023-01-31', 7),
(8, '2022-12-23', 8),
(9, '2023-01-09', 9),
(10, '2023-02-20', 10),
(11, '2023-02-13', 11),
(12, '2023-01-25', 12),
(13, '2023-02-12', 13),
(14, '2023-02-04', 14),
(15, '2023-01-02', 15),
(16, '2023-01-29', 16),
(17, '2023-02-26', 17),
(18, '2023-01-23', 18),
(19, '2023-01-01', 19),
(20, '2023-02-23', 20);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `username`, `role`) VALUES
(1, 'bsmith', 'admin'),
(2, 'pjones', 'customer'),
(3, 'coh', 'employee');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `forename` varchar(256) NOT NULL,
  `surname` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `forename`, `surname`, `password`) VALUES
('bsmith', 'Bill', 'Smith', '$2y$10$5e4ZWkIHMY8w/x4XMogOQ.C09Wtqz/mEQA0xqirLl9.9hu8Z95r.2'),
('pjones', 'Pauline', 'Jones', '$2y$10$IwOdagI/8CtxyRphvFHXQeOaJn/PHrazMt//Lz..ildUg14DxakRm'),
('coh', 'Chong', 'Oh', '$2y$10$tKgy7q3QhXFctOAbO9L4newNzACvE1R3Ti6PpSnZeyqJGDF2p9BRu');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
