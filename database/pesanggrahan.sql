-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 27, 2023 at 04:19 PM
-- Server version: 5.7.24
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pesanggrahan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employeer`
--

CREATE TABLE `tbl_employeer` (
  `id_employeer` int(11) NOT NULL,
  `nik` varchar(32) DEFAULT NULL,
  `employeer_name` varchar(16) DEFAULT NULL,
  `gender` int(1) DEFAULT '0',
  `place_birth` varchar(32) DEFAULT NULL,
  `date_birth` date DEFAULT NULL,
  `address` text,
  `phone_number` varchar(18) DEFAULT NULL,
  `photo` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_employeer`
--

INSERT INTO `tbl_employeer` (`id_employeer`, `nik`, `employeer_name`, `gender`, `place_birth`, `date_birth`, `address`, `phone_number`, `photo`) VALUES
(1, '123123123123', 'Receptionist', 0, 'Jakarta', '1988-11-01', 'Jakarta', '081231232', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_history_user`
--

CREATE TABLE `tbl_history_user` (
  `id_history_user` int(11) NOT NULL,
  `username` varchar(16) DEFAULT NULL,
  `id_role` int(11) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `time` int(20) DEFAULT NULL,
  `ip_address` varchar(64) DEFAULT NULL,
  `operating_system` varchar(64) DEFAULT NULL,
  `browser` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_log`
--

CREATE TABLE `tbl_log` (
  `id_log` int(11) NOT NULL,
  `time` datetime DEFAULT NULL,
  `username` int(16) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  `description_detail` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_role`
--

CREATE TABLE `tbl_role` (
  `id_role` int(11) NOT NULL,
  `role_name` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_role`
--

INSERT INTO `tbl_role` (`id_role`, `role_name`) VALUES
(1, 'receptionist'),
(2, 'manager'),
(3, 'owner'),
(4, 'housekeeper'),
(5, 'cooker'),
(6, 'administrator');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting`
--

CREATE TABLE `tbl_setting` (
  `id_setting` int(11) NOT NULL,
  `application_name` varchar(32) DEFAULT NULL,
  `address` text,
  `logo_image` varchar(32) DEFAULT NULL,
  `favicon` varchar(32) DEFAULT NULL,
  `contact_number` varchar(18) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `facebook` varchar(64) DEFAULT NULL,
  `instagram` varchar(64) DEFAULT NULL,
  `twitter` varchar(64) DEFAULT NULL,
  `youtube` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_setting`
--

INSERT INTO `tbl_setting` (`id_setting`, `application_name`, `address`, `logo_image`, `favicon`, `contact_number`, `email`, `facebook`, `instagram`, `twitter`, `youtube`) VALUES
(1, 'Pesanggrahan Management System', 'Kabupaten Semarang', 'pesanggrahan.webp', 'favicon.ico', '083875146855', 'info@pesanggrahan.my.id', 'https://www.facebook.com/pesanggrahan', 'https://www.instagram.com/pesanggrahan', 'https://www.twitter.com/pesanggrahan', 'https://www.youtube.com/pesanggrahan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id_users` int(11) NOT NULL,
  `username` varchar(16) DEFAULT NULL,
  `password` text NOT NULL,
  `id_role` int(11) DEFAULT NULL,
  `id_employee` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id_users`, `username`, `password`, `id_role`, `id_employee`) VALUES
(1, 'receptionist', '$2y$10$FztHMKb8Zyy0IZWAUV72qeon9Y3x6ZFnvNrDpyxS2y8K83SXuzd3q', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_employeer`
--
ALTER TABLE `tbl_employeer`
  ADD PRIMARY KEY (`id_employeer`);

--
-- Indexes for table `tbl_log`
--
ALTER TABLE `tbl_log`
  ADD PRIMARY KEY (`id_log`);

--
-- Indexes for table `tbl_role`
--
ALTER TABLE `tbl_role`
  ADD PRIMARY KEY (`id_role`);

--
-- Indexes for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id_users`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_employeer`
--
ALTER TABLE `tbl_employeer`
  MODIFY `id_employeer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_log`
--
ALTER TABLE `tbl_log`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_role`
--
ALTER TABLE `tbl_role`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
  MODIFY `id_setting` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
