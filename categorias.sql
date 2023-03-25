-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-03-2023 a las 02:44:28
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `categorias`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Electrónicos', '\r\nAccesorios y suministros\r\nCámaras y Fotografía\r\nElectrónicos para autos y vehículos\r\nTeléfonos celulares y accesorios\r\nEquipos y accesorios\r\nGPS y navegación\r\nAudífonos\r\nAudio para el hogar\r\nElectró'),
(2, 'Computadoras', '\r\nAccesorios y periféricos para computadoras\r\nComponentes de computadoras\r\nComputadoras y tablets\r\nAlmacenamiento de datos\r\nComponentes externos\r\nAccesorios para computadoras portátiles\r\nMonitores\r\nPr'),
(3, 'Smart Home', '\r\nAmazon Smart Home\r\nIluminación de Smart Home\r\nCerraduras Inteligentes y Entrada\r\nCámaras y Sistemas de Seguridad\r\nEnchufes\r\nNuevos Dispositivos Inteligentes\r\nCalefacción y Refrigeración\r\nDetectores '),
(4, 'Arte Y Artesanías', '\r\nSuministros para pintura, dibujo y arte\r\nCuentas y joyería\r\nArtesanías\r\nTela\r\nDecoración de tela\r\nTejido y crochet\r\nBordado\r\nOrganización, almacenamiento y transporte\r\nEstampado\r\nColección de recort'),
(5, 'Automotriz', '\r\nCuidado de automóviles\r\nElectrónicos y accesorios para autos\r\nAccesorios exteriores\r\nAccesorios interiores\r\nLuces y accesorios de iluminación\r\nMotociclismo y deportes de motor\r\nAceites y fluidos\r\nPi');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `precio` float NOT NULL,
  `categoria_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria_id` (`categoria_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
