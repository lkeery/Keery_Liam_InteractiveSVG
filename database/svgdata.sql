-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 26, 2019 at 05:20 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `svgdata`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_spotify`
--

CREATE TABLE `tbl_spotify` (
  `ID` int(11) NOT NULL,
  `Streams` varchar(100) NOT NULL,
  `Artist` varchar(200) NOT NULL,
  `Song` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_spotify`
--

INSERT INTO `tbl_spotify` (`ID`, `Streams`, `Artist`, `Song`) VALUES
(1, '2,321,000,000', 'ED SHEERAN', '“SHAPE OF YOU”'),
(2, '1,757,000,000', 'DRAKE FT. WIZKID & KYLA', '“ONE DANCE”'),
(3, '1,715,000,000', 'POST MALONE FT. 21 SAVAGE', '“ROCKSTAR”'),
(4, '1,641,000,000', 'THE CHAINSMOKERS FT. HALSEY', '“CLOSER”'),
(5, '1,641,000,000', 'ED SHEERAN', '“THINKING OUT LOUD”'),
(6, '1,399,000,000', 'DRAKE', '“GOD’S PLAN”'),
(7, '1,326,000,000', 'CAMILA CABELLO FT. YOUNG THUG', '“HAVANA”'),
(8, '1,290,000,000', 'LUIS FONSI & DADDY YANKEE FT. JUSTIN BIEBER', '“DESPACITO (REMIX)”'),
(9, '1,285,000,000', 'JUSTIN BIEBER', '“LOVE YOURSELF”'),
(10, '1,285,000,000', 'MAJOR LAZER & DJ SNAKEFT. MØ', '“LEAN ON”');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_top`
--

CREATE TABLE `tbl_top` (
  `ID` int(11) NOT NULL,
  `Artist` varchar(50) NOT NULL,
  `Count` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_top`
--

INSERT INTO `tbl_top` (`ID`, `Artist`, `Count`) VALUES
(1, 'ED SHEERAN', '2'),
(2, 'DRAKE', '2'),
(3, 'JUSTIN BIEBER', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_spotify`
--
ALTER TABLE `tbl_spotify`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_top`
--
ALTER TABLE `tbl_top`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_spotify`
--
ALTER TABLE `tbl_spotify`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_top`
--
ALTER TABLE `tbl_top`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
