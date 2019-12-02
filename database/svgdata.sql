-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 02, 2019 at 04:57 PM
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
  `Song` varchar(200) NOT NULL,
  `streamsClass` varchar(100) NOT NULL,
  `artistClass` varchar(100) NOT NULL,
  `songClass` varchar(100) NOT NULL,
  `streamsTransform` varchar(100) NOT NULL,
  `artistTransform` varchar(100) NOT NULL,
  `songTransform` varchar(100) NOT NULL,
  `animationClass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_spotify`
--

INSERT INTO `tbl_spotify` (`ID`, `Streams`, `Artist`, `Song`, `streamsClass`, `artistClass`, `songClass`, `streamsTransform`, `artistTransform`, `songTransform`, `animationClass`) VALUES
(1, '2,321,000,000', 'ED SHEERAN', 'SHAPE OF YOU', 'cls-7', 'cls-8', 'cls-14', 'translate(346.09 229.67)', 'translate(400.11 262.67)', 'translate(379.82 293)', 'bounceInRight'),
(2, '1,757,000,000', 'DRAKE FT. WIZKID & KYLA', 'ONE DANCE', 'cls-7', 'cls-8', 'cls-14', 'translate(57.06 376.67)', 'translate(61.29 412.67)', 'translate(102.37 442)', 'bounceInLeft'),
(3, '1,715,000,000', 'POST MALONE FT. 21 SAVAGE', 'ROCKSTAR', 'cls-7', 'cls-8', 'cls-14', 'translate(349.36 524.67)', 'translate(335.98 560.67)', 'translate(396.4 591)', 'bounceInRight'),
(4, '1,641,000,000', 'THE CHAINSMOKERS FT. HALSEY', 'CLOSER', 'cls-7', 'cls-8', 'cls-14', 'translate(58.76 668.67)', 'translate(34.57 704.67)', 'translate(120.62 735)', 'bounceInLeft'),
(5, '1,641,000,000', 'ED SHEERAN', 'THINKING OUT LOUD', 'cls-7', 'cls-8', 'cls-14', 'translate(347.76 808.67)', 'translate(400.11 844.67)', 'translate(353.05 875)', 'bounceInRight'),
(6, '1,399,000,000', 'DRAKE', 'GOD’S PLAN', 'cls-7', 'cls-8', 'cls-14', 'translate(56.94 952.67)', 'translate(134.64 988.67)', 'translate(101.08 1019)', 'bounceInLeft'),
(7, '1,326,000,000', 'CAMILA CABELLO FT. YOUNG THUG', 'HAVANA', 'cls-7', 'cls-8', 'cls-14', 'translate(346.11 1096.67)', 'translate(315.36 1132.67)', 'translate(405.86 1163)', 'bounceInRight'),
(8, '1,290,000,000', 'LUIS FONSI & DADDY YANKEE FT. JUSTIN BIEBER', 'DESPACITO (REMIX)', 'cls-7', 'cls-24', 'cls-14', 'translate(56.69 1240.67)', 'translate(62.31 1271.67)', 'translate(68.77 1326)', 'bounceInLeft'),
(9, '1,285,000,000', 'JUSTIN BIEBER', 'LOVE YOURSELF', 'cls-7', 'cls-8', 'cls-14', 'translate(346.01 1384.67)', 'translate(391.88 1420.67)', 'translate(374.64 1451)', 'bounceInRight'),
(10, '1,285,000,000', 'MAJOR LAZER & DJ SNAKEFT. MØ', 'LEAN ON', 'cls-7', 'cls-24', 'cls-14', 'translate(57.01 1528.67)', 'translate(71.33 1559.67)', 'translate(115.5 1614)', 'bounceInLeft');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_spotify`
--
ALTER TABLE `tbl_spotify`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_spotify`
--
ALTER TABLE `tbl_spotify`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
