-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2024 at 06:36 PM
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
-- Database: `dormitorymaintenance_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_ID` varchar(6) NOT NULL,
  `role_Name` varchar(30) NOT NULL,
  `role_dateAdd` datetime NOT NULL,
  `role_dateEdit` datetime NOT NULL,
  `role_Access` text NOT NULL,
  `role_User_ID` varchar(6) NOT NULL,
  `role_Status_ID` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_ID`, `role_Name`, `role_dateAdd`, `role_dateEdit`, `role_Access`, `role_User_ID`, `role_Status_ID`) VALUES
('ROL001', 'ผู้พักอาศัย', '2024-07-30 16:20:04', '2024-07-30 16:20:04', '', 'USE001', 'STA006'),
('ROL002', 'ผู้ดูแลระบบ', '2024-07-30 16:21:39', '2024-07-30 16:21:39', '', 'USE001', 'STA006');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `stat_ID` varchar(6) NOT NULL,
  `stat_Name` varchar(30) NOT NULL,
  `stat_StatTypID` varchar(6) NOT NULL,
  `stat_DateAdd` datetime NOT NULL,
  `stat_dateEdit` datetime NOT NULL,
  `stat_stat_ID` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`stat_ID`, `stat_Name`, `stat_StatTypID`, `stat_DateAdd`, `stat_dateEdit`, `stat_stat_ID`) VALUES
('STA001', 'ืืิืืพัก', 'STT001', '2024-07-30 15:57:47', '2024-07-30 15:57:47', 'STA006'),
('STA002', 'สิ้นสุดการพัก', 'STT001', '2024-07-30 16:00:08', '2024-07-30 16:00:08', 'STA006'),
('STA003', 'ปฎิบัติหน้าที่', 'STT001', '2024-07-30 16:10:29', '2024-07-30 16:10:29', 'STA006'),
('STA004', 'สิ้นสุดการปฎิบัติหน้าที่', 'STT001', '2024-07-30 16:10:29', '2024-07-30 16:10:29', 'STA006'),
('STA005', 'ยกเลิกการใช้งาน', 'STT002', '2024-07-30 16:12:31', '2024-07-30 16:12:31', ''),
('STA006', 'ใช้งาน', 'STT002', '2024-07-30 16:13:37', '2024-07-30 16:13:37', '');

-- --------------------------------------------------------

--
-- Table structure for table `statustype`
--

CREATE TABLE `statustype` (
  `statTyp_ID` varchar(6) NOT NULL,
  `stat_Name` varchar(20) NOT NULL,
  `stat_stat_ID` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `statustype`
--

INSERT INTO `statustype` (`statTyp_ID`, `stat_Name`, `stat_stat_ID`) VALUES
('STT001', 'สถานะผู้ใช้งาน', 'STA006'),
('STT002', 'สถานะการใช้งานสถานะ', 'STA006');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_ID` varchar(6) NOT NULL,
  `user_Fname` varchar(50) NOT NULL,
  `user_Lname` varchar(50) NOT NULL,
  `user_Email` varchar(30) NOT NULL,
  `user_Phone` varchar(10) NOT NULL,
  `user_Name` varchar(50) DEFAULT NULL,
  `user_Password` text NOT NULL,
  `user_Bdate` date NOT NULL,
  `user_DateAdd` datetime NOT NULL,
  `user_DateEdit` datetime NOT NULL,
  `user_Role_ID` varchar(6) NOT NULL,
  `user_Status_ID` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_ID`, `user_Fname`, `user_Lname`, `user_Email`, `user_Phone`, `user_Name`, `user_Password`, `user_Bdate`, `user_DateAdd`, `user_DateEdit`, `user_Role_ID`, `user_Status_ID`) VALUES
('USE001', 'หัสนัย', 'หม้อยา', '้hatsanai022com@gmail.com', '0980300822', 'hatsanai', '$2b$10$BsyVew0t11C9jcfQCT1ygu4OJyC3do/p1RUsWP6tq3oGtjOtM1SBm', '2017-04-04', '2024-07-30 16:22:15', '2024-07-30 16:22:15', 'ROL002', 'STA003'),
('USE002', '', '', '', '', 'hatsanai1', '$2b$10$e1k0EbA.J9PxqLRjAU7npO/nq8ZP7Xn0ZdWPcW4einl1EoyUx2JwG', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
('USE003', '', '', '', '', 'hatsanai2', '$2b$10$X4gaLHYnefNKYk.kGpQjGu/Dt04vvXfY1VbRE5SU6kBycAsF2mF9u', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_ID`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`stat_ID`);

--
-- Indexes for table `statustype`
--
ALTER TABLE `statustype`
  ADD PRIMARY KEY (`statTyp_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
