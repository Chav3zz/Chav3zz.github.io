-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2023 at 03:36 AM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cinepolis`
--

-- --------------------------------------------------------

--
-- Table structure for table `artistas`
--

CREATE TABLE `artistas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `artistas`
--

INSERT INTO `artistas` (`id`, `nombre`) VALUES
(3, 'john cena'),
(4, 'luke skywalker'),
(5, 'mery poppins'),
(6, 'jason'),
(7, 'miles morales');

-- --------------------------------------------------------

--
-- Table structure for table `directores`
--

CREATE TABLE `directores` (
  `id` int(11) NOT NULL,
  `nombre` varchar(110) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `directores`
--

INSERT INTO `directores` (`id`, `nombre`) VALUES
(1, 'obama'),
(2, 'del toro'),
(3, 'vin diesel'),
(4, 'the rock'),
(5, 'madona');

-- --------------------------------------------------------

--
-- Table structure for table `peliculas`
--

CREATE TABLE `peliculas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `artista_id` int(11) NOT NULL,
  `genero_id` int(11) NOT NULL,
  `director_id` int(11) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `peliculas`
--

INSERT INTO `peliculas` (`id`, `nombre`, `artista_id`, `genero_id`, `director_id`, `fecha`) VALUES
(1, 'viernes 13', 6, 1, 2, '2010-08-13'),
(2, 'mery poppins', 5, 3, 5, '2009-12-07'),
(3, 'escuadron suicida', 3, 2, 4, '2019-04-12'),
(4, 'spiderman-multiverse', 7, 4, 1, '2018-05-23'),
(5, 'star wars', 4, 5, 2, '1986-05-04'),
(6, 'rapido y furiosos', 3, 2, 3, '2012-12-13');

-- --------------------------------------------------------

--
-- Table structure for table `tipospeliculas`
--

CREATE TABLE `tipospeliculas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tipospeliculas`
--

INSERT INTO `tipospeliculas` (`id`, `nombre`) VALUES
(1, 'terror'),
(2, 'accion'),
(3, 'musical'),
(4, 'animada'),
(5, 'ciencia ficcion');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `directores`
--
ALTER TABLE `directores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artista_id` (`artista_id`),
  ADD KEY `director_id` (`director_id`),
  ADD KEY `genero_id` (`genero_id`);

--
-- Indexes for table `tipospeliculas`
--
ALTER TABLE `tipospeliculas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artistas`
--
ALTER TABLE `artistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `directores`
--
ALTER TABLE `directores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tipospeliculas`
--
ALTER TABLE `tipospeliculas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `peliculas`
--
ALTER TABLE `peliculas`
  ADD CONSTRAINT `peliculas_ibfk_1` FOREIGN KEY (`artista_id`) REFERENCES `artistas` (`id`),
  ADD CONSTRAINT `peliculas_ibfk_2` FOREIGN KEY (`director_id`) REFERENCES `directores` (`id`),
  ADD CONSTRAINT `peliculas_ibfk_3` FOREIGN KEY (`genero_id`) REFERENCES `tipospeliculas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
