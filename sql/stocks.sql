-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2020 at 08:03 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stocks`
--

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_code` int(11) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `unit` varchar(44) NOT NULL,
  `beginning_inventory` int(11) NOT NULL,
  `quantity_on_hand` int(11) NOT NULL,
  `price_per_unit` double NOT NULL,
  `date_of_manufacture` varchar(30) NOT NULL,
  `date_of_expiry` varchar(44) NOT NULL,
  `location` varchar(50) NOT NULL,
  `item_category` varchar(50) NOT NULL,
  `item_sub_category` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_code`, `item_name`, `unit`, `beginning_inventory`, `quantity_on_hand`, `price_per_unit`, `date_of_manufacture`, `date_of_expiry`, `location`, `item_category`, `item_sub_category`) VALUES
(1, 'penadoll', '350ml', 1, 12, 12234, '2020-08-30 00:00:00', '2020-11-24 00:00:00', 'Bulk Zone', 'Pharma Drug', 'Tablet'),
(4, 'marks', '1', 1, 5, 20, '2020-11-17 00:00:00', '2020-11-18 00:00:00', 'Bulk Zone', 'Health and Personal Care', 'Medical Moniter');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `FirstName` varchar(44) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Address` varchar(44) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Confirmpassword` varchar(20) NOT NULL,
  `ContactNo` varchar(10) NOT NULL,
  `Email` varchar(44) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`FirstName`, `LastName`, `Address`, `Username`, `Password`, `Confirmpassword`, `ContactNo`, `Email`) VALUES
('Nusiry', 'kaleel', 'asdfgjk', 'nusiry', 'Nusry@12', 'Nusry@12', '0111258748', 'washi112211@icloud.com'),
('Washington', 'benedict', '288/79A baseline road dematagoda co-09', 'washi', 'Washin@12', 'Washin@12', '0111258748', 'vino@gmail.com'),
('Washington', 'kaleel', 'qwerty', 'vino', 'Vino@123', 'Vino@123', '0775457772', 'washi112211@icloud.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `item_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
