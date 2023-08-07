-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-08-2023 a las 17:31:26
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inventarioayuntamiento`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial de bajas`
--

CREATE TABLE `historial de bajas` (
  `Folio de baja` int(100) NOT NULL,
  `Consecutivo` int(100) NOT NULL,
  `No. Inventario` int(100) NOT NULL,
  `Marca` varchar(100) NOT NULL,
  `Modelo` varchar(100) NOT NULL,
  `No. de Serie` int(100) NOT NULL,
  `Fotografía` longblob NOT NULL,
  `Ubicación` text NOT NULL,
  `Fecha` date NOT NULL,
  `Estatus` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla general`
--

CREATE TABLE `tabla general` (
  `Consecutivo` int(100) NOT NULL,
  `No. Inventario` int(100) NOT NULL,
  `Responsable` text NOT NULL,
  `Departamento` int(100) NOT NULL,
  `Ubicación` int(100) NOT NULL,
  `Marca` int(50) NOT NULL,
  `Modelo` varchar(30) NOT NULL,
  `No. Serie` int(30) NOT NULL,
  `Fotografía` longblob NOT NULL,
  `Fecha` date NOT NULL,
  `Estatus` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `historial de bajas`
--
ALTER TABLE `historial de bajas`
  ADD PRIMARY KEY (`Folio de baja`),
  ADD UNIQUE KEY `Consecutivo` (`Consecutivo`),
  ADD UNIQUE KEY `No. Inventario` (`No. Inventario`);

--
-- Indices de la tabla `tabla general`
--
ALTER TABLE `tabla general`
  ADD PRIMARY KEY (`Consecutivo`),
  ADD UNIQUE KEY `No. Inventario` (`No. Inventario`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tabla general`
--
ALTER TABLE `tabla general`
  ADD CONSTRAINT `tabla general_ibfk_1` FOREIGN KEY (`Consecutivo`) REFERENCES `historial de bajas` (`Consecutivo`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
