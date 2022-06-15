-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 15, 2022 at 11:23 AM
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
-- Database: `db_album_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `name`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'album 1', '2022-06-13 15:14:21', '2022-06-13 15:14:21', 1),
(2, 'album 2', '2022-06-13 15:14:25', '2022-06-13 15:14:25', NULL),
(3, 'Album 3 Updated', '2022-06-13 15:14:29', '2022-06-13 15:15:10', NULL),
(5, 'Temp album 5676', '2022-06-14 02:13:23', '2022-06-14 02:13:23', 1),
(6, 'Linux', '2022-06-14 05:53:29', '2022-06-14 05:53:29', 1);

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
-- Table structure for table `image_manipulations`
--

CREATE TABLE `image_manipulations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `output_path` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `album_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image_manipulations`
--

INSERT INTO `image_manipulations` (`id`, `name`, `path`, `type`, `data`, `output_path`, `created_at`, `album_id`, `user_id`) VALUES
(1, 'TK-Bored-Ape.jpg', 'images/wo3c3LtClI59NDRw/TK-Bored-Ape.jpg', 'resize', '{\"w\":\"900\",\"image\":{}}', 'images/wo3c3LtClI59NDRw/TK-Bored-Ape-resized.jpg', '2022-06-13 15:41:45', NULL, NULL),
(2, 'TK-Bored-Ape.jpg', 'images/fEOJpFnadY11ErK8/TK-Bored-Ape.jpg', 'resize', '{\"w\":\"900\",\"image\":{}}', 'images/fEOJpFnadY11ErK8/TK-Bored-Ape-resized.jpg', '2022-06-13 15:43:52', NULL, NULL),
(3, 'TK-Bored-Ape.jpg', 'images/cPTQCOTuefSHVrub/TK-Bored-Ape.jpg', 'resize', '{\"image\":\"https:\\/\\/news.artnet.com\\/app\\/news-upload\\/2022\\/01\\/TK-Bored-Ape.jpg\",\"w\":\"50%\",\"h\":\"50%\"}', 'images/cPTQCOTuefSHVrub/TK-Bored-Ape-resized.jpg', '2022-06-13 15:45:44', NULL, NULL),
(4, 'TK-Bored-Ape.jpg', 'images/fmBTZ3LJOX3OZjzk/TK-Bored-Ape.jpg', 'resize', '{\"w\":\"50%\",\"h\":\"50%\"}', 'images/fmBTZ3LJOX3OZjzk/TK-Bored-Ape-resized.jpg', '2022-06-13 15:52:06', NULL, NULL),
(5, 'TK-Bored-Ape.jpg', 'images/M2SvaY49wcubwp7R/TK-Bored-Ape.jpg', 'resize', '{\"album_id\":2,\"w\":\"50%\",\"h\":\"50%\"}', 'images/M2SvaY49wcubwp7R/TK-Bored-Ape-resized.jpg', '2022-06-13 15:55:21', 2, NULL),
(6, 'TK-Bored-Ape.jpg', 'images/PJdW71NMx5CuCNUA/TK-Bored-Ape.jpg', 'resize', '{\"album_id\":\"3\",\"w\":\"900\"}', 'images/PJdW71NMx5CuCNUA/TK-Bored-Ape-resized.jpg', '2022-06-14 01:41:19', 3, NULL),
(7, 'TK-Bored-Ape.jpg', 'images/zTzf4M8xuy31VHJw/TK-Bored-Ape.jpg', 'resize', '{\"album_id\":2,\"w\":\"50%\",\"h\":\"50%\"}', 'images/zTzf4M8xuy31VHJw/TK-Bored-Ape-resized.jpg', '2022-06-14 02:02:38', 2, NULL),
(8, 'TK-Bored-Ape.jpg', 'images/JuGTXF6SCHLzecEs/TK-Bored-Ape.jpg', 'resize', '{\"album_id\":2,\"w\":\"50%\",\"h\":\"50%\"}', 'images/JuGTXF6SCHLzecEs/TK-Bored-Ape-resized.jpg', '2022-06-14 02:13:47', 2, NULL),
(9, 'TK-Bored-Ape.jpg', 'images/dSeFnDxTl7HKGEZS/TK-Bored-Ape.jpg', 'resize', '{\"w\":\"600\"}', 'images/dSeFnDxTl7HKGEZS/TK-Bored-Ape-resized.jpg', '2022-06-14 02:14:03', NULL, 1),
(10, 'TK-Bored-Ape.jpg', 'images/eFPRqI0Z0z40plGt/TK-Bored-Ape.jpg', 'resize', '{\"album_id\":\"3\",\"w\":\"900\"}', 'images/eFPRqI0Z0z40plGt/TK-Bored-Ape-resized.jpg', '2022-06-14 02:14:19', 3, NULL),
(12, 'TK-Bored-Ape.jpg', 'images/Sld7kXWRkkZs0U1y/TK-Bored-Ape.jpg', 'resize', '{\"album_id\":1,\"w\":\"50%\",\"h\":\"50%\"}', 'images/Sld7kXWRkkZs0U1y/TK-Bored-Ape-resized.jpg', '2022-06-14 06:05:31', 1, 1);

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_12_180820_create_albums_table', 1),
(6, '2022_06_13_183952_create_image_manipulations_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(7, 'App\\Models\\User', 1, 'Main', '976e16fff9c8797f8a7002e3f1367add449874269991a6c5bc461df8c55f07e7', '[\"*\"]', '2022-06-14 04:53:32', '2022-06-14 04:52:25', '2022-06-14 04:53:32'),
(8, 'App\\Models\\User', 1, 'For my image api', '5f64510855e8dafe74b50090db1d25856df591c2250573143e68dceeab5a4af3', '[\"*\"]', '2022-06-14 06:09:05', '2022-06-14 04:54:26', '2022-06-14 06:09:05');

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
(1, 'Levan S.', 'levan@mail.com', NULL, '$2y$10$NLcqYdKG5pyBDDM6zkUCvOsz9r6b0ck36kJkrobi0qHUJApHQGdmy', 'dFOtSiNvbCUjCb3kZIaFHb5albLdhNgJmM7Q4XWZ7QF3E3QgSJVVyzRfshUi', '2022-06-14 03:02:07', '2022-06-14 03:02:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `image_manipulations`
--
ALTER TABLE `image_manipulations`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `image_manipulations`
--
ALTER TABLE `image_manipulations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
