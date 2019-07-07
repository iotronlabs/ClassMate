-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2019 at 04:43 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

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
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `department_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `t_ref_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `examinations`
--

CREATE TABLE `examinations` (
  `exam_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exam_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `duration` int(11) NOT NULL,
  `pass_mark` int(11) NOT NULL,
  `re_exam` int(11) NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_id_created` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forum_channels`
--

CREATE TABLE `forum_channels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_ref_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forum_replies`
--

CREATE TABLE `forum_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `forum_thread_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_ref_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_authentication` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forum_saves`
--

CREATE TABLE `forum_saves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `saved_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `saved_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_ref_id` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forum_threads`
--

CREATE TABLE `forum_threads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `forum_channel_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `replies_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_ref_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `t_authentication` tinyint(4) NOT NULL
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
(14, '2019_06_10_190359_create_table_elective_courses_table', 1),
(15, '2019_06_10_190645_create_table_student_results_table', 1),
(16, '2019_06_10_191119_create_table_backlog_table', 1),
(17, '2019_06_20_142513_create_topics_table', 1),
(18, '2019_06_20_142600_create_departments_table', 1),
(19, '2019_06_20_142622_create_subjects_table', 1),
(20, '2019_06_21_125339_create_streams_table', 1),
(21, '2019_06_21_151821_create_add_foriegn_key', 1),
(22, '2019_06_21_185714_create_examinations_table', 1),
(23, '2019_06_21_190641_create_questions_table', 1),
(24, '2019_07_03_190651_create_subject_stream_table', 1);

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
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `question_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exam_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_3` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_4` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `streams`
--

CREATE TABLE `streams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `stream_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stream_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_length` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_ref_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `sub_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_ref_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `sub_code`, `sub_name`, `t_ref_id`, `created_at`, `updated_at`) VALUES
(15001, 'asdasd', 'asdasd', NULL, '2019-07-05 11:25:35', '2019-07-05 11:25:35');

-- --------------------------------------------------------

--
-- Table structure for table `subject_stream`
--

CREATE TABLE `subject_stream` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sub_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stream_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_ref_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `table_backlog`
--

CREATE TABLE `table_backlog` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_ref_id` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `current_sem` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `table_classes`
--

CREATE TABLE `table_classes` (
  `class_id` bigint(20) UNSIGNED NOT NULL,
  `class_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_ref_id` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `class_stream` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ct_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `table_courses`
--

CREATE TABLE `table_courses` (
  `sub_id` bigint(20) UNSIGNED NOT NULL,
  `t_ref_id` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_day` tinyint(4) NOT NULL,
  `sem` tinyint(4) NOT NULL,
  `current_sem` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
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
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `topic_id` bigint(20) UNSIGNED NOT NULL,
  `topic_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_id` int(10) UNSIGNED NOT NULL,
  `t_ref_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`topic_id`, `topic_name`, `sub_id`, `t_ref_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'asda', 15001, NULL, 'Active', '2019-07-05 11:25:35', '2019-07-05 11:25:35'),
(2, 'dsad', 15001, NULL, 'Active', '2019-07-05 11:25:36', '2019-07-05 11:25:36');

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
  `st_id` bigint(20) UNSIGNED NOT NULL,
  `t_ref_id` int(11) DEFAULT NULL,
  `st_fname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `st_mname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `st_surname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `st_dob` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `st_age` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `st_contact` bigint(20) UNSIGNED NOT NULL,
  `st_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `st_gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `st_nationality` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `st_religion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `st_address` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `st_address_pin` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `st_address_city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `st_address_state` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '111',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `st_authentication` int(11) NOT NULL DEFAULT '3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_students`
--

