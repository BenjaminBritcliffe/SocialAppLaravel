-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2017 at 06:28 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `socialnetwork`
--
CREATE DATABASE IF NOT EXISTS `socialnetwork` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `socialnetwork`;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `like` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `created_at`, `updated_at`, `user_id`, `post_id`, `like`) VALUES
(8, '2017-03-23 14:22:07', '2017-03-23 14:22:07', 1, 5, 1),
(9, '2017-03-23 14:22:08', '2017-03-23 14:22:08', 1, 6, 1),
(10, '2017-03-23 14:22:09', '2017-03-23 14:22:09', 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2017_03_11_150237_create_users_table', 1),
('2017_03_15_181521_create_posts_table', 2),
('2017_03_23_132615_create_likes_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `created_at`, `updated_at`, `body`, `user_id`) VALUES
(2, '2017-03-17 21:52:56', '2017-03-21 18:48:09', 'test', 1),
(5, '2017-03-20 17:08:39', '2017-03-20 17:08:39', 'Im Test 2', 4),
(6, '2017-03-23 14:17:55', '2017-03-23 14:18:02', 'Hello World. !', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `created_at`, `updated_at`, `email`, `first_name`, `password`, `remember_token`) VALUES
(1, '2017-03-11 15:46:47', '2017-03-23 14:22:20', 'test@test.com', 'Test', '$2y$10$Kft0eOSXz4/6t5dAXAKxXeZYdst90ROMr/OVO8JLDhLeQS82WoIE.', '4LEmEOsxqv6pJcd30fdGFGZ5kD5s9ca2IOSPahNrOizTLmtNHWqntcoUr86t'),
(2, '2017-03-12 15:03:55', '2017-03-12 15:03:55', 'test@test.co.uk', 'Test', '$2y$10$eKnTfCcUQkiyp6QeWJcJLub/QsOsIZbJc97T5RkSCIUmE5aqt0MQa', NULL),
(3, '2017-03-12 15:25:39', '2017-03-12 15:25:39', 'test@test.co.uk', 'test', '$2y$10$7Zw6h1fO8XHuEtDDk/ZIz.Nt1oL3Ab8JBRbV7pk3UYo8IzbPIEOqa', NULL),
(4, '2017-03-20 17:08:31', '2017-03-20 17:08:42', 'test2@test.com', 'test2', '$2y$10$YB6eahQp/qF9WBxDeUiy2.HHXSLMPrs.JyZ.BqbBu8uNBPgmbwytG', 'ViHxsyYkKPzmXrKlQ786QJpghw4TyKL2XU7E3xJGYipxjNDfF8Dasb2RD8m4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
