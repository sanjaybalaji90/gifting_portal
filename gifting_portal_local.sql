-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 20, 2020 at 08:26 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gifting_portal_local`
--

-- --------------------------------------------------------

--
-- Table structure for table `company_table`
--

CREATE TABLE `company_table` (
  `id` int(11) NOT NULL,
  `company_name` varchar(500) NOT NULL,
  `branches` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_table`
--

INSERT INTO `company_table` (`id`, `company_name`, `branches`) VALUES
(1, 'girmiti', 'marathahali,ec,aecs'),
(11, 'ibm', 'ec'),
(12, 'ibm', 'madiwala'),
(13, 'ibm', 'whitefield'),
(19, 'wipro', 'odo'),
(20, 'wipro', 'eoeo'),
(21, 'wipro', 'eoe'),
(22, 'wipro', 'odo'),
(23, 'wipro', 'eoeo');

-- --------------------------------------------------------

--
-- Table structure for table `customer_table`
--

CREATE TABLE `customer_table` (
  `id` int(100) NOT NULL,
  `name` varchar(200) NOT NULL,
  `emailId` varchar(200) NOT NULL,
  `phone_num` varchar(25) NOT NULL,
  `designation` varchar(200) NOT NULL,
  `company` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_table`
--

INSERT INTO `customer_table` (`id`, `name`, `emailId`, `phone_num`, `designation`, `company`, `branch`) VALUES
(14, 'balai', 'djo@gmail.com', '9876543210', 'developer', '', ''),
(15, 'dkofoe', 'dofeo@gmail', '9876543210', 'foe', '', ''),
(16, 'protor', 'dpfep@go', '97858966', 'dfe', '', ''),
(17, 'jjj', 'TTy@uju', '474', 'kk', '', ''),
(25, 'balaji', 'balaji@gmail.com', '9876543210', 'php', 'girmiti', 'marathahali,ec,aecs'),
(26, 'karthi', 'karthi@gmail.com', '9876543210', 'testing', 'wipro', 'odo'),
(27, 'ramesh', 'ramesh@girmiti.com', '9876543210', 'support', 'ibm', 'ec');

-- --------------------------------------------------------

--
-- Table structure for table `distributer_table`
--

CREATE TABLE `distributer_table` (
  `id` int(100) NOT NULL,
  `name` varchar(200) NOT NULL,
  `emailId` varchar(200) NOT NULL,
  `phone_num` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `distributer_table`
--

INSERT INTO `distributer_table` (`id`, `name`, `emailId`, `phone_num`) VALUES
(1, 'balaji', 'balai@gmail.com', '9876543210'),
(2, 'dofoe', 'odo@gmail.com', '9876543210'),
(3, 'dfe', 'ere@gmail.com', '9876543210'),
(4, 'derere', 'ered@dmi.com', '9876443210'),
(5, 'balaji', 'balaji@gmail.com', '9876543210'),
(6, 'vishnu', 'vishnu@gmail.com', '9876543210'),
(7, 'dfeererere', 'e@dfd', '988'),
(8, 'dferer', 'ere@go', '987'),
(9, 'dfe', 'er@gmail.com', '23'),
(10, 'dfe', 'ere@gmail.com', '33'),
(11, 'doeorei', 'oeoe@gmail.com', '9876543210'),
(12, 'doeir', 'oeo@gmail.com', '798799658'),
(13, 'de', 'ee@gmail.co', '9876543210'),
(14, 'dooe', 'dooe@gmail.com', '9878');

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `Id` int(11) NOT NULL,
  `emailId` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `roleId` int(10) NOT NULL,
  `status` int(10) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`Id`, `emailId`, `password`, `roleId`, `status`) VALUES
(1, 'admin', 'girmiti01', 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company_table`
--
ALTER TABLE `company_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_table`
--
ALTER TABLE `customer_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `distributer_table`
--
ALTER TABLE `distributer_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`Id`,`emailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company_table`
--
ALTER TABLE `company_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `customer_table`
--
ALTER TABLE `customer_table`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `distributer_table`
--
ALTER TABLE `distributer_table`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