CREATE TABLE `user_students` (
  `s_id` bigint(20) UNSIGNED NOT NULL,
  `t_ref_id` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_fname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `s_mname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_surname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `s_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `s_gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `s_contact` bigint(20) UNSIGNED NOT NULL,
  `s_dob` date NOT NULL,
  `s_age` int(11) NOT NULL,
  `s_nationality` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `s_religion` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `s_address` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `s_address_pin` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `s_address_city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `s_address_state` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_fname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guardian_mname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_surname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guardian_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guardian_contact` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guardian_address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guardian_city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guardian_pin` int(11) NOT NULL,
  `guardian_state` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '111',
  `s_authentication` int(11) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `s_profile_picture` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_students`
--

INSERT INTO `user_students` (`s_id`, `t_ref_id`, `s_fname`, `s_mname`, `s_surname`, `s_email`, `s_gender`, `s_contact`, `s_dob`, `s_age`, `s_nationality`, `s_religion`, `s_address`, `s_address_pin`, `s_address_city`, `s_address_state`, `guardian_fname`, `guardian_mname`, `guardian_surname`, `guardian_email`, `guardian_contact`, `guardian_address`, `guardian_city`, `guardian_pin`, `guardian_state`, `password`, `class_id`, `status`, `s_authentication`, `remember_token`, `created_at`, `updated_at`, `s_profile_picture`) VALUES
(170500, NULL, 'Mr.', 'Saptarshi', 'Sinha', 'saptarshi.sinha.ind@gmail.com', 'M', 9876543210, '2019-07-05', 12, 'india', 'asjd', '20/61A CENTRAL TOWER, CENTRAL ROAD, BARRACKPORE', '700122', 'BARRACKPORE', NULL, 'asd', 'asdsad', 'sdfsd', 'saptarshi.sinha.ind@gmail.com', '9876534210', '20/61A CENTRAL TOWER, CENTRAL ROAD, BARRACKPORE', 'BARRACKPORE', 700122, 'Chhattisgarh', '$2y$10$ZjfLvcWbDlrZeBmy1hbc9urcW0Q9DqwtAJrPhv8Ea4iDjWfUtm5HO', '123', 111, 1, NULL, '2019-07-05 11:24:21', '2019-07-05 11:24:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_teachers`
--

CREATE TABLE `user_teachers` (
  `t_id` bigint(20) UNSIGNED NOT NULL,
  `t_ref_id` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '111',
  `t_fname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_mname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_surname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_dob` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_age` int(11) NOT NULL,
  `t_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_contact` bigint(20) UNSIGNED NOT NULL,
  `t_nationality` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_religion` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_address_pin` int(11) NOT NULL,
  `t_address_state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_address_city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_sub` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '111',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `t_authentication` int(11) NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_teachers`
--

INSERT INTO `user_teachers` (`t_id`, `t_ref_id`, `t_fname`, `t_mname`, `t_surname`, `t_dob`, `t_age`, `t_email`, `t_gender`, `t_contact`, `t_nationality`, `t_religion`, `t_address`, `t_address_pin`, `t_address_state`, `t_address_city`, `password`, `t_sub`, `status`, `remember_token`, `created_at`, `updated_at`, `t_authentication`) VALUES
(170200, '111', 'Mr.', 'Anand', 'Chutiya', '2019-07-05', 21, 'saptarshi.sinha.ind@gmail.com', 'F', 1234567890, 'sdfdsfs', 'dfsdfds', '20/61A CENTRAL TOWER, CENTRAL ROAD, BARRACKPORE', 700122, NULL, 'BARRACKPORE', '$2y$10$yUd4ySgDVBOsJ4yJE.2DNubGMEK5AT0EA/wJcJmYhqd9vRM1umkFG', 'asdasd', 111, NULL, '2019-07-05 11:26:11', '2019-07-05 11:26:11', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `departments_department_name_unique` (`department_name`),
  ADD UNIQUE KEY `departments_department_code_unique` (`department_code`);

--
-- Indexes for table `examinations`
--
ALTER TABLE `examinations`
  ADD PRIMARY KEY (`exam_code`);

--
-- Indexes for table `forum_channels`
--
ALTER TABLE `forum_channels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_replies`
--
ALTER TABLE `forum_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_saves`
--
ALTER TABLE `forum_saves`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `forum_saves_user_id_saved_id_saved_type_unique` (`user_id`,`saved_id`,`saved_type`);

--
-- Indexes for table `forum_threads`
--
ALTER TABLE `forum_threads`
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
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`question_code`);

--
-- Indexes for table `streams`
--
ALTER TABLE `streams`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `streams_stream_code_unique` (`stream_code`),
  ADD UNIQUE KEY `streams_stream_name_unique` (`stream_name`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subjects_sub_code_unique` (`sub_code`),
  ADD UNIQUE KEY `subjects_sub_name_unique` (`sub_name`);

--
-- Indexes for table `subject_stream`
--
ALTER TABLE `subject_stream`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_backlog`
--
ALTER TABLE `table_backlog`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `table_backlog_student_id_unique` (`student_id`);

--
-- Indexes for table `table_classes`
--
ALTER TABLE `table_classes`
  ADD PRIMARY KEY (`class_id`),
  ADD UNIQUE KEY `table_classes_class_id_unique` (`class_id`);

--
-- Indexes for table `table_courses`
--
ALTER TABLE `table_courses`
  ADD PRIMARY KEY (`sub_id`),
  ADD UNIQUE KEY `table_courses_sub_id_unique` (`sub_id`);

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
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`topic_id`);

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
  ADD PRIMARY KEY (`st_id`),
  ADD UNIQUE KEY `user_staffs_st_id_unique` (`st_id`),
  ADD UNIQUE KEY `user_staffs_st_email_unique` (`st_email`);

--
-- Indexes for table `user_students`
--
ALTER TABLE `user_students`
  ADD PRIMARY KEY (`s_id`),
  ADD UNIQUE KEY `user_students_s_id_unique` (`s_id`),
  ADD UNIQUE KEY `user_students_s_email_unique` (`s_email`);

--
-- Indexes for table `user_teachers`
--
ALTER TABLE `user_teachers`
  ADD PRIMARY KEY (`t_id`),
  ADD UNIQUE KEY `user_teachers_t_id_unique` (`t_id`),
  ADD UNIQUE KEY `user_teachers_t_email_unique` (`t_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65001;

--
-- AUTO_INCREMENT for table `forum_channels`
--
ALTER TABLE `forum_channels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forum_replies`
--
ALTER TABLE `forum_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forum_saves`
--
ALTER TABLE `forum_saves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forum_threads`
--
ALTER TABLE `forum_threads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `streams`
--
ALTER TABLE `streams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15002;

--
-- AUTO_INCREMENT for table `subject_stream`
--
ALTER TABLE `subject_stream`
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
  MODIFY `class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- AUTO_INCREMENT for table `table_courses`
--
ALTER TABLE `table_courses`
  MODIFY `sub_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

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
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `topic_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `st_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170300;

--
-- AUTO_INCREMENT for table `user_students`
--
ALTER TABLE `user_students`
  MODIFY `s_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170501;

--
-- AUTO_INCREMENT for table `user_teachers`
--
ALTER TABLE `user_teachers`
  MODIFY `t_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170201;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
