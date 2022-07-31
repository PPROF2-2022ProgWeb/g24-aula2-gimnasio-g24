-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 03-07-2022 a las 18:00:18
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

--
-- Índices para tablas volcadas
--

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
-- AUTO_INCREMENT de las tablas volcadas
--

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
-- Restricciones para tablas volcadas
--

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
