-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 07, 2023 at 05:36 PM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Kitten Factory Database`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employeeid` int(11) NOT NULL,
  `lastname` varchar(256) NOT NULL,
  `firstname` varchar(256) NOT NULL,
  `userid` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employeeid`, `lastname`, `firstname`, `userid`) VALUES
(1, 'Stackman', 'Melvin', '1'),
(2, 'Exter', 'Deluce', '2'),
(3, 'Williams', 'Troy', '3'),
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
(16, 'Eyraud', 'Gabriel', '16'),
(17, 'Notting', 'Evan', '17'),
(18, 'Borosk', 'Tammy', '18'),
(19, 'Wembleton', 'Yves', '19'),
(20, 'Ubruski', 'Tonata', '20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employeeid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employeeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
