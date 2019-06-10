-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2019 at 09:13 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `classmate_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `channels`
--

CREATE TABLE `channels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_06_04_172032_create_threads_table', 1),
(4, '2019_06_04_172338_create_replies_table', 1),
(5, '2019_06_04_172500_create_channels_table', 1),
(6, '2019_06_04_172631_create_saves_table', 1),
(7, '2019_06_05_050114_create_user_admins_table', 1),
(8, '2019_06_05_102850_create_user_students_table', 1),
(9, '2019_06_05_103015_create_user_teachers_table', 1),
(10, '2019_06_08_051750_create_user_staffs_table', 1),
(11, '2019_06_08_061720_create_table_guardians_table', 1),
(12, '2019_06_08_062021_create_table_classes_table', 1),
(13, '2019_06_08_062712_create_table_courses_table', 1),
(14, '2019_06_08_134336_create_foreign_keys', 1),
(15, '2019_06_10_190359_create_table_elective_courses_table', 1),
(16, '2019_06_10_190645_create_table_student_results_table', 1),
(17, '2019_06_10_191119_create_table_backlog_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thread_id` int(10) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `saves`
--

CREATE TABLE `saves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `saved_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `table_backlog`
--

CREATE TABLE `table_backlog` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `u_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_ref_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `s_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `s_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `current_sem` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `table_classes`
--

CREATE TABLE `table_classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `u_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_ref_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `starting_year` int(11) NOT NULL,
  `passing_year` int(11) NOT NULL,
  `standard` int(10) UNSIGNED NOT NULL,
  `section` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ct_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` tinyint(4) NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `table_courses`
--

CREATE TABLE `table_courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `u_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_ref_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `s_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_day` tinyint(4) NOT NULL,
  `sem` tinyint(4) NOT NULL,
  `current_sem` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `time_start` time NOT NULL,
  `time_end` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `table_elective_courses`
--

CREATE TABLE `table_elective_courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `s_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_ref_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `u_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `s_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_day` tinyint(4) NOT NULL,
  `current_sem` tinyint(4) NOT NULL,
  `time_start` time NOT NULL,
  `time_end` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `table_guardians`
--

CREATE TABLE `table_guardians` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `u_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_ref_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` bigint(20) UNSIGNED NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `table_student_results`
--

CREATE TABLE `table_student_results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `u_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_ref_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `s_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `s_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_day` tinyint(4) NOT NULL,
  `marks` tinyint(4) NOT NULL,
  `grade` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `backlog_status` tinyint(4) NOT NULL,
  `taken_at` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `threads`
--

CREATE TABLE `threads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `replies_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_admins`
--

CREATE TABLE `user_admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `u_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` int(10) UNSIGNED NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_staffs`
--

CREATE TABLE `user_staffs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `u_id` int(10) UNSIGNED NOT NULL,
  `t_ref_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` int(10) UNSIGNED NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_students`
--

CREATE TABLE `user_students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `u_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_ref_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` bigint(20) UNSIGNED NOT NULL,
  `d_o_b` date NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guardian_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_teachers`
--

CREATE TABLE `user_teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `u_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_ref_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` bigint(20) UNSIGNED NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `channels`
--
ALTER TABLE `channels`
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
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saves`
--
ALTER TABLE `saves`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `saves_user_id_saved_id_unique` (`user_id`,`saved_id`);

--
-- Indexes for table `table_backlog`
--
ALTER TABLE `table_backlog`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `table_backlog_u_id_unique` (`u_id`);

--
-- Indexes for table `table_classes`
--
ALTER TABLE `table_classes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `table_classes_u_id_unique` (`u_id`);

--
-- Indexes for table `table_courses`
--
ALTER TABLE `table_courses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `table_courses_u_id_unique` (`u_id`);

--
-- Indexes for table `table_elective_courses`
--
ALTER TABLE `table_elective_courses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `table_elective_courses_s_id_unique` (`s_id`);

--
-- Indexes for table `table_guardians`
--
ALTER TABLE `table_guardians`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `table_guardians_u_id_unique` (`u_id`),
  ADD UNIQUE KEY `table_guardians_email_unique` (`email`);

--
-- Indexes for table `table_student_results`
--
ALTER TABLE `table_student_results`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `table_student_results_u_id_unique` (`u_id`);

--
-- Indexes for table `threads`
--
ALTER TABLE `threads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_admins`
--
ALTER TABLE `user_admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_admins_u_id_unique` (`u_id`),
  ADD UNIQUE KEY `user_admins_email_unique` (`email`);

--
-- Indexes for table `user_staffs`
--
ALTER TABLE `user_staffs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_staffs_u_id_unique` (`u_id`),
  ADD UNIQUE KEY `user_staffs_email_unique` (`email`);

--
-- Indexes for table `user_students`
--
ALTER TABLE `user_students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_students_u_id_unique` (`u_id`),
  ADD UNIQUE KEY `user_students_email_unique` (`email`);

--
-- Indexes for table `user_teachers`
--
ALTER TABLE `user_teachers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_teachers_u_id_unique` (`u_id`),
  ADD UNIQUE KEY `user_teachers_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `channels`
--
ALTER TABLE `channels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `saves`
--
ALTER TABLE `saves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_backlog`
--
ALTER TABLE `table_backlog`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_classes`
--
ALTER TABLE `table_classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_courses`
--
ALTER TABLE `table_courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_elective_courses`
--
ALTER TABLE `table_elective_courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_guardians`
--
ALTER TABLE `table_guardians`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_student_results`
--
ALTER TABLE `table_student_results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `threads`
--
ALTER TABLE `threads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_admins`
--
ALTER TABLE `user_admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_staffs`
--
ALTER TABLE `user_staffs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_students`
--
ALTER TABLE `user_students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_teachers`
--
ALTER TABLE `user_teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
