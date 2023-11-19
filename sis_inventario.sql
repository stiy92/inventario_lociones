-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 19-11-2023 a las 22:37:50
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `sis_inventario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE IF NOT EXISTS `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=26 ;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `fecha`) VALUES
(21, 'ESENCIAS CABALLERO', '2023-11-19 16:45:16'),
(22, 'ESENCIAS DAMA', '2023-11-19 16:45:31'),
(23, 'FRASCOS DE 30 ML', '2023-11-19 16:45:45'),
(24, 'FRASCOS DE 60 ML', '2023-11-19 16:46:13'),
(25, 'INSUMOS', '2023-11-19 16:46:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE IF NOT EXISTS `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `documento` int(11) NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `telefono` text COLLATE utf8_spanish_ci NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `compras` int(11) NOT NULL,
  `ultima_compra` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=29 ;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `documento`, `email`, `telefono`, `direccion`, `fecha_nacimiento`, `compras`, `ultima_compra`, `fecha`) VALUES
(24, 'marivel cctv', 1425457, 'dsd@gmail.com', '(577) 554-5454', 'dsfasdf', '2023-10-10', 0, '0000-00-00 00:00:00', '2023-11-19 16:55:33'),
(25, 'luis prometalico', 5165, 'dsd@gmail.com', '(566) 556-6444', 'dsfsd', '2023-11-11', 0, '0000-00-00 00:00:00', '2023-11-19 16:56:46'),
(26, 'brainer lastre', 654654, 'dsd@gmail.com', '(121) 231-2155', 'fdgsdf', '2000-02-16', 0, '0000-00-00 00:00:00', '2023-11-19 16:57:25'),
(27, 'jhoany cctv', 5654556, 'dsd@gmail.com', '(546) 454-6544', 'eafde', '2012-05-05', 0, '0000-00-00 00:00:00', '2023-11-19 16:58:43'),
(28, 'carla cctv', 1321, 'dsd@gmail.com', '(312) 311-2311', 'fdgsfdg', '2032-05-06', 0, '0000-00-00 00:00:00', '2023-11-19 16:59:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE IF NOT EXISTS `productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_categoria` int(11) NOT NULL,
  `codigo` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `precio_compra` float NOT NULL,
  `precio_venta` float NOT NULL,
  `ventas` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `stock_t` int(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `codigo` (`codigo`),
  UNIQUE KEY `codigo_2` (`codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=37 ;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_categoria`, `codigo`, `descripcion`, `imagen`, `stock`, `precio_compra`, `precio_venta`, `ventas`, `fecha`, `stock_t`) VALUES
(1, 23, 'Singler', 'Singler 30 ML', 'vistas/img/productos/default/anonymous.png', 71, 1900, 3900, 0, '2023-11-20 01:37:40', 120),
(2, 25, 'ROLL3', 'Rollon 3 ml', 'vistas/img/productos/default/anonymous.png', 100, 362, 506.8, 0, '2023-11-20 01:38:08', 500),
(3, 25, 'Perf', 'Perfume 3 ml', 'vistas/img/productos/default/anonymous.png', 100, 680, 1400, 0, '2023-11-20 01:38:28', 500),
(4, 25, 'alcoho', 'Alcohol l', 'vistas/img/productos/default/anonymous.png', 2500, 40, 80, 0, '2023-11-20 01:38:45', 3000),
(5, 23, 'oatlant', 'atlantic 30ml', 'vistas/img/productos/default/anonymous.png', 144, 1160, 2350, 0, '2023-11-20 01:39:06', 144),
(6, 23, 'invic30m', 'invitus 30ml', 'vistas/img/productos/default/anonymous.png', 3, 3300, 6000, 0, '2023-11-20 01:39:22', 12),
(7, 23, 'frastac', 'tacon 30ml', 'vistas/img/productos/default/anonymous.png', 3, 5000, 9975, 0, '2023-11-20 01:39:37', 12),
(8, 23, 'alcalbr', 'Alcala-bri-30ml', 'vistas/img/productos/default/anonymous.png', 3, 3300, 5975, 0, '2023-11-20 01:39:52', 12),
(9, 23, 'manz', 'manzana 30ml', 'vistas/img/productos/default/anonymous.png', 3, 2800, 5500, 0, '2023-11-20 01:40:07', 12),
(10, 24, 'iris', 'Iris 50ml', 'vistas/img/productos/default/anonymous.png', 3, 4300, 8500, 0, '2023-11-20 01:40:35', 12),
(11, 24, 'xeroff', 'Xeroff 50ml', 'vistas/img/productos/default/anonymous.png', 3, 6000, 12000, 0, '2023-11-20 01:40:52', 12),
(12, 24, 'salva', 'Salvaje 50ml', 'vistas/img/productos/default/anonymous.png', 3, 4300, 8500, 0, '2023-11-20 01:41:31', 12),
(13, 24, 'alcala', 'Alcala 50ml', 'vistas/img/productos/default/anonymous.png', 3, 2000, 4000, 0, '2023-11-20 01:41:13', 12),
(14, 24, 'jean5', 'Jean-Poul-50ml', 'vistas/img/productos/default/anonymous.png', 3, 3600, 7000, 0, '2023-11-20 01:41:45', 12),
(15, 24, 'boos5', 'Boss 50ml', 'vistas/img/productos/default/anonymous.png', 3, 3500, 7000, 0, '2023-11-20 01:42:02', 12),
(16, 24, 'flaw50', 'Flaw 50ml', 'vistas/img/productos/default/anonymous.png', 3, 3700, 7500, 0, '2023-11-20 01:42:43', 12),
(17, 24, 'invi50', 'Invitus 50ml', 'vistas/img/productos/default/anonymous.png', 3, 4500, 9000, 0, '2023-11-20 01:43:02', 12),
(18, 24, 'cart50', 'cartier 60ml', 'vistas/img/productos/default/anonymous.png', 3, 3000, 6000, 0, '2023-11-20 01:43:16', 12),
(19, 24, 'alcala60', 'Alcala 60ml', 'vistas/img/productos/default/anonymous.png', 3, 3200, 6500, 0, '2023-11-20 01:43:30', 12),
(20, 24, 'singler60', 'Singler 60ml', 'vistas/img/productos/default/anonymous.png', 3, 3000, 5000, 0, '2023-11-20 01:43:44', 12),
(21, 21, 'One1', 'One-Mil-Men', 'vistas/img/productos/default/anonymous.png', 200, 280, 700, 0, '2023-11-20 01:44:06', 200),
(22, 22, 'The01', 'The-One-Dama', 'vistas/img/productos/default/anonymous.png', 200, 280, 700, 0, '2023-11-20 01:48:50', 200),
(23, 22, 'Paris', 'Paris Hilton Dama', 'vistas/img/productos/default/anonymous.png', 200, 280, 700, 0, '2023-11-19 21:52:37', 200),
(24, 21, '212vi', '212-Vip-black', 'vistas/img/productos/default/anonymous.png', 200, 280, 700, 0, '2023-11-20 01:44:06', 200),
(25, 22, 'coc', 'CocoNut Pasion', 'vistas/img/productos/default/anonymous.png', 200, 280, 700, 0, '2023-11-20 01:48:50', 200),
(26, 21, 'Blck', 'Black-xs-Aph', 'vistas/img/productos/default/anonymous.png', 200, 280, 700, 0, '2023-11-20 01:44:06', 200),
(27, 22, 'lav', 'La-Vida-Bella', 'vistas/img/productos/default/anonymous.png', 200, 280, 700, 0, '2023-11-20 01:48:50', 200),
(28, 21, 'Dies', 'Diesel Plus', 'vistas/img/productos/default/anonymous.png', 200, 280, 700, 0, '2023-11-20 01:44:06', 200),
(29, 21, 'Lacos', 'Lacoste-Red', 'vistas/img/productos/default/anonymous.png', 200, 280, 700, 0, '2023-11-20 01:44:06', 200),
(30, 21, 'Eterni', 'Eternity', 'vistas/img/productos/default/anonymous.png', 200, 280, 700, 0, '2023-11-20 01:44:06', 200),
(31, 21, 'osad', 'Osadia', 'vistas/img/productos/default/anonymous.png', 200, 280, 700, 0, '2023-11-20 01:44:06', 200),
(32, 21, 'Tom', 'Tommy', 'vistas/img/productos/default/anonymous.png', 200, 280, 700, 0, '2023-11-20 01:44:06', 200),
(33, 21, 'ultra', 'Ultra Male', 'vistas/img/productos/default/anonymous.png', 200, 280, 700, 0, '2023-11-20 01:44:06', 200),
(34, 25, 'frew', 'Feromonas', 'vistas/img/productos/default/anonymous.png', 500, 80, 1000, 0, '2023-11-19 22:04:29', 500),
(35, 25, 'sadfwe', 'Sellador', 'vistas/img/productos/default/anonymous.png', 500, 80, 160, 0, '2023-11-19 22:09:06', 500),
(36, 25, '32ewfbhj', 'Bolso Perfumero', 'vistas/img/productos/default/anonymous.png', 3, 22900, 40000, 0, '2023-11-19 22:11:06', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `usuario` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `perfil` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `ultimo_login` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`) VALUES
(1, 'Stiy2', 'admin', '$2a$07$asxx54ahjppf45sd87a5auhEdRJns4bvTXClZQNJmLgvrB8MtVva2', 'Administrador', 'vistas/img/usuarios/admin/637.png', 1, '2023-11-19 11:37:05', '2023-11-19 16:38:40'),
(2, 'vendedor', 'vero', '$2a$07$asxx54ahjppf45sd87a5auZlCh8icp4zMVPkm1GDvV92t6W/cXjYq', 'Especial', '', 1, '2023-11-17 23:25:04', '2023-11-19 16:39:23'),
(3, 'Stiy', '025', '$2a$07$asxx54ahjppf45sd87a5auhEdRJns4bvTXClZQNJmLgvrB8MtVva2', 'Administrador', '', 1, '2023-11-19 15:24:18', '2023-11-19 20:24:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE IF NOT EXISTS `ventas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `productos` text COLLATE utf8_spanish_ci NOT NULL,
  `impuesto` float NOT NULL,
  `neto` float NOT NULL,
  `total` float NOT NULL,
  `metodo_pago` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
