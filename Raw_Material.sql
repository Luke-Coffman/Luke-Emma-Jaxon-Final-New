-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 07, 2023 at 04:05 PM
-- Server version: 5.7.39
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `group_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `Raw_Material`
--

CREATE TABLE `Raw_Material` (
  `MaterialID` int(10) NOT NULL,
  `DatePurchased` date NOT NULL,
  `Quantity` int(20) NOT NULL,
  `MaterialName` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Raw_Material`
--

INSERT INTO `Raw_Material` (`MaterialID`, `DatePurchased`, `Quantity`, `MaterialName`) VALUES
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Raw_Material`
--
ALTER TABLE `Raw_Material`
  ADD PRIMARY KEY (`MaterialID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Raw_Material`
--
ALTER TABLE `Raw_Material`
  MODIFY `MaterialID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
