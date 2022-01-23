-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 23-01-2022 a las 11:23:53
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `laravel_pokedex`
--
CREATE DATABASE IF NOT EXISTS `laravel_pokedex` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `laravel_pokedex`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evoluciona_de`
--

CREATE TABLE `evoluciona_de` (
  `pokemon_evolucionado` int(11) NOT NULL,
  `pokemon_origen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `evoluciona_de`
--

INSERT INTO `evoluciona_de` (`pokemon_evolucionado`, `pokemon_origen`) VALUES
(2, 1),
(3, 2),
(5, 4),
(5, 6),
(6, 5),
(8, 7),
(9, 8),
(11, 10),
(12, 11),
(14, 13),
(15, 14),
(17, 16),
(18, 17),
(20, 19),
(22, 21),
(24, 23),
(26, 25),
(28, 27),
(30, 29),
(31, 30),
(33, 32),
(34, 33),
(36, 35),
(38, 37),
(40, 39),
(42, 41),
(44, 43),
(45, 44),
(47, 46),
(49, 48),
(51, 50),
(53, 52),
(55, 54),
(57, 56),
(59, 58),
(61, 60),
(62, 61),
(64, 63),
(65, 64),
(67, 66),
(68, 67),
(70, 69),
(71, 70),
(73, 72),
(75, 74),
(76, 75),
(78, 77),
(80, 79),
(82, 81),
(85, 84),
(87, 86),
(89, 88),
(91, 90),
(93, 92),
(94, 93),
(97, 96),
(99, 98),
(101, 100),
(103, 102),
(105, 104),
(110, 109),
(112, 111),
(117, 116),
(119, 118),
(121, 120),
(130, 129),
(134, 133),
(135, 133),
(136, 133),
(139, 138),
(141, 140),
(148, 147),
(149, 148);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pokemon`
--

CREATE TABLE `pokemon` (
  `numero_pokedex` int(11) NOT NULL,
  `nombre` varchar(15) NOT NULL,
  `peso` double NOT NULL,
  `altura` double NOT NULL,
  `favorito` tinyint(1) NOT NULL DEFAULT 0,
  `imagen` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pokemon`
--

