-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2022 at 09:57 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uwc`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` int(100) NOT NULL,
  `role` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `phone`, `email`, `role`, `status`) VALUES
(1, 'a', '124214', 3143, '0', 'free'),
(2, 'Brad', '1002141', 4, '1', 'free');

-- --------------------------------------------------------

--
-- Table structure for table `mcp`
--

CREATE TABLE `mcp` (
  `id_mcp` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `longitude` decimal(10,0) NOT NULL,
  `latitude` decimal(10,0) NOT NULL,
  `location` varchar(100) NOT NULL,
  `capacity` varchar(100) NOT NULL,
  `current` varchar(100) NOT NULL DEFAULT '0',
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mcp`
--

INSERT INTO `mcp` (`id_mcp`, `name`, `longitude`, `latitude`, `location`, `capacity`, `current`, `status`) VALUES
(1, 'a', '10', '10', 'disc10', '1500', '0', 'free'),
(2, 'a', '10', '10', 'disc 10', '1500', '0', 'free');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `id_vehicle` int(10) UNSIGNED NOT NULL,
  `type` varchar(100) NOT NULL,
  `capacity` varchar(100) NOT NULL,
  `id_employee` int(10) UNSIGNED NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`id_vehicle`, `type`, `capacity`, `id_employee`, `status`) VALUES
(1, '0', '', 2, 'In Use'),
(2, '0', '15000', 2, 'In Use'),
(3, '0', '150000', 2, 'In Use');

-- --------------------------------------------------------

--
-- Table structure for table `work_on`
--

CREATE TABLE `work_on` (
  `id_employee` int(10) UNSIGNED NOT NULL,
  `id_mcp` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mcp`
--
ALTER TABLE `mcp`
  ADD PRIMARY KEY (`id_mcp`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`id_vehicle`),
  ADD KEY `id_employee` (`id_employee`);

--
-- Indexes for table `work_on`
--
ALTER TABLE `work_on`
  ADD KEY `id_employee` (`id_employee`),
  ADD KEY `id_mcp` (`id_mcp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mcp`
--
ALTER TABLE `mcp`
  MODIFY `id_mcp` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `id_vehicle` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD CONSTRAINT `vehicle_ibfk_1` FOREIGN KEY (`id_employee`) REFERENCES `employee` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
