-- phpMyAdmin SQL Dump
-- version 4.2.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 09, 2014 at 10:56 PM
-- Server version: 5.5.39-MariaDB
-- PHP Version: 5.5.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hr-system`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
`dept_id` int(11) NOT NULL,
  `dept_name` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_id`, `dept_name`) VALUES
(1, 'Information Technology\r\n'),
(2, 'Marketing\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
`emp_id` int(11) NOT NULL,
  `emp_name` varchar(200) NOT NULL,
  `emp_sal` double NOT NULL,
  `dept_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `emp_name`, `emp_sal`, `dept_id`) VALUES
(2, 'Ahemd Emam', 2000, 1),
(3, 'Karim Omar', 2000, 1),
(4, 'Ahmed Ali', 1000, 2),
(5, 'Fahmy Farahat', 3000, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
 ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
 ADD PRIMARY KEY (`emp_id`), ADD KEY `dept_id` (`dept_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
ADD CONSTRAINT `department_relation` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
