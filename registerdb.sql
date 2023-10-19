-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2023 at 04:23 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `registerdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresstable`
--

CREATE TABLE `addresstable` (
  `Id` int(10) NOT NULL,
  `Address` text NOT NULL,
  `Country` text NOT NULL,
  `State` text NOT NULL,
  `City` text NOT NULL,
  `Zipcode` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `experiencetable`
--

CREATE TABLE `experiencetable` (
  `Id` int(10) NOT NULL,
  `OrganizationName` text DEFAULT NULL,
  `StartDate` text DEFAULT NULL,
  `EndDate` text DEFAULT NULL,
  `PositionName` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `Id` int(10) NOT NULL,
  `FirstName` text NOT NULL,
  `LastName` text NOT NULL,
  `Email` text DEFAULT NULL,
  `Phone` int(10) NOT NULL,
  `Password` text NOT NULL,
  `Dob` text NOT NULL,
  `Gender` text NOT NULL,
  `MaritalStatus` text NOT NULL,
  `HigherEducation` text NOT NULL,
  `University` text NOT NULL,
  `WorkStatus` text NOT NULL,
  `ExperienceYears` int(2) DEFAULT NULL,
  `ExperienceMonths` int(2) DEFAULT NULL,
  `ResumeHeadline` text NOT NULL,
  `KeySkills` text NOT NULL,
  `CurrentCtc` int(10) DEFAULT NULL,
  `About` text NOT NULL,
  `ResumeFileLink` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
