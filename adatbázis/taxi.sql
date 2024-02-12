-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2024 at 09:00 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `taxi`
--

-- --------------------------------------------------------

--
-- Table structure for table `fuvar`
--

CREATE TABLE `fuvar` (
  `id` int(11) NOT NULL,
  `indulas_idopontja` date NOT NULL,
  `utazas_idotartma` int(11) NOT NULL,
  `megtett_tavolsag` double NOT NULL,
  `viteldij` double NOT NULL,
  `borravalo` tinyint(1) NOT NULL,
  `fizetes_modja` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fuvar`
--

INSERT INTO `fuvar` (`id`, `indulas_idopontja`, `utazas_idotartma`, `megtett_tavolsag`, `viteldij`, `borravalo`, `fizetes_modja`) VALUES
(2, '2022-01-02', 900, 3.1, 15.75, 4, 'bankkártya'),
(3, '2022-01-03', 1200, 4.5, 20.25, 5, 'készpénz'),
(4, '2022-01-04', 800, 2.7, 12.75, 2, 'bankkártya'),
(5, '2022-01-05', 1000, 3.8, 17.5, 4, 'készpénz'),
(6, '2022-01-06', 1100, 4, 18.25, 4, 'bankkártya'),
(7, '2022-01-07', 950, 3.3, 14.5, 3, 'készpénz'),
(8, '2022-01-08', 700, 2.1, 9.75, 2, 'bankkártya'),
(9, '2022-01-09', 850, 3.5, 16, 3, 'készpénz');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fuvar`
--
ALTER TABLE `fuvar`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fuvar`
--
ALTER TABLE `fuvar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
