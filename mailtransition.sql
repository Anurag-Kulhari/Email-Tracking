-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2020 at 09:58 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mailtransition`
--

-- --------------------------------------------------------

--
-- Table structure for table `sender`
--

CREATE TABLE `sender` (
  `id` int(11) NOT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Body` text DEFAULT NULL,
  `File` varchar(20) DEFAULT NULL,
  `email_track_code` varchar(100) DEFAULT NULL,
  `ISseen` enum('true','false') DEFAULT NULL,
  `email_date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sender`
--

INSERT INTO `sender` (`id`, `Name`, `Email`, `Body`, `File`, `email_track_code`, `ISseen`, `email_date_time`) VALUES
(4, 'Anurag', 'anuragkulhari0376@gmail.com', 'Enter Detail here..\r\n', 'affidavitstudent.pdf', '7f78e633f247624118fe7d7dfb5d1e2d', 'false', NULL),

(49, 'Anurag', 'anuragkulhari0376@gmail.com', 'body', 'book.pdf', '2a894cf5035a0a7f1c5d517a1eec8c6f', 'false', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sender`
--
ALTER TABLE `sender`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sender`
--
ALTER TABLE `sender`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
