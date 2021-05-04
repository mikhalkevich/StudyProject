-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 04 2021 г., 20:23
-- Версия сервера: 10.1.44-MariaDB
-- Версия PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `project`
--

-- --------------------------------------------------------

--
-- Структура таблицы `maintexts`
--

CREATE TABLE `maintexts` (
  `id` int(11) NOT NULL,
  `name` tinytext NOT NULL,
  `body` text,
  `url` tinytext NOT NULL,
  `showhide` enum('show','hide') NOT NULL DEFAULT 'show',
  `lang` enum('ru','by','en') NOT NULL DEFAULT 'ru',
  `putdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `maintexts`
--

INSERT INTO `maintexts` (`id`, `name`, `body`, `url`, `showhide`, `lang`, `putdate`) VALUES
(1, 'Добро пожаловать на сайт', 'тектс для главной', 'index', 'show', 'ru', '2021-04-15 18:14:54'),
(2, 'Услуги', 'тектс для услуг', 'services', 'show', 'ru', '2021-04-15 18:15:52'),
(3, 'Контакты', 'тут контакты', 'contacts', 'show', 'ru', '2021-04-15 18:16:18'),
(4, 'О компании', 'тект для страницы о компании', 'about', 'show', 'ru', '2021-04-27 16:53:13');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` tinytext NOT NULL,
  `password` tinytext NOT NULL,
  `name` tinytext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `blockunblock` enum('unblock','block') NOT NULL DEFAULT 'unblock',
  `lastvisit` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `created_at`, `blockunblock`, `lastvisit`) VALUES
(1, 'test@ya.ru', 'test', 'Test', '2021-05-04 16:58:14', 'unblock', '2021-05-04 16:58:14');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `maintexts`
--
ALTER TABLE `maintexts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `maintexts`
--
ALTER TABLE `maintexts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
