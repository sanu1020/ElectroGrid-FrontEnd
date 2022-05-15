-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 22, 2022 at 08:39 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `CEB_info`
--

CREATE TABLE `CEB_info` (
  `mapLocationCode` varchar(10) NOT NULL,
  `addressLine1` varchar(50) NOT NULL,
  `addressLine2` varchar(50) NOT NULL,
  `city` varchar(20) NOT NULL,
  `zipCode` int(11) NOT NULL,
  `phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `CEB_info`
--

INSERT INTO `CEB_info` (`mapLocationCode`, `addressLine1`, `addressLine2`, `city`, `zipCode`, `phone`) VALUES
('WW2C+9J9', 'B47, Sri Jayawardenepura Kotte', 'Battaramulla', 'Colombo', 10120, 112864085),
('WXQ5+773', 'Welivita', '', 'Colombo', 10640, 112537975),
('XXPG+VXF', 'Makola - Udupila Rd', 'Mawaramandiya', 'Colombo', 11650, 112977185),
('WVJ9+V73', 'Maligawatte Rd', 'Colombo ', 'Colombo', 1000, 114498498),
('2X47+X2Q', 'Maladolawaththa Rd', 'Kadawatha', 'Gampaha', 11850, 112925271),
('RV6J+X8H', 'Dehiwala-Mount Lavinia', '', 'Colombo', 10350, 112625371),
('R2Q3+88W ', 'Homagama Branch, B452', 'Homagama', 'Colombo', 10206, 112855307),
('WVMJ+9JQ', 'Kent Road', 'Colombo ', 'Colombo ', 900, 112690393),
('2WQ2+MF5', 'CEB Central Workshop Rd', 'Ragama', 'Gampaha', 11010, 114356721),
('RV5V+353', 'Thelawala Rd', 'Moratuwa', 'Colombo', 10400, 777686686);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
