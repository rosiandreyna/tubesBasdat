-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220707.a5d60f5698
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2022 at 06:28 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fanclub_registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `calon_member`
--

CREATE TABLE `calon_member` (
  `id` int(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` int(100) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `nationality` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `membership_type` varchar(50) NOT NULL,
  `membership_period` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `calon_member`
--

INSERT INTO `calon_member` (`id`, `name`, `age`, `phone_number`, `gender`, `nationality`, `address`, `membership_type`, `membership_period`) VALUES
(1, 'Reyna', 20, '082236377225', 'female', 'Indonesia', 'Nganjuk', 'Exclusive Content', '1 Year'),
(3, 'Calvin', 23, '082212345678', 'male', 'Indonesia', 'Bandung', 'Event Discount', '3 Months');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `event_name` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `promoter` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `event_name`, `date`, `promoter`) VALUES
(1, 'Maniac Concert in Seoul', '2022-07-15', 'Dispatch');

-- --------------------------------------------------------

--
-- Table structure for table `merch`
--

CREATE TABLE `merch` (
  `id` int(11) NOT NULL,
  `item` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `edition` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `merch`
--

INSERT INTO `merch` (`id`, `item`, `price`, `edition`) VALUES
(1, 'Photobook', 75000, 'Limited');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calon_member`
--
ALTER TABLE `calon_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `merch`
--
ALTER TABLE `merch`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `calon_member`
--
ALTER TABLE `calon_member`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `merch`
--
ALTER TABLE `merch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



