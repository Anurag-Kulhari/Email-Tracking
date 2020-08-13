-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2020 at 10:07 PM
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
(12, 'ryshdhf', 'anuragkulhari0376@gmail.com', 'Enter Detail here..\r\n', 'Registration Forms_7', '52a6ae550ff6f3b25918d03569b10bcd', 'false', NULL),
(13, 'ryshdhf', 'anuragkulhari0376@gmail.com', 'Enter Detail here..\r\n', 'Registration Forms_7', '6441157f9d05bb1dcb245e00b98642c9', 'false', NULL),
(14, 'da', 'anuragkulhari0376@gmail.com', 'Enter Detail here..\r\n', 'img.jpg', '840a7d5e580e265f25fc86474e4445eb', 'false', NULL),
(15, 'da', 'anuragkulhari0376@gmail.com', 'Enter Detail here..\r\n', 'img.jpg', 'f6949c7e96b30b6ba6989000ad0bcb3d', 'false', NULL),
(16, 'dsafe', 'riya.kulhari@gmail.com', 'Enter Detail here..\r\n', 'affidavit_parent.pdf', '7d08d28035b97cf203457a581ecab99d', 'false', NULL),
(17, 'Anurag', 'riya.kulhari22@gmail.com', 'Enter Detail here..\r\n', 'Registration Forms_7', '9b0655bdd37816d7cbc21fec508196ed', 'false', NULL),
(18, 'Anurag', 'riya.kulhari22@gmail.com', 'Enter Detail here..\r\n', 'Registration Forms_7', '156dcacabbc957c99e1c7b521aedcccb', 'false', NULL),
(19, 'Anurag', 'riya.kulhari22@gmail.com', 'Enter Detail here..\r\n', 'Registration Forms_7', 'fa0181e8510adb22180a72e06635dabb', 'false', NULL),
(20, 'Anurag', 'riya.kulhari22@gmail.com', 'Enter Detail here..\r\n', 'Registration Forms_7', '9258e4eb650891a9fc8cc142741aa1fb', 'false', NULL),
(21, 'das', 'riya.kulhari22@gmail.com', 'Enter Detail here..\r\n', 'book.pdf', '2f24416cc94f33729228437a707074ff', 'false', NULL),
(22, 'Anurag', 'anuragkulhari0376@gmail.com', 'Enter Detail here..\r\n', 'affidavitstudent.pdf', 'f5c368939313fb3494fe5353c01680ec', 'false', NULL),
(23, 'ds', 'anuragkulhari0376@gmail.com', 'Enter Detail here..\r\n', 'book.pdf', '6f510ac8a4092c8144200cc2f21f85bf', 'false', NULL),
(24, 'ds', 'anuragkulhari0376@gmail.com', 'Enter Detail here..\r\n', 'book.pdf', '16a785e69fcce3728022e7b64c0bc2fe', 'false', NULL),
(25, 'Anurag', 'anuragkulhari0376@gmail.com', 'Enter Detail here..\r\n', 'chatApp.sql', '595327114409b3b8be16cd8ca4028f24', 'false', NULL),
(26, 'cj', 'anuragkulhari0376@gmail.com', 'Enter Detail here..\r\n', 'affidavit_parent.pdf', '30fc2030cc0d3fadba637186a125a9eb', 'false', NULL),
(27, 'n', 'anuragkulhari0376@gmail.com', 'Enter Detail here..\r\n', 'affidavitstudent.pdf', '967a8361a828ae99381e2f78670b83a9', 'false', NULL),
(28, 'n', 'anuragkulhari0376@gmail.com', 'Enter Detail here..\r\n', 'affidavitstudent.pdf', '591a023604ad8df959789153574a74c9', 'false', NULL),
(29, 'sac', 'anuragkulhari0376@gmail.com', 'Enter Detail here..\r\n', 'affidavit_parent.pdf', 'b745492805147958a7e11cc7e352c3eb', 'false', NULL),
(30, 'sac', 'anuragkulhari0376@gmail.com', 'Enter Detail here..\r\n', 'affidavit_parent.pdf', '711508134f1151c8920146a86d4bca4f', 'false', NULL),
(31, 'sa', 'anuragkulhari0376@gmail.com', 'Enter Detail here..\r\n', 'affidavitstudent.pdf', '4712fed698c80aa343007992e2f3e8ca', 'false', NULL),
(32, 'sad', 'anuragkulhari0376@gmail.com', 'Enter Detail here..\r\n', 'book.pdf', '7a9e21ff9f098a410c1595daf98d7312', 'false', NULL),
(33, 'j,m', 'anuragkulhari0376@gmail.com', 'Enter Detail here..\r\n', 'book.pdf', 'd5edca7b9f8559c67dc7ca76ea6d6943', 'false', NULL),
(34, 'Anurag', 'anuragkulhari0376@gmail.com', 'Enter Detail here..\r\n', 'book.pdf', 'e8256f5f0ff4c9d66598b6a5841bef87', 'false', NULL),
(35, 'Anurag', 'anuragkulhari0376@gmail.com', 'Enter Detail here..\r\n', 'img.jpg', '64d72a158370f0ca2e129eeb7387bf57', 'false', NULL),
(36, 'Anurag', 'anuragkulhari0376@gmail.com', 'Enter Detail here..\r\n', 'affidavit_parent.pdf', '553a2eeeec7bcf0df4ce6085a0a7f8fb', 'false', NULL),
(37, 'Anurag', 'anuragkulhari0376@gmail.com', 'Enter Detail here..\r\n', 'chatApp.sql', 'f9a4238030fd79ed4e6aa926595efdb2', 'false', NULL),
(38, 'Anurag', 'anuragkulhari0376@gmail.com', 'Enter Detail here..\r\nkj', 'affidavitstudent.pdf', '2b74a205a0a07aeceab277a2f9c367e4', 'false', NULL),
(39, 'Anurag', 'anuragkulhari0376@gmail.com', 'Enter Detail here..\r\n', 'img.jpg', '5eacfa0d3f5883184849221f098363bf', 'false', NULL),
(40, 'Anurag', 'anuragkulhari0376@gmail.com', 'Enter Detail,m here..\r\n', 'book.pdf', '2050eee546bddad302cd96f9c045a840', 'false', NULL),
(41, 'Anurag', 'anuragkulhari0376@gmail.com', 'Enter Detail here..\r\n', 'book.pdf', '5aac151a98bf354a1ab44757985b6283', 'false', NULL),
(42, 'Anurag', 'anuragkulhari0376@gmail.com', 'Enter Detail here..\r\n', 'img.jpg', '832a5df853994faab64adea1c0e1a316', 'false', NULL),
(43, 'Anurag', 'anuragkulhari0376@gmail.com', 'Enter Detail here..\r\n', 'book.pdf', '529ebc72d9364158e4f5e2e2e46ca02e', 'true', NULL),
(44, 'Anurag', 'anuragkulhari0376@gmail.com', 'xa', 'ANURAG_KULHARI_MNNIT', '695194f193f618c6a21424815cd42a47', 'false', NULL),
(45, 'Anurag', 'anuragkulhari0376@gmail.com', 'fds', 'affidavit_parent.pdf', '87a019c7372370f013d9d85e9d53bb6c', 'false', NULL),
(46, 'Anurag', 'anuragkulhari0376@gmail.com', 'fds', 'affidavit_parent.pdf', 'f1ee99a748d6f9466c965913514dba72', 'false', NULL),
(47, 'Anurag', 'anuragkulhari0376@gmail.com', 'khb', 'Dean Academic _ MNNI', 'ca075d1c588a1468a04f76122bcf91d1', 'false', NULL),
(48, 'vidya', 'vidyadharsingh89@gmail.com', 'checking', 'img.jpg', 'bd75216fd52593eb3e1522a617a31b5d', 'false', NULL),
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
