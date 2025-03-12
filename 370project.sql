-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2025 at 06:14 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `370project`
--

-- --------------------------------------------------------

--
-- Table structure for table `alogin`
--

CREATE TABLE `alogin` (
  `id` int(11) NOT NULL,
  `email` tinytext NOT NULL,
  `password` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `alogin`
--

INSERT INTO `alogin` (`id`, `email`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `birthday` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `nid` int(20) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `dept` varchar(100) NOT NULL,
  `degree` varchar(100) NOT NULL,
  `pic` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `firstName`, `lastName`, `email`, `password`, `birthday`, `gender`, `contact`, `nid`, `address`, `dept`, `degree`, `pic`) VALUES
(187, 'salam', 'islam', 'salam@gmail.com', '1234', '2024-09-17', 'Male', '01778456787', 123456789, 'DInajpur', 'Coding', 'BSC in CSE', 'images/no.jpg'),
(189, 'rohan', 'islam', 'rohan@gmail.com', '1234', '2024-09-18', 'Male', '9293848474', 2147483647, 'natore', 'admin', 'BSC in CSE', 'images/no.jpg'),
(190, 'nayem', 'kaisar', 'saminyasirnafi327@gamil.com', '1234', '2024-09-18', 'Male', '545454', 45454, 'bagura', 'IT', 'BSC in CSE', 'images/no.jpg'),
(191, 'tahsan ', 'islam', 'abir@gmail.com', '1234', '2024-09-18', 'Male', '9393939393', 854858585, 'khulna', 'IT', 'BSC in CSE', 'images/no.jpg'),
(194, 'rakib', 'islam', 'ajsaksj@gmail.com', '1234', '2024-09-18', 'Male', '012344343', 12345, 'khulna', 'marketing', 'PHD', 'images/no.jpg'),
(196, 'wakil', 'islam', 'shasahsha@gmail.com', '1234', '2025-02-18', 'Male', '2443434', 343434, 'khulna', 'IT', 'BSC in CSE', 'images/no.jpg'),
(198, 'nayem', 'kaisar', 'saminyasirnafi326@gamil.com', '1234', '2025-02-10', 'Female', '78787878', 98989898, 'Dhaka', 'admin', 'BSC in CSE', 'images/no.jpg'),
(199, 'nihal', 'islam', 'nihalyasirnafi@gmail.com', '1234', '2025-02-22', 'Male', '78787', 89898, 'bagura', 'IT', 'BSC in CSE', 'images/no.jpg'),
(200, 'nayem', 'chowdhury', 'saminyasir@gmail.com', '1234', '2025-02-28', 'Male', '63266363', 63635533, 'bagura', 'Coding', 'BSC in CSE', 'images/no.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `pid` int(11) NOT NULL,
  `eid` int(11) DEFAULT NULL,
  `pname` varchar(100) DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `subdate` date DEFAULT '0000-00-00',
  `mark` int(11) NOT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`pid`, `eid`, `pname`, `duedate`, `subdate`, `mark`, `status`) VALUES
(258, 187, 'make a pc', '2024-09-17', '0000-00-00', 9, 'Due'),
(259, 189, 'MISSON GOOGLE', '2024-09-18', '0000-00-00', 0, 'Due'),
(260, 190, 'make a app', '2024-09-18', '0000-00-00', 9, 'Due'),
(261, 191, 'DBMS', '2024-09-18', '2025-03-05', 9, 'Submitted'),
(262, 194, 'MISSON GOOGLE', '2024-09-18', '0000-00-00', 9, 'Due'),
(264, 196, 'MISSON america', '2025-02-19', '0000-00-00', 8, 'Due'),
(266, 199, 'MISSION FACEBOOK ', '2025-02-21', '0000-00-00', 6, 'Due'),
(269, 200, 'make a pc', '2025-03-21', '0000-00-00', 8, 'Due');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `eid` int(11) NOT NULL,
  `points` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`eid`, `points`) VALUES
(187, 0),
(189, 0),
(190, 0),
(191, 0),
(194, 0),
(196, 0),
(198, 0),
(199, 0),
(200, 0);

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `id` int(11) NOT NULL,
  `base` int(11) NOT NULL,
  `bonus` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`id`, `base`, `bonus`, `total`) VALUES
(187, 45000, 0, 45000),
(189, 45000, 0, 45000),
(190, 45000, 0, 45000),
(191, 45000, 0, 45000),
(194, 45000, 0, 45000),
(196, 450000, 0, 450000),
(198, 0, 0, 0),
(199, 0, 0, 0),
(200, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alogin`
--
ALTER TABLE `alogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `project_ibfk_1` (`eid`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alogin`
--
ALTER TABLE `alogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=270;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rank`
--
ALTER TABLE `rank`
  ADD CONSTRAINT `rank_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `salary`
--
ALTER TABLE `salary`
  ADD CONSTRAINT `salary_ibfk_1` FOREIGN KEY (`id`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
