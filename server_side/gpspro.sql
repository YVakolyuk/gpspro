-- phpMyAdmin SQL Dump
-- version 4.0.3
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Час створення: Гру 03 2013 р., 22:59
-- Версія сервера: 5.5.23
-- Версія PHP: 5.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База даних: `gpspro`
--

-- --------------------------------------------------------

--
-- Структура таблиці `markers`
--

CREATE TABLE IF NOT EXISTS `markers` (
  `id_marker` int(10) NOT NULL AUTO_INCREMENT,
  `id_trace` int(10) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_marker`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Дамп даних таблиці `markers`
--

INSERT INTO `markers` (`id_marker`, `id_trace`, `latitude`, `longitude`, `timestamp`) VALUES
(1, 32, 49.999719166752385, 36.243757009506226, '2013-12-03 20:57:02'),
(2, 32, 49.99858814332919, 36.24458312988281, '2013-12-03 20:57:06'),
(3, 33, 50.00027087584035, 36.25581622123718, '2013-12-03 20:57:26'),
(4, 33, 49.999146761881875, 36.25561237335205, '2013-12-03 20:57:30'),
(5, 33, 49.998395039110015, 36.254775524139404, '2013-12-03 20:57:32'),
(6, 33, 49.99765020128528, 36.25362753868103, '2013-12-03 20:57:35');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
