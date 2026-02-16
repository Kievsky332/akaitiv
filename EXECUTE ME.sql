-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Фев 16 2026 г., 21:07
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `active`
--

-- --------------------------------------------------------

--
-- Структура таблицы `activity`
--

CREATE TABLE `activity` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `point` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_german2_ci;

--
-- Дамп данных таблицы `activity`
--

INSERT INTO `activity` (`id`, `name`, `point`) VALUES
(7, 'Установка национального мессенджера MAX', 123),
(8, 'Регистрация мой id', 12);

-- --------------------------------------------------------

--
-- Структура таблицы `departament`
--

CREATE TABLE `departament` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `departament`
--

INSERT INTO `departament` (`id`, `name`) VALUES
(1, 'Диджитал'),
(2, 'Кибер'),
(3, 'Техно'),
(4, 'Моссовет'),
(5, 'Датахаб'),
(6, 'АртТех');

-- --------------------------------------------------------

--
-- Структура таблицы `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `student` int(11) NOT NULL,
  `activiti_name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `event`
--

INSERT INTO `event` (`id`, `student`, `activiti_name`) VALUES
(10, 7, 7),
(11, 8, 7),
(12, 1, 7),
(13, 2, 7),
(14, 1, 7),
(15, 2, 7);

-- --------------------------------------------------------

--
-- Структура таблицы `groupes`
--

CREATE TABLE `groupes` (
  `id` int(11) NOT NULL,
  `groups` text NOT NULL,
  `departaments` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `groupes`
--

INSERT INTO `groupes` (`id`, `groups`, `departaments`) VALUES
(1, 'СА152', 1),
(2, 'СА112', 1),
(3, 'СА1112', 1),
(4, 'ИСП1535', 2),
(5, 'ИСП1555', 2),
(6, 'ИСП1575', 2),
(7, 'КСК154', 3),
(8, 'КСК114', 3),
(9, 'КСК134', 3),
(10, 'ГД176', 4),
(11, 'ГД196', 4),
(12, 'ГД156', 4),
(13, 'ИСП1151', 5),
(14, 'ИСП1191', 5),
(15, 'ИСП1131', 5),
(16, 'ЭБАС113', 6),
(17, 'ЭБАС153', 6),
(18, 'ЭБАС173', 6);

-- --------------------------------------------------------

--
-- Структура таблицы `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `full_name` text NOT NULL,
  `groups` int(11) NOT NULL,
  `score` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `students`
--

INSERT INTO `students` (`id`, `full_name`, `groups`, `score`) VALUES
(1, 'Аксинья М. Г.', 1, 0),
(2, 'Дмитрий З. Р.', 1, 0),
(3, 'Максим К. М.', 2, 0),
(4, 'Виктория Ю. А.', 2, 0),
(5, 'София С. А.', 3, 0),
(6, 'Варвара В. М.', 3, 0),
(7, 'Руслан Ф. А.', 4, 0),
(8, 'Дмитрий Х. И.', 4, 0),
(9, 'Евгений Г. П.', 5, 0),
(10, 'Алексей Л. М.', 5, 0),
(11, 'Кристина Р. А.', 6, 0),
(12, 'Кристина М. В.', 6, 0),
(13, 'Егор К. А.', 7, 0),
(14, 'Платон К. В.', 7, 0),
(15, 'Юрий Е. А.', 8, 0),
(16, 'Сергей А. В.', 8, 0),
(17, 'Семён И. Д.', 9, 0),
(18, 'Марк Х. А.', 9, 0),
(19, 'Андрей Б. Н.', 10, 0),
(20, 'Мария Б. А.', 10, 0),
(21, 'Тимофей Т. А.', 11, 0),
(22, 'Николай К. П.', 11, 0),
(23, 'Артем А. Д.', 12, 0),
(24, 'Володар К. А.', 12, 0),
(25, 'Альберт А. М.', 13, 0),
(26, 'Дмитрий Б. С.', 13, 0),
(27, 'Артемий О.', 14, 0),
(28, 'Александр А. А.', 14, 0),
(29, 'Автандил С. К.', 15, 0),
(30, 'Набейль М. М.', 15, 0),
(31, 'Магомед-Али М. Т.', 16, 0),
(32, 'Доминика Л. А.', 16, 0),
(33, 'Егор К.Д', 17, 0),
(34, 'Конаж Р.Ф', 17, 0),
(35, 'Уран П.Г', 18, 0),
(36, 'Космос Б.К', 18, 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `departament`
--
ALTER TABLE `departament`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student` (`student`),
  ADD KEY `activiti_name` (`activiti_name`);

--
-- Индексы таблицы `groupes`
--
ALTER TABLE `groupes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `departaments` (`departaments`);

--
-- Индексы таблицы `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groups` (`groups`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `activity`
--
ALTER TABLE `activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `departament`
--
ALTER TABLE `departament`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT для таблицы `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `groupes`
--
ALTER TABLE `groupes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `event_ibfk_1` FOREIGN KEY (`student`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `event_ibfk_2` FOREIGN KEY (`activiti_name`) REFERENCES `activity` (`id`);

--
-- Ограничения внешнего ключа таблицы `groupes`
--
ALTER TABLE `groupes`
  ADD CONSTRAINT `groupes_ibfk_1` FOREIGN KEY (`departaments`) REFERENCES `departament` (`id`);

--
-- Ограничения внешнего ключа таблицы `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`groups`) REFERENCES `groupes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
