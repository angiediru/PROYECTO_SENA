-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-02-2022 a las 02:41:59
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `trmsystem`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aprendices`
--

CREATE TABLE `aprendices` (
  `dni` int(11) DEFAULT NULL,
  `nombre_completo` varchar(30) DEFAULT NULL,
  `ficha` int(11) DEFAULT NULL,
  `etapa` varchar(15) DEFAULT NULL,
  `sexo` varchar(15) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `direccion` varchar(30) DEFAULT NULL,
  `barrio` varchar(20) DEFAULT NULL,
  `correo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `aprendices`
--

INSERT INTO `aprendices` (`dni`, `nombre_completo`, `ficha`, `etapa`, `sexo`, `telefono`, `direccion`, `barrio`, `correo`) VALUES
(2147483647, 'JOAQUIN DE JESUS OROZCO', 5689342, 'LECTIVA', 'MASCULINO', 2147483647, 'MANZANA 12 CASA 49', 'VILLA CLARA', ''),
(106584796, 'ALINA FERNANDEZ', 5428761, 'LECTIVA', 'FEMENINO', 2147483647, 'CALLE 24# 45-56', 'LAS GARDENIAS', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conductor`
--

CREATE TABLE `conductor` (
  `dni` int(11) DEFAULT NULL,
  `nombre_completo` varchar(30) DEFAULT NULL,
  `correo` varchar(30) DEFAULT NULL,
  `sexo` varchar(15) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `direccion` varchar(30) DEFAULT NULL,
  `licencia` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `conductor`
--

INSERT INTO `conductor` (`dni`, `nombre_completo`, `correo`, `sexo`, `telefono`, `direccion`, `licencia`) VALUES
(145896247, 'JUAN JOSE DIAZ QUINTERO', 'JUAJODI@GMAIL.COM', 'MASCULINO', 2147483647, 'CALLE LUNA CALLE SOL', '4578236'),
(145896247, 'CAMILO ALBERTO GARCIA RODRIGUE', 'CAMAGAR@GMAIL.COM', 'MASCULINO', 2147483647, 'AVENIDA MONTE CON CARRERA 23', '1452698');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propietario_vehiculo`
--

CREATE TABLE `propietario_vehiculo` (
  `dni` int(11) DEFAULT NULL,
  `nombre_completo` varchar(30) DEFAULT NULL,
  `correo` varchar(30) DEFAULT NULL,
  `sexo` varchar(15) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `direccion` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `propietario_vehiculo`
--

INSERT INTO `propietario_vehiculo` (`dni`, `nombre_completo`, `correo`, `sexo`, `telefono`, `direccion`) VALUES
(49786235, 'GUSTAVO JAVIER URREGO FONSECA', 'GUSTAVOURREGO@GMAIL.COM', 'MASCULINO', 2147483647, 'DIAGONAL 34 CON CALLE 67');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_rutas`
--

CREATE TABLE `registro_rutas` (
  `total_aprendices` int(11) DEFAULT NULL,
  `nombre_ruta` varchar(20) DEFAULT NULL,
  `dni_conductor` int(11) DEFAULT NULL,
  `fecha` varchar(20) DEFAULT NULL,
  `hora` varchar(20) DEFAULT NULL,
  `placa_vehiculo` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `registro_rutas`
--

INSERT INTO `registro_rutas` (`total_aprendices`, `nombre_ruta`, `dni_conductor`, `fecha`, `hora`, `placa_vehiculo`) VALUES
(25, 'RUTA1', 1025698745, '2000', '1996', '-44'),
(20, 'RUTA2', 2147483647, '2000', '1996', '-44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rutas`
--

CREATE TABLE `rutas` (
  `nombre` varchar(30) NOT NULL,
  `aprendices` varchar(30) NOT NULL,
  `horario` varchar(10) NOT NULL,
  `fecha` varchar(15) NOT NULL,
  `barrios` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rutas`
--

INSERT INTO `rutas` (`nombre`, `aprendices`, `horario`, `fecha`, `barrios`) VALUES
('RUTA1', '30', 'TARDE', '2000', 'NEVADA DIVINO NIÑO C'),
('RUTA2', '20', 'MAÑANA', '1984', 'SAN JOAQUIN LAS FLOR');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sena`
--

CREATE TABLE `sena` (
  `nit` int(11) DEFAULT NULL,
  `direccion` varchar(30) DEFAULT NULL,
  `correo` varchar(10) DEFAULT NULL,
  `rutas` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sena`
--

INSERT INTO `sena` (`nit`, `direccion`, `correo`, `rutas`) VALUES
(2146987, 'KM 7 VIA LA PAZ', 'TRMSYSTEM@', '20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_admin`
--

CREATE TABLE `usuario_admin` (
  `dni` int(11) DEFAULT NULL,
  `usuario` varchar(30) DEFAULT NULL,
  `clave` varchar(20) DEFAULT NULL,
  `nombre_completo` varchar(40) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `direccion` varchar(30) DEFAULT NULL,
  `correo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario_admin`
--

INSERT INTO `usuario_admin` (`dni`, `usuario`, `clave`, `nombre_completo`, `telefono`, `direccion`, `correo`) VALUES
(1065986254, 'USUARIO1', 'ADMINISTRADOR', 'ANGIE LUCIA DURAN DIAZ', 2147483647, 'CARRERA 12 CON CALLE 23', 'USUARIO1@GMAIL.COM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo`
--

CREATE TABLE `vehiculo` (
  `tarjeta_propiedad` varchar(40) DEFAULT NULL,
  `capacidad_del_vehiculo` int(11) DEFAULT NULL,
  `tipo_de_vehiculo` varchar(20) DEFAULT NULL,
  `tecnomecanica` varchar(40) DEFAULT NULL,
  `placa` varchar(20) DEFAULT NULL,
  `seguro` varchar(20) DEFAULT NULL,
  `color` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vehiculo`
--

INSERT INTO `vehiculo` (`tarjeta_propiedad`, `capacidad_del_vehiculo`, `tipo_de_vehiculo`, `tecnomecanica`, `placa`, `seguro`, `color`) VALUES
('415689', 30, 'BUSETA', '254862', 'VJK45P', '248795', 'BLANCO'),
('563248', 30, 'BUSETA', '786214', 'MOR47V', '581243', 'BLANCO');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `rutas`
--
ALTER TABLE `rutas`
  ADD PRIMARY KEY (`nombre`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
