-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2023 at 02:37 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store_images`
--

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `img_name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `img_name`, `created_at`) VALUES
(1, 'IMG-63da5c4c4c3d18.35080917.jpg', '2023-02-01 19:34:20'),
(2, 'IMG-63da5cc7935a90.34220561.jpg', '2023-02-01 19:36:23'),
(3, 'IMG-63da5cc7940778.85637656.jpg', '2023-02-01 19:36:23'),
(4, 'IMG-63da5cc7952041.17493778.jpg', '2023-02-01 19:36:23'),
(5, 'IMG-63da5cc795d8f3.53321691.jpg', '2023-02-01 19:36:23'),
(6, 'IMG-63da5cc796ec36.23500326.jpg', '2023-02-01 19:36:23'),
(7, 'IMG-63da6205037f41.85865727.gif', '2023-02-01 19:58:45'),
(8, 'IMG-63da68c83b0576.08775866.jpg', '2023-02-01 20:27:36'),
(9, 'IMG-63da69d9559645.54584537.webp', '2023-02-01 20:32:09'),
(10, 'IMG-63da69d9564aa2.72267373.webp', '2023-02-01 20:32:09'),
(11, 'IMG-63da69d9576527.35873358.webp', '2023-02-01 20:32:09'),
(12, 'IMG-63da69d9581633.62557331.webp', '2023-02-01 20:32:09'),
(13, 'IMG-63da69d95930f4.06634203.webp', '2023-02-01 20:32:09'),
(14, 'IMG-63da69d959c8a2.85971238.webp', '2023-02-01 20:32:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
