-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 03-07-2022 a las 18:03:59
-- Versión del servidor: 5.7.35
-- Versión de PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `c2110488_PrIspc`
--
CREATE DATABASE IF NOT EXISTS `c2110488_PrIspc` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `c2110488_PrIspc`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ADMINISTRADOR`
--

CREATE TABLE `ADMINISTRADOR` (
  `ID_ADMINISTRADOR` int(11) NOT NULL,
  `ID_USUARIO` int(11) NOT NULL,
  `ID_LOCALIDAD` int(11) NOT NULL,
  `NOMBRE` varchar(100) NOT NULL,
  `APELLIDO` varchar(100) NOT NULL,
  `DNI` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Alumnos`
--

CREATE TABLE `Alumnos` (
  `id_alumno` int(11) NOT NULL,
  `nombre` varchar(20) CHARACTER SET utf32 COLLATE utf32_spanish_ci NOT NULL,
  `apellido` varchar(20) CHARACTER SET utf32 COLLATE utf32_spanish_ci NOT NULL,
  `DNI` int(11) NOT NULL,
  `Fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Alumnos`
--

INSERT INTO `Alumnos` (`id_alumno`, `nombre`, `apellido`, `DNI`, `Fecha`) VALUES
(1, 'nada1', 'PruebaApellido', 1, '2021-12-14'),
(7, 'NOSAS', 'APR', 2, '2021-12-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Categoria`
--

CREATE TABLE `Categoria` (
  `Id_Categ` int(11) NOT NULL,
  `N_Id_Menu` int(11) NOT NULL,
  `OrdenCat` int(11) NOT NULL,
  `Categoria` varchar(100) NOT NULL,
  `Img` varchar(200) NOT NULL,
  `Archivo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Categoria`
--

INSERT INTO `Categoria` (`Id_Categ`, `N_Id_Menu`, `OrdenCat`, `Categoria`, `Img`, `Archivo`) VALUES
(1, 1, 1, 'Logos de la organizacion', '', ''),
(2, 1, 2, 'Nombre de la organizacion', '', ''),
(3, 2, 1, 'Productos de calidad', 'http://planidear.com.ar/PracticaISPC/imgPracticaISPC/ImgCalidad.png\r\n', ''),
(4, 2, 2, 'Precios Competitivos\r\n', '', ''),
(5, 1, 1, 'cat', 'aa', 'aa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ComCategSuel`
--

CREATE TABLE `ComCategSuel` (
  `Id_CategSuel` int(11) NOT NULL,
  `CategSuel` varchar(20) NOT NULL,
  `Descrpcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ComCategSuel`
--

INSERT INTO `ComCategSuel` (`Id_CategSuel`, `CategSuel`, `Descrpcion`) VALUES
(1, 'Normal', ''),
(2, 'Categoria_A', ''),
(3, 'Categoria_B', ''),
(4, 'Categoria_C', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ComConceptos`
--

CREATE TABLE `ComConceptos` (
  `IdConcepto` int(11) NOT NULL,
  `Concepto` varchar(50) NOT NULL,
  `SupConcepto` char(2) NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ComConceptos`
--

INSERT INTO `ComConceptos` (`IdConcepto`, `Concepto`, `SupConcepto`) VALUES
(1, 'Basico', 'No'),
(2, 'ApoteSindical', 'No'),
(3, 'Antiguedad', 'No'),
(4, 'HorasExtras', 'No'),
(5, 'Descuentos', 'No'),
(6, 'Jubilacion', 'No'),
(7, 'ObraSocial', 'No'),
(8, 'DescuentoINSSJP', 'No'),
(9, 'CuotaSindical', 'No'),
(10, 'Asignaciones', 'No'),
(11, 'Bonificacion', 'No'),
(12, 'AcuentaFuturoAumento', 'No'),
(13, 'Feriado', 'No'),
(14, 'Presentismo', 'No'),
(15, 'Ley 19032', 'No');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ComDatEmpr`
--

CREATE TABLE `ComDatEmpr` (
  `CuitDatEmpr` double NOT NULL,
  `Razon_Social` varchar(50) NOT NULL,
  `NombreFantasia` varchar(50) NOT NULL,
  `Imagen` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ComDatEmpr`
--

INSERT INTO `ComDatEmpr` (`CuitDatEmpr`, `Razon_Social`, `NombreFantasia`, `Imagen`) VALUES
(12345678912, 'Razon_Social', 'NombreFantasia', 'http://planidear.com.ar/Comofra/img/LogoPaginaIdear16-5-21SF.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ComEmpleado`
--

CREATE TABLE `ComEmpleado` (
  `IdPersonal` int(11) NOT NULL,
  `CUIT_Empl` bigint(11) NOT NULL,
  `Nombres` varchar(50) NOT NULL,
  `Apellidos` varchar(50) NOT NULL,
  `FechaIngreso` date NOT NULL,
  `FechaPrueba` date NOT NULL,
  `Aprobado` char(2) NOT NULL DEFAULT '',
  `FechaSalida` date NOT NULL,
  `Foto` varchar(200) NOT NULL,
  `FechaNacimiento` date NOT NULL,
  `Domicilio` varchar(100) NOT NULL,
  `Localidad` varchar(50) NOT NULL,
  `Provincia` varchar(50) NOT NULL,
  `Nacionalidad` varchar(50) NOT NULL,
  `EstadoCivil` varchar(50) NOT NULL,
  `VenCarnet` date NOT NULL,
  `TipoCarnet` varchar(20) NOT NULL,
  `Telefono` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Obs` varchar(200) NOT NULL,
  `Fk_CategSueld` int(11) NOT NULL DEFAULT '1',
  `Baja` varchar(2) NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ComEmpleado`
--

INSERT INTO `ComEmpleado` (`IdPersonal`, `CUIT_Empl`, `Nombres`, `Apellidos`, `FechaIngreso`, `FechaPrueba`, `Aprobado`, `FechaSalida`, `Foto`, `FechaNacimiento`, `Domicilio`, `Localidad`, `Provincia`, `Nacionalidad`, `EstadoCivil`, `VenCarnet`, `TipoCarnet`, `Telefono`, `Email`, `Obs`, `Fk_CategSueld`, `Baja`) VALUES
(2, 20302806285, 'Gustavo', 'Godoy', '2022-03-26', '2022-04-12', '', '0000-00-00', 'http://planidear.com.ar/RRHH/ImgGustavo.jpg', '1983-03-07', 'Domicilio', 'Localidad', 'Cordoba', 'Nacionalidad', 'EstadoCivil', '2022-02-05', '', 'Telefono', 'Email', 'Obs', 1, 'No'),
(59, 12345678910, 'PruebaNombre', 'PruebaApellido', '2022-02-28', '2022-04-10', '', '0000-00-00', '/RRHH/img/FaceIcono.png', '2022-03-06', 'sdsd', 'Cordoba', 'Cordoba', 'Argentina', 'Casado', '2022-04-15', '', '03534191741', 'gustavog@live.com.ar', 'nada', 1, 'No');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ComEstadoCivil`
--

CREATE TABLE `ComEstadoCivil` (
  `IdEstadoCivil` int(11) NOT NULL,
  `EstadoCivil` varchar(50) NOT NULL,
  `Detalle` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ComEstadoCivil`
--

INSERT INTO `ComEstadoCivil` (`IdEstadoCivil`, `EstadoCivil`, `Detalle`) VALUES
(1, 'Soltero', 'Una persona que nunca ha adquirido matrimonio civi'),
(2, 'Casado', 'na persona que ha adquirido matrimonio civil y no '),
(3, 'Divorciado', 'Una persona casada que ha concluido un trámite jud'),
(4, 'Viudo', 'Una persona casada cuyo cónyuge ha fallecido'),
(5, 'Concubinato', 'Dos personas que viven como pareja en un tiempo de'),
(7, 'Separación en proceso judicial', 'Como su nombre lo indica, una persona casada que s');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ComEstudios`
--

CREATE TABLE `ComEstudios` (
  `IdEstudio` int(11) NOT NULL,
  `Estudio` varchar(50) COLLATE utf32_spanish_ci NOT NULL,
  `Institucion` varchar(50) COLLATE utf32_spanish_ci NOT NULL,
  `Descripcion` varchar(50) COLLATE utf32_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

--
-- Volcado de datos para la tabla `ComEstudios`
--

INSERT INTO `ComEstudios` (`IdEstudio`, `Estudio`, `Institucion`, `Descripcion`) VALUES
(1, 'Ingenieria en sistema', 'Institucion ', 'Descripcion'),
(4, 'Tec. Desarrollador web', 'ISPC', ''),
(5, 'Contador', 'UBA', 'Descripcion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ComEstudPersonal`
--

CREATE TABLE `ComEstudPersonal` (
  `IdEstudPersonal` int(11) NOT NULL,
  `Cuit_EstuPers` bigint(9) NOT NULL,
  `EstudioPersonal` varchar(50) NOT NULL,
  `Estado` varchar(50) NOT NULL,
  `Anios` int(11) NOT NULL,
  `Obs` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ComEstudPersonal`
--

INSERT INTO `ComEstudPersonal` (`IdEstudPersonal`, `Cuit_EstuPers`, `EstudioPersonal`, `Estado`, `Anios`, `Obs`) VALUES
(3, 20302806285, 'Ingenieria en Sistema', 'Activo', 5, ''),
(50, 20302806285, 'Analista en sistema', 'Terminado', 0, ''),
(184, 20302806285, 'Analista en sistema', 'Terminado', 2, ''),
(186, 20302806285, 'Contador', 'Activo', 0, ''),
(189, 20302806285, 'EstudioPersonal', 'Estado', 1, ''),
(190, 20302806285, 'EstudioPersonal', 'Estado', 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ComHorario`
--

CREATE TABLE `ComHorario` (
  `idComHorario` int(11) NOT NULL,
  `CUIT` bigint(20) NOT NULL,
  `Times` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Dia` date NOT NULL,
  `DiaIngr` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DiaSal` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `TipoHora` int(11) NOT NULL DEFAULT '1',
  `Activo` char(2) NOT NULL DEFAULT 'si'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ComHorario`
--

INSERT INTO `ComHorario` (`idComHorario`, `CUIT`, `Times`, `Dia`, `DiaIngr`, `DiaSal`, `TipoHora`, `Activo`) VALUES
(79, 20302806285, '2022-03-01 03:00:01', '2022-03-01', '2022-03-01 08:00:01', '2022-03-01 16:08:01', 3, 'si'),
(93, 20302806285, '2022-03-02 11:00:58', '2022-03-02', '2022-03-02 08:00:58', '2022-03-02 16:11:36', 1, 'si'),
(95, 20302806285, '2022-03-03 10:52:13', '2022-03-03', '2022-03-03 07:52:13', '2022-03-03 16:12:21', 1, 'si'),
(96, 20302806285, '2022-03-04 10:53:19', '2022-03-04', '2022-03-04 07:53:19', '2022-03-04 16:25:21', 1, 'si'),
(98, 20302806285, '2022-03-07 10:53:35', '2022-03-07', '2022-03-07 07:53:35', '2022-03-07 16:19:27', 1, 'si'),
(99, 20302806285, '2022-03-08 10:54:07', '2022-03-08', '2022-03-08 07:54:07', '2022-03-08 16:09:09', 1, 'si'),
(100, 20302806285, '2022-03-09 11:46:39', '2022-03-09', '2022-03-09 05:56:39', '2022-03-09 16:11:39', 1, 'si'),
(101, 20302806285, '2022-03-10 09:04:54', '2022-03-10', '2022-03-10 05:59:54', '2022-03-10 17:01:54', 1, 'si'),
(102, 20302806285, '2022-03-11 09:12:49', '2022-03-11', '2022-03-11 06:12:49', '2022-03-11 16:05:23', 1, 'si'),
(103, 20302806285, '2022-03-14 08:54:59', '2022-03-14', '2022-03-14 05:54:59', '2022-03-14 16:38:24', 1, 'si'),
(105, 20302806285, '2022-03-15 08:55:36', '2022-03-15', '2022-03-15 05:55:36', '2022-03-15 17:08:26', 1, 'si'),
(106, 20302806285, '2022-03-16 08:55:41', '2022-03-16', '2022-03-16 05:55:41', '2022-03-16 16:06:39', 1, 'si'),
(107, 20302806285, '2022-03-17 08:55:10', '2022-03-17', '2022-03-17 05:55:10', '2022-03-17 15:34:21', 1, 'si'),
(108, 20302806285, '2022-03-18 08:53:47', '2022-03-18', '2022-03-18 05:53:47', '2022-03-18 15:13:47', 1, 'si'),
(109, 20302806285, '2022-03-21 08:53:33', '2022-03-21', '2022-03-21 05:53:33', '2022-03-21 15:23:33', 1, 'si'),
(110, 20302806285, '2022-03-22 21:36:34', '2022-03-22', '2022-03-22 05:56:34', '2022-03-22 15:06:34', 1, 'si'),
(114, 20302806285, '2022-03-23 09:01:31', '2022-03-23', '2022-03-23 05:51:31', '2022-03-23 16:00:44', 1, 'si'),
(116, 20302806285, '2022-03-24 08:54:02', '2022-03-24', '2022-03-24 05:54:02', '2022-03-24 15:04:02', 1, 'si'),
(117, 20302806285, '2022-03-28 08:55:56', '2022-03-28', '2022-03-28 05:55:56', '2022-03-28 15:30:42', 1, 'si'),
(119, 20302806285, '2022-03-29 19:09:42', '2022-03-29', '2022-03-29 06:00:02', '2022-03-29 16:10:06', 1, 'si'),
(120, 20302806285, '2022-03-30 08:59:01', '2022-03-30', '2022-03-30 05:59:01', '2022-03-30 15:30:34', 1, 'si'),
(121, 20302806285, '2022-03-31 08:59:01', '2022-03-31', '2022-03-31 05:59:01', '2022-03-31 16:06:58', 1, 'si'),
(122, 20302806285, '2022-04-01 18:07:34', '2022-04-01', '2022-04-01 06:00:00', '2022-04-01 15:07:40', 1, 'si'),
(123, 20302806285, '2022-04-02 09:01:32', '2022-04-02', '2022-04-02 05:59:32', '2022-04-02 09:01:09', 1, 'si'),
(124, 20302806285, '2022-04-04 08:56:28', '2022-04-04', '2022-04-04 05:56:28', '2022-04-04 15:42:00', 1, 'si'),
(125, 20302806285, '2022-04-05 08:52:54', '2022-04-05', '2022-04-05 05:52:54', '2022-04-05 15:32:54', 1, 'si'),
(126, 20302806285, '2022-04-06 08:53:39', '2022-04-06', '2022-04-06 05:53:39', '2022-04-06 16:10:39', 1, 'si'),
(127, 20302806285, '2022-04-07 08:57:44', '2022-04-07', '2022-04-07 05:57:44', '2022-04-07 15:07:44', 1, 'si'),
(128, 20302806285, '2022-04-08 08:57:57', '2022-04-08', '2022-04-08 05:57:57', '2022-04-08 15:16:29', 1, 'si'),
(131, 20302806285, '2022-04-11 08:52:15', '2022-04-11', '2022-04-11 05:52:15', '2022-04-11 15:34:42', 1, 'si'),
(132, 20302806285, '2022-04-12 08:54:19', '2022-04-12', '2022-04-12 05:54:19', '2022-04-12 15:16:37', 1, 'si'),
(133, 20302806285, '2022-04-13 08:54:05', '2022-04-13', '2022-04-13 05:54:05', '2022-04-13 15:02:02', 1, 'si'),
(135, 20302806285, '2022-04-14 18:35:49', '2022-04-14', '2022-04-14 05:55:49', '2022-04-14 15:05:49', 1, 'si'),
(136, 12345678910, '2022-04-14 18:35:49', '2022-04-14', '2022-04-14 05:55:49', '2022-04-14 15:05:49', 1, 'si'),
(137, 20302806285, '2022-04-18 08:55:47', '2022-04-18', '2022-04-18 05:55:47', '2022-04-18 16:10:39', 1, 'si'),
(138, 20302806285, '2022-04-19 08:55:46', '2022-04-19', '2022-04-19 05:55:46', '2022-04-19 15:21:20', 1, 'si'),
(139, 20302806285, '2022-04-20 08:57:03', '2022-04-20', '2022-04-20 05:57:03', '2022-04-20 15:20:03', 1, 'si'),
(140, 20302806285, '2022-04-21 08:59:19', '2022-04-21', '2022-04-21 05:59:19', '2022-04-21 15:05:34', 1, 'si'),
(141, 20302806285, '2022-04-22 08:57:23', '2022-04-22', '2022-04-22 05:57:23', '2022-04-22 15:00:23', 1, 'si'),
(143, 20302806285, '2022-04-22 09:00:49', '2022-04-22', '2022-04-22 15:00:49', '2022-04-22 15:00:49', 1, 'no'),
(144, 20302806285, '2022-04-25 08:57:00', '2022-04-25', '2022-04-25 05:57:00', '2022-04-25 15:32:01', 1, 'si'),
(145, 20302806285, '2022-04-26 08:57:02', '2022-04-26', '2022-04-26 05:57:02', '2022-04-26 15:13:54', 1, 'si'),
(146, 20302806285, '2022-04-27 09:00:22', '2022-04-27', '2022-04-27 06:00:22', '2022-04-27 15:05:00', 1, 'si'),
(147, 20302806285, '2022-04-28 09:04:55', '2022-04-28', '2022-04-28 06:04:55', '2022-04-28 15:07:55', 1, 'si'),
(148, 20302806285, '2022-04-29 08:58:17', '2022-04-29', '2022-04-29 05:58:17', '2022-04-29 15:03:35', 1, 'si'),
(149, 20302806285, '2022-04-30 08:57:46', '2022-04-30', '2022-04-30 05:57:46', '2022-04-30 12:21:37', 1, 'si'),
(150, 20302806285, '2022-05-02 08:52:36', '2022-05-02', '2022-05-02 05:52:36', '2022-05-02 05:52:36', 1, 'no'),
(151, 20302806285, '2022-05-02 20:10:41', '2022-05-02', '2022-05-02 06:00:00', '2022-05-02 16:10:41', 1, 'si'),
(152, 20302806285, '2022-05-03 08:57:40', '2022-05-03', '2022-05-03 05:57:40', '2022-05-03 15:04:05', 1, 'si'),
(153, 20302806285, '2022-05-04 08:54:46', '2022-05-04', '2022-05-04 05:54:46', '2022-05-04 15:18:25', 1, 'si'),
(154, 20302806285, '2022-05-05 08:59:44', '2022-05-05', '2022-05-05 05:59:44', '2022-05-05 16:10:22', 1, 'si'),
(155, 20302806285, '2022-05-06 08:56:47', '2022-05-06', '2022-05-06 05:56:47', '2022-05-06 15:15:09', 1, 'si'),
(156, 20302806285, '2022-05-09 09:00:13', '2022-05-09', '2022-05-09 06:00:13', '2022-05-09 15:08:22', 1, 'si'),
(157, 20302806285, '2022-05-10 08:58:22', '2022-05-10', '2022-05-10 05:58:22', '2022-05-10 15:13:46', 1, 'si'),
(158, 20302806285, '2022-05-11 08:58:30', '2022-05-11', '2022-05-11 05:58:30', '2022-05-11 15:21:36', 1, 'si'),
(159, 20302806285, '2022-05-12 08:58:05', '2022-05-12', '2022-05-12 05:58:05', '2022-05-12 15:09:58', 1, 'si'),
(160, 20302806285, '2022-05-13 08:59:20', '2022-05-13', '2022-05-13 05:59:20', '2022-05-13 14:00:20', 1, 'si'),
(161, 20302806285, '2022-05-16 08:58:41', '2022-05-16', '2022-05-16 05:58:41', '2022-05-16 15:45:26', 1, 'si'),
(162, 20302806285, '2022-05-19 08:59:35', '2022-05-19', '2022-05-19 05:59:35', '2022-05-19 15:09:41', 1, 'si'),
(163, 20302806285, '2022-05-20 09:02:21', '2022-05-20', '2022-05-20 06:02:21', '2022-05-20 06:02:21', 1, 'no'),
(164, 20302806285, '2022-05-20 09:06:25', '2022-05-20', '2022-05-20 06:06:25', '2022-05-20 14:44:36', 1, 'si'),
(165, 0, '2022-05-20 17:44:13', '2022-05-20', '2022-05-20 14:44:13', '2022-05-20 14:44:13', 1, 'no'),
(166, 20302806285, '2022-05-23 08:56:14', '2022-05-23', '2022-05-23 05:56:14', '2022-05-23 16:55:47', 1, 'si'),
(167, 0, '2022-05-23 08:56:19', '2022-05-23', '2022-05-23 05:56:19', '2022-05-23 05:56:19', 1, 'no'),
(168, 20302806285, '2022-05-24 08:55:16', '2022-05-24', '2022-05-24 05:55:16', '2022-05-24 15:45:24', 1, 'si'),
(169, 20302806285, '2022-05-26 08:58:19', '2022-05-26', '2022-05-26 05:58:19', '2022-05-26 15:45:49', 1, 'si'),
(170, 20302806285, '2022-05-27 08:58:31', '2022-05-27', '2022-05-27 05:58:31', '2022-05-27 15:12:55', 1, 'si'),
(171, 20302806285, '2022-05-30 08:57:44', '2022-05-30', '2022-05-30 05:57:44', '2022-05-31 15:15:23', 1, 'si'),
(172, 20302806285, '2022-06-01 08:59:04', '2022-06-01', '2022-06-01 05:59:04', '2022-06-01 15:14:07', 1, 'si'),
(173, 20302806285, '2022-06-06 09:03:40', '2022-06-06', '2022-06-06 06:03:40', '2022-06-06 16:02:46', 1, 'si'),
(174, 20302806285, '2022-06-07 09:07:22', '2022-06-07', '2022-06-07 06:07:22', '2022-06-07 16:16:38', 1, 'si'),
(175, 20302806285, '2022-06-08 08:59:43', '2022-06-08', '2022-06-08 05:59:43', '2022-06-08 15:00:36', 1, 'si'),
(176, 20302806285, '2022-06-09 09:00:44', '2022-06-09', '2022-06-09 06:00:44', '2022-06-09 15:00:44', 1, 'si'),
(177, 20302806285, '2022-06-10 08:59:55', '2022-06-10', '2022-06-10 05:59:55', '2022-06-10 15:42:41', 1, 'si'),
(178, 20302806285, '2022-06-13 08:56:38', '2022-06-13', '2022-06-13 05:56:38', '2022-06-13 16:03:20', 1, 'si'),
(179, 20302806285, '2022-06-15 08:59:44', '2022-06-15', '2022-06-15 05:59:44', '2022-06-15 16:03:44', 1, 'si'),
(180, 20302806285, '2022-06-16 09:00:49', '2022-06-16', '2022-06-16 05:59:49', '2022-06-16 06:00:49', 1, 'no'),
(181, 20302806285, '2022-06-16 09:00:57', '2022-06-16', '2022-06-16 05:59:57', '2022-06-16 15:27:15', 1, 'si'),
(182, 20302806285, '2022-06-14 10:06:21', '2022-06-14', '2022-06-14 06:00:00', '2022-06-14 15:06:21', 1, 'si'),
(183, 20302806285, '2022-06-17 09:02:52', '2022-06-17', '2022-06-17 06:02:52', '2022-06-17 12:07:38', 1, 'si'),
(184, 20302806285, '2022-06-21 08:59:52', '2022-06-21', '2022-06-21 05:59:52', '2022-06-21 16:00:52', 1, 'si'),
(185, 20302806285, '2022-06-22 09:00:57', '2022-06-22', '2022-06-22 06:00:57', '2022-06-22 15:50:16', 1, 'si'),
(187, 20302806285, '2022-06-23 08:58:57', '2022-06-23', '2022-06-23 05:58:57', '2022-06-23 16:02:56', 1, 'si'),
(188, 20302506285, '2022-06-24 08:58:44', '2022-06-24', '2022-06-24 05:58:44', '2022-06-24 16:28:44', 1, 'no'),
(189, 20302806285, '2022-06-24 08:58:57', '2022-06-24', '2022-06-24 05:58:57', '2022-06-24 16:22:56', 1, 'si'),
(190, 20302806285, '2022-06-25 09:08:10', '2022-06-25', '2022-06-25 06:08:10', '2022-06-25 09:16:02', 1, 'si'),
(191, 20302806285, '2022-06-26 19:02:56', '2022-06-26', '2022-06-26 16:02:56', '2022-06-26 18:38:43', 1, 'si'),
(192, 20302806285, '2022-06-02 08:50:04', '2022-06-02', '2022-06-02 05:50:04', '2022-06-02 15:10:07', 1, 'si'),
(193, 20302806285, '2022-06-03 08:53:04', '2022-06-03', '2022-06-03 05:53:04', '2022-06-03 14:13:03', 1, 'si'),
(194, 20302806285, '2022-06-27 09:03:29', '2022-06-27', '2022-06-27 06:00:29', '2022-06-27 16:03:05', 1, 'si'),
(195, 20302806285, '2022-06-27 19:04:17', '2022-06-27', '2022-06-27 06:00:07', '2022-06-27 16:04:17', 1, 'no'),
(196, 20302806285, '2022-06-28 09:00:59', '2022-06-28', '2022-06-28 06:00:59', '2022-06-28 16:58:45', 1, 'si'),
(197, 20302806285, '2022-06-29 10:57:38', '2022-06-29', '2022-06-29 05:57:38', '2022-06-30 06:06:20', 1, 'si'),
(198, 20302806285, '2022-06-30 09:06:27', '2022-06-30', '2022-06-30 06:06:27', '2022-06-30 15:32:32', 1, 'si'),
(199, 20302806285, '2022-07-01 09:03:38', '2022-07-01', '2022-07-01 06:03:38', '2022-07-01 14:31:06', 1, 'si'),
(200, 20302806285, '2022-07-02 09:06:15', '2022-07-02', '2022-07-02 06:06:15', '2022-07-02 11:20:27', 1, 'si');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ComHorarioTeorico`
--

CREATE TABLE `ComHorarioTeorico` (
  `idComHoraTeor` int(11) NOT NULL,
  `CuitTeor` bigint(20) NOT NULL,
  `Times` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DiaTeor` date NOT NULL,
  `DiaIngrTeor` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DiaSalTeor` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `TipoHora` int(11) NOT NULL DEFAULT '1',
  `FkTipoHorario` varchar(20) NOT NULL DEFAULT 'Normal'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ComHorarioTeorico`
--

INSERT INTO `ComHorarioTeorico` (`idComHoraTeor`, `CuitTeor`, `Times`, `DiaTeor`, `DiaIngrTeor`, `DiaSalTeor`, `TipoHora`, `FkTipoHorario`) VALUES
(4, 20302806285, '2022-04-11 09:00:00', '2022-04-11', '2022-04-11 06:00:00', '2022-04-11 15:00:00', 1, 'Normal'),
(5, 20302806285, '2022-04-12 09:00:00', '2022-04-12', '2022-04-12 06:00:00', '2022-04-12 15:00:00', 1, 'Normal'),
(6, 20302806285, '2022-04-13 09:00:00', '2022-04-13', '2022-04-13 06:00:00', '2022-04-13 15:00:00', 1, 'Normal'),
(190, 20302806285, '2022-04-14 09:00:00', '2022-04-14', '2022-04-14 06:00:00', '2022-04-14 15:00:00', 1, 'Normal'),
(191, 20302806285, '2022-04-15 09:00:00', '2022-04-15', '2022-04-15 06:00:00', '2022-04-15 14:00:00', 1, 'Normal'),
(192, 20302806285, '2022-04-18 09:00:00', '2022-04-18', '2022-04-18 06:00:00', '2022-04-18 15:00:00', 1, 'Normal'),
(205, 20302806285, '2022-04-19 09:00:00', '2022-04-19', '2022-04-19 06:00:00', '2022-04-19 15:00:00', 1, 'Normal'),
(206, 20302806285, '2022-04-17 05:39:20', '2022-04-20', '2022-04-20 06:00:00', '2022-04-20 15:00:00', 1, 'Normal'),
(215, 12345678910, '2022-04-17 13:28:12', '2022-04-18', '2022-04-18 00:00:00', '2022-04-18 08:00:00', 1, 'Vacaciones'),
(216, 12345678910, '2022-04-17 13:28:12', '2022-04-19', '2022-04-19 00:00:00', '2022-04-19 08:00:00', 1, 'Vacaciones'),
(217, 20302806285, '2022-04-17 13:46:19', '2022-04-01', '2022-04-01 06:00:00', '2022-04-01 14:00:00', 1, 'Normal'),
(218, 20302806285, '2022-04-17 13:46:19', '2022-04-02', '2022-04-02 06:00:00', '2022-04-02 09:00:00', 1, 'FeriadoCobro'),
(219, 20302806285, '2022-04-17 13:46:19', '2022-04-04', '2022-04-04 06:00:00', '2022-04-04 15:00:00', 1, 'Normal'),
(220, 20302806285, '2022-04-17 13:46:19', '2022-04-05', '2022-04-05 06:00:00', '2022-04-05 15:00:00', 1, 'Normal'),
(221, 20302806285, '2022-04-17 13:46:19', '2022-04-06', '2022-04-06 06:00:00', '2022-04-06 15:00:00', 1, 'Normal'),
(222, 20302806285, '2022-04-17 13:46:19', '2022-04-07', '2022-04-07 06:00:00', '2022-04-06 15:00:00', 1, 'Normal'),
(223, 20302806285, '2022-04-17 13:46:52', '2022-04-08', '2022-04-08 06:00:00', '2022-04-08 14:00:00', 1, 'Normal'),
(225, 20302806285, '2022-04-17 19:32:00', '2022-04-21', '2022-04-21 06:00:00', '2022-04-21 15:00:00', 1, 'Normal'),
(226, 12345678910, '2022-04-21 21:53:47', '2022-04-21', '2022-04-21 18:53:47', '2022-04-21 18:53:47', 1, 'Normal'),
(227, 20302806285, '2022-04-21 21:57:46', '2022-04-25', '2022-04-25 06:00:00', '2022-04-25 15:00:00', 1, 'Normal'),
(228, 20302806285, '2022-04-21 22:00:57', '2022-04-26', '2022-04-26 06:00:00', '2022-04-26 15:00:00', 1, 'Normal'),
(229, 20302806285, '2022-04-21 22:00:57', '2022-04-27', '2022-04-27 06:00:00', '2022-04-27 15:00:00', 1, 'Normal'),
(230, 20302806285, '2022-04-21 22:00:57', '2022-04-28', '2022-04-28 06:00:00', '2022-04-28 15:00:00', 1, 'Normal'),
(231, 20302806285, '2022-04-21 22:02:15', '2022-04-29', '2022-04-29 06:00:00', '2022-04-29 14:00:00', 1, 'Normal'),
(233, 12345678910, '2022-04-21 21:57:46', '2022-04-25', '2022-04-25 06:00:00', '2022-04-25 15:00:00', 1, 'Normal'),
(234, 12345678910, '2022-04-21 22:00:57', '2022-04-26', '2022-04-26 06:00:00', '2022-04-26 15:00:00', 1, 'Normal'),
(235, 12345678910, '2022-04-21 22:00:57', '2022-04-27', '2022-04-27 06:00:00', '2022-04-27 15:00:00', 1, 'Normal'),
(236, 12345678910, '2022-04-21 22:00:57', '2022-04-28', '2022-04-28 06:00:00', '2022-04-28 15:00:00', 1, 'Normal'),
(237, 12345678910, '2022-04-21 22:02:15', '2022-04-29', '2022-04-29 06:00:00', '2022-04-29 14:00:00', 1, 'Normal'),
(238, 20302806285, '2022-05-01 22:34:17', '2022-05-02', '2022-05-02 06:00:00', '2022-05-02 15:00:00', 1, 'Normal'),
(239, 20302806285, '2022-05-01 22:34:17', '2022-05-03', '2022-05-03 06:00:00', '2022-05-03 15:00:00', 1, 'Normal'),
(240, 20302806285, '2022-05-01 22:34:17', '2022-05-04', '2022-05-04 06:00:00', '2022-05-04 15:00:00', 1, 'Normal'),
(241, 20302806285, '2022-05-01 22:34:17', '2022-05-05', '2022-05-05 06:00:00', '2022-05-05 15:00:00', 1, 'Normal'),
(242, 20302806285, '2022-05-01 22:34:17', '2022-05-06', '2022-05-06 06:00:00', '2022-05-06 14:00:00', 1, 'Normal'),
(243, 20302806285, '2022-05-01 22:34:17', '2022-05-07', '2022-05-07 00:00:00', '2022-05-07 00:00:00', 1, 'Sabado'),
(244, 20302806285, '2022-05-09 18:10:28', '2022-05-09', '2022-05-09 06:00:00', '2022-05-09 15:00:00', 1, 'Normal'),
(245, 20302806285, '2022-05-09 18:10:28', '2022-05-10', '2022-05-10 06:00:00', '2022-05-10 15:00:00', 1, 'Normal'),
(246, 20302806285, '2022-05-09 18:10:28', '2022-05-11', '2022-05-11 06:00:00', '2022-05-11 15:00:00', 1, 'Normal'),
(247, 20302806285, '2022-05-09 18:10:28', '2022-05-12', '2022-05-12 06:00:00', '2022-05-12 15:00:00', 1, 'Normal'),
(248, 20302806285, '2022-05-09 18:10:28', '2022-05-13', '2022-05-13 06:00:00', '2022-05-13 15:00:00', 1, 'Normal'),
(249, 20302806285, '2022-05-09 18:10:28', '2022-05-14', '2022-05-14 00:00:00', '2022-05-14 00:00:00', 1, 'Sabado'),
(250, 20302806285, '2022-05-25 12:08:37', '2022-05-16', '2022-05-16 06:00:00', '2022-05-16 15:00:00', 1, 'Normal'),
(251, 20302806285, '2022-05-25 12:08:37', '2022-05-17', '2022-05-17 06:00:00', '2022-05-17 15:00:00', 1, 'Normal'),
(252, 20302806285, '2022-05-25 12:08:37', '2022-05-18', '2022-05-18 06:00:00', '2022-05-18 15:00:00', 1, 'Normal'),
(253, 20302806285, '2022-05-25 12:08:37', '2022-05-19', '2022-05-19 06:00:00', '2022-05-19 15:00:00', 1, 'Normal'),
(254, 20302806285, '2022-05-25 12:08:37', '2022-05-20', '2022-05-20 06:00:00', '2022-05-20 15:00:00', 1, 'Normal'),
(255, 20302806285, '2022-05-25 12:08:37', '2022-05-21', '2022-05-21 00:00:00', '2022-05-21 00:00:00', 1, 'Normal'),
(256, 20302806285, '2022-05-25 12:10:13', '2022-05-23', '2022-05-23 06:00:00', '2022-05-23 15:00:00', 1, 'Normal'),
(257, 20302806285, '2022-05-25 12:10:13', '2022-05-24', '2022-05-24 06:00:00', '2022-05-24 15:00:00', 1, 'Normal'),
(258, 20302806285, '2022-05-25 12:10:13', '2022-05-25', '2022-05-25 06:00:00', '2022-05-25 15:00:00', 1, 'Normal'),
(259, 20302806285, '2022-05-25 12:10:13', '2022-05-26', '2022-05-26 06:00:00', '2022-06-12 15:00:00', 1, 'Normal'),
(260, 20302806285, '2022-05-25 12:10:13', '2022-05-27', '2022-05-27 06:00:00', '2022-05-27 14:00:00', 1, 'Normal'),
(261, 20302806285, '2022-05-25 12:10:13', '2022-05-28', '2022-05-28 00:00:00', '2022-05-28 00:00:00', 1, 'Normal'),
(262, 20302806285, '2022-05-30 19:44:51', '2022-05-30', '2022-05-30 06:00:00', '2022-05-30 15:00:00', 1, 'Normal'),
(263, 20302806285, '2022-05-30 19:44:51', '2022-05-31', '2022-05-31 06:00:00', '2022-05-31 15:00:00', 1, 'Normal'),
(264, 20302806285, '2022-05-30 19:44:51', '2022-06-01', '2022-06-01 06:00:00', '2022-06-01 15:00:00', 1, 'Normal'),
(265, 20302806285, '2022-05-30 19:44:51', '2022-06-02', '2022-06-02 06:00:00', '2022-06-02 15:00:00', 1, 'Normal'),
(266, 20302806285, '2022-05-30 19:44:51', '2022-06-03', '2022-06-03 06:00:00', '2022-06-03 14:00:00', 1, 'Normal'),
(267, 20302806285, '2022-05-30 19:44:51', '2022-06-04', '2022-06-04 00:00:00', '2022-06-04 00:00:00', 1, 'Normal'),
(268, 20302806285, '2022-06-05 21:05:25', '2022-06-06', '2022-06-06 06:00:00', '2022-06-06 15:00:00', 1, 'Normal'),
(269, 20302806285, '2022-06-05 21:05:25', '2022-06-07', '2022-06-07 06:00:00', '2022-06-07 15:00:00', 1, 'Normal'),
(270, 20302806285, '2022-06-05 21:05:25', '2022-06-08', '2022-06-08 06:00:00', '2022-06-08 15:00:00', 1, 'Normal'),
(271, 20302806285, '2022-06-05 21:05:25', '2022-06-09', '2022-06-09 06:00:00', '2022-06-09 15:00:00', 1, 'Normal'),
(272, 20302806285, '2022-06-05 21:05:25', '2022-06-10', '2022-06-10 06:00:00', '2022-06-10 14:00:00', 1, 'Normal'),
(273, 20302806285, '2022-06-05 21:05:25', '2022-06-11', '2022-06-11 00:00:00', '2022-06-11 00:00:00', 1, 'Normal'),
(274, 20302806285, '2022-06-05 21:06:45', '2022-06-13', '2022-06-13 06:00:00', '2022-06-13 15:00:00', 1, 'Normal'),
(275, 20302806285, '2022-06-05 21:06:45', '2022-06-14', '2022-06-14 06:00:00', '2022-06-14 15:00:00', 1, 'Normal'),
(276, 20302806285, '2022-06-05 21:06:45', '2022-06-15', '2022-06-15 06:00:00', '2022-06-15 15:00:00', 1, 'Normal'),
(277, 20302806285, '2022-06-05 21:06:45', '2022-06-16', '2022-06-16 06:00:00', '2022-06-16 15:00:00', 1, 'Normal'),
(278, 20302806285, '2022-06-05 21:06:45', '2022-06-17', '2022-06-17 06:00:00', '2022-06-17 15:00:00', 1, 'FeriadoCobro'),
(279, 20302806285, '2022-06-05 21:06:45', '2022-06-18', '2022-06-18 00:00:00', '2022-06-18 00:00:00', 1, 'Normal'),
(280, 20302806285, '2022-06-28 21:33:23', '2022-06-20', '2022-06-20 00:00:00', '2022-06-20 08:00:00', 1, 'FeriadoCobro'),
(281, 20302806285, '2022-06-28 21:33:23', '2022-06-21', '2022-06-21 06:00:00', '2022-06-21 15:00:00', 1, 'Normal'),
(282, 20302806285, '2022-06-28 21:33:23', '2022-06-22', '2022-06-22 06:00:00', '2022-06-22 15:00:00', 1, 'Normal'),
(283, 20302806285, '2022-06-28 21:33:23', '2022-06-23', '2022-06-23 06:00:00', '2022-06-23 15:00:00', 1, 'Normal'),
(284, 20302806285, '2022-06-28 21:33:23', '2022-06-24', '2022-06-24 06:00:00', '2022-06-24 14:00:00', 1, 'Normal'),
(285, 20302806285, '2022-06-28 21:33:23', '2022-06-25', '2022-06-25 00:00:00', '2022-06-25 00:00:00', 1, 'Normal'),
(286, 20302806285, '2022-06-28 21:33:38', '2022-06-26', '2022-06-26 00:00:00', '2022-06-26 00:00:00', 1, 'Normal'),
(287, 20302806285, '2022-06-28 21:35:14', '2022-06-27', '2022-06-27 06:00:00', '2022-06-27 15:00:00', 1, 'Normal'),
(288, 20302806285, '2022-06-28 21:35:14', '2022-06-28', '2022-06-28 06:00:00', '2022-06-28 15:00:00', 1, 'Normal'),
(289, 20302806285, '2022-06-28 21:35:14', '2022-06-29', '2022-06-29 06:00:00', '2022-06-29 13:00:00', 1, 'Normal'),
(290, 20302806285, '2022-06-28 21:35:14', '2022-06-30', '2022-06-30 06:00:00', '2022-06-30 15:00:00', 1, 'Normal'),
(291, 20302806285, '2022-06-28 21:35:14', '2022-07-01', '2022-07-01 06:00:00', '2022-07-01 14:00:00', 1, 'Normal'),
(292, 20302806285, '2022-06-28 21:35:14', '2022-07-02', '2022-07-02 00:00:00', '2022-07-02 00:00:00', 1, 'Normal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ComLiqSueldo`
--

CREATE TABLE `ComLiqSueldo` (
  `Id_LiqSueldo` int(11) NOT NULL,
  `Cuit_LiqSueldo` bigint(11) NOT NULL,
  `Concepto` varchar(20) NOT NULL,
  `HabDeb` int(2) NOT NULL,
  `Cantidad` decimal(6,3) NOT NULL,
  `Valor` decimal(6,3) NOT NULL,
  `Porc` decimal(6,3) NOT NULL,
  `Total` decimal(6,3) NOT NULL,
  `Fk_CatSueldLiq` int(11) NOT NULL,
  `FechaDesde` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `FechaHasta` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Anular` char(2) NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ComLiqSueldo`
--

INSERT INTO `ComLiqSueldo` (`Id_LiqSueldo`, `Cuit_LiqSueldo`, `Concepto`, `HabDeb`, `Cantidad`, `Valor`, `Porc`, `Total`, `Fk_CatSueldLiq`, `FechaDesde`, `FechaHasta`, `Anular`) VALUES
(1, 20302806285, 'BasicoHora', 1, '190.000', '190.380', '1.000', '0.000', 1, '2022-03-22 21:33:37', '0000-00-00 00:00:00', 'No'),
(23, 20302806285, 'Antiguedad', 1, '0.000', '192.380', '0.100', '0.000', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No'),
(24, 20302806285, 'Presentismo', 1, '0.000', '192.380', '0.833', '0.000', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No'),
(25, 20302806285, 'Jubilacion', -1, '0.000', '190.380', '0.110', '0.000', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No'),
(26, 20302806285, 'Ley 19032', -1, '0.000', '190.380', '0.300', '0.000', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ComNacion`
--

CREATE TABLE `ComNacion` (
  `IdNacionalidad` int(11) NOT NULL,
  `Nacionalidad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ComNacion`
--

INSERT INTO `ComNacion` (`IdNacionalidad`, `Nacionalidad`) VALUES
(1, 'Argentina'),
(2, 'Paraguay');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `ComSumaHorario`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `ComSumaHorario` (
`CUIT_Empl` bigint(11)
,`SumaHoras` decimal(46,4)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ComTipoCarnet`
--

CREATE TABLE `ComTipoCarnet` (
  `IdTipoCarnet` int(11) NOT NULL,
  `TipoCarnet` varchar(20) NOT NULL,
  `Descripcion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ComTipoCarnet`
--

INSERT INTO `ComTipoCarnet` (`IdTipoCarnet`, `TipoCarnet`, `Descripcion`) VALUES
(1, 'A1', 'Habilita para conducir motocicletas ligeras sin sidecar con una cilindrada máxima de 125Cc y una potencia máxima de 11 kW (15 cv). La relación potencia/masa no puede superior a 0,11 kW/kg. Se podrán c'),
(5, 'A2', 'Autoriza para conducir motocicletas con una potencia máxima de 35 kW (47 cv) y una relación potencia/peso máxima de 0,2 kW/kg y no derivadas de un vehículo con más del doble de su potencia. Permite co'),
(6, 'A', 'Requiere haber estado en posesión del permiso A2 durante, como mínimo 2 años y permite conducir motocicletas de cualquier potencia y peso; y de todos los vehículos autorizados por los permisos AM, A1 '),
(7, 'B', 'Es el permiso más habitual, el que todos tenemos. Según se puede leer en la normativa que lo regula, habilita para la conducción de vehículos de dos o tres ruedas y cuadriciclos de motor hasta 3500 Kg'),
(10, 'BTP', 'Se trata de un permiso que se obtiene después de aprobar un examen teórico y es válido sólo en España. Autoriza para conducir vehículos prioritarios cuando circulen en servicio urgente, vehículos que '),
(11, 'C1', 'Para obtenerlo es requisito indispensable ser titular de un carnet de conducir de clase B y ser mayor de 18 años. Permite conducir vehículos de entre 3.500 Kg y 7.500 Kg y cuyo número de asientos, inc'),
(12, 'C', 'Este carnet permite conducir automóviles cuya m.m.a exceda de 3.500 Kg y cuyo número de asientos, incluido el del conductor, no exceda de nueve. Dichos automóviles podrán llevar un remolque de menos d'),
(13, 'D', 'Obtener este permiso te habilita para poder conducir automóviles destinados al transporte de personas cuyo número de asientos, incluido el del conductor, sea superior a nueve (dichos automóviles podrá'),
(14, 'D1', 'Su obtención habilita para la conducción de automóviles destinados al transporte de personas cuyo número de asientos, incluido el del conductor, no exceda de diecisiete, así como llevar un remolque cu'),
(15, 'E', 'Este es el permiso de todos los permisos. Tenerlo es sinónimo de tener todos. Autoriza la conducción de un remolque o semirremolque de más de 750 kilos de m.m.a. Las edad mínima para obtenerlo es de 1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ComTipoHorario`
--

CREATE TABLE `ComTipoHorario` (
  `Id_TipoHorario` int(11) NOT NULL,
  `TipoHorario` varchar(20) NOT NULL,
  `Descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ComTipoHorario`
--

INSERT INTO `ComTipoHorario` (`Id_TipoHorario`, `TipoHorario`, `Descripcion`) VALUES
(1, 'Horarios', 'Descripcion'),
(2, 'Vacaciones', ''),
(3, 'FeriadoCobro', ''),
(4, 'FeriadoNoCobro', ''),
(5, 'CertificadoCobro', ''),
(6, 'CertificadoNoCobro', ''),
(7, 'Normal', ''),
(8, 'Sabado', ''),
(9, 'Domingo', ''),
(10, 'Viernes', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ComValorSueldo`
--

CREATE TABLE `ComValorSueldo` (
  `Id_ValorSueldo` int(11) NOT NULL,
  `Concepto` varchar(20) NOT NULL,
  `HabDeb` int(2) NOT NULL,
  `Cantidad` decimal(6,0) NOT NULL,
  `Valor` decimal(6,2) NOT NULL,
  `Porcentaje` decimal(6,4) NOT NULL,
  `Haber` decimal(6,0) NOT NULL,
  `Deber` decimal(6,0) NOT NULL,
  `Fk_CategSueld` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ComValorSueldo`
--

INSERT INTO `ComValorSueldo` (`Id_ValorSueldo`, `Concepto`, `HabDeb`, `Cantidad`, `Valor`, `Porcentaje`, `Haber`, `Deber`, `Fk_CategSueld`) VALUES
(1, 'BasicoHora', 1, '192', '190.38', '1.0000', '0', '0', 1),
(2, 'Antiguedad', 1, '192', '190.38', '0.1000', '0', '0', 1),
(3, 'Presentismo', 1, '192', '190.38', '0.8330', '0', '0', 1),
(4, 'Jubiliacion', -1, '192', '190.38', '0.1100', '0', '0', 1),
(5, 'Ley 19032', -1, '192', '190.38', '0.0300', '0', '0', 1),
(6, 'Extras', 1, '10', '250.00', '1.0000', '0', '0', 1);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `ComVisEmplHorarioTeor`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `ComVisEmplHorarioTeor` (
`CUIT_Empl` bigint(11)
,`Nombres` varchar(50)
,`Apellidos` varchar(50)
,`Times` timestamp
,`DiaTeor` date
,`DiaIngrTeor` datetime
,`DiaSalTeor` datetime
,`TipoHora` int(11)
,`FkTipoHorario` varchar(20)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `ComVisProvPais`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `ComVisProvPais` (
`Id_Provincia` int(11)
,`Provincia` varchar(50)
,`PaisP` int(11)
,`Borrar` char(2)
,`Pais` varchar(50)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `ComVistaCuentaHoarios`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `ComVistaCuentaHoarios` (
`CUIT` bigint(20)
,`Times` timestamp
,`DiaIngr` datetime
,`DiaSal` datetime
,`Activo` char(2)
,`Horas` bigint(16)
,`DifNegativo` bigint(21)
,`DifPositivo` decimal(24,4)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `ComVistaEstuEmp`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `ComVistaEstuEmp` (
`CUIT_Empl` bigint(11)
,`Nombres` varchar(50)
,`Apellidos` varchar(50)
,`IdEstudPersonal` int(11)
,`Cuit_EstuPers` bigint(9)
,`EstudioPersonal` varchar(50)
,`Estado` varchar(50)
,`Anios` int(11)
,`Obs` varchar(100)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `ComVistaHorarios`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `ComVistaHorarios` (
`CUIT_Empl` bigint(11)
,`Nombres` varchar(50)
,`Apellidos` varchar(50)
,`Dia` date
,`Times` timestamp
,`DiaIngr` datetime
,`DiaSal` datetime
,`TipoHora` int(11)
,`Activo` char(2)
,`Horas` decimal(24,4)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `ComVistaHoraVsTeor`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `ComVistaHoraVsTeor` (
`CuitTeor` bigint(20)
,`DiaTeor` date
,`DiaIngrTeor` datetime
,`DiaSalTeor` datetime
,`FkTipoHorario` varchar(20)
,`CUIT` bigint(20)
,`Dia` date
,`DiaIngr` datetime
,`DiaSal` datetime
,`Activo` char(2)
,`Horas` decimal(24,4)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `ComVistaPais`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `ComVistaPais` (
`PaisP` int(11)
,`Pais` varchar(50)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ComVistaPanel`
--

CREATE TABLE `ComVistaPanel` (
  `idVista` int(11) NOT NULL,
  `Link` varchar(200) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `TipoUserFK` int(11) NOT NULL,
  `Clase` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ComVistaPanel`
--

INSERT INTO `ComVistaPanel` (`idVista`, `Link`, `Nombre`, `TipoUserFK`, `Clase`) VALUES
(1, '/RRHH/ListHorarios.php', 'Horarios', 2, 'Listado'),
(2, '/RRHH/FormPersonal.php', 'Personal', 1, 'Formulario'),
(3, 'http://planidear.com.ar/RRHH/Plantilla.php', 'Plantilla', 1, 'Varios'),
(5, 'http://planidear.com.ar/RRHH/Ingresar.php', 'Horarios ingresar', 2, 'Formulario'),
(6, 'http://planidear.com.ar/RRHH/Salir.php', 'Horarios salir', 2, 'Formulario'),
(7, 'http://planidear.com.ar/RRHH/ListPersonal.php', 'Personal', 2, 'Listado'),
(8, '/RRHH/ListEstudios.php', 'Personal Estudios', 2, 'Listado'),
(9, '/RRHH/FormEstudInser.php', 'Estudios', 2, 'Formulario'),
(10, '/RRHH/FormLocaInser.php', 'Localidad', 2, 'Formulario'),
(11, '/RRHH/FormProvInser.php', 'Provincia', 2, 'Formulario'),
(12, '/RRHH/ListHorTeor.php', 'Horarios', 2, 'Formulario'),
(13, '/RRHH/PruebaSeleccion.php', 'Pruebas', 2, 'Formulario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Descripcion`
--

CREATE TABLE `Descripcion` (
  `Id_Despc` int(11) NOT NULL,
  `N_Id_Menu` int(11) NOT NULL,
  `N_Id_Categ` int(11) NOT NULL,
  `Orden` int(11) NOT NULL,
  `Descripcion` varchar(200) NOT NULL,
  `img` varchar(200) NOT NULL,
  `Archivo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Descripcion`
--

INSERT INTO `Descripcion` (`Id_Despc`, `N_Id_Menu`, `N_Id_Categ`, `Orden`, `Descripcion`, `img`, `Archivo`) VALUES
(1, 1, 1, 1, 'Por Politicas', '', ''),
(2, 1, 1, 2, 'Colores', '', ''),
(3, 1, 1, 3, 'Tamaño', '', ''),
(4, 1, 2, 1, 'El significado del Nombre', '', ''),
(5, 1, 2, 2, 'Tipografia', '', ''),
(6, 2, 1, 1, 'La Politica de Calidad es la linea de acción de una organización para la mejora de sus procesos internos. Se refleja a través de un documento que describe el papel de los tres agentes principales en l', '', ''),
(7, 2, 1, 2, 'La Empresa sera responsable desde el inicio hasta el final, dejando al cliente satisfecho', '', ''),
(8, 2, 2, 1, 'Se desarrollaran las inversiones necesarias siempre garantizando la calidad y servicios para que nuestros precios sean los mas competitivos del mercado.', '', ''),
(9, 2, 2, 2, 'Para su seguridad, se trabaja con stock altos garantizando siempre el abastecimiento y entregas en tiempos y forma', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `DIA_ENTRENAMIENTO`
--

CREATE TABLE `DIA_ENTRENAMIENTO` (
  `ID_DIA_ENTRENAMIENTO` int(11) NOT NULL,
  `ID_RUTINA` int(11) NOT NULL,
  `DESCRIPCION` varchar(100) NOT NULL,
  `NUMERO_DIA` int(11) NOT NULL,
  `HORARIO_DESDE` bigint(20) NOT NULL,
  `HORARIO_HASTA` bigint(20) NOT NULL,
  `PERIODO` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `EJERCICIO`
--

CREATE TABLE `EJERCICIO` (
  `ID_EJERCICIO` int(11) NOT NULL,
  `ID_MUSCULO` int(11) NOT NULL,
  `ID_DIA_ENTRENAMIENTO` int(11) NOT NULL,
  `ID_MAQUINA` int(11) NOT NULL,
  `TIEMPO_USO_MAQUINA` int(11) NOT NULL,
  `DESCANSO` varchar(50) NOT NULL,
  `UNIDAD_DESCANSO` varchar(50) NOT NULL,
  `CANTIDAD_REPETICIONES` int(11) NOT NULL,
  `UNIDAD_REPETICIONES` varchar(50) NOT NULL,
  `ESTADO_MAQUINA` int(11) NOT NULL,
  `EJERCICIO_REALIZADO` int(11) NOT NULL,
  `UNIDAD_TIEMPO_USO` varchar(50) NOT NULL,
  `CANTIDAD_SERIES` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Localidad`
--

CREATE TABLE `Localidad` (
  `Id_Localidad` int(11) NOT NULL,
  `Localidad` varchar(50) NOT NULL,
  `CP` int(11) NOT NULL,
  `Provincia` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Localidad`
--

INSERT INTO `Localidad` (`Id_Localidad`, `Localidad`, `CP`, `Provincia`) VALUES
(2, 'Monte Buey', 2589, 'Cordoba'),
(4, 'Rio Tercero', 5850, 'Cordoba'),
(7, 'Hernando', 5929, 'Cordoba');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `LOCALIDAD`
--

CREATE TABLE `LOCALIDAD` (
  `ID_LOCALIDAD` int(11) NOT NULL,
  `DESCRIPCION` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `LOCALIDAD`
--

INSERT INTO `LOCALIDAD` (`ID_LOCALIDAD`, `DESCRIPCION`) VALUES
(1, 'Cordoba Capital'),
(2, 'Rio Tercero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MAQUINA`
--

CREATE TABLE `MAQUINA` (
  `ID_MAQUINA` int(11) NOT NULL,
  `DESCRIPCION` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `MAQUINA`
--

INSERT INTO `MAQUINA` (`ID_MAQUINA`, `DESCRIPCION`) VALUES
(1, 'Bicicleta'),
(2, 'Cinta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MenuLateral`
--

CREATE TABLE `MenuLateral` (
  `Id_Menu` int(11) NOT NULL,
  `IdNumero` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Descrpcion` varchar(100) NOT NULL,
  `Img` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `MenuLateral`
--

INSERT INTO `MenuLateral` (`Id_Menu`, `IdNumero`, `Nombre`, `Descrpcion`, `Img`) VALUES
(1, 1, 'CaratulaNada', 'Descripción', 'http://planidear.com.ar/Tienda/img/ImgCaratula.jpg'),
(2, 2, 'Politicas', 'Descrpcion	', 'http://planidear.com.ar/Tienda/img/ImgPolitocas.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MUSCULO`
--

CREATE TABLE `MUSCULO` (
  `ID_MUSCULO` int(11) NOT NULL,
  `DESCRIPCION` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `MUSCULO`
--

INSERT INTO `MUSCULO` (`ID_MUSCULO`, `DESCRIPCION`) VALUES
(1, 'Biceps'),
(2, 'Espalda');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MUSCULO_MAQUINA`
--

CREATE TABLE `MUSCULO_MAQUINA` (
  `ID_MAQUINA` int(11) NOT NULL,
  `ID_MUSCULO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `MUSCULO_MAQUINA`
--

INSERT INTO `MUSCULO_MAQUINA` (`ID_MAQUINA`, `ID_MUSCULO`) VALUES
(2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pais`
--

CREATE TABLE `Pais` (
  `Id_Pais` int(11) NOT NULL,
  `Pais` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Pais`
--

INSERT INTO `Pais` (`Id_Pais`, `Pais`) VALUES
(1, 'Argentina'),
(2, 'Paraguay');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PLAN_ENTRENAMIENTO`
--

CREATE TABLE `PLAN_ENTRENAMIENTO` (
  `ID_PLAN_ENTRENAMIENTO` int(11) NOT NULL,
  `ID_ADMINISTRADOR` int(11) NOT NULL,
  `ID_CLIENTE` int(11) NOT NULL,
  `ID_TIPO_PLAN` int(11) NOT NULL,
  `OBSERVACION` varchar(500) DEFAULT NULL,
  `ACEPTADO` int(11) NOT NULL,
  `FECHA_ALTA` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PrAbono`
--

CREATE TABLE `PrAbono` (
  `in_Abono` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Valor` int(10) NOT NULL,
  `id_Factura` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PrCiudad`
--

CREATE TABLE `PrCiudad` (
  `id_Ciudad` int(6) NOT NULL,
  `Ciudad` varchar(130) NOT NULL,
  `id_Depto` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `PrCiudad`
--

INSERT INTO `PrCiudad` (`id_Ciudad`, `Ciudad`, `id_Depto`) VALUES
(1, 'Monte Buey', 1),
(2, 'Riuo Tercero', 2),
(3, 'Monte Buey', 1),
(4, 'Riuo Tercero', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PRCliente`
--

CREATE TABLE `PRCliente` (
  `ID_CLIENTE` int(11) NOT NULL,
  `ID_USUARIO` int(11) NOT NULL,
  `ID_LOCALIDAD` int(11) NOT NULL,
  `DNI` bigint(20) NOT NULL,
  `NOMBRE` varchar(100) NOT NULL,
  `APELLIDO` varchar(100) NOT NULL,
  `CORREO_ELECTRONICO` varchar(100) NOT NULL,
  `FECHA_NAC` datetime NOT NULL,
  `PESO` decimal(4,1) NOT NULL,
  `ESTATURA` decimal(4,1) NOT NULL,
  `IMC` decimal(4,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `PRCliente`
--

INSERT INTO `PRCliente` (`ID_CLIENTE`, `ID_USUARIO`, `ID_LOCALIDAD`, `DNI`, `NOMBRE`, `APELLIDO`, `CORREO_ELECTRONICO`, `FECHA_NAC`, `PESO`, `ESTATURA`, `IMC`) VALUES
(1, 1, 1, 33123456, 'Franco 1', 'Chaz', 'francochaz@gmail.com', '1985-11-30 20:46:13', '79.9', '1.8', '70.0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PrDepartamento`
--

CREATE TABLE `PrDepartamento` (
  `id_depto` int(4) NOT NULL,
  `depto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `PrDepartamento`
--

INSERT INTO `PrDepartamento` (`id_depto`, `depto`) VALUES
(1, 'Marco Juarez'),
(2, 'Tercero Arriba');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PrFactura`
--

CREATE TABLE `PrFactura` (
  `id_Factura` bigint(20) NOT NULL,
  `id_Usuario` int(11) NOT NULL,
  `Total` int(11) NOT NULL,
  `Tipo` int(1) NOT NULL,
  `Fecha_Apertura` date NOT NULL,
  `Fecha_Cierre` date NOT NULL,
  `Dir_Envio` varchar(30) NOT NULL,
  `Id_Ciudad` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PrMaquina`
--

CREATE TABLE `PrMaquina` (
  `Id_Maquina` int(11) NOT NULL,
  `DESCRIPCION` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Proveedor`
--

CREATE TABLE `Proveedor` (
  `CUIT` int(11) NOT NULL,
  `Razon_Social` varchar(100) NOT NULL,
  `Telefono` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Tipo` int(11) NOT NULL,
  `Direccion` varchar(200) NOT NULL,
  `Localidad` int(11) NOT NULL,
  `Provincia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Proveedor`
--

INSERT INTO `Proveedor` (`CUIT`, `Razon_Social`, `Telefono`, `Email`, `Tipo`, `Direccion`, `Localidad`, `Provincia`) VALUES
(20380628, 'Pallcor', '3534244608', 'centropallet@yahoo.com.ar', 2, 'Tokio', 2, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Provincia`
--

CREATE TABLE `Provincia` (
  `Id_Provincia` int(11) NOT NULL,
  `Provincia` varchar(50) NOT NULL,
  `PaisP` int(11) NOT NULL,
  `Borrar` char(2) NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Provincia`
--

INSERT INTO `Provincia` (`Id_Provincia`, `Provincia`, `PaisP`, `Borrar`) VALUES
(9, 'Cordoba', 1, 'No'),
(10, 'Buenos Aires', 1, 'No'),
(11, 'Provincia', 1, 'No'),
(12, 'Catamarca', 2, 'No');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PrProducto`
--

CREATE TABLE `PrProducto` (
  `id_Producto` int(11) NOT NULL,
  `Producto` varchar(50) NOT NULL,
  `Clave` varchar(10) NOT NULL,
  `Costo` int(10) NOT NULL,
  `Valor` int(10) NOT NULL,
  `Cantidad` int(4) NOT NULL,
  `Fecha_Ing` date NOT NULL,
  `Id_Tipo_Prod` int(4) NOT NULL,
  `ImgProd` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `PrProducto`
--

INSERT INTO `PrProducto` (`id_Producto`, `Producto`, `Clave`, `Costo`, `Valor`, `Cantidad`, `Fecha_Ing`, `Id_Tipo_Prod`, `ImgProd`) VALUES
(1, 'Remera', '1234', 100, 250, 10, '2022-06-05', 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PrServicios`
--

CREATE TABLE `PrServicios` (
  `Id_Servicio` int(11) NOT NULL,
  `Id_Factura` bigint(20) NOT NULL,
  `Valor` int(11) NOT NULL,
  `Descripcion` longtext NOT NULL,
  `Estado` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PrTipoPlan`
--

CREATE TABLE `PrTipoPlan` (
  `ID_TipoPlan` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `EdadAceptDesde` int(11) NOT NULL,
  `EdadAceptHasta` int(11) NOT NULL,
  `PesoAcepDesde` int(11) NOT NULL,
  `PesoAcepHasta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PrTipoUsuario`
--

CREATE TABLE `PrTipoUsuario` (
  `IdTipoUsuario` int(11) NOT NULL,
  `TipoUsuario` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `PrTipoUsuario`
--

INSERT INTO `PrTipoUsuario` (`IdTipoUsuario`, `TipoUsuario`) VALUES
(1, 'Admin'),
(2, 'User'),
(3, 'view');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PrTipo_Prod`
--

CREATE TABLE `PrTipo_Prod` (
  `id_Tipo_Prod` int(11) NOT NULL,
  `Nombre` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `PrTipo_Prod`
--

INSERT INTO `PrTipo_Prod` (`id_Tipo_Prod`, `Nombre`) VALUES
(1, 'Vestim');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PrUsuario`
--

CREATE TABLE `PrUsuario` (
  `IdUsuario` int(11) NOT NULL,
  `Cedula` int(11) NOT NULL,
  `DNI` int(8) NOT NULL,
  `Nombre` varchar(50) CHARACTER SET latin1 NOT NULL,
  `Apellido` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Celular` bigint(13) NOT NULL,
  `Direccion` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Tel` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `id_Ciudad` int(6) NOT NULL,
  `Correo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `usuario` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `fraseword` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `TipoUser` int(11) NOT NULL DEFAULT '2',
  `Imagen` varchar(200) CHARACTER SET latin1 NOT NULL,
  `Clave` varchar(30) CHARACTER SET latin1 NOT NULL,
  `FechaNac` date NOT NULL,
  `Fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `PrUsuario`
--

INSERT INTO `PrUsuario` (`IdUsuario`, `Cedula`, `DNI`, `Nombre`, `Apellido`, `Celular`, `Direccion`, `Tel`, `id_Ciudad`, `Correo`, `usuario`, `fraseword`, `TipoUser`, `Imagen`, `Clave`, `FechaNac`, `Fecha`) VALUES
(1, 0, 11111, 'Alfredo', 'Nuñez', 0, '', '', 1, '', 'alfredon', '', 2, 'http://planidear.com.ar/RRHH/img/FaceIcono.png', '2234', '0000-00-00', '2021-11-12 16:46:59'),
(2, 0, 30280628, 'Gustavog', 'godoy', 0, '', '', 1, '', 'gustavog', '', 1, 'http://planidear.com.ar/g24-aula2-gimnasio-g24/img/FaceGustavo-293x300.jpg', '1235', '0000-00-00', '2021-11-12 16:46:59'),
(11, 0, 0, 'marcelo', 'Paysa', 0, '', '', 1, '', 'marcelop', '', 1, 'http://planidear.com.ar/RRHH/img/FaceIcono.png', '1234', '0000-00-00', '2021-11-12 16:46:59'),
(67, 0, 11222333, 'gabriel24', 'gabriel24', 0, '', '', 1, 'asd@gmail.com', 'gabriel24', '', 2, 'http://planidear.com.ar/RRHH/img/FaceIcono.png', 'gabriel24', '1992-06-24', '2021-12-13 13:06:59'),
(79, 0, 1, 'PruebaNombre', 'PruenaApellido', 0, '', '', 1, 'gustavog@live.com.ar', 'UsuarioRestringido', '', 2, '/RRHH/img/FaceIcono.png', '1236', '0000-00-00', '2022-03-01 22:45:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PrVenta`
--

CREATE TABLE `PrVenta` (
  `id_Venta` int(11) NOT NULL,
  `Id_Prod` int(11) NOT NULL,
  `Cantidad` int(6) NOT NULL,
  `Estado` varchar(30) NOT NULL,
  `Id_Factura` bigint(20) NOT NULL,
  `Descuento` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `RUTINA`
--

CREATE TABLE `RUTINA` (
  `ID_RUTINA` int(11) NOT NULL,
  `ID_PLAN_ENTRENAMIENTO` int(11) NOT NULL,
  `ID_TIPO_RUTINA` int(11) NOT NULL,
  `FECHA_DESDE` datetime NOT NULL,
  `FECHA_HASTA` datetime NOT NULL,
  `PLANIFICACION` varchar(200) NOT NULL,
  `OBSERVACION` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `SALUD`
--

CREATE TABLE `SALUD` (
  `ID_SALUD` int(11) NOT NULL,
  `DESCRIPCION` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `SALUD`
--

INSERT INTO `SALUD` (`ID_SALUD`, `DESCRIPCION`) VALUES
(1, 'Cardiaco'),
(2, 'Muscular');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `SALUD_CLIENTE`
--

CREATE TABLE `SALUD_CLIENTE` (
  `ID_SALUD` int(11) NOT NULL,
  `ID_CLIENTE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Tipo`
--

CREATE TABLE `Tipo` (
  `Id_Tipo` int(11) NOT NULL,
  `Tipo` varchar(50) NOT NULL,
  `Detalle_Tipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Tipo`
--

INSERT INTO `Tipo` (`Id_Tipo`, `Tipo`, `Detalle_Tipo`) VALUES
(1, 'a', 'DetalleCritico'),
(2, 'a', 'DetalleNoCritico'),
(3, 'a', 'q'),
(4, 'a', 'q'),
(5, 'a', 'q'),
(6, 'a', 'q');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TIPO_PLAN`
--

CREATE TABLE `TIPO_PLAN` (
  `ID_TIPO_PLAN` int(11) NOT NULL,
  `DESCRIPCION` varchar(100) NOT NULL,
  `EDAD_ACEPTADA_DESDE` int(11) NOT NULL,
  `EDAD_ACEPTADA_HASTA` int(11) NOT NULL,
  `PESO_ACEPTADO_DESDE` int(11) NOT NULL,
  `PESO_ACEPTADO_HASTA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TIPO_RUTINA`
--

CREATE TABLE `TIPO_RUTINA` (
  `ID_TIPO_RUTINA` int(11) NOT NULL,
  `DESCRIPCION` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `TIPO_RUTINA`
--

INSERT INTO `TIPO_RUTINA` (`ID_TIPO_RUTINA`, `DESCRIPCION`) VALUES
(1, 'Bicicleta 15min'),
(2, 'Bicicleta acelerada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `USUARIO`
--

CREATE TABLE `USUARIO` (
  `ID_USUARIO` int(11) NOT NULL,
  `NOMBRE_USUARIO` varchar(50) NOT NULL,
  `CLAVE` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `USUARIO`
--

INSERT INTO `USUARIO` (`ID_USUARIO`, `NOMBRE_USUARIO`, `CLAVE`) VALUES
(1, 'Stronger21 -- ', '123');

-- --------------------------------------------------------

--
-- Estructura para la vista `ComSumaHorario`
--
DROP TABLE IF EXISTS `ComSumaHorario`;

CREATE ALGORITHM=UNDEFINED DEFINER=`c2110488_PrIspc`@`localhost` SQL SECURITY DEFINER VIEW `ComSumaHorario`  AS  select `ComVistaHorarios`.`CUIT_Empl` AS `CUIT_Empl`,sum(`ComVistaHorarios`.`Horas`) AS `SumaHoras` from `ComVistaHorarios` group by `ComVistaHorarios`.`CUIT_Empl` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `ComVisEmplHorarioTeor`
--
DROP TABLE IF EXISTS `ComVisEmplHorarioTeor`;

CREATE ALGORITHM=UNDEFINED DEFINER=`c2110488_PrIspc`@`localhost` SQL SECURITY DEFINER VIEW `ComVisEmplHorarioTeor`  AS  select `ComEmpleado`.`CUIT_Empl` AS `CUIT_Empl`,`ComEmpleado`.`Nombres` AS `Nombres`,`ComEmpleado`.`Apellidos` AS `Apellidos`,`ComHorarioTeorico`.`Times` AS `Times`,`ComHorarioTeorico`.`DiaTeor` AS `DiaTeor`,`ComHorarioTeorico`.`DiaIngrTeor` AS `DiaIngrTeor`,`ComHorarioTeorico`.`DiaSalTeor` AS `DiaSalTeor`,`ComHorarioTeorico`.`TipoHora` AS `TipoHora`,`ComHorarioTeorico`.`FkTipoHorario` AS `FkTipoHorario` from (`ComEmpleado` left join `ComHorarioTeorico` on((`ComHorarioTeorico`.`CuitTeor` = `ComEmpleado`.`CUIT_Empl`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `ComVisProvPais`
--
DROP TABLE IF EXISTS `ComVisProvPais`;

CREATE ALGORITHM=UNDEFINED DEFINER=`c2110488_PrIspc`@`localhost` SQL SECURITY DEFINER VIEW `ComVisProvPais`  AS  select `Provincia`.`Id_Provincia` AS `Id_Provincia`,`Provincia`.`Provincia` AS `Provincia`,`Provincia`.`PaisP` AS `PaisP`,`Provincia`.`Borrar` AS `Borrar`,`Pais`.`Pais` AS `Pais` from (`Provincia` left join `Pais` on((`Provincia`.`PaisP` = `Pais`.`Id_Pais`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `ComVistaCuentaHoarios`
--
DROP TABLE IF EXISTS `ComVistaCuentaHoarios`;

CREATE ALGORITHM=UNDEFINED DEFINER=`c2110488_PrIspc`@`localhost` SQL SECURITY DEFINER VIEW `ComVistaCuentaHoarios`  AS  select `ComHorario`.`CUIT` AS `CUIT`,`ComHorario`.`Times` AS `Times`,`ComHorario`.`DiaIngr` AS `DiaIngr`,`ComHorario`.`DiaSal` AS `DiaSal`,`ComHorario`.`Activo` AS `Activo`,(`ComHorario`.`DiaSal` - `ComHorario`.`DiaIngr`) AS `Horas`,timestampdiff(HOUR,`ComHorario`.`DiaSal`,`ComHorario`.`DiaIngr`) AS `DifNegativo`,(timestampdiff(MINUTE,`ComHorario`.`DiaIngr`,`ComHorario`.`DiaSal`) / 60) AS `DifPositivo` from `ComHorario` where (`ComHorario`.`Activo` like 'si') ;

-- --------------------------------------------------------

--
-- Estructura para la vista `ComVistaEstuEmp`
--
DROP TABLE IF EXISTS `ComVistaEstuEmp`;

CREATE ALGORITHM=UNDEFINED DEFINER=`c2110488_PrIspc`@`localhost` SQL SECURITY DEFINER VIEW `ComVistaEstuEmp`  AS  select `ComEmpleado`.`CUIT_Empl` AS `CUIT_Empl`,`ComEmpleado`.`Nombres` AS `Nombres`,`ComEmpleado`.`Apellidos` AS `Apellidos`,`ComEstudPersonal`.`IdEstudPersonal` AS `IdEstudPersonal`,`ComEstudPersonal`.`Cuit_EstuPers` AS `Cuit_EstuPers`,`ComEstudPersonal`.`EstudioPersonal` AS `EstudioPersonal`,`ComEstudPersonal`.`Estado` AS `Estado`,`ComEstudPersonal`.`Anios` AS `Anios`,`ComEstudPersonal`.`Obs` AS `Obs` from (`ComEmpleado` left join `ComEstudPersonal` on((`ComEstudPersonal`.`Cuit_EstuPers` = `ComEmpleado`.`CUIT_Empl`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `ComVistaHorarios`
--
DROP TABLE IF EXISTS `ComVistaHorarios`;

CREATE ALGORITHM=UNDEFINED DEFINER=`c2110488_PrIspc`@`localhost` SQL SECURITY DEFINER VIEW `ComVistaHorarios`  AS  select `ComEmpleado`.`CUIT_Empl` AS `CUIT_Empl`,`ComEmpleado`.`Nombres` AS `Nombres`,`ComEmpleado`.`Apellidos` AS `Apellidos`,`ComHorario`.`Dia` AS `Dia`,`ComHorario`.`Times` AS `Times`,`ComHorario`.`DiaIngr` AS `DiaIngr`,`ComHorario`.`DiaSal` AS `DiaSal`,`ComHorario`.`TipoHora` AS `TipoHora`,`ComHorario`.`Activo` AS `Activo`,(timestampdiff(MINUTE,`ComHorario`.`DiaIngr`,`ComHorario`.`DiaSal`) / 60) AS `Horas` from (`ComEmpleado` left join `ComHorario` on((`ComHorario`.`CUIT` = `ComEmpleado`.`CUIT_Empl`))) where (`ComHorario`.`Activo` like 'si') ;

-- --------------------------------------------------------

--
-- Estructura para la vista `ComVistaHoraVsTeor`
--
DROP TABLE IF EXISTS `ComVistaHoraVsTeor`;

CREATE ALGORITHM=UNDEFINED DEFINER=`c2110488_PrIspc`@`localhost` SQL SECURITY DEFINER VIEW `ComVistaHoraVsTeor`  AS  select distinct `ComHorarioTeorico`.`CuitTeor` AS `CuitTeor`,`ComHorarioTeorico`.`DiaTeor` AS `DiaTeor`,`ComHorarioTeorico`.`DiaIngrTeor` AS `DiaIngrTeor`,`ComHorarioTeorico`.`DiaSalTeor` AS `DiaSalTeor`,`ComHorarioTeorico`.`FkTipoHorario` AS `FkTipoHorario`,`ComHorario`.`CUIT` AS `CUIT`,`ComHorario`.`Dia` AS `Dia`,`ComHorario`.`DiaIngr` AS `DiaIngr`,`ComHorario`.`DiaSal` AS `DiaSal`,`ComHorario`.`Activo` AS `Activo`,(timestampdiff(MINUTE,`ComHorario`.`DiaIngr`,`ComHorario`.`DiaSal`) / 60) AS `Horas` from (`ComHorarioTeorico` left join `ComHorario` on((`ComHorarioTeorico`.`DiaTeor` = `ComHorario`.`Dia`))) where (`ComHorario`.`Activo` like 'si') ;

-- --------------------------------------------------------

--
-- Estructura para la vista `ComVistaPais`
--
DROP TABLE IF EXISTS `ComVistaPais`;

CREATE ALGORITHM=UNDEFINED DEFINER=`c2110488_PrIspc`@`localhost` SQL SECURITY DEFINER VIEW `ComVistaPais`  AS  select `Provincia`.`PaisP` AS `PaisP`,`Pais`.`Pais` AS `Pais` from (`Provincia` left join `Pais` on((`Provincia`.`PaisP` = `Pais`.`Id_Pais`))) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ADMINISTRADOR`
--
ALTER TABLE `ADMINISTRADOR`
  ADD PRIMARY KEY (`ID_ADMINISTRADOR`),
  ADD KEY `ID_USUARIO` (`ID_USUARIO`),
  ADD KEY `ID_LOCALIDAD` (`ID_LOCALIDAD`);

--
-- Indices de la tabla `Alumnos`
--
ALTER TABLE `Alumnos`
  ADD PRIMARY KEY (`id_alumno`);

--
-- Indices de la tabla `Categoria`
--
ALTER TABLE `Categoria`
  ADD PRIMARY KEY (`Id_Categ`);

--
-- Indices de la tabla `ComCategSuel`
--
ALTER TABLE `ComCategSuel`
  ADD PRIMARY KEY (`Id_CategSuel`);

--
-- Indices de la tabla `ComConceptos`
--
ALTER TABLE `ComConceptos`
  ADD PRIMARY KEY (`IdConcepto`);

--
-- Indices de la tabla `ComDatEmpr`
--
ALTER TABLE `ComDatEmpr`
  ADD PRIMARY KEY (`CuitDatEmpr`);

--
-- Indices de la tabla `ComEmpleado`
--
ALTER TABLE `ComEmpleado`
  ADD PRIMARY KEY (`IdPersonal`),
  ADD UNIQUE KEY `CUIT_Empl11` (`CUIT_Empl`) USING BTREE;

--
-- Indices de la tabla `ComEstadoCivil`
--
ALTER TABLE `ComEstadoCivil`
  ADD PRIMARY KEY (`IdEstadoCivil`);

--
-- Indices de la tabla `ComEstudios`
--
ALTER TABLE `ComEstudios`
  ADD PRIMARY KEY (`IdEstudio`);

--
-- Indices de la tabla `ComEstudPersonal`
--
ALTER TABLE `ComEstudPersonal`
  ADD PRIMARY KEY (`IdEstudPersonal`),
  ADD KEY `FkCuitEmplEstud` (`Cuit_EstuPers`);

--
-- Indices de la tabla `ComHorario`
--
ALTER TABLE `ComHorario`
  ADD PRIMARY KEY (`idComHorario`),
  ADD KEY `CUIT` (`CUIT`),
  ADD KEY `Dia` (`Dia`);

--
-- Indices de la tabla `ComHorarioTeorico`
--
ALTER TABLE `ComHorarioTeorico`
  ADD PRIMARY KEY (`idComHoraTeor`),
  ADD KEY `Fk_Cuit_Teor` (`CuitTeor`),
  ADD KEY `Dia` (`DiaTeor`);

--
-- Indices de la tabla `ComLiqSueldo`
--
ALTER TABLE `ComLiqSueldo`
  ADD PRIMARY KEY (`Id_LiqSueldo`);

--
-- Indices de la tabla `ComNacion`
--
ALTER TABLE `ComNacion`
  ADD PRIMARY KEY (`IdNacionalidad`);

--
-- Indices de la tabla `ComTipoCarnet`
--
ALTER TABLE `ComTipoCarnet`
  ADD PRIMARY KEY (`IdTipoCarnet`);

--
-- Indices de la tabla `ComTipoHorario`
--
ALTER TABLE `ComTipoHorario`
  ADD PRIMARY KEY (`Id_TipoHorario`);

--
-- Indices de la tabla `ComValorSueldo`
--
ALTER TABLE `ComValorSueldo`
  ADD PRIMARY KEY (`Id_ValorSueldo`),
  ADD KEY `FkCateSuelfo` (`Fk_CategSueld`);

--
-- Indices de la tabla `ComVistaPanel`
--
ALTER TABLE `ComVistaPanel`
  ADD PRIMARY KEY (`idVista`);

--
-- Indices de la tabla `Descripcion`
--
ALTER TABLE `Descripcion`
  ADD PRIMARY KEY (`Id_Despc`);

--
-- Indices de la tabla `DIA_ENTRENAMIENTO`
--
ALTER TABLE `DIA_ENTRENAMIENTO`
  ADD PRIMARY KEY (`ID_DIA_ENTRENAMIENTO`),
  ADD KEY `ID_RUTINA` (`ID_RUTINA`);

--
-- Indices de la tabla `EJERCICIO`
--
ALTER TABLE `EJERCICIO`
  ADD PRIMARY KEY (`ID_EJERCICIO`),
  ADD KEY `ID_MUSCULO` (`ID_MUSCULO`),
  ADD KEY `ID_DIA_ENTRENAMIENTO` (`ID_DIA_ENTRENAMIENTO`),
  ADD KEY `ID_MAQUINA` (`ID_MAQUINA`);

--
-- Indices de la tabla `Localidad`
--
ALTER TABLE `Localidad`
  ADD PRIMARY KEY (`Id_Localidad`),
  ADD UNIQUE KEY `Localidad` (`Localidad`);

--
-- Indices de la tabla `LOCALIDAD`
--
ALTER TABLE `LOCALIDAD`
  ADD PRIMARY KEY (`ID_LOCALIDAD`);

--
-- Indices de la tabla `MAQUINA`
--
ALTER TABLE `MAQUINA`
  ADD PRIMARY KEY (`ID_MAQUINA`);

--
-- Indices de la tabla `MenuLateral`
--
ALTER TABLE `MenuLateral`
  ADD PRIMARY KEY (`Id_Menu`),
  ADD UNIQUE KEY `Nombre` (`Nombre`);

--
-- Indices de la tabla `MUSCULO`
--
ALTER TABLE `MUSCULO`
  ADD PRIMARY KEY (`ID_MUSCULO`);

--
-- Indices de la tabla `MUSCULO_MAQUINA`
--
ALTER TABLE `MUSCULO_MAQUINA`
  ADD PRIMARY KEY (`ID_MAQUINA`,`ID_MUSCULO`),
  ADD KEY `ID_MUSCULO` (`ID_MUSCULO`);

--
-- Indices de la tabla `Pais`
--
ALTER TABLE `Pais`
  ADD PRIMARY KEY (`Id_Pais`);

--
-- Indices de la tabla `PLAN_ENTRENAMIENTO`
--
ALTER TABLE `PLAN_ENTRENAMIENTO`
  ADD PRIMARY KEY (`ID_PLAN_ENTRENAMIENTO`),
  ADD KEY `ID_ADMINISTRADOR` (`ID_ADMINISTRADOR`),
  ADD KEY `ID_CLIENTE` (`ID_CLIENTE`),
  ADD KEY `ID_TIPO_PLAN` (`ID_TIPO_PLAN`);

--
-- Indices de la tabla `PrAbono`
--
ALTER TABLE `PrAbono`
  ADD KEY `Fk_Abo_Fact` (`id_Factura`);

--
-- Indices de la tabla `PrCiudad`
--
ALTER TABLE `PrCiudad`
  ADD PRIMARY KEY (`id_Ciudad`),
  ADD KEY `Fk_Ciud_Depto` (`id_Depto`);

--
-- Indices de la tabla `PRCliente`
--
ALTER TABLE `PRCliente`
  ADD PRIMARY KEY (`ID_CLIENTE`),
  ADD KEY `ID_USUARIO` (`ID_USUARIO`),
  ADD KEY `ID_LOCALIDAD` (`ID_LOCALIDAD`);

--
-- Indices de la tabla `PrDepartamento`
--
ALTER TABLE `PrDepartamento`
  ADD PRIMARY KEY (`id_depto`);

--
-- Indices de la tabla `PrFactura`
--
ALTER TABLE `PrFactura`
  ADD PRIMARY KEY (`id_Factura`),
  ADD KEY `Fk_Fact_Ciud` (`Id_Ciudad`),
  ADD KEY `Fk_Fact_Usu` (`id_Usuario`);

--
-- Indices de la tabla `PrMaquina`
--
ALTER TABLE `PrMaquina`
  ADD PRIMARY KEY (`Id_Maquina`);

--
-- Indices de la tabla `Proveedor`
--
ALTER TABLE `Proveedor`
  ADD PRIMARY KEY (`CUIT`),
  ADD UNIQUE KEY `Razon_Social` (`Razon_Social`),
  ADD UNIQUE KEY `Provincia` (`Provincia`),
  ADD KEY `Localidad` (`Localidad`) USING BTREE,
  ADD KEY `Tipo` (`Tipo`) USING BTREE;

--
-- Indices de la tabla `Provincia`
--
ALTER TABLE `Provincia`
  ADD PRIMARY KEY (`Id_Provincia`),
  ADD KEY `ProvRelaPais` (`PaisP`) USING BTREE;

--
-- Indices de la tabla `PrProducto`
--
ALTER TABLE `PrProducto`
  ADD PRIMARY KEY (`id_Producto`),
  ADD KEY `Fk_Prod_TipoPrd` (`Id_Tipo_Prod`);

--
-- Indices de la tabla `PrServicios`
--
ALTER TABLE `PrServicios`
  ADD PRIMARY KEY (`Id_Servicio`),
  ADD KEY `Fk_Serv_Fact` (`Id_Factura`);

--
-- Indices de la tabla `PrTipoPlan`
--
ALTER TABLE `PrTipoPlan`
  ADD PRIMARY KEY (`ID_TipoPlan`);

--
-- Indices de la tabla `PrTipoUsuario`
--
ALTER TABLE `PrTipoUsuario`
  ADD PRIMARY KEY (`IdTipoUsuario`);

--
-- Indices de la tabla `PrTipo_Prod`
--
ALTER TABLE `PrTipo_Prod`
  ADD PRIMARY KEY (`id_Tipo_Prod`);

--
-- Indices de la tabla `PrUsuario`
--
ALTER TABLE `PrUsuario`
  ADD PRIMARY KEY (`IdUsuario`),
  ADD UNIQUE KEY `Clave` (`Clave`),
  ADD UNIQUE KEY `usuario` (`usuario`),
  ADD KEY `TipoUsuario_FK` (`TipoUser`),
  ADD KEY `Fk_Usu_Ciud` (`id_Ciudad`);

--
-- Indices de la tabla `PrVenta`
--
ALTER TABLE `PrVenta`
  ADD PRIMARY KEY (`id_Venta`),
  ADD KEY `Fk_Vent_Fact` (`Id_Factura`),
  ADD KEY `Fk_Venta_Prod` (`Id_Prod`);

--
-- Indices de la tabla `RUTINA`
--
ALTER TABLE `RUTINA`
  ADD PRIMARY KEY (`ID_RUTINA`),
  ADD KEY `ID_PLAN_ENTRENAMIENTO` (`ID_PLAN_ENTRENAMIENTO`),
  ADD KEY `ID_TIPO_RUTINA` (`ID_TIPO_RUTINA`);

--
-- Indices de la tabla `SALUD`
--
ALTER TABLE `SALUD`
  ADD PRIMARY KEY (`ID_SALUD`);

--
-- Indices de la tabla `SALUD_CLIENTE`
--
ALTER TABLE `SALUD_CLIENTE`
  ADD PRIMARY KEY (`ID_SALUD`,`ID_CLIENTE`),
  ADD KEY `ID_CLIENTE` (`ID_CLIENTE`);

--
-- Indices de la tabla `Tipo`
--
ALTER TABLE `Tipo`
  ADD PRIMARY KEY (`Id_Tipo`),
  ADD KEY `Tipo` (`Tipo`);

--
-- Indices de la tabla `TIPO_PLAN`
--
ALTER TABLE `TIPO_PLAN`
  ADD PRIMARY KEY (`ID_TIPO_PLAN`);

--
-- Indices de la tabla `TIPO_RUTINA`
--
ALTER TABLE `TIPO_RUTINA`
  ADD PRIMARY KEY (`ID_TIPO_RUTINA`);

--
-- Indices de la tabla `USUARIO`
--
ALTER TABLE `USUARIO`
  ADD PRIMARY KEY (`ID_USUARIO`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ADMINISTRADOR`
--
ALTER TABLE `ADMINISTRADOR`
  MODIFY `ID_ADMINISTRADOR` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Alumnos`
--
ALTER TABLE `Alumnos`
  MODIFY `id_alumno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `Categoria`
--
ALTER TABLE `Categoria`
  MODIFY `Id_Categ` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `ComCategSuel`
--
ALTER TABLE `ComCategSuel`
  MODIFY `Id_CategSuel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `ComConceptos`
--
ALTER TABLE `ComConceptos`
  MODIFY `IdConcepto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `ComEmpleado`
--
ALTER TABLE `ComEmpleado`
  MODIFY `IdPersonal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de la tabla `ComEstadoCivil`
--
ALTER TABLE `ComEstadoCivil`
  MODIFY `IdEstadoCivil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `ComEstudios`
--
ALTER TABLE `ComEstudios`
  MODIFY `IdEstudio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `ComEstudPersonal`
--
ALTER TABLE `ComEstudPersonal`
  MODIFY `IdEstudPersonal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT de la tabla `ComHorario`
--
ALTER TABLE `ComHorario`
  MODIFY `idComHorario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT de la tabla `ComHorarioTeorico`
--
ALTER TABLE `ComHorarioTeorico`
  MODIFY `idComHoraTeor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=293;

--
-- AUTO_INCREMENT de la tabla `ComLiqSueldo`
--
ALTER TABLE `ComLiqSueldo`
  MODIFY `Id_LiqSueldo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `ComNacion`
--
ALTER TABLE `ComNacion`
  MODIFY `IdNacionalidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `ComTipoCarnet`
--
ALTER TABLE `ComTipoCarnet`
  MODIFY `IdTipoCarnet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `ComTipoHorario`
--
ALTER TABLE `ComTipoHorario`
  MODIFY `Id_TipoHorario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `ComValorSueldo`
--
ALTER TABLE `ComValorSueldo`
  MODIFY `Id_ValorSueldo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `ComVistaPanel`
--
ALTER TABLE `ComVistaPanel`
  MODIFY `idVista` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `Descripcion`
--
ALTER TABLE `Descripcion`
  MODIFY `Id_Despc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `DIA_ENTRENAMIENTO`
--
ALTER TABLE `DIA_ENTRENAMIENTO`
  MODIFY `ID_DIA_ENTRENAMIENTO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `EJERCICIO`
--
ALTER TABLE `EJERCICIO`
  MODIFY `ID_EJERCICIO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Localidad`
--
ALTER TABLE `Localidad`
  MODIFY `Id_Localidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `LOCALIDAD`
--
ALTER TABLE `LOCALIDAD`
  MODIFY `ID_LOCALIDAD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `MAQUINA`
--
ALTER TABLE `MAQUINA`
  MODIFY `ID_MAQUINA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `MenuLateral`
--
ALTER TABLE `MenuLateral`
  MODIFY `Id_Menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `MUSCULO`
--
ALTER TABLE `MUSCULO`
  MODIFY `ID_MUSCULO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `Pais`
--
ALTER TABLE `Pais`
  MODIFY `Id_Pais` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `PLAN_ENTRENAMIENTO`
--
ALTER TABLE `PLAN_ENTRENAMIENTO`
  MODIFY `ID_PLAN_ENTRENAMIENTO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `PrCiudad`
--
ALTER TABLE `PrCiudad`
  MODIFY `id_Ciudad` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `PRCliente`
--
ALTER TABLE `PRCliente`
  MODIFY `ID_CLIENTE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `PrDepartamento`
--
ALTER TABLE `PrDepartamento`
  MODIFY `id_depto` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `PrFactura`
--
ALTER TABLE `PrFactura`
  MODIFY `id_Factura` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `PrMaquina`
--
ALTER TABLE `PrMaquina`
  MODIFY `Id_Maquina` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Provincia`
--
ALTER TABLE `Provincia`
  MODIFY `Id_Provincia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `PrProducto`
--
ALTER TABLE `PrProducto`
  MODIFY `id_Producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `PrServicios`
--
ALTER TABLE `PrServicios`
  MODIFY `Id_Servicio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `PrTipoPlan`
--
ALTER TABLE `PrTipoPlan`
  MODIFY `ID_TipoPlan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `PrTipoUsuario`
--
ALTER TABLE `PrTipoUsuario`
  MODIFY `IdTipoUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `PrTipo_Prod`
--
ALTER TABLE `PrTipo_Prod`
  MODIFY `id_Tipo_Prod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `PrUsuario`
--
ALTER TABLE `PrUsuario`
  MODIFY `IdUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de la tabla `PrVenta`
--
ALTER TABLE `PrVenta`
  MODIFY `id_Venta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `RUTINA`
--
ALTER TABLE `RUTINA`
  MODIFY `ID_RUTINA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `SALUD`
--
ALTER TABLE `SALUD`
  MODIFY `ID_SALUD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `Tipo`
--
ALTER TABLE `Tipo`
  MODIFY `Id_Tipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `TIPO_PLAN`
--
ALTER TABLE `TIPO_PLAN`
  MODIFY `ID_TIPO_PLAN` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `TIPO_RUTINA`
--
ALTER TABLE `TIPO_RUTINA`
  MODIFY `ID_TIPO_RUTINA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `USUARIO`
--
ALTER TABLE `USUARIO`
  MODIFY `ID_USUARIO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ADMINISTRADOR`
--
ALTER TABLE `ADMINISTRADOR`
  ADD CONSTRAINT `ADMINISTRADOR_ibfk_1` FOREIGN KEY (`ID_USUARIO`) REFERENCES `USUARIO` (`ID_USUARIO`),
  ADD CONSTRAINT `ADMINISTRADOR_ibfk_2` FOREIGN KEY (`ID_LOCALIDAD`) REFERENCES `LOCALIDAD` (`ID_LOCALIDAD`);

--
-- Filtros para la tabla `ComEstudPersonal`
--
ALTER TABLE `ComEstudPersonal`
  ADD CONSTRAINT `FkCuitEmplEstud` FOREIGN KEY (`Cuit_EstuPers`) REFERENCES `ComEmpleado` (`CUIT_Empl`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ComHorarioTeorico`
--
ALTER TABLE `ComHorarioTeorico`
  ADD CONSTRAINT `Fk_Cuit_Teor` FOREIGN KEY (`CuitTeor`) REFERENCES `ComHorario` (`CUIT`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ComValorSueldo`
--
ALTER TABLE `ComValorSueldo`
  ADD CONSTRAINT `FkCateSuelfo` FOREIGN KEY (`Fk_CategSueld`) REFERENCES `ComCategSuel` (`Id_CategSuel`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `DIA_ENTRENAMIENTO`
--
ALTER TABLE `DIA_ENTRENAMIENTO`
  ADD CONSTRAINT `DIA_ENTRENAMIENTO_ibfk_1` FOREIGN KEY (`ID_RUTINA`) REFERENCES `RUTINA` (`ID_RUTINA`);

--
-- Filtros para la tabla `EJERCICIO`
--
ALTER TABLE `EJERCICIO`
  ADD CONSTRAINT `EJERCICIO_ibfk_1` FOREIGN KEY (`ID_MUSCULO`) REFERENCES `MUSCULO` (`ID_MUSCULO`),
  ADD CONSTRAINT `EJERCICIO_ibfk_2` FOREIGN KEY (`ID_DIA_ENTRENAMIENTO`) REFERENCES `DIA_ENTRENAMIENTO` (`ID_DIA_ENTRENAMIENTO`),
  ADD CONSTRAINT `EJERCICIO_ibfk_3` FOREIGN KEY (`ID_MAQUINA`) REFERENCES `MAQUINA` (`ID_MAQUINA`);

--
-- Filtros para la tabla `MUSCULO_MAQUINA`
--
ALTER TABLE `MUSCULO_MAQUINA`
  ADD CONSTRAINT `MUSCULO_MAQUINA_ibfk_1` FOREIGN KEY (`ID_MAQUINA`) REFERENCES `MAQUINA` (`ID_MAQUINA`),
  ADD CONSTRAINT `MUSCULO_MAQUINA_ibfk_2` FOREIGN KEY (`ID_MUSCULO`) REFERENCES `MUSCULO` (`ID_MUSCULO`);

--
-- Filtros para la tabla `PLAN_ENTRENAMIENTO`
--
ALTER TABLE `PLAN_ENTRENAMIENTO`
  ADD CONSTRAINT `PLAN_ENTRENAMIENTO_ibfk_1` FOREIGN KEY (`ID_ADMINISTRADOR`) REFERENCES `ADMINISTRADOR` (`ID_ADMINISTRADOR`),
  ADD CONSTRAINT `PLAN_ENTRENAMIENTO_ibfk_2` FOREIGN KEY (`ID_CLIENTE`) REFERENCES `PRCliente` (`ID_CLIENTE`),
  ADD CONSTRAINT `PLAN_ENTRENAMIENTO_ibfk_3` FOREIGN KEY (`ID_TIPO_PLAN`) REFERENCES `TIPO_PLAN` (`ID_TIPO_PLAN`);

--
-- Filtros para la tabla `PrAbono`
--
ALTER TABLE `PrAbono`
  ADD CONSTRAINT `Fk_Abo_Fact` FOREIGN KEY (`id_Factura`) REFERENCES `PrFactura` (`id_Factura`);

--
-- Filtros para la tabla `PrCiudad`
--
ALTER TABLE `PrCiudad`
  ADD CONSTRAINT `Fk_Ciud_Depto` FOREIGN KEY (`id_Depto`) REFERENCES `PrDepartamento` (`id_depto`);

--
-- Filtros para la tabla `PRCliente`
--
ALTER TABLE `PRCliente`
  ADD CONSTRAINT `PRCliente_ibfk_1` FOREIGN KEY (`ID_USUARIO`) REFERENCES `USUARIO` (`ID_USUARIO`),
  ADD CONSTRAINT `PRCliente_ibfk_2` FOREIGN KEY (`ID_LOCALIDAD`) REFERENCES `LOCALIDAD` (`ID_LOCALIDAD`);

--
-- Filtros para la tabla `PrFactura`
--
ALTER TABLE `PrFactura`
  ADD CONSTRAINT `Fk_Fact_Ciud` FOREIGN KEY (`Id_Ciudad`) REFERENCES `PrCiudad` (`id_Ciudad`),
  ADD CONSTRAINT `Fk_Fact_Usu` FOREIGN KEY (`id_Usuario`) REFERENCES `PrUsuario` (`IdUsuario`);

--
-- Filtros para la tabla `Proveedor`
--
ALTER TABLE `Proveedor`
  ADD CONSTRAINT `Proveedor_ibfk_2` FOREIGN KEY (`Localidad`) REFERENCES `Localidad` (`Id_Localidad`) ON DELETE CASCADE,
  ADD CONSTRAINT `Proveedor_ibfk_3` FOREIGN KEY (`Tipo`) REFERENCES `Tipo` (`Id_Tipo`) ON DELETE CASCADE,
  ADD CONSTRAINT `Proveedor_ibfk_4` FOREIGN KEY (`Provincia`) REFERENCES `Provincia` (`Id_Provincia`);

--
-- Filtros para la tabla `Provincia`
--
ALTER TABLE `Provincia`
  ADD CONSTRAINT `Provincia_ibfk_1` FOREIGN KEY (`PaisP`) REFERENCES `Pais` (`Id_Pais`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `PrProducto`
--
ALTER TABLE `PrProducto`
  ADD CONSTRAINT `Fk_Prod_TipoPrd` FOREIGN KEY (`Id_Tipo_Prod`) REFERENCES `PrTipo_Prod` (`id_Tipo_Prod`);

--
-- Filtros para la tabla `PrServicios`
--
ALTER TABLE `PrServicios`
  ADD CONSTRAINT `Fk_Serv_Fact` FOREIGN KEY (`Id_Factura`) REFERENCES `PrFactura` (`id_Factura`);

--
-- Filtros para la tabla `PrUsuario`
--
ALTER TABLE `PrUsuario`
  ADD CONSTRAINT `Fk_Usu_Ciud` FOREIGN KEY (`id_Ciudad`) REFERENCES `PrCiudad` (`id_Ciudad`),
  ADD CONSTRAINT `TipoUsuario_FK` FOREIGN KEY (`TipoUser`) REFERENCES `PrTipoUsuario` (`IdTipoUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `PrVenta`
--
ALTER TABLE `PrVenta`
  ADD CONSTRAINT `Fk_Vent_Fact` FOREIGN KEY (`Id_Factura`) REFERENCES `PrFactura` (`id_Factura`),
  ADD CONSTRAINT `Fk_Venta_Prod` FOREIGN KEY (`Id_Prod`) REFERENCES `PrProducto` (`id_Producto`);

--
-- Filtros para la tabla `RUTINA`
--
ALTER TABLE `RUTINA`
  ADD CONSTRAINT `RUTINA_ibfk_1` FOREIGN KEY (`ID_PLAN_ENTRENAMIENTO`) REFERENCES `PLAN_ENTRENAMIENTO` (`ID_PLAN_ENTRENAMIENTO`),
  ADD CONSTRAINT `RUTINA_ibfk_2` FOREIGN KEY (`ID_TIPO_RUTINA`) REFERENCES `TIPO_RUTINA` (`ID_TIPO_RUTINA`);

--
-- Filtros para la tabla `SALUD_CLIENTE`
--
ALTER TABLE `SALUD_CLIENTE`
  ADD CONSTRAINT `SALUD_CLIENTE_ibfk_1` FOREIGN KEY (`ID_SALUD`) REFERENCES `SALUD` (`ID_SALUD`),
  ADD CONSTRAINT `SALUD_CLIENTE_ibfk_2` FOREIGN KEY (`ID_CLIENTE`) REFERENCES `PRCliente` (`ID_CLIENTE`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
