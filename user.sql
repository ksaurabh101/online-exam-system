-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2013 at 04:14 PM
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
