-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 14-11-2022 a las 19:30:53
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
-- Estructura de tabla para la tabla `pr_compra`
--

CREATE TABLE `pr_compra` (
  `idcompra` int(11) NOT NULL,
  `idproducto` bigint(20) NOT NULL,
  `idcliente` int(11) NOT NULL,
  `usercompra` varchar(20) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fechacompra` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `obscompra` varchar(50) NOT NULL,
  `lugarentrega` varchar(50) NOT NULL,
  `formadepago` varchar(50) NOT NULL,
  `tipomovim` int(11) NOT NULL,
  `valor` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr_movim`
--

CREATE TABLE `pr_movim` (
  `idmovim` int(11) NOT NULL,
  `idproducto` bigint(20) NOT NULL,
  `idcliente` int(11) NOT NULL,
  `usermov` varchar(20) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fechamovim` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `obsmovim` varchar(100) NOT NULL,
  `lugarentrega` varchar(50) NOT NULL,
  `formadepago` varchar(50) NOT NULL,
  `tipomovim` int(11) NOT NULL,
  `valor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr_producto`
--

CREATE TABLE `pr_producto` (
  `id` bigint(20) NOT NULL,
  `producto` varchar(55) DEFAULT NULL,
  `clave` varchar(55) DEFAULT NULL,
  `costo` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `valor` int(11) DEFAULT NULL,
  `fechaing` date DEFAULT NULL,
  `idtipoprod` int(11) DEFAULT NULL,
  `imgprod` varchar(255) DEFAULT NULL,
  `rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr_roles`
--

CREATE TABLE `pr_roles` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr_usuario`
--

CREATE TABLE `pr_usuario` (
  `id` int(11) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `rol` varchar(10) NOT NULL DEFAULT 'user',
  `imagen` varchar(200) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pr_compra`
--
ALTER TABLE `pr_compra`
  ADD PRIMARY KEY (`idcompra`),
  ADD KEY `idproducto` (`idproducto`);

--
-- Indices de la tabla `pr_movim`
--
ALTER TABLE `pr_movim`
  ADD PRIMARY KEY (`idmovim`),
  ADD KEY `idproducto` (`idproducto`),
  ADD KEY `idcliente` (`idcliente`),
  ADD KEY `tipomovim` (`tipomovim`);

--
-- Indices de la tabla `pr_producto`
--
ALTER TABLE `pr_producto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pr_roles`
--
ALTER TABLE `pr_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_role` (`user_id`);

--
-- Indices de la tabla `pr_usuario`
--
ALTER TABLE `pr_usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKnn21oob8kxbqxnims2078xc09` (`usuario`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pr_compra`
--
ALTER TABLE `pr_compra`
  MODIFY `idcompra` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pr_movim`
--
ALTER TABLE `pr_movim`
  MODIFY `idmovim` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pr_producto`
--
ALTER TABLE `pr_producto`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pr_roles`
--
ALTER TABLE `pr_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pr_usuario`
--
ALTER TABLE `pr_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pr_compra`
--
ALTER TABLE `pr_compra`
  ADD CONSTRAINT `fk_comp_prod` FOREIGN KEY (`idproducto`) REFERENCES `pr_producto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pr_movim`
--
ALTER TABLE `pr_movim`
  ADD CONSTRAINT `fk_mov_prod` FOREIGN KEY (`idproducto`) REFERENCES `pr_producto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_mov_user` FOREIGN KEY (`idcliente`) REFERENCES `pr_usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pr_usuario`
--
ALTER TABLE `pr_usuario`
  ADD CONSTRAINT `fk_user_role` FOREIGN KEY (`role_id`) REFERENCES `pr_roles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
