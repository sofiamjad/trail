-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2015 at 08:07 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `botique`
--
CREATE DATABASE `botique` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `botique`;

-- --------------------------------------------------------

--
-- Table structure for table `clothes`
--

CREATE TABLE IF NOT EXISTS `clothes` (
  `cl-ID` int(15) NOT NULL,
  `Design` text NOT NULL,
  `Quantity` smallint(3) NOT NULL,
  `Brand` text NOT NULL,
  `Category` text NOT NULL,
  PRIMARY KEY (`cl-ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clothes`
--

INSERT INTO `clothes` (`cl-ID`, `Design`, `Quantity`, `Brand`, `Category`) VALUES
(1, 'new', 1, 'levis', 'abc'),
(2, 'new', 1, 'levis', 'abc');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `ccode` int(15) NOT NULL,
  `name` text NOT NULL,
  `phone#` text NOT NULL,
  PRIMARY KEY (`ccode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`ccode`, `name`, `phone#`) VALUES
(1, 'zain', '0322');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE IF NOT EXISTS `sales` (
  `Ccode` int(15) NOT NULL,
  `c-id` int(15) NOT NULL,
  `Date` date NOT NULL,
  `Price` int(11) NOT NULL,
  `Quantity` smallint(6) NOT NULL,
  `Discount` int(11) NOT NULL,
  `Amount` int(11) NOT NULL,
  PRIMARY KEY (`Ccode`,`c-id`,`Date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`Ccode`, `c-id`, `Date`, `Price`, `Quantity`, `Discount`, `Amount`) VALUES
(1, 1, '2015-06-21', 100, 1, 0, 100);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
