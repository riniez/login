-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-02-2020 a las 02:32:20
-- Versión del servidor: 10.1.32-MariaDB
-- Versión de PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `usersdb`
--
CREATE DATABASE IF NOT EXISTS `usersdb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `usersdb`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingredientes`
--

CREATE TABLE `ingredientes` (
  `id` int(11) NOT NULL,
  `ingrediente` varchar(100) NOT NULL,
  `humedad` float NOT NULL,
  `ceniza` float NOT NULL,
  `proteina` float NOT NULL,
  `grasa` float NOT NULL,
  `fibra` float NOT NULL,
  `calcio` float NOT NULL,
  `fosforo` float NOT NULL,
  `lisina` float NOT NULL,
  `metionina` float NOT NULL,
  `emrumiante` float NOT NULL,
  `emcerdo` float NOT NULL,
  `emave` float NOT NULL,
  `precio` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ingredientes`
--

INSERT INTO `ingredientes` (`id`, `ingrediente`, `humedad`, `ceniza`, `proteina`, `grasa`, `fibra`, `calcio`, `fosforo`, `lisina`, `metionina`, `emrumiante`, `emcerdo`, `emave`, `precio`) VALUES
(1, 'PULITURA DE ARROZ', 12.8, 1.2, 7.5, 1.2, 1, 0.04, 0.1, 0.29, 0.18, 2945, 3530, 3450, 0.11),
(2, 'AVENA', 9.5, 2.8, 9.9, 4.9, 12.8, 0.08, 0.33, 0.39, 0.16, 2500, 2825, 2375, 0.25),
(3, 'CEBADA 2C 11.3 PB', 10.1, 2.2, 11.3, 1.7, 4.7, 0.06, 0.32, 0.41, 0.19, 2705, 3270, 2780, 0.4),
(4, 'CEBADA 2C 9.6 PB', 11.1, 2.2, 9.6, 1.7, 4.7, 0.06, 0.32, 0.35, 0.16, 2680, 3230, 2735, 0.4),
(5, 'MAIZ NACIONAL', 13.6, 1.1, 7.3, 3.3, 2.1, 0.03, 0.25, 0.22, 0.15, 2825, 3435, 3285, 0.26),
(6, 'MAIZ USA', 13.8, 1.3, 7.9, 3.5, 2.3, 0.02, 0.27, 0.24, 0.17, 2815, 3480, 3290, 0.28),
(7, 'SORGO', 13, 1.3, 8.9, 3, 2.3, 0.03, 0.28, 0.2, 0.15, 2760, 3455, 3260, 0.26),
(8, 'TRIGO DURO', 10, 1.6, 13.8, 2, 2.9, 0.04, 0.36, 0.37, 0.21, 2800, 3480, 3260, 0.28),
(9, 'HARINA DE ARROZ', 10.3, 8.1, 13.8, 13.9, 7.7, 0.1, 1.35, 0.61, 0.28, 2750, 3000, 2810, 0.125),
(10, 'HARINA MAIZ SIN GRASA', 13, 2.2, 8.2, 6, 3.4, 0.13, 0.48, 0.29, 0.15, 2960, 3260, 2990, 0.13),
(11, 'HARINA MAIZ CON GRASA', 13.4, 3, 10, 11.5, 4.9, 0.11, 0.51, 0.38, 0.18, 3055, 3230, 2885, 0.135),
(12, 'GLUTEN DE MAIZ 21%', 11.3, 6, 21, 3, 7.7, 0.15, 0.87, 0.66, 0.37, 2625, 2400, 1890, 0.2),
(13, 'GLUTEN DE MAIZ 60%', 10.4, 1.7, 60, 2.7, 1.7, 0.03, 0.44, 1.02, 1.5, 3120, 3700, 3615, 0.25),
(14, 'AFRECHILLO DE TRIGO', 12.3, 5, 15.1, 3.5, 9.8, 0.13, 0.97, 0.6, 0.23, 2260, 2280, 1830, 0.115),
(15, 'MELAZA CAÑA', 26.3, 10.1, 4.3, 0.1, 0, 0.65, 0.07, 0.02, 0.02, 2060, 2260, 1850, 0.32),
(16, 'HARINA GIRASOL 34', 10.1, 6.6, 34.2, 1.7, 0, 0.32, 1.1, 1.22, 0.77, 2160, 2380, 1615, 0.22),
(17, 'HARINA GIRASOL 36', 10.3, 6.8, 36.4, 1.8, 18.3, 0.32, 1.15, 1.3, 0.82, 2255, 2470, 1370, 0.24),
(18, 'NEPE', 8.8, 4.5, 16.7, 7.8, 21, 0.37, 0.63, 0.46, 0.3, 2800, 2340, 1135, 0.18),
(19, 'HARINA SOYA 44', 12, 6.2, 44, 1.9, 5.9, 0.29, 0.61, 2.68, 0.59, 2800, 3070, 2200, 0.43),
(20, 'HARINA SOYA 47', 12, 6.2, 47, 1.9, 4.1, 0.29, 0.64, 2.88, 0.67, 2900, 3200, 2360, 0.44),
(22, 'CARNE 44/15/28', 6.4, 28, 43.7, 15.4, 1, 7.8, 4, 2.02, 0.5, 2430, 2600, 2400, 1.65),
(23, 'HARINA DE PESCADO NACIONAL', 7.8, 18.5, 62.2, 9.2, 1, 4.5, 2.75, 4.51, 1.62, 2995, 3175, 3060, 1.76),
(24, 'HARINA DE PESCADO IMPORTADA', 7.2, 15.1, 66.6, 9.4, 1, 3.8, 2.6, 4.93, 1.8, 3110, 3375, 3250, 2.41),
(25, 'HARINA DE PLUMAS', 6.8, 2.2, 83.9, 6, 0.5, 0.23, 0.6, 2.1, 0.54, 2900, 3070, 2870, 1.36),
(26, 'SEBO', 0, 0, 0, 100, 0, 0, 0, 0, 0, 6050, 7935, 8015, 0.85),
(27, 'ACEITE SOYA', 0, 0, 0, 100, 0, 0, 0, 0, 0, 6200, 8700, 9000, 2),
(28, 'ACEITE PALMA', 0, 0, 0, 100, 0, 0, 0, 0, 0, 6240, 8350, 8150, 1.2),
(29, 'GRASA AMARILLA', 0, 0, 0, 97, 0, 0, 0, 0, 0, 5700, 8090, 8200, 1.5),
(30, 'CARBONATO CALCIO', 2, 98, 0, 0, 0, 38.6, 0.01, 0, 0, 0, 0, 0, 0.124),
(31, 'FOSFATO MONOCALCICO', 1, 78, 0, 0, 0, 17.8, 22.6, 0, 0, 0, 0, 0, 0.26),
(33, 'UREA', 0.8, 0.7, 287, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.7),
(34, 'DL METIONINA', 0.4, 0.5, 58.5, 0, 0, 0.02, 0, 0, 99, 0, 5030, 4500, 3.89),
(35, 'L-LISINA HCL', 1.5, 0.5, 94.5, 0, 0, 0, 0, 78, 0, 0, 3950, 3800, 1.99),
(36, 'L-TREONINA', 0.7, 0.5, 72.5, 0, 0, 0, 0, 0, 0, 0, 3790, 3230, 2.22);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'eduardo', 'nikolaeviclol@gmail.com', '2020-02-01 22:42:15', '$2y$10$4NWQkITfALFPJ1HOeqbrUOQwcPhSKNIogLugiGX2RXOfjQWFrT742', 'UipimbdDRMvlHjN7wNqCKbZGVUClKpktdRH3QyypiXZx7aP39oLmFpPE0QxY', '2020-01-28 01:13:35', '2020-02-01 22:48:40'),
(2, 'Michelle', 'edanroco@gmail.com', NULL, '$2y$10$kgymJisDB3NLAtperq0gqu/E.zloME4/B5P.Rw0a5jLgBYXh56nem', NULL, '2020-01-30 05:43:31', '2020-01-30 05:43:31');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ingredientes`
--
ALTER TABLE `ingredientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ingredientes`
--
ALTER TABLE `ingredientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
