-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2024 at 03:47 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apartment`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertisement`
--

CREATE TABLE `advertisement` (
  `Client ID` int(10) NOT NULL,
  `Name` varchar(11) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `Tel Number` int(10) NOT NULL,
  `Mob Number` int(10) NOT NULL,
  `Title of the Ad` varchar(50) NOT NULL,
  `Location` varchar(20) NOT NULL,
  `No of Bedrooms` int(2) NOT NULL,
  `No of Bathrooms` int(2) NOT NULL,
  `Price` int(10) NOT NULL,
  `Description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `advertisement`
--

INSERT INTO `advertisement` (`Client ID`, `Name`, `Email`, `Tel Number`, `Mob Number`, `Title of the Ad`, `Location`, `No of Bedrooms`, `No of Bathrooms`, `Price`, `Description`) VALUES
(25, 'abcd', 'dgagsh@gmail.com', 34567323, 122112212, 'fgedgfa', 'gsfhdajs', 0, 111, 55555555, '11111'),
(28, 'senara nilm', 'senara@gmail.com', 988765432, 2147483647, 'qqqqqqqqqq', 'aaaaaaaaaaa', 2, 2, 123435, 'aaaaaaaaaaaaaaaaaaa');

-- --------------------------------------------------------

--
-- Table structure for table `apartment3`
--

CREATE TABLE `apartment3` (
  `id` int(20) NOT NULL,
  `apartment_name` varchar(20) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `phone_number` int(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `booking_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `apartment3`
--

INSERT INTO `apartment3` (`id`, `apartment_name`, `first_name`, `last_name`, `phone_number`, `email`, `booking_date`) VALUES
(14, 'eeepp', 'eeppplll', 'qqqqqqqqq', 712638120, 'pasin@gmail.com', '2024-05-30'),
(16, '', '', '', 0, '', '0000-00-00'),
(18, '', '', '', 0, '', '0000-00-00'),
(20, 'ghhh', 'fgfgf', 'hgjk', 712638120, 'ghdgy@gmain.com', '2024-05-21');

-- --------------------------------------------------------

--
-- Table structure for table `comments1`
--

CREATE TABLE `comments1` (
  `cid` int(11) NOT NULL,
  `uid` varchar(128) NOT NULL,
  `date` datetime NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments1`
--

INSERT INTO `comments1` (`cid`, `uid`, `date`, `message`) VALUES
(82, 'Anonymous', '2024-05-06 15:01:22', 'What Payment methods are accepted on SkylineSells.');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `user_id` int(11) NOT NULL,
  `First_name` varchar(150) NOT NULL,
  `Last_name` varchar(150) NOT NULL,
  `Email` varchar(150) NOT NULL,
  `phone_number` int(10) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `password` varchar(150) NOT NULL,
  `profile_picture` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`user_id`, `First_name`, `Last_name`, `Email`, `phone_number`, `user_name`, `password`, `profile_picture`) VALUES
(13, 'kavindya', 'Tharushi', 'kavi@gmail.com', 713136802, 'awed', '$2y$10$EhcKFN8axc0x7EV9V5PRYOPjvTzmDzSFaY5Yr/i8JDg95lTK4pVRu', ''),
(22, 'kasun', 'perera', 'dsa@gmail.com', 765857287, 'saranga99', '$2y$10$RcbpSfpq0pSj12EW33n2j.yhi7mXD/n7Pcn4Yc6pQnuaS019LfrDG', 'images/user_profilesMTAMTF220010.jpg'),
(24, 'senara', 'nilmani', 'senara@gmail.com', 213456789, 'senara', '$2y$10$l7PQ50z2L77r9VfyUKgtculFJoTL/GHxE216Q.wC0vxyI47ttnr1m', '');

-- --------------------------------------------------------

--
-- Table structure for table `review1`
--

CREATE TABLE `review1` (
  `ID` int(10) NOT NULL,
  `Rev_title` varchar(100) NOT NULL,
  `Rev_text` varchar(1000) NOT NULL,
  `Rating` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review1`
--

INSERT INTO `review1` (`ID`, `Rev_title`, `Rev_text`, `Rating`) VALUES
(29, 'Great Customer Service', 'The online platform provided excellent customer service. They responded my questions promptly and guided me through the entire purchasing process. I highly recommend anyone looking to buy an apartment to look into this platform.', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertisement`
--
ALTER TABLE `advertisement`
  ADD PRIMARY KEY (`Client ID`);

--
-- Indexes for table `apartment3`
--
ALTER TABLE `apartment3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments1`
--
ALTER TABLE `comments1`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `review1`
--
ALTER TABLE `review1`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertisement`
--
ALTER TABLE `advertisement`
  MODIFY `Client ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `apartment3`
--
ALTER TABLE `apartment3`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `comments1`
--
ALTER TABLE `comments1`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `review1`
--
ALTER TABLE `review1`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
