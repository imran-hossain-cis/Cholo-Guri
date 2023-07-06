-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 05, 2023 at 03:42 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restora`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `resort_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkin` date NOT NULL,
  `checkout` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `resort_id`, `name`, `email`, `phone`, `address`, `nid`, `checkin`, `checkout`, `created_at`, `updated_at`) VALUES
(1, 2, 'Easton98', 'johirul.jij@gmail.com', '01770099496', 'Mogbazar,Dhaka', '379', '2022-10-30', '2022-10-30', '2022-10-30 04:34:42', '2022-10-30 04:34:42'),
(2, 5, 'Name.Metz', 'johirul.jij@gmail.com', '01770099496', 'Mogbazar,Dhaka', '424', '2022-11-22', '2022-11-27', '2022-11-02 04:17:11', '2022-11-02 04:17:11'),
(3, 7, 'Johirul Islam', 'johirul.jij@gmail.com', '01770099496', 'Mogbazar,Dhaka', '7353348464', '2022-11-03', '2022-11-03', '2022-11-03 00:37:16', '2022-11-03 00:37:16'),
(4, 6, 'Osborne_Schowalter', 'johirul.jij@gmail.com', '01770099496', 'Mogbazar,Dhaka', '260', '2022-11-06', '2022-11-06', '2022-11-06 01:02:13', '2022-11-06 01:02:13'),
(5, 4, 'Camren_Daugherty', 'johirul.jij@gmail.com', '01770099496', 'Mogbazar,Dhaka', '258', '2022-11-07', '2022-11-07', '2022-11-06 01:06:56', '2022-11-06 01:06:56'),
(6, 1, 'Furman28', 'johirul.jij@gmail.com', '01770099496', 'Mogbazar,Dhaka', '201', '2022-11-15', '2022-11-15', '2022-11-06 01:07:47', '2022-11-06 01:07:47'),
(7, 3, 'Elyse30', 'johirul.jij@gmail.com', '01770099496', 'Mogbazar,Dhaka', '514', '2022-11-17', '2022-11-18', '2022-11-07 01:15:45', '2022-11-07 01:15:45');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_10_03_114207_create_resorts_table', 1),
(5, '2022_10_24_214812_create_bookings_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resorts`
--

CREATE TABLE `resorts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `help` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `resorts`
--

INSERT INTO `resorts` (`id`, `name`, `location`, `description`, `image`, `amount`, `help`, `created_at`, `updated_at`) VALUES
(1, 'Safari Park', 'Gazipur', 'Consequatur quis voluptatem veritatis facilis.', 'ResortImage/cD6ypvYRudh4cLIKrIABSTBmhG97yHJs8lzA2158.jpg', 60, '01770099496', '2022-10-24 14:35:08', '2022-10-24 14:35:08'),
(2, 'Jedediah Windler', 'Delores_Beier78', 'Nisi eum optio iusto eum aperiam tempora illo distinctio iste.', 'ResortImage/RlD0mfpoSBKCyrSjvKdiX6lzyw7EcXVWTlOYCrGw.png', 50, 'Recusandae est sunt vero rerum.', '2022-10-25 12:22:38', '2022-10-25 12:22:38'),
(3, 'Carmel Schmeler', 'Minerva_Balistreri29', 'Fugit qui ipsam.', 'ResortImage/vCeNGKH8SybA87mm3v4lYnpcr2e6chHtO3Yv28l1.png', 595, '321', '2022-10-27 15:37:07', '2022-10-27 15:37:07'),
(4, 'Lindsey Lakin', 'Jessie72', 'Hic nihil commodi nulla eum ab quia.', 'ResortImage/MfeqWKvJpSeL6IM7T96KAS0PEJQve2arahvPz8ig.jpg', 284, '265', '2022-10-30 04:27:31', '2022-10-30 04:27:31'),
(5, 'Ivah Satterfield', 'Jo71', 'Natus error facere beatae incidunt voluptatem libero voluptas.', 'ResortImage/S1n8zP5eeeUHw8xRhygeDWRnhrQizD0PTYibezpk.jpg', 21, '662', '2022-10-30 04:27:48', '2022-10-30 04:27:48'),
(6, 'Olin Considine', 'Alvera_Crona', 'Maiores cum culpa voluptatibus.', 'ResortImage/sTvXqyUko0EcsWZ7Px0IMfwa2RP5pWKGJXss5J2O.png', 371, '249', '2022-10-30 04:29:33', '2022-10-30 04:29:33'),
(7, 'Dusai', 'Sylhet', 'Aut similique sapiente quae doloribus laudantium libero saepe.', 'ResortImage/5XgDm5UoJ9xT0nZRG6402thm4QyRf6t3pMj9SIBN.png', 5000, '01770099496', '2022-11-03 00:36:30', '2022-11-03 00:36:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$D4K1iySvGKpIpY3UFQpHeeAHyMudEZacAmIr1HKOnrTvouF2AS.7S', 'Yn1xkzzP160bMSTsEu5sOmdowAUNXbKxXrsR35l5f9DXf0aJGSg9yOTiH6l0', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_resort_id_foreign` (`resort_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `resorts`
--
ALTER TABLE `resorts`
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
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `resorts`
--
ALTER TABLE `resorts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_resort_id_foreign` FOREIGN KEY (`resort_id`) REFERENCES `resorts` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
