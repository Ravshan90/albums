-- phpMyAdmin SQL Dump
-- version 4.0.10.6
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 13 2016 г., 10:46
-- Версия сервера: 5.6.22-log
-- Версия PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `musicsdb`
--

-- --------------------------------------------------------

--
-- Структура таблицы `album`
--

CREATE TABLE IF NOT EXISTS `album` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `album`
--

INSERT INTO `album` (`id`, `name`) VALUES
(1, 'Abbey Road'),
(2, 'Let It Be'),
(3, 'Revolver'),
(4, 'Help!');

-- --------------------------------------------------------

--
-- Структура таблицы `track`
--

CREATE TABLE IF NOT EXISTS `track` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `album_id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `duration` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `album_id` (`album_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Дамп данных таблицы `track`
--

INSERT INTO `track` (`id`, `album_id`, `name`, `duration`) VALUES
(1, 1, 'Come Together', 260),
(2, 1, 'Something', 183),
(3, 1, 'Maxwell’s Silver Hammer', 205),
(4, 1, 'Oh! Darling', 206),
(5, 2, 'Two of Us', 216),
(6, 2, 'Dig a Pony', 234),
(7, 2, 'Across the Universe', 228),
(8, 3, 'Taxman', 159),
(9, 3, 'I’m Only Sleeping', 176),
(10, 3, 'Love You To', 181),
(11, 4, 'Yesterday', 123),
(12, 4, 'You Like Me Too Much', 155),
(13, 4, 'Tell Me What You See', 156);

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `track`
--
ALTER TABLE `track`
  ADD CONSTRAINT `track_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `album` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
