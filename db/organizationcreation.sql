-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2020 at 02:13 PM
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
-- Database: `bhargowebsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `organizationcreation`
--

CREATE TABLE `organizationcreation` (
  `id` int(11) NOT NULL,
  `Org_Name` varchar(150) DEFAULT NULL,
  `Org_Type` varchar(150) DEFAULT NULL,
  `Primary_Person_Name` varchar(100) DEFAULT NULL,
  `No_of_Employees` int(11) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Mobile_Number` varchar(10) DEFAULT NULL,
  `Fax` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `organizationcreation`
--

INSERT INTO `organizationcreation` (`id`, `Org_Name`, `Org_Type`, `Primary_Person_Name`, `No_of_Employees`, `Email`, `Mobile_Number`, `Fax`) VALUES
(1, 'blueFrog', 'software', 'Naveen', 100, 'naveen.v@bluefrogindia.net', '9966064077', '6566532255'),
(3, 'blueFrog1', 'software', 'ramesh', 200, 'rameshbluefrogindia.net', '9556122552', '85888888');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `organizationcreation`
--
ALTER TABLE `organizationcreation`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `organizationcreation`
--
ALTER TABLE `organizationcreation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
