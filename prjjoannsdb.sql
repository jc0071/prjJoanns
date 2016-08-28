-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2016 at 05:02 PM
-- Server version: 5.7.9
-- PHP Version: 5.6.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prjjoannsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbcustomer`
--

DROP TABLE IF EXISTS `tbcustomer`;
CREATE TABLE IF NOT EXISTS `tbcustomer` (
  `CustID` varchar(500) NOT NULL,
  `InvoiceNum` varchar(500) NOT NULL,
  PRIMARY KEY (`CustID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbinvoice`
--

DROP TABLE IF EXISTS `tbinvoice`;
CREATE TABLE IF NOT EXISTS `tbinvoice` (
  `InvoiceNum` int(100) NOT NULL,
  `InvoiceDate` date NOT NULL,
  `SupplierID` varchar(10000) NOT NULL,
  `TotalCost` double NOT NULL,
  `TotalDiscount` double NOT NULL,
  `TotalPrice` double NOT NULL,
  PRIMARY KEY (`InvoiceNum`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbluseraccounts`
--

DROP TABLE IF EXISTS `tbluseraccounts`;
CREATE TABLE IF NOT EXISTS `tbluseraccounts` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `users_name` varchar(255) DEFAULT NULL,
  `userpassword` varchar(255) DEFAULT NULL,
  `usertype` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbproduct`
--

DROP TABLE IF EXISTS `tbproduct`;
CREATE TABLE IF NOT EXISTS `tbproduct` (
  `ProductCode` varchar(1000) NOT NULL,
  `ProductName` varchar(500) NOT NULL,
  PRIMARY KEY (`ProductCode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbsupplier`
--

DROP TABLE IF EXISTS `tbsupplier`;
CREATE TABLE IF NOT EXISTS `tbsupplier` (
  `SupplierID` varchar(100) NOT NULL,
  `SupplierName` varchar(100) NOT NULL,
  `SupplierAddress` varchar(100) NOT NULL,
  PRIMARY KEY (`SupplierID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
