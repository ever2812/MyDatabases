-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-09-2023 a las 00:05:07
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `paginawebphp`
--

CREATE DATABASE `paginawebphp`;
USE `paginawebphp`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_curso`
--

CREATE TABLE `tm_curso` (
  `cur_id` int(11) NOT NULL,
  `cur_titulo` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `cur_subtitulo` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `cur_img` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `cur_url` varchar(600) COLLATE utf8_spanish_ci NOT NULL,
  `cur_desta` int(11) NOT NULL,
  `estado` int(11) NOT NULL,
  `cur_fecha` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tm_curso`
--

INSERT INTO `tm_curso` (`cur_id`, `cur_titulo`, `cur_subtitulo`, `cur_img`, `cur_url`, `cur_desta`, `estado`, `cur_fecha`) VALUES
(1, 'Creacion de web Service y Postman (PHP y MySQL)', 'Web Service y consumo con Postman', '1.jpg', 'https:\\\\google.com', 1, 1, '2023-08-15 13:50:22'),
(2, 'Creacion de Wwebservice con NodeJS y SQLServer', 'Webservice con NodeJS y SQLServer', '2.jpg', 'https:\\\\google.com', 1, 1, '2023-08-15 13:50:34'),
(3, 'Curso 1', 'Curso 1', '1.jpg', 'https:\\\\google.com', 0, 1, '2023-08-15 00:00:00'),
(4, 'Curso 2', 'Curso 3', '1.jpg', 'https:\\\\google.com', 0, 1, '2023-08-16 00:00:00'),
(5, 'Curso 3', 'Curso 3', '1.jpg', 'https:\\\\google.com', 0, 1, '2023-08-16 13:54:00'),
(6, 'Curso 4', 'Curso 4', '1.jpg', 'https:\\\\google.com', 0, 1, '2023-08-16 00:00:00'),
(7, 'Curso 5', 'Curso 5', '1.jpg', 'https:\\\\google.com', 0, 1, '2023-08-17 13:57:37'),
(8, 'Curso 6', 'Curso 6', '1.jpg', 'https:\\\\google.com', 0, 1, '2023-08-17 00:00:00'),
(9, 'Curso 7', 'Curso 7', '1.jpg', 'https:\\\\google.com', 0, 1, '2023-08-17 13:59:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_curso_detalle`
--

CREATE TABLE `tm_curso_detalle` (
  `det_id` int(11) NOT NULL,
  `cur_id` int(11) NOT NULL,
  `det_nom` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tm_curso_detalle`
--

INSERT INTO `tm_curso_detalle` (`det_id`, `cur_id`, `det_nom`, `estado`) VALUES
(1, 1, 'PHP', 1),
(2, 1, 'MYSQL', 1),
(3, 2, 'MSSQL', 1),
(4, 3, 'ANGULAR', 1),
(5, 4, 'ANGULAR', 1),
(6, 4, 'REACT', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_etiquetas`
--

CREATE TABLE `tm_etiquetas` (
  `et_id` int(11) NOT NULL,
  `et_nom` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tm_etiquetas`
--

INSERT INTO `tm_etiquetas` (`et_id`, `et_nom`, `estado`) VALUES
(1, 'PHP', 1),
(2, 'Node JS', 1),
(3, 'Laravel', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_lenguajes`
--

CREATE TABLE `tm_lenguajes` (
  `len_id` int(11) NOT NULL,
  `len_nom` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tm_lenguajes`
--

INSERT INTO `tm_lenguajes` (`len_id`, `len_nom`, `estado`) VALUES
(1, 'NodeJS', 0),
(2, 'PHP', 1),
(3, 'Angular', 1),
(4, 'Laravel', 1),
(5, 'SQLServer', 1),
(6, 'MySQL', 1),
(13, 'React', 1),
(14, 'Ionic', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_socialmedia`
--

CREATE TABLE `tm_socialmedia` (
  `sm_id` int(11) NOT NULL,
  `sm_nom` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `sm_icon1` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `sm_icon2` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `sm_rutaweb` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tm_socialmedia`
--

INSERT INTO `tm_socialmedia` (`sm_id`, `sm_nom`, `sm_icon1`, `sm_icon2`, `sm_rutaweb`, `estado`) VALUES
(1, 'facebook', 'fb', 'social_facebook', 'https://www.facebook.com/Soluciones.Tag', 1),
(2, 'twitter', 'tw', 'social_twitter', 'https://twitter.com/', 1),
(4, 'youtube', 'pt', 'social_youtube', 'https://www.youtube.com/', 1),
(5, 'instragram', 'in', 'social_instagram', 'https://www.instagram.com/', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tm_curso`
--
ALTER TABLE `tm_curso`
  ADD PRIMARY KEY (`cur_id`);

--
-- Indices de la tabla `tm_curso_detalle`
--
ALTER TABLE `tm_curso_detalle`
  ADD PRIMARY KEY (`det_id`);

--
-- Indices de la tabla `tm_etiquetas`
--
ALTER TABLE `tm_etiquetas`
  ADD PRIMARY KEY (`et_id`);

--
-- Indices de la tabla `tm_lenguajes`
--
ALTER TABLE `tm_lenguajes`
  ADD PRIMARY KEY (`len_id`);

--
-- Indices de la tabla `tm_socialmedia`
--
ALTER TABLE `tm_socialmedia`
  ADD PRIMARY KEY (`sm_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tm_curso`
--
ALTER TABLE `tm_curso`
  MODIFY `cur_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `tm_curso_detalle`
--
ALTER TABLE `tm_curso_detalle`
  MODIFY `det_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tm_etiquetas`
--
ALTER TABLE `tm_etiquetas`
  MODIFY `et_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tm_lenguajes`
--
ALTER TABLE `tm_lenguajes`
  MODIFY `len_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `tm_socialmedia`
--
ALTER TABLE `tm_socialmedia`
  MODIFY `sm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
