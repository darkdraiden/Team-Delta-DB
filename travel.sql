-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 20, 2024 at 06:25 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(11) NOT NULL,
  `booking_price` int(11) NOT NULL,
  `travel_plan_travel_id` int(11) NOT NULL,
  `user_user_id` int(11) NOT NULL,
  `member_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `booking_price`, `travel_plan_travel_id`, `user_user_id`, `member_count`) VALUES
(2, 1800, 3, 3, 3),
(4, 1000, 2, 5, 2),
(8, 3000, 4, 5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `booking_seq`
--

CREATE TABLE `booking_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_seq`
--

INSERT INTO `booking_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `travel_plan`
--

CREATE TABLE `travel_plan` (
  `travel_id` int(11) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `rate` int(11) NOT NULL,
  `start_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `travel_plan`
--

INSERT INTO `travel_plan` (`travel_id`, `destination`, `rate`, `start_date`) VALUES
(2, 'Haridwar', 500, '25/01/2024'),
(3, 'Kashi', 600, '01/02/2024'),
(4, 'Ayodhya', 1000, '22/01/2024');

-- --------------------------------------------------------

--
-- Table structure for table `travel_plan_seq`
--

CREATE TABLE `travel_plan_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `travel_plan_seq`
--

INSERT INTO `travel_plan_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `email`, `name`, `password`, `role`) VALUES
(2, 'sita@gmail.com', 'Sita Kumari', 'Sita', 'ADMIN'),
(3, 'shyam@gmail.com', 'Shyam Kumar', 'Shyam', 'NORMAL'),
(4, 'geeta@gmail.com', 'Geeta Kumari', 'Geeta', 'NORMAL'),
(5, 'mira@gmail.com', 'Mira Kumari', 'Mira', 'NORMAL'),
(6, 'ram@gmail.com', 'Ram Kumar', 'Ram', 'ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `user_seq`
--

CREATE TABLE `user_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_seq`
--

INSERT INTO `user_seq` (`next_val`) VALUES
(1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`),
  ADD UNIQUE KEY `UK_arhqgchhkljgxpc73gc9lppwa` (`travel_plan_travel_id`),
  ADD KEY `FKdxt6l0m3hxp1frtqkkjxd1isj` (`user_user_id`);

--
-- Indexes for table `travel_plan`
--
ALTER TABLE `travel_plan`
  ADD PRIMARY KEY (`travel_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `UK_ob8kqyqqgmefl0aco34akdtpe` (`email`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `FKdxt6l0m3hxp1frtqkkjxd1isj` FOREIGN KEY (`user_user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `FKetlnww9bc1vpw3yljagn75a4u` FOREIGN KEY (`travel_plan_travel_id`) REFERENCES `travel_plan` (`travel_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
