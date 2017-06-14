-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-10-2016 a las 21:52:45
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `chat`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chat`
--

CREATE TABLE `chat` (
  `chat_id` int(11) NOT NULL,
  `chat_texto` varchar(50) NOT NULL,
  `chat_user` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `chat`
--

INSERT INTO `chat` (`chat_id`, `chat_texto`, `chat_user`) VALUES
(1, 'hola soy juan', 'jesus'),
(2, 'como te llamas', 'jesus'),
(3, 'jesus', 'hola'),
(4, 'hola', 'hola'),
(5, 'ss', 'aa'),
(6, 'buenos dÃ­as', 'Juan'),
(7, 'ho', 'jesus'),
(8, 'hoss', 'jesus'),
(9, 'bien hecho', 'jesus'),
(10, 'hola', 'david'),
(11, 'jesus', 'david'),
(12, 'hola mund', 'jesus'),
(13, 'fgff', ''),
(14, 'hola', 'ss'),
(15, 'hola', 'jesus');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'OFF'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `email`, `usuario`, `password`, `status`) VALUES
(7, 'TuChat668', 'villegasvjd@gmail.com', 'maria', '123', 'ON'),
(8, 'TuChat668', 'villegasvjd@gmail.com', 'maria24', 'proyecto', 'OFF'),
(9, 'TuChat668', 'villegasvjd@gmail.com', 'maria44', 'aaa', 'ON'),
(10, 'TuChat668', 'villegasvjd@gmail.com', 'admin', 'proyecto', 'OFF'),
(11, '', '', 'ss', 'ss', 'OFF'),
(12, '', '', 'ss', 'ss', 'OFF');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`chat_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `chat`
--
ALTER TABLE `chat`
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
