-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-02-2023 a las 02:47:34
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
-- Base de datos: `tienda_online`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `precio` double NOT NULL,
  `descripcion` varchar(300) NOT NULL,
  `color` varchar(50) NOT NULL,
  `existencia` int(11) NOT NULL,
  `marca` varchar(30) NOT NULL,
  `medida` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `descripcion`, `color`, `existencia`, `marca`, `medida`) VALUES
(1, 'HyperX Cloud Alpha - Audífonos para gaming, Rojo- Altavoces de cámara doble - Comodidad galardonada de HyperX - Resistente estructura de aluminio - Micrófono desmontable con cancelación de ruido', 1089, 'Cuenta con una cámara para los graves y una cámara separada para medios y agudos\r\nLas amplias orejeras de Cloud Alpha están acolchadas con cuero suave flexible y su estructura de aluminio reforzada fue expandida para adaptarse a tamaños de cabezas más grandes\r\nCable extraíble trenzado con control de', 'Rojo', 0, 'Kingston', 'Cable de auriculares extraíble'),
(2, 'Logitech G502 Hero Mouse Gaming con Cable, Sensor Hero 25K, LIGHTSYNC RGB, Peso Ajustable, 11 Botones programables, Memoria integrada - Negro', 769, 'Longitud del cable: 2.10 m\r\nSensor: HERO\r\nResolución: 100 - 16,000 ppp\r\nMicroprocesador: requisitos de ARM de 32 bits\r\nRequisitos: Windows 7 o posterior, macOS 10.11 o posterior, Chrome OS, Puerto USB', 'Negro', 0, 'Logitech', 'Longitud del cable 210 cm'),
(3, 'HyperX HX-KB7AQX-US Alloy OriginsTeclado mecánico Tenkeyless para Gaming RGB\r\n', 1399, 'Interruptores mecánicos HyperX\r\nCuerpo de aluminio de grado aeronáutico\r\nDiseño compacto y portátil con cable USB tipo C extraíble\r\nAsombrosa iluminación RGB con efectos dinámicos\r\nCompatible con: PC, PS4 y Xbox One\r\n', '	Negro', 0, 'HyperX', 'Numero de teclas	87'),
(4, 'Assassin\'s Creed Valhalla Xbox One', 512.34, 'Assassin\'s Creed Valhalla leverages the smart delivery technology - buy the ge once and play it on either Xbox One or Xbox series x when both the console and that version of Assassin\'s Creed Valhalla are available\r\nPre-order to get access to the bonus mission, The way of the Berserker\r\njoin a legend', '', 0, 'Xbox ', ''),
(5, 'Assassins Creed Origins - Xbox One\r\n', 933.15, 'Region Free Australia\r\n100% Compatible With USA Xbox One Console\r\n100% Compatible With USA XBox One Live\r\nWork Exactly the Same as Local USA Version', '', 0, 'Xbox ', ''),
(6, 'Cyberpunk 2077 - Xbox One - Standard Edition', 385, 'JUEGA COMO UN MERCENARIO FORAJIDO: Conviértete en un cyberpunk, un mercenario urbano equipado con mejoras cibernéticas y crea tu leyenda en las calles de Night City.\r\nDESCUBRE LA CIUDAD DEL FUTURO: Conoce el enorme mundo abierto de Night City, una ciudad que establece una nueva referencia en calidad', '', 0, 'Xbox ', ''),
(7, 'Red Dead Redemption 2 - Xbox One - Standard Edition', 515, 'Clasificación del juego: C Adultos +18 Años\r\nDesarrollado por Rockstar Games, los creadores de exitosos juegos com Grand Theft Auto 5\r\nEste juego monta las bases para una nueva experiencia multijugador online\r\nExtraordinaria atmósfera y ambientación te atraparán mientras te abres camino a base de ro', '', 0, 'Xbox ', ''),
(8, 'ZUGZWANG Estación De Carga para Dual Controles Compatible con Controles Xbox One/One S/One X, Xbox Series S/X, Incluido 2 Baterías de 1100 MAH', 509, 'Cargador DUAL: Carga dos controles de Xbox One o Series X al mismo tiempo para jugar tus videojuegos favoritos.\r\nDos PIlas Incluido: El kit incluye dos baterías recargables con 1100mAh por cada unapara que las instales en los controles Xbox\r\nIndicador de LED: Al cargar uno o los dos controles de Xbo', '', 0, 'ZUGZWANG', 'Peso del producto	130 Gramos'),
(9, 'Control inalámbrico Xbox – Mineral Camo - Edición Especial Edition', 1471.08, 'Mantén siempre tu objetivo con el pad direccional híbrido y el agarre texturizado en los gatillos, en los botones superiores y carcasa trasera.\r\nConecta cualquier auricular compatible con el conector para auriculares de audio de 3.5 mm.\r\nIncluye tecnología Xbox Wireless y Bluetooth para juegos inalá', 'Mineral Camo', 0, 'Xbox ', ''),
(10, 'Rainbow Six Siege - Xbox One - Standard Edition', 449, 'Inspirado por la realidad de los operativos contra terroristas en todo el mundo , Rainbow Six Siege invita a los jugadores a dominar el arte de la destrucción.\r\nIntensos enfrentamientos Close Quarters , de alta letalidad , tácticas , juego en equipo , y la acción explosiva están en el centro de la e', '', 0, 'Xbox ', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
