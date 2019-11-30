-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 30, 2019 at 09:20 AM
-- Server version: 5.5.64-MariaDB
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `detsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblbalance`
--

CREATE TABLE IF NOT EXISTS `tblbalance` (
  `id` int(11) NOT NULL,
  `item` varchar(50) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbalance`
--

INSERT INTO `tblbalance` (`id`, `item`, `amount`, `date`) VALUES
(1, 'Opening Balance', 26350, '2019-11-25'),
(2, 'Closing Balance', 26350, '2019-11-24'),
(3, 'Closing Balance', 27500, '2019-11-25'),
(4, 'Opening Balance', 27500, '2019-11-26'),
(5, 'Closing Balance', 2650, '2019-11-26');

-- --------------------------------------------------------

--
-- Table structure for table `tblexpense`
--

CREATE TABLE IF NOT EXISTS `tblexpense` (
  `ID` int(10) NOT NULL,
  `UserId` int(10) NOT NULL,
  `ExpenseDate` date DEFAULT NULL,
  `ExpenseItem` varchar(200) DEFAULT NULL,
  `ExpenseCost` varchar(200) DEFAULT NULL,
  `NoteDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `TranType` varchar(20) DEFAULT 'Expenses'
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblexpense`
--

INSERT INTO `tblexpense` (`ID`, `UserId`, `ExpenseDate`, `ExpenseItem`, `ExpenseCost`, `NoteDate`, `TranType`) VALUES
(1, 2, '2019-05-15', 'Milk', '63', NULL, 'Expenses'),
(2, 2, '2019-05-15', 'Vegitables', '520', '2019-05-15 10:06:19', 'Expenses'),
(3, 2, '2019-05-15', 'Household Items', '5200', '2019-05-15 10:07:08', 'Expenses'),
(4, 2, '2019-05-14', 'Milk', '83', '2019-05-15 10:07:27', 'Expenses'),
(5, 2, '2019-05-14', 'Bed Sheets', '1120', '2019-05-15 10:07:49', 'Expenses'),
(6, 2, '2019-05-12', 'Fruits', '890', '2019-05-15 10:08:09', 'Expenses'),
(7, 2, '2019-05-10', 'Household Items', '5600', '2019-05-15 10:08:26', 'Expenses'),
(8, 2, '2019-04-24', 'Milk', '102', '2019-05-15 10:08:44', 'Expenses'),
(9, 2, '2019-05-08', 'Bed Sheets', '890', '2019-05-15 10:08:57', 'Expenses'),
(10, 2, '2018-12-19', 'Household Items', '1120', '2019-05-15 10:09:34', 'Expenses'),
(11, 2, '2018-12-19', 'Fruits', '560', '2019-05-15 10:09:52', 'Expenses'),
(13, 2, '2018-12-20', 'Tour of Manali', '30000', '2019-05-15 10:15:47', 'Expenses'),
(14, 2, '2019-05-14', 'Milk', '360', '2019-05-15 10:21:31', 'Expenses'),
(15, 3, '2019-05-15', 'Milk', '123', '2019-05-15 10:29:56', 'Expenses'),
(16, 3, '2019-05-15', 'Household Items', '360', '2019-05-15 10:30:06', 'Expenses'),
(17, 3, '2019-05-15', 'Bed Sheets', '3000', '2019-05-15 10:30:18', 'Expenses'),
(18, 3, '2019-05-07', 'Milk', '123', '2019-05-15 10:30:28', 'Expenses'),
(19, 3, '2019-05-14', 'Household Items', '3600', '2019-05-15 10:30:38', 'Expenses'),
(20, 2, '2019-05-14', 'Electric Board Extension', '300', '2019-05-15 15:11:33', 'Expenses'),
(21, 2, '2019-04-11', 'Milk', '123', '2019-05-15 17:50:24', 'Expenses'),
(22, 2, '2019-04-10', 'Household Items', '520', '2019-05-15 17:50:37', 'Expenses'),
(23, 2, '2019-05-16', 'Household Items', '360', '2019-05-16 07:29:54', 'Expenses'),
(25, 8, '2019-05-17', 'Milk', '3600', '2019-05-17 05:35:13', 'Expenses'),
(26, 8, '2019-05-16', 'Bed Sheets', '1025', '2019-05-17 05:35:42', 'Expenses'),
(27, 1, '2019-05-17', 'Computer Mouse', '500', '2019-05-18 05:19:05', 'Expenses'),
(30, 1, '2019-05-18', 'Milk + Bread', '80', '2019-05-18 05:22:01', 'Expenses'),
(31, 10, '2019-05-16', 'Computer Mouse', '500', '2019-05-18 05:35:45', 'Expenses'),
(32, 10, '2019-05-17', 'Milk+Bread', '80', '2019-05-18 05:36:06', 'Expenses'),
(33, 10, '2019-05-18', 'Room Rent', '10000', '2019-05-18 05:36:26', 'Expenses'),
(35, 11, '2019-11-21', 'Tickets', '750', '2019-11-20 22:57:01', 'Expenses'),
(36, 11, '2019-11-20', 'Sales', '1830', '2019-11-20 22:58:26', 'Expenses'),
(37, 11, '2019-11-20', 'Computer', '45500', '2019-11-20 22:58:57', 'Expenses'),
(39, 11, '2019-11-25', 'Service Charge', '17200', '2019-11-25 03:38:06', 'Income'),
(40, 11, '2019-11-24', 'Commission', '20000', '2019-11-25 03:38:39', 'Income'),
(41, 11, '2019-11-24', 'Table Purchase', '2650', '2019-11-25 04:00:03', 'Expenses'),
(42, 11, '2019-11-18', 'Petrol', '2000', '2019-11-25 05:22:49', 'Expenses');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE IF NOT EXISTS `tbluser` (
  `ID` int(10) NOT NULL,
  `FullName` varchar(150) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FullName`, `Email`, `MobileNumber`, `Password`, `RegDate`) VALUES
(10, 'Test User demo', 'testuser@gmail.com', 987654321, 'f925916e2754e5e03f75dd58a5733251', '2019-05-18 05:34:53'),
(11, 'Hariram Ale Magar', 'hariram.ale@subisu.net.np', 9801158296, 'f0b275d7e3174a9d5f726847ab47a45c', '2019-11-20 22:56:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblbalance`
--
ALTER TABLE `tblbalance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblexpense`
--
ALTER TABLE `tblexpense`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblbalance`
--
ALTER TABLE `tblbalance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tblexpense`
--
ALTER TABLE `tblexpense`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
