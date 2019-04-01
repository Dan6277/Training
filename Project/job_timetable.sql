-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2019 at 01:29 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `job_timetable`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `name`) VALUES
(1, 'Benz');

-- --------------------------------------------------------

--
-- Table structure for table `break_overrides`
--

CREATE TABLE `break_overrides` (
  `break_id` int(10) NOT NULL,
  `tech_id` int(10) NOT NULL,
  `break_date` int(10) NOT NULL,
  `lunch_start` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer_jobs`
--

CREATE TABLE `customer_jobs` (
  `job_id` int(10) NOT NULL,
  `tech_id` int(10) NOT NULL,
  `repair_order` int(10) NOT NULL,
  `surname` varchar(30) NOT NULL,
  `rego` varchar(10) NOT NULL,
  `job_description` varchar(20) NOT NULL,
  `brand_id` int(10) NOT NULL,
  `car_model` varchar(10) DEFAULT NULL,
  `job_date` int(10) NOT NULL,
  `job_duration` int(10) NOT NULL,
  `job_start` varchar(10) NOT NULL,
  `job_required_completion` varchar(10) NOT NULL,
  `job_completed` int(10) NOT NULL,
  `car_washed` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_jobs`
--

INSERT INTO `customer_jobs` (`job_id`, `tech_id`, `repair_order`, `surname`, `rego`, `job_description`, `brand_id`, `car_model`, `job_date`, `job_duration`, `job_start`, `job_required_completion`, `job_completed`, `car_washed`) VALUES
(1, 1, 123, 'Lord', '836TWZ', '30k service', 1, NULL, 1554117528, 120, '10:00', '13:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `technicians`
--

CREATE TABLE `technicians` (
  `tech_id` int(10) NOT NULL,
  `number` int(10) NOT NULL,
  `name` varchar(15) NOT NULL,
  `brand_id` int(10) NOT NULL,
  `smoko_start` varchar(10) NOT NULL,
  `lunch_start` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `technicians`
--

INSERT INTO `technicians` (`tech_id`, `number`, `name`, `brand_id`, `smoko_start`, `lunch_start`) VALUES
(1, 1450, 'Joey', 1, '10:00', '12:00');

-- --------------------------------------------------------

--
-- Table structure for table `technician_leave`
--

CREATE TABLE `technician_leave` (
  `leave_id` int(10) NOT NULL,
  `tech_id` int(10) NOT NULL,
  `leave_start` int(10) NOT NULL,
  `leave_end` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `break_overrides`
--
ALTER TABLE `break_overrides`
  ADD PRIMARY KEY (`break_id`);

--
-- Indexes for table `customer_jobs`
--
ALTER TABLE `customer_jobs`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `technicians`
--
ALTER TABLE `technicians`
  ADD PRIMARY KEY (`tech_id`);

--
-- Indexes for table `technician_leave`
--
ALTER TABLE `technician_leave`
  ADD PRIMARY KEY (`leave_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `break_overrides`
--
ALTER TABLE `break_overrides`
  MODIFY `break_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_jobs`
--
ALTER TABLE `customer_jobs`
  MODIFY `job_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `technicians`
--
ALTER TABLE `technicians`
  MODIFY `tech_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `technician_leave`
--
ALTER TABLE `technician_leave`
  MODIFY `leave_id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
