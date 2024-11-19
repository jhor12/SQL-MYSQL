-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 19-11-2024 a las 01:57:13
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
-- Base de datos: `db_empresa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventarios`
--

CREATE TABLE `inventarios` (
  `idInventario` int NOT NULL,
  `codigoProducto` varchar(50) NOT NULL,
  `nombreProducto` varchar(100) NOT NULL,
  `descripcion` text,
  `fechaFabricacion` date DEFAULT NULL,
  `fechaRegistro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `cantidadProducto` int DEFAULT '0',
  `precioCompra` decimal(10,2) NOT NULL,
  `precioVenta` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `inventarios`
--

INSERT INTO `inventarios` (`idInventario`, `codigoProducto`, `nombreProducto`, `descripcion`, `fechaFabricacion`, `fechaRegistro`, `cantidadProducto`, `precioCompra`, `precioVenta`) VALUES
(1, 'PROD001', 'IPHONE 12 PRO MAX', 'IPHONE 12 PRO MAX 16 Gb 5G', '2023-03-08', '2023-03-12 05:00:00', 30, 2000000.00, 3500000.00),
(2, 'PROD002', 'DELL PRO', 'DELL PRO 32 Gb 500 Ram', '2025-07-03', '2025-07-05 05:00:00', 20, 1200000.00, 1700000.00),
(3, 'PROD003', 'MI 11 LITE PRO', 'MI 11 LITE PRO 8 Ram 2 5G', '2023-09-07', '2023-09-12 05:00:00', 15, 1400000.00, 1900000.00),
(4, 'PROD004', 'SAMSUNG SMARTV', 'SAMSUNG SMARTV 25 Pulgadas', '2024-05-06', '2024-06-12 05:00:00', 45, 900000.00, 1200000.00),
(5, 'PROD005', 'LAVADORA GL', 'LAVADORA GL ULTIMATE GENERATION 45 Wah', '2022-01-09', '2022-01-09 05:00:00', 55, 500000.00, 800000.00);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `inventarios`
--
ALTER TABLE `inventarios`
  ADD PRIMARY KEY (`idInventario`),
  ADD UNIQUE KEY `codigoProducto` (`codigoProducto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `inventarios`
--
ALTER TABLE `inventarios`
  MODIFY `idInventario` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
