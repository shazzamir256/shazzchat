-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2017 at 10:10 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `msg` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `name`, `msg`, `date`) VALUES
(2, 'asif', 'hi, iam doing awesome here', '2017-03-23 11:26:49'),
(3, 'duane', 'hi , iam duane from uk', '2017-03-23 12:11:17'),
(9, 'Troy', 'Iam watching cricket', '2017-03-23 12:38:58'),
(10, 'Troy', 'Iam watching cricket', '2017-03-23 12:39:01'),
(11, 'Troy', 'Iam watching cricket', '2017-03-23 14:43:15'),
(12, 'Troy', 'Iam watching cricket', '2017-03-23 14:47:33'),
(13, 'shamsa', 'abcnhjyu', '2017-03-23 15:12:19'),
(14, 'shamsa', 'abcnhjyu', '2017-03-23 15:12:36'),
(15, 'max', 'whats up', '2017-03-24 04:47:37'),
(16, 'max', 'whats up', '2017-03-24 04:55:31'),
(17, 'will', 'nothing much', '2017-03-24 04:55:52'),
(18, 'will', 'nothing much', '2017-03-24 04:58:30'),
(19, 'shazz', 'thanks God, i did it.', '2017-03-24 05:09:22'),
(20, 'maxwell', 'that nice bro', '2017-03-24 05:11:14'),
(21, 'shamsa', 'im fine', '2017-03-24 05:53:40'),
(22, 'ali', 'im fine', '2017-03-24 05:53:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
