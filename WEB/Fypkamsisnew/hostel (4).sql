-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2020 at 03:42 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `reg_date`, `updation_date`) VALUES
(1, 'admin', 'admin@gmail.com', 'Test@1234', '2016-04-04 20:31:45', '2020-10-21');

-- --------------------------------------------------------

--
-- Table structure for table `adminlog`
--

CREATE TABLE `adminlog` (
  `id` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `ip` varbinary(16) NOT NULL,
  `logintime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_code` varchar(255) DEFAULT NULL,
  `course_sn` varchar(255) DEFAULT NULL,
  `course_fn` varchar(255) DEFAULT NULL,
  `posting_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_code`, `course_sn`, `course_fn`, `posting_date`) VALUES
(8, '1', 'JTMK', 'JABATAN TEKNOLOGI DAN MAKLUMAT', '2020-09-17 16:04:19'),
(9, '2', 'JP', 'JABATAN PERDAGANGAN ', '2020-09-17 16:04:36'),
(10, '3', 'JPH', 'JABATAN PERLANCONGAN DAN HOSPITALITI', '2020-09-17 16:05:00'),
(11, '4', 'JRKV', 'JABATAN REKA BENTUK DAN VISUAL', '2020-09-17 16:05:19'),
(12, '5', 'JKE', 'JABATAN KEJURUTERAAN ELEKTRIK', '2020-09-17 16:05:48'),
(13, '6', 'JKM', 'JABATAN KEJURUTERAAN MEKANIKAL', '2020-09-17 16:06:08');

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` int(11) NOT NULL,
  `roomno` varchar(30) NOT NULL,
  `aras` varchar(11) NOT NULL,
  `blok` varchar(11) DEFAULT NULL,
  `bloks` varchar(20) NOT NULL,
  `keytag` varchar(30) NOT NULL,
  `meja` varchar(30) NOT NULL,
  `almari` varchar(30) NOT NULL,
  `kerusi` varchar(30) NOT NULL,
  `katil` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `roomno`, `aras`, `blok`, `bloks`, `keytag`, `meja`, `almari`, `kerusi`, `katil`) VALUES
(39, '700', '1', 'A3', '', 'B', 'AMC10-A1-0920', 'ASD10-A1-1120', 'SDF09-A1-9090', 'ASM40-A1-0013'),
(40, '700', '2', 'A3', '', 'C', 'AMC10-A1-0920', 'ASD10-A1-1120', 'SDF09-A1-9090', 'ASM40-A1-0013'),
(41, '11', '3', 'A3', '', 'A', 'AMC10-A1-0920', 'ASD10-A1-1120', 'SDF09-A1-9090', 'ASM40-A1-0013');

-- --------------------------------------------------------

--
-- Table structure for table `keytag`
--

CREATE TABLE `keytag` (
  `idkey` int(11) NOT NULL,
  `label` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `keytag`
--

INSERT INTO `keytag` (`idkey`, `label`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C'),
(4, 'D');

-- --------------------------------------------------------

--
-- Table structure for table `logkey`
--

CREATE TABLE `logkey` (
  `id` int(6) UNSIGNED NOT NULL,
  `CardNumber` double DEFAULT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `SerialNumber` double NOT NULL,
  `DateLog` date DEFAULT NULL,
  `TimeIn` time DEFAULT NULL,
  `TimeOut` time DEFAULT NULL,
  `UserStat` varchar(100) NOT NULL,
  `building_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logkey`
--

INSERT INTO `logkey` (`id`, `CardNumber`, `Name`, `SerialNumber`, `DateLog`, `TimeIn`, `TimeOut`, `UserStat`, `building_number`) VALUES
(1, 243741783, 'hafiz', 0, '2020-11-16', '05:06:26', NULL, '', 0),
(2, 243741783, 'hafiz', 0, '2020-11-16', '05:08:03', NULL, '', 0),
(3, 243741783, 'hafiz', 0, '2020-11-16', '05:53:11', NULL, '', 0),
(4, 243741783, 'hafiz', 0, '2020-11-16', '05:53:22', NULL, '', 0),
(5, 1313014264, 'hafiz', 1313014264, '2020-11-16', '06:26:09', NULL, '', 0),
(6, 1313014264, 'hafiz', 1313014264, '2020-11-16', '06:26:26', NULL, '', 0),
(7, 1313014264, 'hafiz', 1313014264, '2020-11-16', '06:28:35', NULL, '', 0),
(8, 1313014264, 'hafiz', 1313014264, '2020-11-16', '06:31:41', NULL, '', 0),
(9, 1313014264, 'hafiz', 1313014264, '2020-11-16', '06:36:09', NULL, '', 0),
(10, 243741783, 'hafiz', 0, '2020-11-16', '06:39:19', NULL, '', 0),
(11, 8797201166, 'Hafiz', 8797201166, '2020-11-16', '08:29:56', NULL, '', 0),
(12, 8797201166, 'Hafiz', 8797201166, '2020-11-16', '08:31:43', NULL, '', 0),
(13, 8797201166, 'Hafiz', 8797201166, '2020-11-16', '08:33:37', NULL, '', 0),
(14, 8797201166, 'Hafiz', 8797201166, '2020-11-16', '08:41:27', NULL, '', 0),
(15, 8797201166, 'Hafiz', 8797201166, '2020-11-16', '08:41:43', NULL, '', 0),
(16, 8797201166, 'Hafiz', 8797201166, '2020-11-16', '08:43:22', NULL, '', 0),
(17, 8797201166, 'Hafiz', 8797201166, '2020-11-16', '08:43:31', NULL, '', 0),
(18, 8797201166, 'Hafiz', 8797201166, '2020-11-16', '08:44:24', NULL, '', 0),
(19, 8797201166, 'Hafiz', 8797201166, '2020-11-16', '08:44:41', NULL, '', 0),
(20, 8797201166, 'Hafiz', 8797201166, '2020-11-16', '08:46:10', NULL, '', 0),
(21, 8797201166, 'Hafiz', 8797201166, '2020-11-16', '08:46:33', NULL, '', 0),
(22, 8797201166, 'Hafiz', 8797201166, '2020-11-16', '08:46:50', NULL, '', 0),
(23, 8797201166, 'Hafiz', 8797201166, '2020-11-16', '08:47:09', NULL, '', 0),
(24, 8797201166, 'Hafiz', 8797201166, '2020-11-16', '08:47:43', NULL, '', 0),
(25, 8797201166, 'Hafiz', 8797201166, '2020-11-16', '08:48:01', NULL, '', 0),
(26, 8797201166, 'Hafiz', 8797201166, '2020-11-16', '08:48:18', NULL, '', 0),
(27, 8797201166, 'Hafiz', 8797201166, '2020-11-16', '08:48:34', NULL, '', 0),
(28, 8797201166, 'Hafiz', 8797201166, '2020-11-16', '08:49:08', NULL, '', 0),
(29, 8797201166, 'Hafiz', 8797201166, '2020-11-16', '08:49:23', NULL, '', 0),
(30, 8797201166, 'Hafiz', 8797201166, '2020-11-16', '08:50:13', NULL, '', 0),
(31, 8797201166, 'Hafiz', 8797201166, '2020-11-16', '08:50:43', NULL, '', 0),
(32, 8797201166, 'Hafiz', 8797201166, '2020-11-16', '08:50:53', NULL, '', 0),
(33, 8797201166, 'Hafiz', 8797201166, '2020-11-16', '08:51:14', NULL, '', 0),
(34, 8797201166, 'Hafiz', 8797201166, '2020-11-16', '08:51:34', NULL, '', 0),
(35, 8797201166, 'Hafiz', 8797201166, '2020-11-16', '08:51:53', NULL, '', 0),
(36, 8797201166, 'Hafiz', 8797201166, '2020-11-16', '08:52:27', NULL, '', 0),
(37, 8797201166, 'Hafiz', 8797201166, '2020-11-16', '08:52:48', NULL, '', 0),
(38, 8797201166, 'Hafiz', 8797201166, '2020-11-16', '08:53:05', NULL, '', 0),
(39, 8797201166, 'Hafiz', 8797201166, '2020-11-16', '08:53:37', NULL, '', 0),
(40, 8797201166, 'Hafiz', 8797201166, '2020-11-16', '08:54:25', NULL, '', 0),
(41, 8797201166, 'Hafiz', 8797201166, '2020-11-16', '08:55:14', NULL, '', 0),
(42, 8797201166, 'Hafiz', 8797201166, '2020-11-16', '08:55:48', NULL, '', 0),
(43, 8797201166, 'Hafiz', 8797201166, '2020-11-16', '08:57:40', NULL, '', 0),
(44, 8797201166, 'Hafiz', 8797201166, '2020-11-16', '09:00:57', NULL, '', 0),
(45, 1852288179, 'zzz', 1852288179, '2020-11-16', '11:20:47', NULL, '', 0),
(46, 1852288179, 'zzz', 1852288179, '2020-11-16', '11:21:18', NULL, '', 0),
(47, 1852288179, 'zzz', 1852288179, '2020-11-16', '11:21:47', NULL, '', 0),
(48, 1852288179, 'zzz', 1852288179, '2020-11-16', '11:22:32', NULL, '', 0),
(49, 8797201166, 'Hafiz', 8797201166, '2020-11-16', '12:31:49', NULL, '', 0),
(50, 8797201166, 'Hafiz', 8797201166, '2020-11-16', '12:33:19', NULL, '', 0),
(51, 8797201166, 'Hafiz', 8797201166, '2020-11-16', '12:34:01', NULL, '', 0),
(52, 8797201166, 'Hafiz', 8797201166, '2020-11-16', '12:34:46', NULL, '', 0),
(53, 8797201166, 'Hafiz', 8797201166, '2020-11-16', '12:35:09', NULL, '', 0),
(54, 8797201166, 'Hafiz', 8797201166, '2020-11-16', '12:35:35', NULL, '', 0),
(55, 8797201166, 'Hafiz', 8797201166, '2020-11-16', '12:36:34', NULL, '', 0),
(56, 8797201166, 'Hafiz', 8797201166, '2020-11-16', '12:41:31', NULL, '', 0),
(57, 8797201166, 'Hafiz', 8797201166, '2020-11-16', '12:41:56', NULL, '', 0),
(58, 8797201166, 'Hafiz', 8797201166, '2020-11-16', '12:42:21', NULL, '', 0),
(59, 8797201166, 'Hafiz', 8797201166, '2020-11-16', '12:42:55', NULL, '', 0),
(60, 8797201166, 'Hafiz', 8797201166, '2020-11-16', '12:59:37', NULL, '', 0),
(61, 14414417150, 'Muhammad Hafiz', 14414417150, '2020-11-17', '05:40:40', NULL, '', 0),
(62, 14414417150, 'Muhammad Hafiz', 14414417150, '2020-11-17', '05:40:52', NULL, '', 0),
(63, 14414417150, 'Muhammad Hafiz', 14414417150, '2020-11-17', '05:41:32', NULL, '', 0),
(64, 14414417150, 'Muhammad Hafiz', 14414417150, '2020-11-17', '05:42:12', NULL, '', 0),
(65, 14414417150, 'Muhammad  Hafiz', 14414417150, '2020-11-17', '07:01:11', NULL, '', 0),
(66, 14414417150, 'Muhammad  Hafiz', 14414417150, '2020-11-17', '07:25:52', NULL, '', 0),
(67, 14414417150, 'Muhammad  Hafiz', 14414417150, '2020-11-17', '07:28:00', NULL, '', 0),
(68, 14414417150, 'Muhammad  Hafiz', 14414417150, '2020-11-17', '07:28:18', NULL, '', 0),
(69, 14414417150, 'Muhammad  Hafiz', 14414417150, '2020-11-17', '07:28:34', NULL, '', 0),
(70, 14414417150, 'Muhammad  Hafiz', 14414417150, '2020-11-17', '07:28:44', NULL, '', 0),
(71, 14414417150, 'Muhammad  Hafiz', 14414417150, '2020-11-17', '07:29:09', NULL, '', 0),
(72, 14414417150, 'Muhammad  Hafiz', 14414417150, '2020-11-17', '07:30:12', NULL, '', 0),
(73, 14414417150, 'Muhammad  Hafiz', 14414417150, '2020-11-17', '07:33:14', NULL, '', 0),
(74, 14414417150, 'Muhammad  Hafiz', 14414417150, '2020-11-17', '07:33:24', NULL, '', 0),
(75, 14414417150, 'Muhammad  Hafiz', 14414417150, '2020-11-17', '07:34:45', NULL, '', 0),
(76, 14414417150, 'Muhammad  Hafiz', 14414417150, '2020-11-17', '07:34:57', NULL, '', 0),
(77, 14414417150, 'Muhammad  Hafiz', 14414417150, '2020-11-17', '07:35:08', NULL, '', 0),
(78, 14414417150, 'Muhammad  Hafiz', 14414417150, '2020-11-17', '07:35:45', NULL, '', 0),
(79, 14414417150, 'Muhammad  Hafiz', 14414417150, '2020-11-17', '07:36:43', NULL, '', 0),
(80, 14414417150, 'Muhammad  Hafiz', 14414417150, '2020-11-17', '07:37:23', NULL, '', 0),
(81, 14414417150, 'Muhammad  Hafiz', 14414417150, '2020-11-17', '07:39:13', NULL, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(6) UNSIGNED NOT NULL,
  `CardNumber` double DEFAULT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `SerialNumber` double NOT NULL,
  `DateLog` date DEFAULT NULL,
  `TimeIn` time DEFAULT NULL,
  `TimeOut` time DEFAULT NULL,
  `UserStat` varchar(100) NOT NULL,
  `building_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `rfid` varchar(30) NOT NULL,
  `roomno` varchar(30) NOT NULL,
  `aras` varchar(11) NOT NULL,
  `blok` text NOT NULL,
  `meja` varchar(30) NOT NULL,
  `katil` varchar(30) NOT NULL,
  `almari` varchar(30) NOT NULL,
  `kerusi` varchar(30) NOT NULL,
  `keytag` varchar(3) NOT NULL,
  `stayfrom` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `course` varchar(500) DEFAULT NULL,
  `regno` varchar(30) DEFAULT NULL,
  `firstName` varchar(500) DEFAULT NULL,
  `lastName` varchar(500) DEFAULT NULL,
  `gender` varchar(250) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `emailid` varchar(500) DEFAULT NULL,
  `egycontactno` bigint(11) DEFAULT NULL,
  `guardianName` varchar(500) DEFAULT NULL,
  `guardianRelation` varchar(500) DEFAULT NULL,
  `guardianContactno` bigint(11) DEFAULT NULL,
  `corresAddress` varchar(500) DEFAULT NULL,
  `corresCIty` varchar(500) DEFAULT NULL,
  `corresState` varchar(500) DEFAULT NULL,
  `corresPincode` int(11) DEFAULT NULL,
  `pmntAddress` varchar(500) DEFAULT NULL,
  `pmntCity` varchar(500) DEFAULT NULL,
  `pmnatetState` varchar(500) DEFAULT NULL,
  `pmntPincode` int(11) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(500) DEFAULT NULL,
  `CardID` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `rfid`, `roomno`, `aras`, `blok`, `meja`, `katil`, `almari`, `kerusi`, `keytag`, `stayfrom`, `duration`, `course`, `regno`, `firstName`, `lastName`, `gender`, `contactno`, `emailid`, `egycontactno`, `guardianName`, `guardianRelation`, `guardianContactno`, `corresAddress`, `corresCIty`, `corresState`, `corresPincode`, `pmntAddress`, `pmntCity`, `pmnatetState`, `pmntPincode`, `postingDate`, `updationDate`, `CardID`) VALUES
