-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2021 at 07:57 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sparks_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(2, 'Rakesh', 'Ranjan', 1000, '2021-04-18 19:08:50'),
(3, 'Ranjan', 'Rakesh', 1200, '2021-04-19 16:55:33'),
(4, 'Monu', 'Avinash', 100, '2021-07-19 17:48:52'),
(5, 'Avinash', 'Abhi', 8000, '2021-08-30 11:39:26'),
(6, 'Kumar', 'Monu', 9000, '2021-09-05 20:41:16'),
(7, 'Abhi', 'Kuppulingam', 2000, '2021-09-05 21:44:41'),
(8, 'KuppuLingam', 'Kumar', 3000, '2021-09-06 10:22:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Avinash', 'avinashkumar10340@gmail.com', 80000),
(2, 'Rakesh', 'rakesh2000@gmail.com', 91000),
(3, 'Ranjan', 'ranjan1000@gmail.com', 48900),
(4, 'Monu', 'monurai@gmail.com', 1000010),
(5, 'Kumar', 'kumarsingh@gmail.com', 41000),
(6, 'abhi', 'abhikansara1020@gmail.com', 1990),
(7, 'KuppuLingam', 'kuppulingamdas28@gmail.com', 50109),
(8, 'Jaya', 'jayasingh1999@gmail.com', 501020),
(9, 'megha', 'meghanagb5@gmail.com', 30280),
(10, 'ApurvRaj', 'apurvraj134@gmail.com', 98001);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
