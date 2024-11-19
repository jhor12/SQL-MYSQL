-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 19-11-2024 a las 01:58:47
-- Versión del servidor: 8.0.30
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `idEmpleado` int NOT NULL,
  `nombreCompleto` varchar(100) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `fechaContratacion` date DEFAULT NULL,
  `puesto` varchar(50) NOT NULL,
  `salario` decimal(10,2) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`idEmpleado`, `nombreCompleto`, `fechaNacimiento`, `fechaContratacion`, `puesto`, `salario`, `email`) VALUES
(1, 'WILMER SIOLO BERRIO', '1995-02-14', '2024-06-16', 'SECRETARIA PRESIDENCIA', 1300000.00, 'wilmer.siolo@gmail.com'),
(2, 'JORGE OVIEDO SALGADO', '1997-10-11', '2024-07-02', 'RECEPCIONISTA', 1250000.00, 'jorge.oviedo@gmail.com'),
(3, 'ANTONIO RODRIGUEZ NISPERUZA', '1998-09-14', '2024-08-11', 'PRESIDENTE', 4500000.00, 'antonio.rodriguez@gmail.com'),
(4, 'LEONARDO GIL MONTES', '1999-05-13', '2024-09-04', 'VICEPRESIDENTE', 3200000.00, 'leonardo.gil@gmail.com'),
(5, 'ARGEMIRO CARDENAS SALGADO', '2000-07-07', '2024-10-17', 'ARCHIVO', 1100000.00, 'argemiro.cardenas@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`idEmpleado`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `idEmpleado` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
