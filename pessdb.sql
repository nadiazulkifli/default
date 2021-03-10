-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2021 at 06:38 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pessdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `dispatch`
--

CREATE TABLE `dispatch` (
  `incident_id` int(11) NOT NULL,
  `patrolcar_id` varchar(10) NOT NULL,
  `time_dispatched` datetime NOT NULL,
  `time_arrived` datetime DEFAULT NULL,
  `time_completed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dispatch`
--

INSERT INTO `dispatch` (`incident_id`, `patrolcar_id`, `time_dispatched`, `time_arrived`, `time_completed`) VALUES
(1, 'QX1111A', '2021-02-25 22:49:51', '2021-03-01 12:45:39', '2021-03-04 14:24:55'),
(32, 'QX1111A', '2021-03-08 15:58:39', NULL, NULL),
(33, 'QX1123V', '2021-03-08 16:00:04', '2021-03-08 16:00:38', '2021-03-08 16:00:41');

-- --------------------------------------------------------

--
-- Table structure for table `incident`
--

CREATE TABLE `incident` (
  `incident_id` int(11) NOT NULL,
  `caller_name` varchar(30) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  `incident_type_id` varchar(3) NOT NULL,
  `incident_location` varchar(50) NOT NULL,
  `incident_desc` varchar(100) NOT NULL,
  `incident_status_id` varchar(1) NOT NULL,
  `time_called` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `incident`
--

INSERT INTO `incident` (`incident_id`, `caller_name`, `phone_number`, `incident_type_id`, `incident_location`, `incident_desc`, `incident_status_id`, `time_called`) VALUES
(1, 'Adam', '82234566', '060', 'Jurong', 'ccc', '3', '2021-02-25 15:39:49'),
(2, 'David', '98876234', '060', 'Ang Mo Kio', 'Traffic Accident at amk ave 1', '1', '2021-02-25 22:05:52'),
(3, 'David', '98876234', '060', 'Ang Mo Kio', 'Traffic Accident at amk ave 1', '1', '2021-02-25 22:06:39'),
(5, 'joey', '84456543', '010', 'Sembawang', 'fire at sembawang shopping centre', '1', '2021-03-01 10:40:49'),
(7, 'joey', '84456543', '010', 'Sembawang', 'fire at sembawang shopping centre', '1', '2021-03-01 10:43:12'),
(8, 'joey', '87654556', '050', 'Bukit Batok', 'fallen tree', '1', '2021-03-01 10:49:22'),
(9, 'joey', '87654556', '050', 'Bukit Batok', 'fallen tree', '1', '2021-03-01 10:49:52'),
(11, 'joey', '84456543', '010', 'Sembawang', 'fire at sembawang shopping centre', '1', '2021-03-01 10:56:25'),
(12, 'joey', '98876234', '010', 'Jurong ', 'Fire at jurong point', '1', '2021-03-04 14:33:43'),
(13, 'joey', '98876234', '010', 'Jurong ', 'Fire at jurong point', '1', '2021-03-04 14:33:48'),
(14, 'joey', '98876234', '010', 'Jurong ', 'Fire at jurong point', '1', '2021-03-04 14:33:53'),
(15, 'joey', '98876234', '010', 'Jurong ', 'Fire at jurong point', '1', '2021-03-04 14:33:59'),
(16, 'joey', '98876234', '010', 'Jurong ', 'Fire at jurong point', '1', '2021-03-04 14:34:03'),
(17, 'joey', '98876234', '010', 'Jurong ', 'Fire at jurong point', '1', '2021-03-04 14:36:19'),
(18, 'joey', '98876234', '010', 'Jurong ', 'Fire at jurong point', '1', '2021-03-04 14:42:13'),
(19, 'David', '98876234', '020', 'Jurong West ', 'Riot at Jurong', '1', '2021-03-08 15:41:53'),
(20, 'David', '98876234', '020', 'Jurong West ', 'Riot at Jurong', '1', '2021-03-08 15:43:32'),
(21, 'ddd', 'eee', '010', 'ddd', 'eeee', '1', '2021-03-08 15:51:20'),
(22, 'ddd', 'eee', '010', 'ddd', 'eeee', '1', '2021-03-08 15:52:12'),
(23, 'ddd', 'eee', '010', 'ddd', 'eeee', '1', '2021-03-08 15:52:32'),
(24, 'ddd', 'eee', '010', 'ddd', 'eeee', '1', '2021-03-08 15:53:52'),
(25, 'ddd', 'eee', '010', 'ddd', 'eeee', '1', '2021-03-08 15:54:32'),
(26, 'ddd', 'eee', '010', 'ddd', 'eeee', '1', '2021-03-08 15:54:37'),
(27, 'ddd', 'eee', '010', 'ddd', 'eeee', '1', '2021-03-08 15:54:53'),
(28, 'ddd', 'eee', '010', 'ddd', 'eeee', '1', '2021-03-08 15:55:11'),
(29, 'ddd', 'eee', '010', 'ddd', 'eeee', '1', '2021-03-08 15:55:46'),
(30, 'ddd', 'eee', '010', 'ddd', 'eeee', '1', '2021-03-08 15:57:11'),
(31, 'ddd', 'eee', '010', 'ddd', 'eeee', '1', '2021-03-08 15:57:22'),
(32, 'ddd', 'ccc', '010', 'eee', 'ddd', '2', '2021-03-08 15:58:39'),
(33, 'ddd', 'ccc', '010', 'eee', 'ddd', '3', '2021-03-08 16:00:04');

-- --------------------------------------------------------

--
-- Table structure for table `incident_status`
--

CREATE TABLE `incident_status` (
  `incident_status_id` varchar(1) NOT NULL,
  `incident_status_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `incident_status`
--

INSERT INTO `incident_status` (`incident_status_id`, `incident_status_desc`) VALUES
('', ''),
('1', 'Pending'),
('2', 'Dispatched'),
('3', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `incident_type`
--

CREATE TABLE `incident_type` (
  `incident_type_id` varchar(3) NOT NULL,
  `incident_type_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `incident_type`
--

INSERT INTO `incident_type` (`incident_type_id`, `incident_type_desc`) VALUES
('010', 'Fire'),
('020', 'Riot'),
('030', 'Burglary'),
('040', 'Domestic Violent'),
('050', 'Fallen Tree'),
('060', 'Traffic Accident'),
('070', 'Loan Shark'),
('080', 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `patrolcar`
--

CREATE TABLE `patrolcar` (
  `patrolcar_id` varchar(10) NOT NULL,
  `patrolcar_status_id` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patrolcar`
--

INSERT INTO `patrolcar` (`patrolcar_id`, `patrolcar_status_id`) VALUES
('QX1111A', '1'),
('QX1123V', '3'),
('QX222B', '3'),
('QX233A', '3'),
('QX5521E', '3'),
('QX555T', '3'),
('QX7774', '3'),
('QX999E', '3'),
('QX3334E', '4'),
('QX8885', '4');

-- --------------------------------------------------------

--
-- Table structure for table `patrolcar_status`
--

CREATE TABLE `patrolcar_status` (
  `patrolcar_status_id` varchar(1) NOT NULL,
  `patrolcar_status_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patrolcar_status`
--

INSERT INTO `patrolcar_status` (`patrolcar_status_id`, `patrolcar_status_desc`) VALUES
('1', 'Dispatched'),
('2', 'Patrol'),
('3', 'Free'),
('4', 'Arrived');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dispatch`
--
ALTER TABLE `dispatch`
  ADD PRIMARY KEY (`incident_id`,`patrolcar_id`);

--
-- Indexes for table `incident`
--
ALTER TABLE `incident`
  ADD PRIMARY KEY (`incident_id`),
  ADD KEY `incident_type_id` (`incident_type_id`,`incident_status_id`),
  ADD KEY `incident_type_id_2` (`incident_type_id`,`incident_status_id`),
  ADD KEY `incident_status_id` (`incident_status_id`);

--
-- Indexes for table `incident_status`
--
ALTER TABLE `incident_status`
  ADD PRIMARY KEY (`incident_status_id`);

--
-- Indexes for table `incident_type`
--
ALTER TABLE `incident_type`
  ADD PRIMARY KEY (`incident_type_id`);

--
-- Indexes for table `patrolcar`
--
ALTER TABLE `patrolcar`
  ADD PRIMARY KEY (`patrolcar_id`),
  ADD KEY `patrolcar_status_id` (`patrolcar_status_id`);

--
-- Indexes for table `patrolcar_status`
--
ALTER TABLE `patrolcar_status`
  ADD PRIMARY KEY (`patrolcar_status_id`),
  ADD KEY `patrolcar_status_id` (`patrolcar_status_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `incident`
--
ALTER TABLE `incident`
  MODIFY `incident_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `incident`
--
ALTER TABLE `incident`
  ADD CONSTRAINT `incident_ibfk_1` FOREIGN KEY (`incident_type_id`) REFERENCES `incident_type` (`incident_type_id`),
  ADD CONSTRAINT `incident_ibfk_2` FOREIGN KEY (`incident_status_id`) REFERENCES `incident_status` (`incident_status_id`);

--
-- Constraints for table `patrolcar`
--
ALTER TABLE `patrolcar`
  ADD CONSTRAINT `patrolcar_ibfk_1` FOREIGN KEY (`patrolcar_status_id`) REFERENCES `patrolcar_status` (`patrolcar_status_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
