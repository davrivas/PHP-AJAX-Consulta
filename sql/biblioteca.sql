-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-05-2020 a las 06:32:06
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `codigo` varchar(5) CHARACTER SET utf8 NOT NULL,
  `titulo` varchar(50) CHARACTER SET utf8 NOT NULL,
  `autor` varchar(50) CHARACTER SET utf8 NOT NULL,
  `genero` varchar(50) CHARACTER SET utf8 NOT NULL,
  `year` varchar(15) CHARACTER SET utf8 NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`codigo`, `titulo`, `autor`, `genero`, `year`, `fecha`) VALUES
('1O3J3', 'Lazarillo de tormes', 'Anonimo', 'Novela', 'Desconocido', '2015-09-23 15:02:08'),
('23345', 'Libro cualquiera', 'Yo', 'Cualquiera', '2001', '2020-05-29 22:53:04'),
('F6DY7', 'Las venas abiertas de America Latina', 'Eduardo Galeano', 'Ensayo', '1971', '2015-09-23 15:22:10'),
('HQTSE', 'La catedral y el bazar', 'Eric S. Raymond', 'Novela', 'Desconocido', '2015-09-23 16:23:19'),
('P6SUY', 'Divina Comedia', 'Dante Alighieri', 'Poesía', '1472', '2015-09-23 23:28:52'),
('R1OVY', 'Yo Acuso', 'Emile Zola', 'Ensayo', '1898', '2015-09-24 00:57:38'),
('WZ9PV', 'Mas alla del bien y del mal', 'Friedrich Nietzsche', 'Filosofía', '1886', '2015-09-24 02:05:05');

-- --------------------------------------------------------

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`codigo`);


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
