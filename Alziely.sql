-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 09, 2026 at 03:18 PM
-- Server version: 10.4.34-MariaDB
-- PHP Version: 8.5.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Alziely`
--

-- --------------------------------------------------------

--
-- Table structure for table `Appointments`
--

CREATE TABLE `Appointments` (
  `appointment_id` int(11) NOT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `doctor_name` varchar(15) DEFAULT NULL,
  `appointment_date` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `Appointments`
--

INSERT INTO `Appointments` (`appointment_id`, `patient_id`, `doctor_name`, `appointment_date`, `status`) VALUES
(201, 101, 'Dr. Garcia', '2025-03-10', 'Completed'),
(202, 102, 'Dr. Ramos', '2025-03-11', 'Scheduled'),
(203, 101, 'Dr. Cruz', '2025-03-15', 'Scheduled'),
(204, 103, 'Dr. Garcia', '2025-03-18', 'Cancelled');

-- --------------------------------------------------------

--
-- Table structure for table `Patients`
--

CREATE TABLE `Patients` (
  `patient_id` int(11) NOT NULL,
  `patient_name` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `contact_number` varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `Patients`
--

INSERT INTO `Patients` (`patient_id`, `patient_name`, `city`, `contact_number`) VALUES
(101, 'Maria Santos', 'Cebu', '09123456781'),
(102, 'Juan Dela Cruz', 'Bohol', '09123456782'),
(103, 'Ana Reyes', 'Cebu', '091234567893'),
(104, 'Mark Lopez', 'Dumaguete', '091234567894'),
(105, 'Carla Gomez', 'Bohol', '091234567895');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Appointments`
--
ALTER TABLE `Appointments`
  ADD PRIMARY KEY (`appointment_id`);

--
-- Indexes for table `Patients`
--
ALTER TABLE `Patients`
  ADD PRIMARY KEY (`patient_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
