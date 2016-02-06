-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2013 at 05:30 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `test_multi_sets`()
    DETERMINISTIC
begin
        select user() as first_col;
        select user() as first_col, now() as second_col;
        select user() as first_col, now() as second_col, now() as third_col;
        end$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `name` varchar(50) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `sem` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobileno` varchar(20) NOT NULL,
  PRIMARY KEY (`uname`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `mobileno` (`mobileno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `uname`, `password`, `sem`, `address`, `email`, `mobileno`) VALUES
('mau', 'fsdf', '123', '5', '54645', 'ter', 'ter'),
('kumar saurabh', 'saurabh', '123456', '5', 'room no 253', 'ks.maurya10@gmail.com', '8989931108');

-- --------------------------------------------------------

--
-- Table structure for table `m1`
--

CREATE TABLE IF NOT EXISTS `m1` (
  `qno` varchar(10) NOT NULL DEFAULT '',
  `qname` varchar(300) DEFAULT NULL,
  `opt1` varchar(100) DEFAULT NULL,
  `opt2` varchar(100) DEFAULT NULL,
  `opt3` varchar(100) DEFAULT NULL,
  `opt4` varchar(100) DEFAULT NULL,
  `ans` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`qno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m1`
--

INSERT INTO `m1` (`qno`, `qname`, `opt1`, `opt2`, `opt3`, `opt4`, `ans`) VALUES
('1', 'What will be tha result of 10+20?', '10', '30', '20', 'NONE', '30'),
('2', '5+6 is equal to?................................', '5', '6', '11', '2', '11'),
('3', '8+10 is equal to?', '8', '10', '18', '4', '18'),
('4', 'name of indian pm?', 'Manmohan singh', 'Amitabh', 'Salamaan', 'Soniya', 'Manmohan singh'),
('5', '12-4 is eual to?', '12', '4', '3', '8', '8');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE IF NOT EXISTS `notice` (
  `notice` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`notice`) VALUES
('Mid Sem Exam will Start From 02-03-2014');

-- --------------------------------------------------------

--
-- Table structure for table `paper`
--

CREATE TABLE IF NOT EXISTS `paper` (
  `qno` varchar(10) NOT NULL,
  `qname` varchar(300) NOT NULL,
  `opt1` varchar(100) NOT NULL,
  `opt2` varchar(100) NOT NULL,
  `opt3` varchar(100) NOT NULL,
  `opt4` varchar(100) NOT NULL,
  `ans` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paper`
--

INSERT INTO `paper` (`qno`, `qname`, `opt1`, `opt2`, `opt3`, `opt4`, `ans`) VALUES
('1', 'cat means?', 'cat', 'dog', 'elephant', 'cow', 'bili'),
('2', '2+5 is equal to?', '7', '2', '5', '9', '7'),
('3', '8+9 is equal to?', '8', '9', '17', 'none', '17');

-- --------------------------------------------------------

--
-- Table structure for table `scode`
--

CREATE TABLE IF NOT EXISTS `scode` (
  `scode` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE IF NOT EXISTS `subjects` (
  `sname` varchar(50) NOT NULL,
  `scode` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `name` varchar(50) NOT NULL,
  `rollno` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `sem` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(70) NOT NULL,
  `mobileno` varchar(20) NOT NULL,
  PRIMARY KEY (`rollno`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `mobileno` (`mobileno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `rollno`, `password`, `sem`, `address`, `email`, `mobileno`) VALUES
('aditya', 'ipg_2011009', '12132', '5', '5465', '46556', '565'),
('kumar saurabh', 'ipg_2011053', '454646', '5', 'room no-253', 'ks.maurya10@gmail.com', '8989931108'),
('asersea', 'sear', '123', '3', 'sdgfsrg', 'sdgsdf@gmail.com', '3345645673');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
