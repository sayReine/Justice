-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2024 at 12:33 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `justice`
--

-- --------------------------------------------------------

--
-- Table structure for table `record`
--

CREATE TABLE `record` (
  `id` int(11) NOT NULL,
  `fullName` varchar(200) NOT NULL,
  `phoneNumber` int(100) NOT NULL,
  `EmailAddress` varchar(100) NOT NULL,
  `crimeName` varchar(200) NOT NULL,
  `crimeScene` varchar(100) NOT NULL,
  `details` varchar(450) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `record`
--

INSERT INTO `record` (`id`, `fullName`, `phoneNumber`, `EmailAddress`, `crimeName`, `crimeScene`, `details`) VALUES
(1, 'SAYINZOGA Reine Esther Keza', 780545732, 'sayinzogae@gmail.com', 'theft', 'Gacinjiro', 'they stole my bag when i was on my home at night'),
(2, 'opportunee Gisubizo', 783781640, 'opportuneegisubizo@gmail.com', 'murder', 'esther killed reine', 'she came and kill her'),
(4, 'Masheke Kola', 782456345, 'mashekekola@gmail.com', 'murder', 'Nyamasheke', 'i was taking a walk in the morning and i saw a dead person on the side of the road'),
(5, 'NIZEYIMANA IGIHOZO KENIA', 788556108, 'nizeyimanakenia@gmail.com', 'sexual ', 'dormitory', 'there was in the afternoon but it was a accident so she touched me and she started beating me certainely so i report her'),
(6, 'ihirwe knut', 788629205, 'knutihirwe@gmail.com', 'child abuse', 'at school', 'hsjhdfheufheifeuf'),
(7, '', 0, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `Name`, `username`, `password`, `email`) VALUES
(1, 'SAYINZOGA Reine Esther KEZA', 'sayReine', 'adult', 'sayinzogae@gmail.com'),
(3, 'TUYIKUNDE Cynthia', 'Cynthia', 'Bb12', 'tuyikundecynthia@gmail.com'),
(4, 'SHEMA Marvella', 'Marvella', 'marie', 'marvella123@gmail.com'),
(5, 'TUYIKUNDE Cynthia', 'Cynthia', '$2b$10$ky1nuqQRzHWXyb3FsbKIEe6ViAgJfkkIzpRthIMMFhrsQTd.lh7Lm', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `record`
--
ALTER TABLE `record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `record`
--
ALTER TABLE `record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
