-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2023 at 08:34 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movie`
--

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `movie` varchar(20) NOT NULL,
  `ticketno` int(4) NOT NULL,
  `thedate` varchar(20) NOT NULL,
  `time` varchar(20) NOT NULL,
  `seatno` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`name`, `email`, `movie`, `ticketno`, `thedate`, `time`, `seatno`) VALUES
('null', 'null', 'null', 0, '', '', 0),
('null', 'null', 'null', 0, '', '', 0),
('aq', 'aq@gmail.com', 'The marvel avengers', 0, '', '', 0),
('null', 'null', 'null', 0, '', '', 0),
('Tom', 'qjqa40@gmail.com', 'The marvel avengers', 1, '2023-01-27', '9am-12am', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
