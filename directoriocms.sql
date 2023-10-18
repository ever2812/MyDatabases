-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-09-2023 a las 00:04:25
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
-- Base de datos: `directoriocms`
--

-- --------------------------------------------------------

create database `directoriocms`;
use `directoriocms`;
--
-- Estructura de tabla para la tabla `anuncios`
--

CREATE TABLE `anuncios` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `enlace` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `foto` text COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `anuncios`
--

INSERT INTO `anuncios` (`id`, `nombre`, `enlace`, `foto`) VALUES
(1, 'ads1', 'google.com', 'vistas/imagenes/anuncios/503.jpg'),
(2, 'ads2', 'google.com', 'vistas/imagenes/anuncios/532.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `cat_nom` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `cat_foto` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `cat_desc` text COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `cat_nom`, `cat_foto`, `cat_desc`) VALUES
(1, 'GAMER', 'vistas/imagenes/categorias/1.jpg', 'Categoria  de grupos gamer\'s'),
(2, 'STICKERS', 'vistas/imagenes/categorias/2.jpg', 'Categoria de stickers'),
(3, 'DINERO', 'vistas/imagenes/categorias/3.jpg', 'Grupos de dinero y finanzas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo_wsp`
--

CREATE TABLE `grupo_wsp` (
  `id` int(11) NOT NULL,
  `usu_id` int(11) NOT NULL,
  `id_cat` int(11) NOT NULL,
  `wsp_nom` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `wsp_link` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `wsp_descrip` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `wsp_foto` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `wsp_keyqords` text COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `grupo_wsp`
--

INSERT INTO `grupo_wsp` (`id`, `usu_id`, `id_cat`, `wsp_nom`, `wsp_link`, `wsp_descrip`, `wsp_foto`, `wsp_keyqords`) VALUES
(1, 1, 1, 'Stickers de perritos', 'https://www.udemy.com/course/aprende-sql-nivel-avanzado-curso-con-mas-de-50-ejercicios/learn/lecture/13691636#overview', 'Grupo para compartir stickers graciosos', 'vistas/imagenes/grupos/100.jpg', 'amor amistad stickers diversion'),
(2, 1, 1, 'Stickers de gatitos', 'https://www.udemy.com/course/aprende-sql-nivel-avanzado-curso-con-mas-de-50-ejercicios/learn/lecture/13691636#overview', 'Grupo para compartir stickers graciosos', 'vistas/imagenes/grupos/1.jpg', 'stickers de gatitos'),
(3, 1, 1, 'Stickers de pollitos', 'https://www.udemy.com/course/aprende-sql-nivel-avanzado-curso-con-mas-de-50-ejercicios/learn/lecture/13691636#overview', 'Grupo para compartir stickers graciosos', 'vistas/imagenes/grupos/2.jpg', 'stickers de pollitos'),
(4, 1, 1, 'Stickers de ardillitas', 'https://www.udemy.com/course/aprende-sql-nivel-avanzado-curso-con-mas-de-50-ejercicios/learn/lecture/13691636#overview', 'Grupo para compartir stickers graciosos', 'vistas/imagenes/grupos/3.jpg', 'stickers de ardillitas'),
(5, 1, 1, 'Stickers de Cerditos', 'https://www.udemy.com/course/aprende-sql-nivel-avanzado-curso-con-mas-de-50-ejercicios/learn/lecture/13691636#overview', 'Grupo para compartir stickers graciosos', 'vistas/imagenes/grupos/4.jpg', 'stickers de cerditos'),
(6, 1, 1, 'Stickers de Peces', 'www.udemy.com/course/aprende-sql-nivel-avanzado-curso-con-mas-de-50-ejercicios/learn/lecture/13691636#overview', 'Grupo para compartir stickers graciosos', 'vistas/imagenes/grupos/5.jpg', 'stickers de pecesitos');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `anuncios`
--
ALTER TABLE `anuncios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `grupo_wsp`
--
ALTER TABLE `grupo_wsp`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `anuncios`
--
ALTER TABLE `anuncios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `grupo_wsp`
--
ALTER TABLE `grupo_wsp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
