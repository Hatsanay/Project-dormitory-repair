-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2024 at 04:58 PM
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
-- Database: `dormitorymaintenancedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `inve_ID` int(11) NOT NULL,
  `inve_Name` varchar(100) NOT NULL,
  `inve_Quantity` int(11) NOT NULL,
  `inve_Unit` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `legalentities`
--

CREATE TABLE `legalentities` (
  `lega_ID` int(11) NOT NULL,
  `lega_userID` int(11) DEFAULT NULL,
  `lega_FirstName` varchar(50) NOT NULL,
  `lega_LastName` varchar(50) NOT NULL,
  `lega_Email` varchar(100) NOT NULL,
  `lega_PhoneNumber` varchar(20) NOT NULL,
  `lega_JobPosition` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `maintenancerequests`
--

CREATE TABLE `maintenancerequests` (
  `mainr_ID` int(11) NOT NULL,
  `mainr_resiID` int(11) DEFAULT NULL,
  `mainr_ProblemType` varchar(50) NOT NULL,
  `mainr_ProblemDescription` text NOT NULL,
  `mainr_ProblemPhoto` longblob DEFAULT NULL,
  `mainr_Status` varchar(50) NOT NULL,
  `mainr_RequestDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `maintenancestaff`
--

CREATE TABLE `maintenancestaff` (
  `main_ID` int(11) NOT NULL,
  `main_userID` int(11) DEFAULT NULL,
  `main_FirstName` varchar(50) NOT NULL,
  `main_LastName` varchar(50) NOT NULL,
  `main_Email` varchar(100) NOT NULL,
  `main_PhoneNumber` varchar(20) NOT NULL,
  `main_JobPosition` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `managers`
--

CREATE TABLE `managers` (
  `mana_ID` int(11) NOT NULL,
  `mana_userID` int(11) DEFAULT NULL,
  `mana_FirstName` varchar(50) NOT NULL,
  `mana_LastName` varchar(50) NOT NULL,
  `mana_Email` varchar(100) NOT NULL,
  `mana_PhoneNumber` varchar(20) NOT NULL,
  `mana_JobPosition` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `materialrequests`
--

CREATE TABLE `materialrequests` (
  `matr_ID` int(11) NOT NULL,
  `matr_mainID` int(11) DEFAULT NULL,
  `matr_inveID` int(11) DEFAULT NULL,
  `matr_Quantity` int(11) NOT NULL,
  `matr_Status` varchar(50) NOT NULL,
  `matr_Date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `noti_ID` int(11) NOT NULL,
  `noti_resiID` int(11) DEFAULT NULL,
  `noti_Text` text NOT NULL,
  `noti_Date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchaseorders`
--

CREATE TABLE `purchaseorders` (
  `purc_ID` int(11) NOT NULL,
  `purc_legaID` int(11) DEFAULT NULL,
  `purc_inveID` int(11) DEFAULT NULL,
  `purc_Quantity` int(11) NOT NULL,
  `purc_Status` varchar(50) NOT NULL,
  `purc_Date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `residents`
--

CREATE TABLE `residents` (
  `resi_ID` int(11) NOT NULL,
  `resi_userID` int(11) DEFAULT NULL,
  `resi_FirstName` varchar(50) NOT NULL,
  `resi_LastName` varchar(50) NOT NULL,
  `resi_Email` varchar(100) NOT NULL,
  `resi_PhoneNumber` varchar(20) NOT NULL,
  `resi_roomID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `revi_ID` int(11) NOT NULL,
  `revi_mainrID` int(11) DEFAULT NULL,
  `revi_QualityRating` int(11) NOT NULL,
  `revi_SpeedRating` int(11) NOT NULL,
  `revi_ServiceRating` int(11) NOT NULL,
  `revi_Text` text NOT NULL,
  `revi_Date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_ID` int(11) NOT NULL,
  `role_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `room_ID` int(11) NOT NULL,
  `room_Number` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_ID` int(11) NOT NULL,
  `user_Name` varchar(50) NOT NULL,
  `user_PasswordHash` varchar(255) NOT NULL,
  `user_roleID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`inve_ID`);

--
-- Indexes for table `legalentities`
--
ALTER TABLE `legalentities`
  ADD PRIMARY KEY (`lega_ID`),
  ADD KEY `lega_userID` (`lega_userID`);

--
-- Indexes for table `maintenancerequests`
--
ALTER TABLE `maintenancerequests`
  ADD PRIMARY KEY (`mainr_ID`),
  ADD KEY `mainr_resiID` (`mainr_resiID`);

--
-- Indexes for table `maintenancestaff`
--
ALTER TABLE `maintenancestaff`
  ADD PRIMARY KEY (`main_ID`),
  ADD KEY `main_userID` (`main_userID`);

--
-- Indexes for table `managers`
--
ALTER TABLE `managers`
  ADD PRIMARY KEY (`mana_ID`),
  ADD KEY `mana_userID` (`mana_userID`);

--
-- Indexes for table `materialrequests`
--
ALTER TABLE `materialrequests`
  ADD PRIMARY KEY (`matr_ID`),
  ADD KEY `matr_mainID` (`matr_mainID`),
  ADD KEY `matr_inveID` (`matr_inveID`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`noti_ID`),
  ADD KEY `noti_resiID` (`noti_resiID`);

--
-- Indexes for table `purchaseorders`
--
ALTER TABLE `purchaseorders`
  ADD PRIMARY KEY (`purc_ID`),
  ADD KEY `purc_legaID` (`purc_legaID`),
  ADD KEY `purc_inveID` (`purc_inveID`);

--
-- Indexes for table `residents`
--
ALTER TABLE `residents`
  ADD PRIMARY KEY (`resi_ID`),
  ADD KEY `resi_userID` (`resi_userID`),
  ADD KEY `resi_roomID` (`resi_roomID`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`revi_ID`),
  ADD KEY `revi_mainrID` (`revi_mainrID`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_ID`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`room_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_ID`),
  ADD KEY `user_roleID` (`user_roleID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `legalentities`
--
ALTER TABLE `legalentities`
  ADD CONSTRAINT `legalentities_ibfk_1` FOREIGN KEY (`lega_userID`) REFERENCES `users` (`user_ID`);

--
-- Constraints for table `maintenancerequests`
--
ALTER TABLE `maintenancerequests`
  ADD CONSTRAINT `maintenancerequests_ibfk_1` FOREIGN KEY (`mainr_resiID`) REFERENCES `residents` (`resi_ID`);

--
-- Constraints for table `maintenancestaff`
--
ALTER TABLE `maintenancestaff`
  ADD CONSTRAINT `maintenancestaff_ibfk_1` FOREIGN KEY (`main_userID`) REFERENCES `users` (`user_ID`);

--
-- Constraints for table `managers`
--
ALTER TABLE `managers`
  ADD CONSTRAINT `managers_ibfk_1` FOREIGN KEY (`mana_userID`) REFERENCES `users` (`user_ID`);

--
-- Constraints for table `materialrequests`
--
ALTER TABLE `materialrequests`
  ADD CONSTRAINT `materialrequests_ibfk_1` FOREIGN KEY (`matr_mainID`) REFERENCES `maintenancestaff` (`main_ID`),
  ADD CONSTRAINT `materialrequests_ibfk_2` FOREIGN KEY (`matr_inveID`) REFERENCES `inventory` (`inve_ID`);

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`noti_resiID`) REFERENCES `residents` (`resi_ID`);

--
-- Constraints for table `purchaseorders`
--
ALTER TABLE `purchaseorders`
  ADD CONSTRAINT `purchaseorders_ibfk_1` FOREIGN KEY (`purc_legaID`) REFERENCES `legalentities` (`lega_ID`),
  ADD CONSTRAINT `purchaseorders_ibfk_2` FOREIGN KEY (`purc_inveID`) REFERENCES `inventory` (`inve_ID`);

--
-- Constraints for table `residents`
--
ALTER TABLE `residents`
  ADD CONSTRAINT `residents_ibfk_1` FOREIGN KEY (`resi_userID`) REFERENCES `users` (`user_ID`),
  ADD CONSTRAINT `residents_ibfk_2` FOREIGN KEY (`resi_roomID`) REFERENCES `rooms` (`room_ID`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`revi_mainrID`) REFERENCES `maintenancerequests` (`mainr_ID`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`user_roleID`) REFERENCES `roles` (`role_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