INSERT INTO `pokemon` (`numero_pokedex`, `nombre`, `peso`, `altura`, `favorito`, `imagen`) VALUES
(1, 'Bulbasaur', 6.9, 0.7, 0, NULL),
(2, 'Ivysaur', 13, 1, 0, NULL),
(3, 'Venasaur', 100, 2, 0, NULL),
(4, 'Charmander', 8.5, 0.6, 0, NULL),
(5, 'Charmeleon', 19, 1.1, 0, NULL),
(6, 'Charizard', 90.5, 1.7, 0, NULL),
(7, 'Squirtle', 9, 0.5, 0, NULL),
(8, 'Wartortle', 22.5, 1, 0, NULL),
(9, 'Blastoise', 85.5, 1.6, 0, NULL),
(10, 'Caterpie', 2.9, 0.3, 0, NULL),
(11, 'Metapod', 9.9, 0.7, 0, NULL),
(12, 'Butterfree', 32, 1.1, 0, NULL),
(13, 'Weedle', 3.2, 0.3, 1, NULL),
(14, 'Kakuna', 10, 0.6, 0, NULL),
(15, 'Beedrill', 29.5, 1, 0, NULL),
(16, 'Pidgey', 1.8, 0.3, 0, NULL),
(17, 'Pidgeotto', 30, 1.1, 0, NULL),
(18, 'Pidgeot', 39.5, 1.5, 0, NULL),
(19, 'Rattata', 3.5, 0.3, 0, NULL),
(20, 'Raticate', 18.5, 0.7, 0, NULL),
(21, 'Spearow', 2, 0.3, 0, NULL),
(22, 'Fearow', 38, 1.2, 0, NULL),
(23, 'Ekans', 6.9, 2, 0, NULL),
(24, 'Arbok', 65, 3.5, 0, NULL),
(25, 'Pikachu', 6, 0.4, 0, NULL),
(26, 'Raichu', 30, 0.8, 0, NULL),
(27, 'Sandshrew', 12, 0.6, 0, NULL),
(28, 'Sandslash', 29.5, 1, 0, NULL),
(29, 'Nidoran?', 7, 0.4, 0, NULL),
(30, 'Nidorina', 20, 0.8, 0, NULL),
(31, 'Nidoqueen', 60, 1.3, 0, NULL),
(32, 'Nidoran?', 9, 0.5, 0, NULL),
(33, 'Nidorino', 19.5, 0.9, 0, NULL),
(34, 'Nidoking', 62, 1.4, 0, NULL),
(35, 'Clefairy', 7.5, 0.6, 0, NULL),
(36, 'Clefable', 40, 1.3, 0, NULL),
(37, 'Vulpix', 9.9, 0.6, 0, NULL),
(38, 'Ninetales', 19.9, 1.1, 0, NULL),
(39, 'Jigglypuff', 5.5, 0.5, 0, NULL),
(40, 'Wigglytuff', 12, 1, 0, NULL),
(41, 'Zubat', 7.5, 0.8, 0, NULL),
(42, 'Golbat', 55, 1.6, 0, NULL),
(43, 'Oddish', 5.4, 0.5, 0, NULL),
(44, 'Gloom', 8.6, 0.8, 0, NULL),
(45, 'Vileplume', 18.6, 1.2, 0, NULL),
(46, 'Paras', 5.4, 0.3, 0, NULL),
(47, 'Parasect', 29.5, 1, 0, NULL),
(48, 'Venonat', 30, 1, 0, NULL),
(49, 'Venomoth', 12.5, 1.5, 0, NULL),
(50, 'Digglet', 0.8, 0.2, 0, NULL),
(51, 'Dugtrio', 33.3, 0.7, 0, NULL),
(52, 'Meowth', 4.2, 0.4, 0, NULL),
(53, 'Persian', 32, 1, 0, NULL),
(54, 'Psyduck', 19.6, 0.8, 0, NULL),
(55, 'Golduck', 76.6, 1.7, 0, NULL),
(56, 'Mankey', 28, 0.5, 0, NULL),
(57, 'Primeape', 32, 1, 0, NULL),
(58, 'Growlithe', 19, 0.7, 0, NULL),
(59, 'Arcanine', 155, 1.9, 0, NULL),
(60, 'Poliwag', 12.4, 0.6, 0, NULL),
(61, 'Poliwhirl', 20, 1, 0, NULL),
(62, 'Poliwrath', 54, 1.3, 0, NULL),
(63, 'Abra', 19.5, 0.9, 0, NULL),
(64, 'Kadabra', 56.5, 1.3, 0, NULL),
(65, 'Alakazam', 48, 1.5, 0, NULL),
(66, 'Machop', 19.5, 0.8, 0, NULL),
(67, 'Mackoke', 70.5, 1.5, 0, NULL),
(68, 'Machamp', 130, 1.6, 0, NULL),
(69, 'Bellsprout', 4, 0.7, 0, NULL),
(70, 'Weepinbell', 6.4, 1, 0, NULL),
(71, 'Victreebel', 15.5, 1.7, 0, NULL),
(72, 'Tentacool', 45.5, 0.9, 0, NULL),
(73, 'Tentacruel', 55, 1.6, 0, NULL),
(74, 'Geodude', 20, 0.4, 0, NULL),
(75, 'Graveler', 105, 1, 0, NULL),
(76, 'Golem', 300, 1.4, 0, NULL),
(77, 'Ponyta', 30, 1, 0, NULL),
(78, 'Rapidash', 95, 1.7, 0, NULL),
(79, 'Slowpoke', 36, 1.2, 0, NULL),
(80, 'Slowbro', 78.5, 1.6, 0, NULL),
(81, 'Magnemite', 6, 0.3, 0, NULL),
(82, 'Magneton', 60, 1, 0, NULL),
(83, 'Farfetch\'d', 15, 0.8, 0, NULL),
(84, 'Doduo', 39.2, 1.4, 0, NULL),
(85, 'Dodrio', 85.2, 1.8, 0, NULL),
(86, 'Seel', 90, 1.1, 0, NULL),
(87, 'Dewgong', 120, 1.7, 0, NULL),
(88, 'Grimer', 30, 0.9, 0, NULL),
(89, 'Muk', 30, 1.2, 0, NULL),
(90, 'Shellder', 4, 0.3, 0, NULL),
(91, 'Cloyster', 132.5, 1.5, 0, NULL),
(92, 'Gastly', 0.1, 1.3, 0, NULL),
(93, 'Haunter', 0.1, 1.6, 0, NULL),
(94, 'Gengar', 40.5, 1.5, 0, NULL),
(95, 'Onix', 210, 8.8, 0, NULL),
(96, 'Drowzee', 32.4, 1, 0, NULL),
(97, 'Hypno', 75.6, 1.6, 0, NULL),
(98, 'Krabby', 6.5, 0.4, 0, NULL),
(99, 'Kingler', 60, 1.3, 0, NULL),
(100, 'Voltorb', 10.4, 0.5, 0, NULL),
(101, 'Electrode', 66.6, 1.2, 0, NULL),
(102, 'Exeggcute', 2.5, 0.4, 0, NULL),
(103, 'Exeggutor', 120, 2, 0, NULL),
(104, 'Cubone', 6.5, 0.4, 0, NULL),
(105, 'Marowak', 45, 1, 0, NULL),
(106, 'Hitmonlee', 49.8, 1.5, 0, NULL),
(107, 'Hitmonchan', 50.2, 1.4, 0, NULL),
(108, 'Lickitung', 65, 1.2, 0, NULL),
(109, 'Koffing', 1, 0.6, 0, NULL),
(110, 'Weezing', 9.5, 1.2, 0, NULL),
(111, 'Rhyhorn', 115, 1, 0, NULL),
(112, 'Rhydon', 120, 1.9, 0, NULL),
(113, 'Chansey', 34.6, 1.1, 0, NULL),
(114, 'Tangela', 35, 1, 0, NULL),
(115, 'Kangaskhan', 80, 2.2, 0, NULL),
(116, 'Horsea', 8, 0.4, 0, NULL),
(117, 'Seadra', 25, 1.2, 0, NULL),
(118, 'Goldeen', 15, 0.6, 0, NULL),
(119, 'Seaking', 39, 1.3, 0, NULL),
(120, 'Staryu', 34.5, 0.8, 0, NULL),
(121, 'Starmie', 80, 1.1, 0, NULL),
(122, 'Mr. Mime', 54.5, 1.3, 0, NULL),
(123, 'Scyther', 56, 1.5, 0, NULL),
(124, 'Jynx', 40.6, 1.4, 0, NULL),
(125, 'Electabuzz', 30, 1.1, 0, NULL),
(126, 'Magmar', 44.5, 1.3, 0, NULL),
(127, 'Pinsir', 55, 1.5, 0, NULL),
(128, 'Tauros', 88.4, 1.4, 0, NULL),
(129, 'Magikarp', 10, 0.9, 0, NULL),
(130, 'Gyarados', 235, 6.5, 0, NULL),
(131, 'Lapras', 220, 2.5, 0, NULL),
(132, 'Ditto', 4, 0.3, 0, NULL),
(133, 'Eevee', 6.5, 0.3, 0, NULL),
(134, 'Vaporeon', 29, 1, 0, NULL),
(135, 'Jolteon', 24.5, 0.8, 0, NULL),
(136, 'Flareon', 25, 0.9, 0, NULL),
(137, 'Porygon', 36.5, 0.8, 0, NULL),
(138, 'Omanyte', 7.5, 4, 0, NULL),
(139, 'Omastar', 35, 1, 0, NULL),
(140, 'Kabuto', 11.5, 0.5, 0, NULL),
(141, 'Kabutops', 40.5, 1.3, 0, NULL),
(142, 'Aerodactyl', 59, 1.8, 0, NULL),
(143, 'Snorlax', 460, 2.1, 0, NULL),
(144, 'Articuno', 55.4, 1.7, 0, NULL),
(145, 'Zapdos', 52.6, 1.6, 0, NULL),
(146, 'Moltres', 60, 2, 0, NULL),
(147, 'Dratini', 3.3, 1.8, 0, NULL),
(148, 'Dragonair', 16.5, 4, 0, NULL),
(149, 'Dragonite', 210, 2.2, 0, NULL),
(150, 'Mewtwo', 122, 2, 0, NULL),
(151, 'Mew', 4, 0.4, 0, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `evoluciona_de`
--
ALTER TABLE `evoluciona_de`
  ADD PRIMARY KEY (`pokemon_evolucionado`,`pokemon_origen`),
  ADD KEY `pokemon_origen` (`pokemon_origen`);

--
-- Indices de la tabla `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`numero_pokedex`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pokemon`
--
ALTER TABLE `pokemon`
  MODIFY `numero_pokedex` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2028;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `evoluciona_de`
--
ALTER TABLE `evoluciona_de`
  ADD CONSTRAINT `evoluciona_de_ibfk_1` FOREIGN KEY (`pokemon_evolucionado`) REFERENCES `pokemon` (`numero_pokedex`),
  ADD CONSTRAINT `evoluciona_de_ibfk_2` FOREIGN KEY (`pokemon_origen`) REFERENCES `pokemon` (`numero_pokedex`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
