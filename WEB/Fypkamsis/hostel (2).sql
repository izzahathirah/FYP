-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2020 at 09:24 AM
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
(1, 'admin', 'anuj.lpu1@gmail.com', 'Test@1234', '2016-04-04 20:31:45', '2016-04-17');

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
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `roomno` varchar(30) NOT NULL,
  `meja` varchar(30) NOT NULL,
  `katil` varchar(30) NOT NULL,
  `almari` varchar(30) NOT NULL,
  `kerusi` varchar(30) NOT NULL,
  `keytag` varchar(3) NOT NULL,
  `stayfrom` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `course` varchar(500) DEFAULT NULL,
  `regno` int(11) DEFAULT NULL,
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
  `updationDate` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `roomno`, `meja`, `katil`, `almari`, `kerusi`, `keytag`, `stayfrom`, `duration`, `course`, `regno`, `firstName`, `lastName`, `gender`, `contactno`, `emailid`, `egycontactno`, `guardianName`, `guardianRelation`, `guardianContactno`, `corresAddress`, `corresCIty`, `corresState`, `corresPincode`, `pmntAddress`, `pmntCity`, `pmnatetState`, `pmntPincode`, `postingDate`, `updationDate`) VALUES
(3, '100', '5', '8000', '', '', '', '2020-09-18', 6, 'Bachelor  of Technology', 18, 'Muhammad', 'Zakaria', 'male', 182674123, 'hafiz@gmail.com', 1929101, 'zakaria', 'dad', 19273611, 'shah alam', 'shah alam', 'Andhra Pradesh', 42000, 'shah alam', 'shah alam', 'Andhra Pradesh', 42000, '2020-09-17 16:02:02', NULL),
(4, '100', '5', '60', '', '', '', '2020-09-26', 12, 'JABATAN REKA BENTUK DAN VISUAL', 18, 'Muhammad', 'fitri', 'male', 192904123, 'hafizrubic@gmail.com', 137655465, 'zakaria', 'Father', 134322434, 'shah alam', 'shah alam', 'Uttar Pradesh', 42000, 'shah alam', 'shah alam', 'Uttar Pradesh', 42000, '2020-09-26 15:26:01', NULL),
(14, 'b7', 'RFQ23-A4-3104', 'FTK11-A4-3104', 'QQR21-A4-3104', 'KLS77-A4-3104', 'A', '2020-10-14', 5, 'JABATAN PERDAGANGAN ', 18, 'Muhammad', 'hafiz', 'male', 11111111, 'naim@gmail.com', 137655465, 'zakaria', 'Father', 134322434, 'shah alam', 'shah alam', 'Pahang', 42000, 'shah alam', 'shah alam', 'Pahang', 42000, '2020-10-13 19:46:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(50) NOT NULL,
  `meja` varchar(30) NOT NULL,
  `rooms` varchar(50) NOT NULL,
  `keytag` varchar(5) NOT NULL,
  `room_no` varchar(20) NOT NULL,
  `katil` varchar(30) NOT NULL,
  `almari` varchar(30) DEFAULT NULL,
  `kerusi` varchar(30) DEFAULT NULL,
  `posting_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `meja`, `rooms`, `keytag`, `room_no`, `katil`, `almari`, `kerusi`, `posting_date`) VALUES
(1, 'RFQ23-A4-3104', '2', 'A', '22', 'QQR21-A4-3104', 'QQR21-A4-3104', 'KLS77-A4-3104', '2020-10-13 21:44:21');

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
(36, 8, 'lala@gmail.com', 0x3a3a31, '', '', '2020-10-13 21:32:03');

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
  `passUdateDate` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`id`, `regNo`, `firstName`, `lastName`, `gender`, `contactNo`, `email`, `password`, `regDate`, `updationDate`, `passUdateDate`) VALUES
(3, '10806121', 'Anuj', 'kumar', 'male', 1234567890, 'test@gmail.com', 'Test@123', '2020-07-20 14:56:18', NULL, NULL),
(4, '18DDT18F1004', 'Muhammad', 'Zakaria', 'male', 182674123, 'hafiz@gmail.com', 'ytlnetwork', '2020-09-17 15:59:54', NULL, NULL),
(5, '18DDT18F1124', 'Nuruk', 'athirah', 'male', 19233322, 'izzah@gmail.com', 'izzah', '2020-09-17 16:08:00', NULL, NULL),
(6, '18DDT18F1034', 'Muhammad', 'fitri', 'male', 192904123, 'hafizrubic@gmail.com', 'test@123', '2020-09-26 15:24:18', NULL, NULL),
(7, '18DDT18F1123', 'Muhammad', 'hafiz', 'male', 1289123, 'naim@gmail.com', '12345', '2020-09-27 08:33:50', '13-10-2020 10:30:30', '14-10-2020 02:01:09'),
(8, '18dtk18f1034', 'Nurul', 'Lala', 'female', 182734, 'lala@gmail.com', 'lala', '2020-10-13 21:04:54', NULL, NULL);

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
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `userlogkey`
--
ALTER TABLE `userlogkey`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `userregistration`
--
ALTER TABLE `userregistration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
