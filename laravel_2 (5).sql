-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 19 2018 г., 21:25
-- Версия сервера: 5.7.20
-- Версия PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `laravel_2`
--

-- --------------------------------------------------------

--
-- Структура таблицы `chats`
--

CREATE TABLE `chats` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_from` int(10) UNSIGNED NOT NULL,
  `user_to` int(10) UNSIGNED NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `chats`
--

INSERT INTO `chats` (`id`, `user_from`, `user_to`, `message`, `created_at`, `updated_at`) VALUES
(6, 1, 2, 'fgfdgdg', '2018-09-12 14:59:05', '2018-09-12 14:59:05'),
(7, 1, 2, 'dfgdfg', '2018-09-12 14:59:07', '2018-09-12 14:59:07'),
(8, 1, 1, 'dfgdfg', '2018-09-12 14:59:13', '2018-09-12 14:59:13'),
(9, 1, 1, 'dfgdfg', '2018-09-12 14:59:15', '2018-09-12 14:59:15'),
(10, 1, 1, 'tets', '2018-09-12 15:02:30', '2018-09-12 15:02:30'),
(11, 1, 2, 'new message', '2018-09-12 15:02:43', '2018-09-12 15:02:43'),
(12, 2, 1, 'test admin', '2018-09-12 15:07:52', '2018-09-12 15:07:52'),
(13, 1, 2, 'Hi admin', '2018-09-12 15:08:11', '2018-09-12 15:08:11'),
(14, 2, 1, 'ghjghj', '2018-09-12 15:13:29', '2018-09-12 15:13:29'),
(15, 1, 2, 'asdasd', '2018-09-12 15:13:35', '2018-09-12 15:13:35'),
(16, 2, 1, 'test AJAX', '2018-09-12 15:28:31', '2018-09-12 15:28:31'),
(17, 2, 1, 'sdfsdfsdf', '2018-09-12 15:29:11', '2018-09-12 15:29:11'),
(18, 1, 2, 'asdad', '2018-09-12 15:29:24', '2018-09-12 15:29:24'),
(19, 1, 2, 'asdasd', '2018-09-19 13:34:21', '2018-09-19 13:34:21'),
(20, 1, 1, 'asdsadasd', '2018-09-19 14:07:07', '2018-09-19 14:07:07'),
(21, 1, 1, 'asdasdad', '2018-09-19 14:07:11', '2018-09-19 14:07:11'),
(22, 1, 1, 'asdasdas', '2018-09-19 14:07:13', '2018-09-19 14:07:13'),
(23, 1, 1, '234234234', '2018-09-19 14:07:22', '2018-09-19 14:07:22'),
(24, 1, 1, '1111', '2018-09-19 14:41:01', '2018-09-19 14:41:01'),
(25, 1, 1, 'test', '2018-09-19 14:45:49', '2018-09-19 14:45:49'),
(26, 1, 1, 'asdasdas', '2018-09-19 14:45:56', '2018-09-19 14:45:56'),
(27, 1, 1, '23423434', '2018-09-19 14:45:58', '2018-09-19 14:45:58'),
(28, 1, 1, '345345435', '2018-09-19 14:46:00', '2018-09-19 14:46:00'),
(29, 1, 1, '54545', '2018-09-19 15:00:52', '2018-09-19 15:00:52'),
(30, 1, 1, '1', '2018-09-19 15:07:33', '2018-09-19 15:07:33'),
(31, 2, 1, 'test', '2018-09-19 15:08:25', '2018-09-19 15:08:25'),
(32, 2, 1, 'asdasd', '2018-09-19 15:09:27', '2018-09-19 15:09:27'),
(33, 2, 1, 'dasdasdasd', '2018-09-19 15:10:39', '2018-09-19 15:10:39'),
(34, 2, 1, 'dsfsdf', '2018-09-19 15:11:35', '2018-09-19 15:11:35'),
(35, 2, 1, 'sdfsdfsdf', '2018-09-19 15:12:14', '2018-09-19 15:12:14'),
(36, 1, 1, 'asdasdasd', '2018-09-19 15:12:25', '2018-09-19 15:12:25'),
(37, 1, 1, 'rytryrty', '2018-09-19 15:12:50', '2018-09-19 15:12:50'),
(38, 1, 1, 'fgdfg', '2018-09-19 15:17:08', '2018-09-19 15:17:08'),
(39, 1, 1, '3424234', '2018-09-19 15:20:16', '2018-09-19 15:20:16'),
(40, 2, 1, 'Привет', '2018-09-19 15:20:40', '2018-09-19 15:20:40'),
(41, 1, 1, 'фіфів', '2018-09-19 15:20:52', '2018-09-19 15:20:52'),
(42, 2, 1, 'Останій тест', '2018-09-19 15:22:40', '2018-09-19 15:22:40'),
(43, 2, 1, 'asdasdasasd', '2018-09-19 15:23:33', '2018-09-19 15:23:33');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2018_08_22_165912_create_posts_table', 2),
(6, '2018_09_12_165559_create_chats_table', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` int(10) UNSIGNED NOT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `show` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `text`, `author`, `views`, `show`, `created_at`, `updated_at`) VALUES
(1, 'В YouTube появилась статистика потраченного времени и улучшенные уведомления 1', '<p>sdadasdasdasas</p>', '<p>asdas</p>', 1, 0, 0, '2018-09-05 15:05:33', '2018-09-05 15:05:33'),
(2, '123123', '<p>123123</p>', '<p>123123</p>', 1, 0, 0, '2018-09-05 15:05:44', '2018-09-05 15:05:44');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Pintiliy', 'mrpintiliy@gmail.com', '$2y$10$JzUzh9TQkvgOdLbWzBzoFul5Yi9nNgGRPUX2Z5gfyEJKfo8DTFv/.', 'Iw6OqwaIqxggT5XuW9Gygmti63ndKh7A58eGwE5ZD89RqwujePG0trZ8ih9r', '2018-08-22 13:53:25', '2018-08-22 13:53:25'),
(2, 'admin', 'admin@bm.com', '$2y$10$Hpoi8lWImoer.kHLlnaU7.cR8b0GsY5EsT4cekSt5cI4vdxQ/Vo7q', 'XGj668KkeZZHnZ0dQrRb7AI2YVGawlBP54Yha2sHSFcNeFF4Y0GDk16DWkrX', '2018-08-29 14:48:58', '2018-08-29 14:48:58');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chats_user_from_foreign` (`user_from`),
  ADD KEY `chats_user_to_foreign` (`user_to`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_author_foreign` (`author`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `chats`
--
ALTER TABLE `chats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `chats`
--
ALTER TABLE `chats`
  ADD CONSTRAINT `chats_user_from_foreign` FOREIGN KEY (`user_from`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `chats_user_to_foreign` FOREIGN KEY (`user_to`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_author_foreign` FOREIGN KEY (`author`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