(38, '', '7', '', '', 'AMC10-A1-0920', 'ASM40-A1-0013', 'ASD10-A1-1120', 'SDF09-A1-9090', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-29 02:58:07', NULL, 0),
(39, '', '3', '', '', 'AAS23-A3-1411', 'FTK11-A4-1453', 'QQR21-A4-3104', 'MMQ11-A1-1543', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-29 04:03:45', NULL, 0),
(40, '', '7', '', '', 'AMC10-A1-0920', 'ASM40-A1-0013', 'ASD10-A1-1120', 'SDF09-A1-9090', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-01 09:37:25', NULL, 0),
(41, '', '7', '', '', 'AMC10-A1-0920', 'ASM40-A1-0013', 'ASD10-A1-1120', 'SDF09-A1-9090', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-03 19:07:22', NULL, 0),
(64, '', '3', '5', 'A3', 'AAS23-A3-1411', 'FTK11-A4-1453', 'QQR21-A4-3104', 'MMQ11-A1-1543', 'B', NULL, NULL, NULL, '18DDT18F1000', 'Nurul', 'Izzah', NULL, 184233458, 'izzah@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-16 21:43:13', NULL, 0),
(69, '', '11', '3', 'A4', 'RFQ23-A4-3104', 'QQR21-A4-3104', 'QQR21-A4-3104', 'KLS77-A4-3104', 'A', NULL, NULL, NULL, '18DDT18F1034', 'Muhammad', ' Hafiz', NULL, 182674123, 'hafiz@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-17 00:07:51', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(50) NOT NULL,
  `matric_number` varchar(30) NOT NULL,
  `meja` varchar(30) NOT NULL,
  `rooms` varchar(50) NOT NULL,
  `keytag` varchar(5) NOT NULL,
  `room_no` varchar(20) NOT NULL,
  `aras` int(11) NOT NULL,
  `blok` varchar(11) NOT NULL,
  `katil` varchar(30) NOT NULL,
  `almari` varchar(30) DEFAULT NULL,
  `kerusi` varchar(30) DEFAULT NULL,
  `posting_date` timestamp NULL DEFAULT current_timestamp(),
  `CardID` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `matric_number`, `meja`, `rooms`, `keytag`, `room_no`, `aras`, `blok`, `katil`, `almari`, `kerusi`, `posting_date`, `CardID`) VALUES
(1, '18DDT18F1034', 'RFQ23-A4-3104', '2', 'A', '11', 3, 'A4', 'QQR21-A4-3104', 'QQR21-A4-3104', 'KLS77-A4-3104', '2020-10-22 20:02:00', 14414417150),
(2, '18DDT18F1030', 'JJH23-A1-4341', '2', 'A', '2', 4, 'B7', 'TN21-A1-0001', 'LLM11-A1-4322', 'MMQ11-A1-4789', '2020-10-22 20:10:00', 243741783),
(3, '18DDT18F1172', 'AAS23-A3-1411', '2', 'A', '11', 3, 'A4', 'FTK11-A4-1453', 'QQR21-A4-3104', 'MMQ11-A1-1543', '2020-10-22 20:21:30', 0),
(4, '18DDT18F1000', 'AAS23-A3-1411', '2', 'B', '3', 5, 'A3', 'FTK11-A4-1453', 'QQR21-A4-3104', 'MMQ11-A1-1543', '2020-10-22 20:22:39', 8797201166),
(5, '18DVS1F1030', 'HJH23-A4-7000', '4', 'A', '4', 0, '', 'JJK21-B4-4332', 'WER21-A4-1002', 'MMQ11-A1-1111', '2020-10-22 20:23:09', 0),
(6, '18DTK18F1234', 'HJH23-A4-7000', '2', 'D', '4', 0, '', 'JJK21-B4-4332', 'WER21-A4-1002', 'MMQ11-A1-1111', '2020-10-22 20:23:55', 0),
(7, '18DVS18F1390', 'RFQ23-A4-3104', '2', 'A', '1', 0, '', 'QQR21-A4-3104', 'QQR21-A4-3104', 'KLS77-A4-3104', '2020-10-22 20:28:09', 0),
(8, '18DDT18F1111', 'AMC10-A1-0920', '2', 'A', '7', 3, 'B3', 'ASM40-A1-0013', 'ASD10-A1-1120', 'SDF09-A1-9090', '2020-10-23 03:59:01', 0),
(9, '18DTK188F1466', 'AMC10-A1-0920AMC10-A1-0920', '2', 'BC', '999', 0, '', 'ASM40-A1-0013ASM40-A1-0013', 'ASD10-A1-1120ASD10-A1-1120', 'SDF09-A1-9090SDF09-A1-9090', '2020-11-15 14:21:22', 0);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `username`, `email`, `password`, `reg_date`, `updation_date`) VALUES
(1, 'warden', 'warden@gmail.com', 'warden', '2020-10-06 21:04:58', '2020-10-07');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `State` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `State`) VALUES
(1, 'Johor'),
(2, 'Kedah'),
(3, 'Kelantan'),
(4, 'Kuala Lumpur'),
(5, 'Labuan'),
(6, 'Melaka'),
(7, 'Negeri Sembilan'),
(8, 'Pahang'),
(9, 'Perak'),
(10, 'Perlis'),
(11, 'Pulau Penang'),
(12, 'Sabah'),
(13, 'Serawak'),
(14, 'Selangor');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userIp` varbinary(16) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userId`, `userEmail`, `userIp`, `city`, `country`, `loginTime`) VALUES
(6, 3, '10806121', 0x3a3a31, '', '', '2020-07-20 14:56:45'),
(7, 4, 'hafiz@gmail.com', 0x3a3a31, '', '', '2020-09-17 16:00:30'),
(8, 5, 'izzah@gmail.com', 0x3a3a31, '', '', '2020-09-17 16:08:17'),
(9, 4, 'hafiz@gmail.com', 0x3a3a31, '', '', '2020-09-26 15:22:47'),
(10, 6, 'hafizrubic@gmail.com', 0x3a3a31, '', '', '2020-09-26 15:24:43'),
(11, 6, 'hafizrubic@gmail.com', 0x3a3a31, '', '', '2020-09-27 08:24:11'),
(12, 7, 'naim@gmail.com', 0x3a3a31, '', '', '2020-09-27 08:34:06'),
(13, 7, '18DDT18F1123', 0x3a3a31, '', '', '2020-09-27 08:52:41'),
(14, 7, 'naim@gmail.com', 0x3a3a31, '', '', '2020-09-27 08:52:59'),
(15, 6, 'hafizrubic@gmail.com', 0x3a3a31, '', '', '2020-09-27 18:56:10'),
(16, 7, 'naim@gmail.com', 0x3a3a31, '', '', '2020-09-27 18:59:09'),
(17, 7, 'naim@gmail.com', 0x3a3a31, '', '', '2020-09-28 15:57:23'),
(18, 7, 'naim@gmail.com', 0x3a3a31, '', '', '2020-09-28 19:35:35'),
(19, 7, 'naim@gmail.com', 0x3a3a31, '', '', '2020-09-29 12:04:13'),
(20, 7, 'naim@gmail.com', 0x3a3a31, '', '', '2020-10-03 18:02:17'),
(21, 7, 'naim@gmail.com', 0x3a3a31, '', '', '2020-10-03 20:03:18'),
(22, 7, 'naim@gmail.com', 0x3a3a31, '', '', '2020-10-04 18:09:43'),
(23, 7, 'naim@gmail.com', 0x3a3a31, '', '', '2020-10-04 18:10:24'),
(24, 7, 'naim@gmail.com', 0x3a3a31, '', '', '2020-10-04 18:30:09'),
(25, 7, 'naim@gmail.com', 0x3a3a31, '', '', '2020-10-06 18:59:53'),
(26, 7, 'naim@gmail.com', 0x3139322e3136382e302e313137, '', '', '2020-10-06 20:06:40'),
(27, 7, 'naim@gmail.com', 0x3139322e3136382e302e313137, '', '', '2020-10-06 20:13:49'),
(28, 7, 'naim@gmail.com', 0x3a3a31, '', '', '2020-10-09 04:47:46'),
(29, 7, 'naim@gmail.com', 0x3137322e32302e31302e31, '', '', '2020-10-12 14:17:07'),
(30, 7, 'naim@gmail.com', 0x3a3a31, '', '', '2020-10-12 18:17:53'),
(31, 7, 'naim@gmail.com', 0x3a3a31, '', '', '2020-10-13 10:42:19'),
(32, 7, 'naim@gmail.com', 0x3a3a31, '', '', '2020-10-13 18:28:39'),
(33, 7, 'naim@gmail.com', 0x3a3a31, '', '', '2020-10-13 18:30:42'),
(34, 7, 'naim@gmail.com', 0x3137322e32302e31302e31, '', '', '2020-10-13 19:34:54'),
(35, 8, 'lala@gmail.com', 0x3a3a31, '', '', '2020-10-13 21:06:36'),
(36, 8, 'lala@gmail.com', 0x3a3a31, '', '', '2020-10-13 21:32:03'),
(37, 7, 'naim@gmail.com', 0x3a3a31, '', '', '2020-10-14 17:13:09'),
(38, 7, 'naim@gmail.com', 0x3a3a31, '', '', '2020-10-15 14:49:43'),
(39, 7, 'naim@gmail.com', 0x3a3a31, '', '', '2020-10-15 15:31:03'),
(40, 7, 'naim@gmail.com', 0x3a3a31, '', '', '2020-10-15 16:04:31'),
(41, 7, 'naim@gmail.com', 0x3a3a31, '', '', '2020-10-15 17:29:24'),
(42, 7, 'naim@gmail.com', 0x3a3a31, '', '', '2020-10-15 17:29:35'),
(43, 7, 'naim@gmail.com', 0x3a3a31, '', '', '2020-10-15 19:05:05'),
(44, 9, '18DDT18F1122', 0x3a3a31, '', '', '2020-10-15 19:22:46'),
(45, 7, 'naim@gmail.com', 0x3a3a31, '', '', '2020-10-17 15:52:17'),
(46, 7, 'naim@gmail.com', 0x3a3a31, '', '', '2020-10-17 15:57:35'),
(47, 7, 'naim@gmail.com', 0x3a3a31, '', '', '2020-10-17 19:12:34'),
(48, 7, 'naim@gmail.com', 0x3a3a31, '', '', '2020-10-17 19:17:54'),
(49, 7, 'naim@gmail.com', 0x3a3a31, '', '', '2020-10-18 07:35:45'),
(50, 7, 'naim@gmail.com', 0x3a3a31, '', '', '2020-10-18 07:45:16'),
(51, 7, 'naim@gmail.com', 0x3a3a31, '', '', '2020-10-18 09:59:42'),
(52, 8, 'lala@gmail.com', 0x3a3a31, '', '', '2020-10-18 10:07:50'),
(53, 8, 'lala@gmail.com', 0x3a3a31, '', '', '2020-10-20 07:55:28'),
(54, 7, 'naim@gmail.com', 0x3a3a31, '', '', '2020-10-20 13:44:20'),
(55, 8, 'lala@gmail.com', 0x3a3a31, '', '', '2020-10-20 13:44:44'),
(56, 7, 'naim@gmail.com', 0x3a3a31, '', '', '2020-10-20 17:13:33'),
(57, 8, 'lala@gmail.com', 0x3a3a31, '', '', '2020-10-20 17:14:01'),
(58, 8, 'lala@gmail.com', 0x3a3a31, '', '', '2020-10-20 20:07:24'),
(59, 7, 'naim@gmail.com', 0x3a3a31, '', '', '2020-10-20 22:49:24'),
(60, 7, 'naim@gmail.com', 0x3a3a31, '', '', '2020-10-21 02:29:19'),
(61, 8, 'lala@gmail.com', 0x3a3a31, '', '', '2020-10-22 12:46:05'),
(62, 8, 'lala@gmail.com', 0x3a3a31, '', '', '2020-10-22 18:43:56'),
(63, 10, 'izzah123@gmail.com', 0x3a3a31, '', '', '2020-10-22 18:58:37'),
(64, 4, 'hafiz@gmail.com', 0x3a3a31, '', '', '2020-10-22 19:41:39'),
(65, 1, 'hafiz@gmail.com', 0x3a3a31, '', '', '2020-10-22 19:47:45'),
(66, 2, 'shareen@gmail.com', 0x3a3a31, '', '', '2020-10-22 20:10:45'),
(67, 5, 'Afif@gmaill.com', 0x3a3a31, '', '', '2020-10-22 20:25:31'),
(68, 6, 'irfan@gmail.com', 0x3139322e3136382e34332e313134, '', '', '2020-10-22 20:26:15'),
(69, 6, 'Irfan@gmail.com', 0x3139322e3136382e34332e313134, '', '', '2020-10-22 20:28:44'),
(70, 7, 'liski@gmail.com', 0x3139322e3136382e34332e313134, '', '', '2020-10-22 20:32:44'),
(71, 8, 'raja@gmail.com', 0x3139322e3136382e34332e31, '', '', '2020-10-22 20:40:43'),
(72, 8, 'raja@gmail.com', 0x3a3a31, '', '', '2020-10-23 01:56:56'),
(73, 10, 'izzah123@gmail.com', 0x3a3a31, '', '', '2020-10-23 03:52:01'),
(74, 10, 'izzah123@gmail.com', 0x3a3a31, '', '', '2020-10-23 03:52:49'),
(75, 9, 'fizi@gmail.com', 0x3a3a31, '', '', '2020-10-23 03:53:29'),
(76, 10, 'izzah123@gmail.com', 0x3a3a31, '', '', '2020-10-24 19:20:51'),
(77, 10, 'izzah123@gmail.com', 0x3a3a31, '', '', '2020-10-24 20:18:17'),
(78, 8, 'raja@gmail.com', 0x3a3a31, '', '', '2020-10-24 20:37:25'),
(79, 3, 'akif@gmail.com', 0x3a3a31, '', '', '2020-10-24 20:39:50'),
(80, 3, 'akif@gmail.com', 0x3137322e32302e31302e31, '', '', '2020-10-25 14:59:00'),
(81, 10, 'izzah123@gmail.com', 0x3a3a31, '', '', '2020-10-26 13:15:29'),
(82, 3, 'akif@gmail.com', 0x3a3a31, '', '', '2020-10-26 15:06:45'),
(83, 10, 'izzah123@gmail.com', 0x3a3a31, '', '', '2020-10-26 18:34:15'),
(84, 10, 'izzah123@gmail.com', 0x3a3a31, '', '', '2020-10-26 19:48:42'),
(85, 10, 'izzah123@gmail.com', 0x3a3a31, '', '', '2020-10-28 07:50:15'),
(86, 10, 'izzah123@gmail.com', 0x3a3a31, '', '', '2020-10-28 07:51:38'),
(87, 10, 'izzah123@gmail.com', 0x3a3a31, '', '', '2020-10-29 02:38:20'),
(88, 10, 'izzah123@gmail.com', 0x3a3a31, '', '', '2020-10-29 03:49:46'),
(89, 10, 'izzah123@gmail.com', 0x3a3a31, '', '', '2020-10-29 03:51:53'),
(90, 10, 'izzah123@gmail.com', 0x3a3a31, '', '', '2020-10-29 03:53:03'),
(91, 10, 'izzah123@gmail.com', 0x3a3a31, '', '', '2020-10-29 03:57:35'),
(92, 10, 'izzah123@gmail.com', 0x3a3a31, '', '', '2020-10-29 03:58:20'),
(93, 10, 'izzah123@gmail.com', 0x3a3a31, '', '', '2020-10-29 04:00:22'),
(94, 8, 'raja@gmail.com', 0x3a3a31, '', '', '2020-10-29 04:00:37'),
(95, 5, 'Afif@gmaill.com', 0x3a3a31, '', '', '2020-10-29 04:01:18'),
(96, 4, 'izzah@gmail.com', 0x3a3a31, '', '', '2020-10-29 04:02:52'),
(97, 4, 'izzah@gmail.com', 0x3a3a31, '', '', '2020-10-29 04:07:06'),
(98, 10, 'izzah123@gmail.com', 0x3a3a31, '', '', '2020-10-29 04:24:38'),
(99, 10, 'izzah123@gmail.com', 0x3a3a31, '', '', '2020-11-01 09:37:13'),
(100, 10, 'izzah123@gmail.com', 0x3a3a31, '', '', '2020-11-01 09:37:14'),
(101, 10, 'izzah123@gmail.com', 0x3a3a31, '', '', '2020-11-03 19:01:03'),
(102, 10, 'izzah123@gmail.com', 0x3a3a31, '', '', '2020-11-14 17:00:12'),
(103, 10, 'izzah123@gmail.com', 0x3a3a31, '', '', '2020-11-14 17:41:33'),
(104, 10, 'izzah123@gmail.com', 0x3a3a31, '', '', '2020-11-14 17:46:59'),
(105, 10, 'izzah123@gmail.com', 0x3a3a31, '', '', '2020-11-14 17:47:55'),
(106, 8, 'raja@gmail.com', 0x3a3a31, '', '', '2020-11-14 17:51:43'),
(107, 8, 'raja@gmail.com', 0x3a3a31, '', '', '2020-11-14 17:53:02'),
(108, 10, 'izzah123@gmail.com', 0x3a3a31, '', '', '2020-11-14 17:55:51'),
(109, 10, 'izzah123@gmail.com', 0x3a3a31, '', '', '2020-11-15 00:21:49'),
(110, 10, 'izzah123@gmail.com', 0x3a3a31, '', '', '2020-11-15 01:14:48'),
(111, 10, 'izzah123@gmail.com', 0x3a3a31, '', '', '2020-11-15 03:32:45'),
(112, 10, 'izzah123@gmail.com', 0x3a3a31, '', '', '2020-11-15 03:51:24'),
(113, 10, 'izzah123@gmail.com', 0x3a3a31, '', '', '2020-11-15 03:52:24'),
(114, 10, 'izzah123@gmail.com', 0x3a3a31, '', '', '2020-11-15 04:09:33'),
(115, 10, 'izzah123@gmail.com', 0x3a3a31, '', '', '2020-11-15 04:09:45'),
(116, 10, 'izzah123@gmail.com', 0x3a3a31, '', '', '2020-11-15 04:12:51'),
(117, 10, 'izzah123@gmail.com', 0x3a3a31, '', '', '2020-11-15 13:46:40'),
(118, 10, 'izzah123@gmail.com', 0x3a3a31, '', '', '2020-11-15 13:47:02'),
(119, 10, 'izzah123@gmail.com', 0x3a3a31, '', '', '2020-11-15 13:50:29'),
(120, 10, 'izzah123@gmail.com', 0x3a3a31, '', '', '2020-11-15 13:50:29'),
(121, 10, 'izzah123@gmail.com', 0x3a3a31, '', '', '2020-11-15 13:50:30'),
(122, 10, 'izzah123@gmail.com', 0x3a3a31, '', '', '2020-11-15 13:50:31'),
(123, 10, 'izzah123@gmail.com', 0x3a3a31, '', '', '2020-11-15 13:50:53'),
(124, 10, 'izzah123@gmail.com', 0x3a3a31, '', '', '2020-11-15 13:51:27'),
(125, 10, 'izzah123@gmail.com', 0x3a3a31, '', '', '2020-11-15 13:51:48'),
(126, 10, 'izzah123@gmail.com', 0x3a3a31, '', '', '2020-11-15 13:51:58'),
(127, 10, 'izzah123@gmail.com', 0x3a3a31, '', '', '2020-11-15 13:54:27'),
(128, 10, 'izzah123@gmail.com', 0x3a3a31, '', '', '2020-11-15 13:54:38'),
(129, 10, 'izzah123@gmail.com', 0x3a3a31, '', '', '2020-11-15 13:55:21'),
(130, 10, 'izzah123@gmail.com', 0x3a3a31, '', '', '2020-11-15 13:55:51'),
(131, 10, 'izzah123@gmail.com', 0x3a3a31, '', '', '2020-11-15 13:56:49'),
(132, 10, 'izzah123@gmail.com', 0x3a3a31, '', '', '2020-11-15 13:57:28'),
(133, 10, 'izzah123@gmail.com', 0x3a3a31, '', '', '2020-11-15 13:57:45'),
(134, 10, 'izzah123@gmail.com', 0x3a3a31, '', '', '2020-11-15 13:58:34'),
(135, 10, 'izzah123@gmail.com', 0x3a3a31, '', '', '2020-11-15 14:01:10'),
(136, 10, 'izzah123@gmail.com', 0x3a3a31, '', '', '2020-11-15 14:01:22'),
(137, 10, 'izzah123@gmail.com', 0x3a3a31, '', '', '2020-11-15 14:09:02'),
(138, 9, 'fizi@gmail.com', 0x3a3a31, '', '', '2020-11-15 14:20:35'),
(139, 9, 'Fizi@gmail.com', 0x3137322e32302e31302e34, '', '', '2020-11-15 14:50:03'),
(140, 9, 'fizi@gmail.com', 0x3a3a31, '', '', '2020-11-15 15:25:55'),
(141, 9, 'fizi@gmail.com', 0x3a3a31, '', '', '2020-11-15 21:02:50'),
(142, 9, 'fizi@gmail.com', 0x3a3a31, '', '', '2020-11-15 23:15:50'),
(143, 8, 'raja@gmail.com', 0x3a3a31, '', '', '2020-11-15 23:39:42'),
(144, 3, 'akif@gmail.com', 0x3a3a31, '', '', '2020-11-15 23:40:22'),
(145, 9, 'fizi@gmail.com', 0x3a3a31, '', '', '2020-11-16 03:53:56'),
(146, 1, '18DDT18F1034', 0x3a3a31, '', '', '2020-11-16 19:16:03'),
(147, 1, '18DDT18F1034', 0x3a3a31, '', '', '2020-11-16 19:16:11'),
(148, 1, 'hafiz@gmail.com', 0x3a3a31, '', '', '2020-11-16 19:19:21'),
(149, 1, 'hafiz@gmail.com', 0x3a3a31, '', '', '2020-11-16 19:47:41'),
(150, 1, 'hafiz@gmail.com', 0x3a3a31, '', '', '2020-11-16 20:00:43'),
(151, 1, 'hafiz@gmail.com', 0x3a3a31, '', '', '2020-11-16 20:27:25'),
(152, 1, 'hafiz@gmail.com', 0x3a3a31, '', '', '2020-11-16 21:05:26'),
(153, 1, 'hafiz@gmail.com', 0x3a3a31, '', '', '2020-11-16 21:10:49'),
(154, 1, 'hafiz@gmail.com', 0x3a3a31, '', '', '2020-11-16 21:29:14'),
(155, 1, 'hafiz@gmail.com', 0x3a3a31, '', '', '2020-11-16 21:32:33'),
(156, 4, 'izzah@gmail.com', 0x3a3a31, '', '', '2020-11-16 21:43:08'),
(157, 4, 'izzah@gmail.com', 0x3a3a31, '', '', '2020-11-16 21:43:09'),
(158, 4, 'izzah@gmail.com', 0x3a3a31, '', '', '2020-11-16 21:44:02'),
(159, 1, 'hafiz@gmail.com', 0x3a3a31, '', '', '2020-11-16 21:49:04'),
(160, 12, 'hafiz@gmail.com', 0x3a3a31, '', '', '2020-11-16 22:12:12'),
(161, 12, 'hafiz@gmail.com', 0x3a3a31, '', '', '2020-11-16 22:12:50'),
(162, 4, 'izzah@gmail.com', 0x3a3a31, '', '', '2020-11-16 22:24:55'),
(163, 13, 'hafiz@gmail.com', 0x3a3a31, '', '', '2020-11-16 22:27:32'),
(164, 13, 'hafiz@gmail.com', 0x3a3a31, '', '', '2020-11-16 22:37:56'),
(165, 13, 'hafiz@gmail.com', 0x3a3a31, '', '', '2020-11-16 22:37:56'),
(166, 13, 'hafiz@gmail.com', 0x3a3a31, '', '', '2020-11-16 22:50:38'),
(167, 13, 'hafiz@gmail.com', 0x3a3a31, '', '', '2020-11-17 00:05:49');

-- --------------------------------------------------------

--
-- Table structure for table `userlogkey`
--

CREATE TABLE `userlogkey` (
  `id` int(11) NOT NULL,
  `Ldr` int(30) NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userlogkey`
--

INSERT INTO `userlogkey` (`id`, `Ldr`, `Date`, `Time`) VALUES
(1, 102, '2020-10-05', '10:17:14'),
(2, 387, '2020-10-05', '03:31:22'),
(3, 387, '2020-10-05', '03:31:27'),
(4, 428, '2020-10-05', '03:31:33'),
(5, 427, '2020-10-05', '03:31:38'),
(6, 206, '2020-10-05', '03:31:43'),
(7, 260, '2020-10-05', '03:31:48'),
(8, 207, '2020-10-05', '03:31:53'),
(9, 192, '2020-10-05', '03:31:58'),
(10, 169, '2020-10-05', '03:32:03'),
(11, 207, '2020-10-05', '03:32:09'),
(12, 206, '2020-10-05', '03:32:14'),
(13, 208, '2020-10-05', '03:32:19'),
(14, 208, '2020-10-05', '03:32:24'),
(15, 346, '2020-10-05', '03:32:29'),
(16, 429, '2020-10-05', '03:32:34');

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

CREATE TABLE `userregistration` (
  `id` int(11) NOT NULL,
  `regNo` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `contactNo` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(45) DEFAULT NULL,
  `passUdateDate` varchar(45) DEFAULT NULL,
  `id_stud` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`id`, `regNo`, `firstName`, `lastName`, `gender`, `contactNo`, `email`, `password`, `regDate`, `updationDate`, `passUdateDate`, `id_stud`) VALUES
(2, '18DDT18F1030', 'Mohd', 'Shareen', 'male', 1912322, 'shareen@gmail.com', '12345', '2020-10-22 20:03:09', NULL, NULL, 1),
(3, '18DDT18F1172', 'Muhd', 'Akif', 'male', 13222678, 'akif@gmail.com', '12345', '2020-10-22 20:03:47', NULL, NULL, 0),
(4, '18DDT18F1000', 'Nurul', 'Izzah', 'female', 184233458, 'izzah@gmail.com', '12345', '2020-10-22 20:04:34', '29-10-2020 05:08:05', NULL, 0),
(6, '18DVS18F1390', 'muhammad ', 'irfan', 'male', 1128866755, 'irfan@gmail.com', '12345', '2020-10-22 20:21:26', NULL, NULL, 0),
(7, '18DTK18F1234', 'Shahrul', 'liski', 'male', 18765677, 'liski@gmail.com', '12345', '2020-10-22 20:22:55', NULL, NULL, 0),
(8, '18DTK18F1078', 'Muhammad ', 'Raja', 'male', 12887669, 'raja@gmail.com', '12345', '2020-10-22 20:24:10', NULL, NULL, 0),
(9, '18DTK188F1466', 'fizi', 'hafizi', 'male', 197654456, 'fizi@gmail.com', '12345', '2020-10-22 20:25:34', NULL, NULL, 0),
(13, '18DDT18F1034', 'Muhammad', ' Hafiz', 'male', 182674123, 'hafiz@gmail.com', '12345', '2020-11-16 22:25:31', '17-11-2020 06:38:14', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `SerialNumber` double NOT NULL,
  `gender` varchar(100) NOT NULL,
  `CardID` double NOT NULL,
  `CardID_select` tinyint(1) NOT NULL,
  `roomno` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `SerialNumber`, `gender`, `CardID`, `CardID_select`, `roomno`) VALUES
(1, 'Muhammad  Hafiz', 14414417150, 'male', 14414417150, 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keytag`
--
ALTER TABLE `keytag`
  ADD PRIMARY KEY (`idkey`);

--
-- Indexes for table `logkey`
--
ALTER TABLE `logkey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_no` (`room_no`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlogkey`
--
ALTER TABLE `userlogkey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userregistration`
--
ALTER TABLE `userregistration`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `keytag`
--
ALTER TABLE `keytag`
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `logkey`
--
ALTER TABLE `logkey`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT for table `userlogkey`
--
ALTER TABLE `userlogkey`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `userregistration`
--
ALTER TABLE `userregistration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
