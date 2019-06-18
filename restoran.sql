-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2019 at 04:46 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restoran`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(16, '2014_10_12_000000_create_users_table', 1),
(17, '2014_10_12_100000_create_password_resets_table', 1),
(18, '2019_05_11_212212_create_add_role_to_user_table', 1),
(19, '2019_05_12_135543_create_users_tesks_pivot_table', 1),
(20, '2019_05_12_140630_create_tasks_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(10) UNSIGNED NOT NULL,
  `zaposlenici_id` int(10) UNSIGNED NOT NULL,
  `gosti_id` int(10) UNSIGNED DEFAULT NULL,
  `naziv_jela` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `naziv_jela_na_engleskom` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `opis_jela` text COLLATE utf8_unicode_ci,
  `tip_jela` enum('predjelo','glavno_jelo','desert') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'glavno_jelo',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `zaposlenici_id`, `gosti_id`, `naziv_jela`, `naziv_jela_na_engleskom`, `opis_jela`, `tip_jela`, `created_at`, `updated_at`) VALUES
(13, 2, NULL, 'Goveđa juha', 'Beef soup', 'Goveđe meso, tjestenina, povrće, zaćini', 'predjelo', '2019-06-17 11:25:54', '2019-06-17 11:25:54'),
(14, 2, NULL, 'Sarma', 'Sarma', 'Kupus, meso, luk, riža, začini', 'glavno_jelo', '2019-06-17 11:28:41', '2019-06-17 11:28:41'),
(15, 2, NULL, 'Kolač od sira', 'Cheecake', 'Sir, slatko vrhnje, šumsko voće, keks, margarin', 'desert', '2019-06-17 11:30:05', '2019-06-17 11:30:05'),
(16, 4, NULL, 'kolac od maka', 'mak cake', 'mak', 'desert', '2019-06-17 12:17:50', '2019-06-17 12:17:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `role` enum('admin','zaposlenici','gosti') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'gosti',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@restoran.local', NULL, '$2y$10$rL3QK.RMt5ojyBkkA.uDnO8SlioGGiTRD8/YZl2DmSRWXb7Rpmiq2', 'admin', NULL, NULL, NULL),
(2, 'Zaposlenici', 'zaposlenici@restoran.local', NULL, '$2y$10$ofaSh3tkZZuagh0vuHOP/Oa.nqka.KP9he8hwckBQvlYHtdMM/Ck.', 'zaposlenici', NULL, NULL, NULL),
(3, 'Gosti', 'gosti@restoran.local', NULL, '$2y$10$gA.T7DnTZnEpKm3.AXwhvu8JS8VZ2J.SK/1cLlZR7TOqnmviudG3G', 'gosti', NULL, NULL, NULL),
(4, 'sanja', 'sanja@restoran.local', NULL, '$2y$10$WvWsQjTcjjwZXyMbPsNxqu64YcCOjuS9NNYiLD5zHerUrA3MbMKby', 'zaposlenici', NULL, '2019-06-17 12:15:18', '2019-06-17 12:16:30');

-- --------------------------------------------------------

--
-- Table structure for table `users_tasks`
--

CREATE TABLE `users_tasks` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `task_id` int(10) UNSIGNED NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
