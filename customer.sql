-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 07, 2023 at 05:27 PM
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
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerid` int(11) NOT NULL,
  `firstname` varchar(256) NOT NULL,
  `lastname` varchar(256) NOT NULL,
  `streetaddress` varchar(256) NOT NULL,
  `city` varchar(256) NOT NULL,
  `state` varchar(256) NOT NULL,
  `zipcode` varchar(256) NOT NULL,
  `userid` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerid`, `firstname`, `lastname`, `streetaddress`, `city`, `state`, `zipcode`, `userid`) VALUES
(1, 'Ben', 'Krankie', '143 Mulholland Dr', 'Los Angeles', 'CA', '90210', '1'),
(2, 'Love', 'Moneigh', '024 Twizzy Rich St', 'Los Angeles', 'CA', '90210', '2'),
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
(20, 'Ashley', 'Klick', '732 Purple Place Ave', 'Los Angeles', 'CA', '90210', '20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customerid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
