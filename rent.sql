-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2021 at 06:18 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rent`
--

-- --------------------------------------------------------

--
-- Table structure for table `apartment_details`
--

CREATE TABLE `apartment_details` (
  `Apartment_no` varchar(255) NOT NULL,
  `Owner_name` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Apartment_type` varchar(255) NOT NULL,
  `Location` varchar(255) NOT NULL,
  `Number_of_room` int(11) NOT NULL,
  `Cost` int(11) NOT NULL,
  `Available` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- Error reading data for table rent.apartment_details: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `rent`.`apartment_details`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `customer_details`
--

CREATE TABLE `customer_details` (
  `Customer_ID` varchar(255) NOT NULL,
  `Apartment_no` varchar(255) NOT NULL,
  `Apartment_Type` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Location` varchar(255) NOT NULL,
  `Rent_Fee` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_details`
--

INSERT INTO `customer_details` (`Customer_ID`, `Apartment_no`, `Apartment_Type`, `Name`, `Address`, `Location`, `Rent_Fee`) VALUES
(' C1', 'A1', 'House', ' Arfat', ' Bakolia,chitthagong', 'Chawkbazar', 9000),
(' C2', 'A2', 'Flat', 'Safa', 'Chitthagong', 'Nasirabaad', 10000),
(' C4', 'A2', 'Flat', 'Safa', 'Chitthagong', 'Chawkbazar', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `owner_details`
--

CREATE TABLE `owner_details` (
  `Owner_ID` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Gmail` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Contact_number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `owner_details`
--

INSERT INTO `owner_details` (`Owner_ID`, `Name`, `Gmail`, `Address`, `Contact_number`) VALUES
(' g6', ' blue', ' sdfgh', ' eru', ' 56789'),
(' R5', ' MK', ' @dfghj', ' dfgh', ' 34567'),
('G9', 'ghj', 'fgh', 'nm', '45678');

-- --------------------------------------------------------

--
-- Table structure for table `register_form`
--

CREATE TABLE `register_form` (
  `id` int(11) NOT NULL,
  `User_name` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Email_id` varchar(255) NOT NULL,
  `Phone` varchar(255) NOT NULL,
  `Date_of_birth` date NOT NULL,
  `Address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register_form`
--

INSERT INTO `register_form` (`id`, `User_name`, `Password`, `Email_id`, `Phone`, `Date_of_birth`, `Address`) VALUES
(1, ' Monifa', '41', ' @gh', ' 456789', '2020-02-23', 'rtyh'),
(3, ' fvgb', 'hjm', ' rfg', ' 4567', '2020-02-05', 'ghn'),
(4, ' Rina', 'C183241', ' @dfghjk', ' 567789', '2020-02-23', 'sdfghj'),
(5, ' Safa marua', 'Shimul', ' @Gmail.com', '01938765857 ', '2020-02-18', 'Chittagong'),
(6, ' Diana', '569', ' @sdfgh', ' 34567', '2020-02-05', 'ertyu'),
(7, ' Safa', '2safa', ' @34', ' 3456', '2005-01-15', 'dfg'),
(8, ' monifa', '41', ' @cvbn', ' 34567', '1998-12-10', 'Kalamiabazar'),
(9, ' dfgh', '34', ' fgh', ' 567', '2020-03-19', 'rtghj'),
(10, ' ripa', '1234', ' @hghj', ' 456', '1998-12-10', 'dfgh'),
(11, ' mariam', '@mariam', ' @we', ' 9876', '1972-09-17', 'Chittagong'),
(12, ' sumu', '123', ' df', ' 45678', '2020-03-06', 'cb');

-- --------------------------------------------------------

--
-- Table structure for table `register_formg`
--

CREATE TABLE `register_formg` (
  `id` int(11) NOT NULL,
  `User_name` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Email_id` varchar(255) NOT NULL,
  `Phone` varchar(255) NOT NULL,
  `Date_of_birth` date NOT NULL,
  `Address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register_formg`
--

INSERT INTO `register_formg` (`id`, `User_name`, `Password`, `Email_id`, `Phone`, `Date_of_birth`, `Address`) VALUES
(1, ' mn', 'yu', ' gh', ' 78', '2020-03-28', 'gk'),
(2, ' monifa', '41', ' ghj', ' 678', '2020-03-06', 'hjk'),
(3, 'oo ', 'oo', ' hj', 'ghj ', '2020-03-07', 'fgh'),
(4, ' rr', '78', ' gh', ' 5678', '2020-03-01', 'dfghj'),
(5, 'run', '890', ' sdsdfg', ' 345', '1920-04-22', 'dfghj'),
(6, ' iojo', '123', ' fh', ' 67', '2020-04-03', 'jkgh');

-- --------------------------------------------------------

--
-- Table structure for table `rental_details`
--

CREATE TABLE `rental_details` (
  `Customer_ID` varchar(255) NOT NULL,
  `Apartment_no` varchar(255) NOT NULL,
  `Date` date NOT NULL,
  `Rent_Paid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rental_details`
--

INSERT INTO `rental_details` (`Customer_ID`, `Apartment_no`, `Date`, `Rent_Paid`) VALUES
(' 345', ' s', '1970-01-01', 'Not Paid'),
(' 76', ' gtg', '2019-12-29', 'Paid'),
(' A2', ' D3', '2020-03-06', 'Paid'),
(' g', ' b', '2019-12-29', 'Paid'),
(' gd', ' A7', '2019-12-29', 'Paid'),
(' go', ' A7', '2018-12-30', 'Paid'),
(' llllllllll', ' kooo', '2020-04-05', 'Not Paid'),
(' mm', ' bn', '2020-03-12', 'Paid'),
(' mmkk', ' bn', '1970-01-01', 'Paid'),
(' tt', ' h', '2020-03-28', 'Paid'),
(' vb', ' hj', '2019-12-29', 'Paid'),
(' vv', ' nn', '2020-03-24', 'Not Paid'),
('bbj', 'nm', '2018-12-30', 'Paid'),
('cv ', ' cc', '2020-07-12', 'Paid'),
('h7 ', ' a3', '2019-12-29', 'Not Paid');

-- --------------------------------------------------------

--
-- Table structure for table `rent_request`
--

CREATE TABLE `rent_request` (
  `Rent_id` int(11) NOT NULL,
  `Tenant_ID` int(11) NOT NULL,
  `Tenant_name` varchar(266) NOT NULL,
  `Apartment_no` int(50) NOT NULL,
  `Owner_id` int(50) NOT NULL,
  `Paid_Date` date NOT NULL,
  `Paid_amount` varchar(50) NOT NULL,
  `Transection_no` varchar(266) NOT NULL,
  `Month` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `request_details`
--

CREATE TABLE `request_details` (
  `Request_ID` int(11) NOT NULL,
  `Name` varchar(266) NOT NULL,
  `Username` varchar(266) NOT NULL,
  `Apartment_no` int(50) NOT NULL,
  `Owner_id` int(50) NOT NULL,
  `Address` varchar(266) NOT NULL,
  `Email` varchar(260) NOT NULL,
  `Phone_number` varchar(266) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request_details`
--

INSERT INTO `request_details` (`Request_ID`, `Name`, `Username`, `Apartment_no`, `Owner_id`, `Address`, `Email`, `Phone_number`) VALUES
(1, 'Ria Khan', 'ria', 12, 7, 'Bahaddarhat', 'ria@gmail.com', '0122863'),
(2, 'Nurul Alam', 'alam', 10, 1, 'Bahaddarhat', 'nurul@gmail.com', '09834567');

-- --------------------------------------------------------

--
-- Table structure for table `vaccinated`
--

CREATE TABLE `vaccinated` (
  `ID` int(50) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `birth_date` date NOT NULL,
  `pnum` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apartment_details`
--
ALTER TABLE `apartment_details`
  ADD PRIMARY KEY (`Apartment_no`);

--
-- Indexes for table `customer_details`
--
ALTER TABLE `customer_details`
  ADD PRIMARY KEY (`Customer_ID`);

--
-- Indexes for table `owner_details`
--
ALTER TABLE `owner_details`
  ADD PRIMARY KEY (`Owner_ID`);

--
-- Indexes for table `register_form`
--
ALTER TABLE `register_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register_formg`
--
ALTER TABLE `register_formg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rental_details`
--
ALTER TABLE `rental_details`
  ADD PRIMARY KEY (`Customer_ID`);

--
-- Indexes for table `rent_request`
--
ALTER TABLE `rent_request`
  ADD PRIMARY KEY (`Rent_id`),
  ADD KEY `Test1` (`Tenant_ID`),
  ADD KEY `Apartment_no` (`Apartment_no`),
  ADD KEY `Owner_id` (`Owner_id`);

--
-- Indexes for table `request_details`
--
ALTER TABLE `request_details`
  ADD PRIMARY KEY (`Request_ID`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD KEY `Test3` (`Apartment_no`),
  ADD KEY `Owner_id` (`Owner_id`);

--
-- Indexes for table `vaccinated`
--
ALTER TABLE `vaccinated`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `register_form`
--
ALTER TABLE `register_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `register_formg`
--
ALTER TABLE `register_formg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rent_request`
--
ALTER TABLE `rent_request`
  MODIFY `Rent_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `request_details`
--
ALTER TABLE `request_details`
  MODIFY `Request_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vaccinated`
--
ALTER TABLE `vaccinated`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
