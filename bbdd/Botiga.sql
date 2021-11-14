-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 14, 2021 at 09:39 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Botiga`
--

-- --------------------------------------------------------

--
-- Table structure for table `Album`
--

CREATE TABLE `Album` (
  `id` int(1) NOT NULL,
  `nom` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `preu` decimal(6,2) NOT NULL,
  `foto` varchar(200) COLLATE utf16_spanish_ci NOT NULL,
  `estil_id` int(1) NOT NULL,
  `artista` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `segell` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `data_publicacio` date NOT NULL,
  `format` varchar(20) COLLATE utf16_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;

--
-- Dumping data for table `Album`
--

INSERT INTO `Album` (`id`, `nom`, `preu`, `foto`, `estil_id`, `artista`, `segell`, `data_publicacio`, `format`) VALUES
(1, '569', '11.55', '/home/loan/Desktop/web_proj/xperez2001.github.io/media/569.jpg', 1, 'GO!GO!7188', 'BMG', '2007-10-24', 'CD'),
(2, 'After hours', '11.55', './media/After\\ hours.jpg', '2', 'The Weekend', 'XO, Republic Records', '2020-03-20', 'CD'),
(3, 'Bad Habits', '11.55', './media/Bad\\ Habits.jpg', '2', 'Ed Sheeran', 'Asylum Records UK', '2021-06-25', 'CD');

-- --------------------------------------------------------

--
-- Table structure for table `Comandes`
--

CREATE TABLE `Comandes` (
  `id` int(1) NOT NULL,
  `usr_id` int(1) NOT NULL,
  `data` datetime(1) NOT NULL,
  `import_total` decimal(5,2) NOT NULL,
  `total_elements` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;

--
-- Dumping data for table `Comandes`
--

INSERT INTO `Comandes` (`id`, `usr_id`, `data`, `import_total`, `total_elements`) VALUES
(1, 1, '2021-11-13 16:37:22.0', '11.55', 1),
(2, 2, '2021-11-25 16:37:22.0', '11.55', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Estil`
--

CREATE TABLE `Estil` (
  `id` int(1) NOT NULL,
  `nom` varchar(50) COLLATE utf16_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;

--
-- Dumping data for table `Estil`
--

INSERT INTO `Estil` (`id`, `nom`) VALUES
(1, 'Rock'),
(2, 'Pop');

-- --------------------------------------------------------

--
-- Table structure for table `Linies_comanda`
--

CREATE TABLE `Linies_comanda` (
  `id` int(1) NOT NULL,
  `comanda_id` int(1) NOT NULL,
  `album_id` int(1) NOT NULL,
  `quantitat` int(1) NOT NULL,
  `nom` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `preu` decimal(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;

--
-- Dumping data for table `Linies_comanda`
--

INSERT INTO `Linies_comanda` (`id`, `comanda_id`, `album_id`, `quantitat`, `nom`, `preu`) VALUES
(1, 1, 1, 1, 'album', '11.55');

-- --------------------------------------------------------

--
-- Table structure for table `Usuaris`
--

CREATE TABLE `Usuaris` (
  `id` int(1) NOT NULL,
  `nom` varchar(40) COLLATE utf16_bin NOT NULL,
  `direcció` varchar(50) COLLATE utf16_bin NOT NULL,
  `població` varchar(59) COLLATE utf16_bin NOT NULL,
  `cp` varchar(5) COLLATE utf16_bin NOT NULL,
  `email` varchar(30) COLLATE utf16_bin NOT NULL,
  `passwd` varchar(256) COLLATE utf16_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `Usuaris`
--

INSERT INTO `Usuaris` (`id`, `nom`, `direcció`, `població`, `cp`, `email`, `passwd`) VALUES
(1, 'Jaume', 'Casa seva', 'Santaco', '08924', 'Jaume@ajuntamentdesantaco.cat', 'contrasenya'),
(2, 'Joan', 'Casa seva', 'Santqgat', '08195', 'Jaume@ajuntamentdesantqgat.cat', 'contrasenya');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Album`
--
ALTER TABLE `Album`
  ADD PRIMARY KEY (`id`),
  ADD KEY `estil` (`estil_id`);

--
-- Indexes for table `Comandes`
--
ALTER TABLE `Comandes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuari` (`usr_id`) USING BTREE;

--
-- Indexes for table `Estil`
--
ALTER TABLE `Estil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Linies_comanda`
--
ALTER TABLE `Linies_comanda`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comanda_id` (`comanda_id`),
  ADD KEY `album_id` (`album_id`);

--
-- Indexes for table `Usuaris`
--
ALTER TABLE `Usuaris`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Album`
--
ALTER TABLE `Album`
  ADD CONSTRAINT `estil` FOREIGN KEY (`estil_id`) REFERENCES `Estil` (`id`);

--
-- Constraints for table `Comandes`
--
ALTER TABLE `Comandes`
  ADD CONSTRAINT `fa` FOREIGN KEY (`usr_id`) REFERENCES `Usuaris` (`id`);

--
-- Constraints for table `Linies_comanda`
--
ALTER TABLE `Linies_comanda`
  ADD CONSTRAINT `Linies_comanda_ibfk_1` FOREIGN KEY (`comanda_id`) REFERENCES `Comandes` (`id`),
  ADD CONSTRAINT `album` FOREIGN KEY (`album_id`) REFERENCES `Album` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
