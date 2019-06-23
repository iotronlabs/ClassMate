-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2019 at 09:19 AM
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
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `dept_id` int(10) UNSIGNED NOT NULL,
  `dept_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stream_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stream_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_length` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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

--
-- Dumping data for table `examinations`
--

INSERT INTO `examinations` (`exam_code`, `topic`, `subject`, `exam_name`, `date`, `duration`, `pass_mark`, `re_exam`, `description`, `status`, `class_id`, `teacher_id_created`, `created_at`, `updated_at`) VALUES
('Ex-4075', 'ABc', 'Daa', 'sem 1', '2019-06-23', 60, 33, 33, 'abcdefghijklmnopqrstuvwxyz', '123', '123', '2', '2019-06-22 18:30:00', '2019-06-22 18:30:00'),
('Ex-4076', 'AMisha', 'Daa', 'sem 1', '2019-06-23', 60, 33, 33, 'abcdefghijklmnopqrstuvwxyz', '123', '123', '2', '2019-06-22 18:30:00', '2019-06-22 18:30:00');

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

--
-- Dumping data for table `forum_channels`
--

INSERT INTO `forum_channels` (`id`, `name`, `slug`, `t_ref_id`, `created_at`, `updated_at`) VALUES
(32, 'et', 'et', '9', '2019-06-19 11:05:15', '2019-06-19 11:05:15'),
(33, 'et', 'et', '7', '2019-06-19 11:05:15', '2019-06-19 11:05:15'),
(34, 'et', 'et', '1', '2019-06-19 11:05:15', '2019-06-19 11:05:15'),
(35, 'quibusdam', 'quibusdam', '9', '2019-06-19 11:05:15', '2019-06-19 11:05:15'),
(36, 'ab', 'ab', '0', '2019-06-19 11:05:15', '2019-06-19 11:05:15'),
(37, 'et', 'et', '5', '2019-06-19 11:05:15', '2019-06-19 11:05:15'),
(38, 'non', 'non', '4', '2019-06-19 11:05:15', '2019-06-19 11:05:15'),
(39, 'molestias', 'molestias', '5', '2019-06-19 11:05:15', '2019-06-19 11:05:15'),
(40, 'accusamus', 'accusamus', '7', '2019-06-19 11:05:15', '2019-06-19 11:05:15'),
(41, 'voluptatem', 'voluptatem', '4', '2019-06-19 11:05:15', '2019-06-19 11:05:15');

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

--
-- Dumping data for table `forum_replies`
--

INSERT INTO `forum_replies` (`id`, `user_id`, `forum_thread_id`, `t_ref_id`, `body`, `t_authentication`, `created_at`, `updated_at`) VALUES
(26, '5842', '32', '0', 'Laudantium suscipit laborum repellat aliquid ut. Aut dolorem ut placeat voluptatem veritatis sed repellendus. Ut aut sit est et quis laborum nemo. Ipsum quasi cum et totam consectetur.', 1, '2019-06-19 11:05:17', '2019-06-19 11:05:17'),
(28, '95575681', '32', '0', 'Illo ipsam quam expedita doloribus. Animi numquam beatae nam aut explicabo est velit. Quisquam soluta aliquid velit laboriosam.', 1, '2019-06-19 11:05:17', '2019-06-19 11:05:17'),
(29, '2324', '32', '0', 'Consequatur et et eligendi suscipit amet velit at. Quibusdam aut nemo iste doloremque incidunt. Error nostrum qui autem possimus blanditiis.', 1, '2019-06-19 11:05:17', '2019-06-19 11:05:17'),
(30, '440815303', '32', '5', 'Dolore ea et deleniti rerum quo optio deserunt voluptas. Sed quo sunt deserunt dicta. Dignissimos et nobis recusandae impedit id voluptatem maiores.', 1, '2019-06-19 11:05:17', '2019-06-19 11:05:17'),
(31, '61', '33', '9', 'Aut voluptas voluptatem odit. Consequatur et optio nam maxime corporis vel consequatur quas.', 1, '2019-06-19 11:05:17', '2019-06-19 11:05:17'),
(32, '38979', '33', '2', 'Dolor cum dolorem doloremque vel amet quae corrupti. Nihil nam maxime aspernatur sint et. Et ducimus neque ex nihil hic officiis. Eos ipsa sit dignissimos iste fugiat dicta autem aliquam.', 1, '2019-06-19 11:05:17', '2019-06-19 11:05:17'),
(33, '979644193', '33', '1', 'Perspiciatis deserunt molestiae consequatur. Corrupti ea necessitatibus quia facere architecto et.', 1, '2019-06-19 11:05:17', '2019-06-19 11:05:17'),
(34, '25137796', '33', '9', 'Possimus delectus dolores quae autem. Assumenda aut ut est. Itaque odit commodi quasi repellat delectus libero.', 1, '2019-06-19 11:05:17', '2019-06-19 11:05:17'),
(35, '6469344', '33', '7', 'Sint minus rerum at laudantium aut accusamus. Facilis et laboriosam placeat sunt non. Quisquam perferendis quas harum aut odit ad qui. Voluptatibus odit odit velit enim in consequatur soluta sit. Laudantium molestiae ipsa reprehenderit explicabo nostrum est.', 1, '2019-06-19 11:05:17', '2019-06-19 11:05:17'),
(36, '793622', '34', '3', 'Velit iste illo laudantium aut. Recusandae a qui amet eos ad sed autem ducimus. Dolores hic omnis delectus neque molestiae cupiditate.', 1, '2019-06-19 11:05:17', '2019-06-19 11:05:17'),
(37, '37990', '34', '0', 'Inventore veniam saepe debitis id. Aut aperiam enim nihil ratione consequatur iste sit. Tempore labore et reiciendis inventore. Sit blanditiis atque enim sit laudantium facilis.', 1, '2019-06-19 11:05:17', '2019-06-19 11:05:17'),
(38, '44', '34', '8', 'Et aut odit quas ipsum. Quia quidem ratione facilis porro magnam omnis eum ea. Dolores soluta et saepe sit quis sint. Et dolorem iure ut voluptas.', 1, '2019-06-19 11:05:17', '2019-06-19 11:05:17'),
(39, '581960527', '34', '5', 'Non amet qui rerum itaque quasi. Autem omnis quasi quaerat reprehenderit. Exercitationem velit voluptates laudantium eius.', 1, '2019-06-19 11:05:17', '2019-06-19 11:05:17'),
(40, '32', '34', '4', 'Rerum nisi tenetur velit sit deserunt. Ea corrupti nobis ut quis non. Corporis cupiditate fugiat dolorum ea dolor.', 1, '2019-06-19 11:05:17', '2019-06-19 11:05:17'),
(41, '84698', '35', '7', 'Dolores dolorum necessitatibus eaque exercitationem autem. Praesentium unde magni accusantium est minus rerum numquam. Exercitationem natus ut quia libero saepe.', 1, '2019-06-19 11:05:17', '2019-06-19 11:05:17'),
(42, '5', '35', '5', 'Est vero voluptatum qui aspernatur assumenda quibusdam. Tempora non sit quos laborum. Distinctio corrupti ut nulla voluptas.', 1, '2019-06-19 11:05:17', '2019-06-19 11:05:17'),
(43, '682650782', '35', '5', 'Cumque at fugit velit quia mollitia. Officia voluptatem totam corrupti. Dolorum excepturi totam et sunt.', 1, '2019-06-19 11:05:17', '2019-06-19 11:05:17'),
(44, '534325625', '35', '4', 'Voluptatem quaerat omnis facere doloribus eligendi dolores iusto laboriosam. Sed omnis delectus sequi natus quis. Nisi sequi maxime vero laboriosam nobis eius non.', 1, '2019-06-19 11:05:17', '2019-06-19 11:05:17'),
(45, '687443', '35', '1', 'Iusto id sit possimus. Delectus culpa provident consectetur et qui rem sed. Non quae cumque amet. Mollitia occaecati maiores culpa nulla ipsum occaecati. Qui consequuntur a et excepturi sunt asperiores autem.', 1, '2019-06-19 11:05:17', '2019-06-19 11:05:17'),
(46, '6543196', '36', '7', 'Tenetur nesciunt quod aut sit et sed consequuntur. Deleniti voluptas quis perferendis deleniti impedit odit et. Aperiam quia consequatur saepe tenetur illum qui. Qui libero autem ut voluptas facilis.', 1, '2019-06-19 11:05:17', '2019-06-19 11:05:17'),
(47, '691477', '36', '8', 'Sapiente exercitationem placeat commodi ducimus explicabo. Et sed sunt aspernatur dolor. Cupiditate quibusdam tempore dignissimos qui pariatur quod porro. Sit fugit velit id. Earum beatae quasi est a nam.', 1, '2019-06-19 11:05:17', '2019-06-19 11:05:17'),
(48, '97', '36', '5', 'Aut tempore quo debitis non alias ullam dolores. Ipsam dignissimos enim consequatur soluta nesciunt. Cupiditate sit in aspernatur quo laborum ut quia.', 1, '2019-06-19 11:05:17', '2019-06-19 11:05:17'),
(49, '9330744', '36', '9', 'Consectetur ut ea minima odio. Tenetur ut cumque a sint et. Animi consequatur sit perferendis cupiditate dolor corrupti.', 1, '2019-06-19 11:05:17', '2019-06-19 11:05:17'),
(50, '77', '36', '6', 'Dolores atque quia voluptates itaque facere accusamus. Fuga et ad ut quod. Adipisci modi suscipit hic voluptates vel odio ut.', 1, '2019-06-19 11:05:17', '2019-06-19 11:05:17'),
(51, '71', '37', '0', 'Et sunt molestias mollitia dignissimos. Illum consequatur ipsam similique. Ullam quas modi sunt nihil corporis vitae.', 1, '2019-06-19 11:05:17', '2019-06-19 11:05:17'),
(52, '72', '37', '5', 'Velit quaerat voluptatum unde excepturi ea. Quia placeat at magnam non omnis id. Voluptatibus veritatis provident rerum fuga pariatur molestiae optio laboriosam. Velit eius vero ut aspernatur.', 1, '2019-06-19 11:05:17', '2019-06-19 11:05:17'),
(53, '79', '37', '2', 'Consequuntur illo quisquam velit ut sit aliquid blanditiis. Quisquam consequatur quod sit perferendis. Veniam consequatur similique odio optio ullam. Fuga nesciunt amet eaque ab perspiciatis est non.', 1, '2019-06-19 11:05:17', '2019-06-19 11:05:17'),
(54, '2', '37', '1', 'Expedita earum et ipsa esse quia. Est occaecati veniam hic est aut sed. Voluptas dicta voluptatem voluptatem doloribus quisquam. Temporibus hic dolor qui id amet.', 1, '2019-06-19 11:05:17', '2019-06-19 11:05:17'),
(55, '296', '37', '9', 'Asperiores dignissimos quam tempora temporibus. Id ut voluptas sunt occaecati autem sapiente quaerat neque. Maiores necessitatibus molestias mollitia laudantium nobis id.', 1, '2019-06-19 11:05:17', '2019-06-19 11:05:17'),
(56, '705142868', '38', '6', 'Rerum assumenda est quaerat natus id est. Quo et cupiditate laboriosam dignissimos. Eligendi sed molestias magni adipisci.', 1, '2019-06-19 11:05:17', '2019-06-19 11:05:17'),
(57, '8112', '38', '2', 'Aut iusto error consectetur voluptate. Sint esse autem eos nemo. Voluptatum saepe nihil rerum ea incidunt est rerum.', 1, '2019-06-19 11:05:17', '2019-06-19 11:05:17'),
(58, '55644067', '38', '5', 'Commodi rerum ut voluptatem aut. Quaerat harum dignissimos et est ut. Expedita quisquam omnis accusamus veritatis iure ea neque.', 1, '2019-06-19 11:05:17', '2019-06-19 11:05:17'),
(59, '23687742', '38', '5', 'Aperiam sunt doloremque omnis quia perspiciatis cupiditate sint dolorum. Modi omnis rerum odio nesciunt rerum rem. Culpa esse aliquid fugiat excepturi voluptas.', 1, '2019-06-19 11:05:17', '2019-06-19 11:05:17'),
(60, '254256965', '38', '6', 'Placeat quod ipsam nesciunt eos. Inventore laborum ea nisi inventore iure. Voluptate quae accusamus id quidem.', 1, '2019-06-19 11:05:17', '2019-06-19 11:05:17'),
(61, '804185160', '39', '6', 'Impedit illo at non unde corporis distinctio. Suscipit cupiditate vel laudantium blanditiis quis. Nam provident corporis omnis. Corrupti aut impedit esse non ipsa laudantium inventore tempora.', 1, '2019-06-19 11:05:17', '2019-06-19 11:05:17'),
(62, '748857', '39', '9', 'Blanditiis delectus qui vitae alias nemo soluta rerum eos. Labore eum nesciunt itaque magnam eligendi non vitae. Consectetur aut cupiditate distinctio cumque ipsum eveniet est. Nostrum quam voluptas unde sunt.', 1, '2019-06-19 11:05:17', '2019-06-19 11:05:17'),
(63, '6152', '39', '1', 'Voluptas ut libero a rem accusantium dolorem. Dolor velit commodi consequatur sunt unde culpa asperiores tempora. Et ut vel consequatur accusamus laborum. Maxime et dolores blanditiis architecto magni itaque commodi.', 1, '2019-06-19 11:05:17', '2019-06-19 11:05:17'),
(64, '55498', '39', '8', 'Vel esse ipsum dicta. Ipsa quia blanditiis illo corrupti ratione aliquid. Est omnis reiciendis voluptatem qui molestiae in.', 1, '2019-06-19 11:05:17', '2019-06-19 11:05:17'),
(65, '204', '39', '0', 'Tenetur minus dicta voluptates et aut ipsum occaecati possimus. Quia et molestias repudiandae et. A vero numquam fuga et quia voluptatibus.', 1, '2019-06-19 11:05:17', '2019-06-19 11:05:17'),
(66, '7', '40', '5', 'Sint et accusamus aut voluptates. Est vero maxime rerum rerum. Molestiae mollitia odit similique.', 1, '2019-06-19 11:05:17', '2019-06-19 11:05:17'),
(67, '837195962', '40', '0', 'Eaque dolor fuga magnam et voluptatum. Repudiandae sit et praesentium porro soluta non. Ipsam velit vitae quas quia similique iste. Enim et ipsam maiores quos sint.', 1, '2019-06-19 11:05:17', '2019-06-19 11:05:17'),
(68, '30387', '40', '7', 'Iste dolorum maxime impedit fuga beatae minus incidunt. Assumenda qui eveniet dolorem ducimus facere qui modi. Iusto et et temporibus et. Quia vel aperiam voluptas consequuntur modi illum cumque.', 1, '2019-06-19 11:05:17', '2019-06-19 11:05:17'),
(69, '5479', '40', '4', 'Omnis exercitationem animi voluptatem pariatur natus quaerat. Et facilis vel dolorem nisi. Qui recusandae distinctio sit est non possimus dolor et. Placeat sint culpa suscipit ut dolores officiis rerum nostrum.', 1, '2019-06-19 11:05:17', '2019-06-19 11:05:17'),
(70, '99', '40', '7', 'Molestias aliquam minima temporibus alias cumque quas itaque. Non vel architecto quia delectus consequatur quis blanditiis. Quam at nihil sit porro sed commodi. Libero voluptatem eum ipsam aut molestiae.', 1, '2019-06-19 11:05:17', '2019-06-19 11:05:17'),
(71, '261319', '41', '9', 'Iusto nobis animi et facilis natus. At recusandae magni et id consequuntur. Dignissimos aut ullam repudiandae aliquam consequatur nulla occaecati assumenda.', 1, '2019-06-19 11:05:17', '2019-06-19 11:05:17'),
(72, '580627599', '41', '3', 'Aperiam nemo occaecati quisquam. Laboriosam et dicta quae earum. Eos tenetur provident est est. Nostrum sed accusamus harum quos saepe occaecati.', 1, '2019-06-19 11:05:17', '2019-06-19 11:05:17'),
(73, '86', '41', '6', 'Cumque velit aut voluptatem illo. Et temporibus est est quae totam. Ipsum quae magnam atque deserunt cumque nostrum. Necessitatibus quam vel odit similique dolore consequuntur.', 1, '2019-06-19 11:05:17', '2019-06-19 11:05:17'),
(74, '8564', '41', '3', 'Dolore aliquid aut quisquam rem. Qui non deserunt error necessitatibus. Itaque labore voluptas sunt voluptates facilis quae.', 1, '2019-06-19 11:05:17', '2019-06-19 11:05:17'),
(75, '41099512', '41', '1', 'Reiciendis excepturi quibusdam possimus aperiam molestias eos molestiae. Et expedita voluptatem tenetur iure est. Accusantium magni asperiores omnis aut. Voluptate quidem harum rem voluptatem incidunt.', 1, '2019-06-19 11:05:17', '2019-06-19 11:05:17');

-- --------------------------------------------------------

--
-- Table structure for table `forum_saves`
--

CREATE TABLE `forum_saves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `saved_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_ref_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
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

--
-- Dumping data for table `forum_threads`
--

INSERT INTO `forum_threads` (`id`, `user_id`, `forum_channel_id`, `replies_count`, `title`, `body`, `t_ref_id`, `slug`, `created_at`, `updated_at`, `t_authentication`) VALUES
(32, '458', '32', 0, 'Nihil corporis doloribus sint aliquam facere ex.', 'Et consectetur nesciunt qui aut aut quis. Provident aut tempore totam saepe distinctio eos odit. Nulla iusto animi aut ut.', '0', 'nihil-corporis-doloribus-sint-aliquam-facere-ex', '2019-06-19 11:05:15', '2019-06-19 11:05:15', 1),
(33, '13889881', '33', 0, 'Molestiae ut aliquam exercitationem sequi quis.', 'Repudiandae voluptatem quis deserunt nam similique et temporibus sit. Eligendi ut sed et qui laudantium et dolorum. Quia quibusdam commodi placeat accusantium aut dolorem.', '9', 'molestiae-ut-aliquam-exercitationem-sequi-quis', '2019-06-19 11:05:15', '2019-06-19 11:05:15', 1),
(34, '96655379', '34', 0, 'Natus quidem aut molestiae ipsum est et.', 'Eveniet repellat non dolores perspiciatis. Dolores voluptatem mollitia aut veniam. Ut praesentium consequuntur et deleniti quisquam tenetur qui.', '2', 'natus-quidem-aut-molestiae-ipsum-est-et', '2019-06-19 11:05:15', '2019-06-19 11:05:15', 1),
(35, '197509169', '35', 0, 'Consequatur mollitia id hic natus eum velit labore similique.', 'Omnis quia quod officiis. Omnis facilis ratione ipsa nisi voluptas.', '7', 'consequatur-mollitia-id-hic-natus-eum-velit-labore-similique', '2019-06-19 11:05:15', '2019-06-19 11:05:15', 1),
(36, '7956', '36', 0, 'Tempore exercitationem distinctio delectus doloribus aliquid.', 'Exercitationem aperiam at dolore nemo inventore ratione et eum. Pariatur molestiae voluptatum libero aliquam.', '3', 'tempore-exercitationem-distinctio-delectus-doloribus-aliquid', '2019-06-19 11:05:15', '2019-06-19 11:05:15', 1),
(37, '179', '37', 0, 'Velit et ea aspernatur.', 'Placeat unde praesentium tenetur labore. Et vel voluptas ratione. Voluptatibus ut sit fuga eius illo quaerat.', '4', 'velit-et-ea-aspernatur', '2019-06-19 11:05:15', '2019-06-19 11:05:15', 1),
(38, '39', '38', 0, 'Sunt atque nostrum non et eius.', 'Doloremque repellendus qui sapiente explicabo est qui est. Voluptatem non et harum occaecati iure quis voluptas. Similique qui et sequi deserunt. Quia tempore quibusdam repellat reiciendis.', '5', 'sunt-atque-nostrum-non-et-eius', '2019-06-19 11:05:15', '2019-06-19 11:05:15', 1),
(39, '632097508', '39', 0, 'Quis magnam adipisci sint velit.', 'Id nobis reiciendis blanditiis illum. Eius non quidem itaque veritatis. Quia ut sit a molestiae. Ea nesciunt debitis nemo consequatur accusantium. Quia autem debitis sit ex quisquam.', '1', 'quis-magnam-adipisci-sint-velit', '2019-06-19 11:05:15', '2019-06-19 11:05:15', 1),
(40, '621247', '40', 0, 'Aut possimus corporis nisi delectus et odit.', 'Asperiores minus totam exercitationem laborum veniam exercitationem enim. Cumque similique ipsum sit ipsam. Sint porro ut iste facere. Aut molestias voluptatem quaerat sit labore.', '4', 'aut-possimus-corporis-nisi-delectus-et-odit', '2019-06-19 11:05:15', '2019-06-19 11:05:15', 1),
(41, '657021', '41', 0, 'Libero aut provident autem neque quo.', 'Labore similique et aperiam saepe. Similique dolor quam ullam eos. Sit hic voluptatem voluptates quod.', '0', 'libero-aut-provident-autem-neque-quo', '2019-06-19 11:05:15', '2019-06-19 11:05:15', 1),
(42, '657021', '32', 0, 'Libero aut provident autem neque quo.', 'Labore similique et aperiam saepe. Similique dolor quam ullam eos. Sit hic voluptatem voluptates quod.', '0', 'libero-aut-provident-autem-neque-quo', '2019-06-19 11:05:15', '2019-06-19 11:05:15', 1);

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
(17, '2019_06_10_191119_create_table_backlog_table', 1),
(27, '2019_06_20_142513_create_topics_table', 2),
(28, '2019_06_20_142600_create_departments_table', 2),
(29, '2019_06_20_142622_create_subjects_table', 2),
(30, '2019_06_21_125339_create_streams_table', 3),
(31, '2019_06_21_151821_create_add_foriegn_key', 3),
(32, '2019_06_21_185714_create_examinations_table', 3),
(33, '2019_06_21_190641_create_questions_table', 3);

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
  `question_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`question_id`, `exam_id`, `type`, `question`, `option_1`, `option_2`, `option_3`, `option_4`, `answer`, `created_at`, `updated_at`) VALUES
('EX-1764', 'Ex-4075', 'ABC', 'WHy so serious??', 'option_1', 'option_1', 'option_1', 'option_1', 'option_1', '2019-06-23 01:13:19', '2019-06-23 01:13:19'),
('EX-4629', '$exam_code', 'ABC', 'WHy so serious??', 'option_1', 'option_1', 'option_1', 'option_1', 'option_1', '2019-06-23 00:49:10', '2019-06-23 00:49:10'),
('EX-4952', '$exam_code', 'ABC', 'WHy so serious??', 'option_1', 'option_1', 'option_1', 'option_1', 'option_1', '2019-06-23 00:47:09', '2019-06-23 00:47:09'),
('EX-5711', 'Ex-4075', 'ABC', 'WHy so serious??', 'option_1', 'option_1', 'option_1', 'option_1', 'option_1', '2019-06-23 01:21:19', '2019-06-23 01:21:19'),
('EX-7170', 'Ex-4075', 'ABC', 'WHy so serious??', 'option_1', 'option_1', 'option_1', 'option_1', 'option_1', '2019-06-23 00:51:24', '2019-06-23 00:51:24'),
('Q002', 'Ex-4075', 'ABC', 'WHy so serious??', 'option_1', 'option_1', 'option_1', 'option_1', 'option_1', '2019-06-23 01:33:02', '2019-06-23 01:33:02'),
('q1', 'Ex-4075', 'abc', 'what is your name', 'a', 'b', 'c', 'd', 'a', '2019-06-22 18:30:00', '2019-06-22 18:30:00'),
('Q2', 'Ex-4075', 'abc', 'what is your name', 'a', 'b', 'c', 'd', 'a', '2019-06-22 18:30:00', '2019-06-22 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `streams`
--

CREATE TABLE `streams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `stream_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stream_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_length` int(11) NOT NULL,
  `Assign_Subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `subject_id` int(10) UNSIGNED NOT NULL,
  `subject_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `stream_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
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
  `t_ref_id` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `starting_year` int(11) NOT NULL,
  `passing_year` int(11) NOT NULL,
  `standard` int(10) UNSIGNED NOT NULL,
  `section` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `subject_id` int(11) NOT NULL,
  `t_ref_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
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
  `st_id` bigint(20) UNSIGNED NOT NULL,
  `t_ref_id` int(11) DEFAULT NULL,
  `st_fname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `st_mname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `st_surname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `st_dob` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `st_age` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `st_contact` bigint(20) UNSIGNED NOT NULL,
  `st_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `st_gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `st_nationality` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `st_religion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `st_address` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `st_address_pin` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `s_mname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `s_address_state` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_fname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guardian_mname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guardian_surname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guardian_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guardian_contact` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guardian_address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guardian_pin` int(11) NOT NULL,
  `guardian_state` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '111',
  `s_authentication` int(11) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_students`
--

INSERT INTO `user_students` (`s_id`, `t_ref_id`, `s_fname`, `s_mname`, `s_surname`, `s_email`, `s_gender`, `s_contact`, `s_dob`, `s_age`, `s_nationality`, `s_religion`, `s_address`, `s_address_pin`, `s_address_state`, `guardian_fname`, `guardian_mname`, `guardian_surname`, `guardian_email`, `guardian_contact`, `guardian_address`, `guardian_pin`, `guardian_state`, `password`, `class_id`, `status`, `s_authentication`, `remember_token`, `created_at`, `updated_at`) VALUES
(256, '8', 'Vicky Hamill', 'Ayana Spinka', 'Lauretta Dietrich', 'terry.jane@example.com', 't', 4, '1997-12-24', 4, 'Qatar', 'corrupti', '9275 Runolfsson Mountains Suite 334\nKacieton, TN 60785-8461', '8', 'South Zitastad', 'Juwan Rau', 'Jalon Abbott', 'Prof. Natalia Harris', 'gislason.abe@example.org', '7', '43274 Smitham Curve\nElainafort, SC 91856-0356', 5, 'Uliceston', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '465172', 111, 1, 'kZH9CZNCkk', '2019-06-19 11:05:57', '2019-06-19 11:05:57'),
(451, '9', 'Marjorie Hahn', 'Ms. Lily Jaskolski', 'Mrs. Alice Hill', 'aurore01@example.com', 't', 0, '1986-01-08', 4, 'Kuwait', 'accusamus', '46700 Francis Burg Suite 888\nNorth Evelyn, AZ 24998', '7', 'Briachester', 'Martina Conn', 'Casimer Kilback Jr.', 'Chelsey Brown', 'gcummings@example.org', '2', '84822 Stokes Islands\nSouth Melynaview, ME 33909-8684', 3, 'Karianneborough', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '742', 111, 1, 'z8FiBbBUe2', '2019-06-19 11:05:57', '2019-06-19 11:05:57'),
(4205, '4', 'Dr. Zetta Barrows', 'Dr. Damaris Davis', 'Clare Daniel', 'zula42@example.org', 'y', 8, '1973-05-18', 3, 'Montserrat', 'debitis', '4340 Emelie Trafficway Apt. 209\nBartellmouth, WV 33093', '6', 'Aydenberg', 'Mrs. Sibyl Hegmann', 'Carole Block', 'Rebeka Okuneva', 'rrunolfsson@example.net', '5', '223 Meaghan Isle Suite 686\nNew Billy, PA 25414', 1, 'Lake Broderick', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '160569', 111, 1, '8WcS3mToc2', '2019-06-19 11:05:57', '2019-06-19 11:05:57'),
(9803, '5', 'Verdie Morar', 'Aditya Mueller', 'Arne Mraz DDS', 'vprice@example.net', 'e', 6, '1976-07-16', 9, 'Maldives', 'minima', '70599 Hettinger Mission Suite 176\nFeeneyview, IN 17906-3666', '2', 'Port Savannahland', 'Kylee Hickle', 'Carlotta Weimann', 'Mr. Terry Mosciski', 'dorcas97@example.net', '7', '33940 Hackett Port\nEnahaven, IL 78950-5208', 7, 'Port Jeffryhaven', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '21', 111, 1, 'x7H1TakoTL', '2019-06-19 11:05:57', '2019-06-19 11:05:57'),
(597831, '2', 'Kayla O\'Conner', 'Jarrod Fahey', 'Imelda Yundt', 'geoffrey.bartoletti@example.com', 'g', 0, '1978-01-16', 4, 'Russian Federation', 'quae', '75170 Nadia Lane\nNew Cole, TN 71973', '2', 'Scottieshire', 'Lila Hintz', 'Jacklyn Ebert', 'Dr. Stevie Feeney', 'swaniawski.tremayne@example.com', '9', '467 Darion Radial\nParkerfurt, NC 93570-9988', 4, 'Muellerburgh', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '36', 111, 1, 'XDvwZ8ZKiV', '2019-06-19 11:05:57', '2019-06-19 11:05:57'),
(700381, '3', 'Pearl Kohler', 'Jessika Larson', 'Aylin McKenzie', 'omer.crist@example.com', 'i', 5, '1984-12-08', 6, 'Nepal', 'ut', '3761 Danielle Union Suite 061\nAvaville, CT 20297', '9', 'New Kip', 'Jermaine Ankunding IV', 'Dr. Providenci Kihn', 'Mr. Dawson Parker', 'ruecker.diego@example.net', '3', '66219 Dangelo Extension\nClydeshire, CA 12730-7296', 5, 'West Verdaville', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '456643138', 111, 1, 'YpoKdry1ul', '2019-06-19 11:05:57', '2019-06-19 11:05:57'),
(2726211, '7', 'Myles Homenick', 'Frederik Abbott', 'Ms. Elinor Abshire', 'moses97@example.org', 'y', 6, '1975-04-12', 7, 'Liechtenstein', 'nemo', '386 DuBuque Parkway Apt. 734\nCarolyneberg, MT 38054', '5', 'Elfriedaview', 'Amparo Leffler', 'Winston Adams', 'Layla Haag Jr.', 'tvonrueden@example.com', '4', '33579 Bruen Ridges Suite 054\nWolffton, MT 93084-4506', 2, 'West Kenyon', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5', 111, 1, 'ZjoZ03woYr', '2019-06-19 11:05:57', '2019-06-19 11:05:57'),
(90221814, '3', 'Ms. Mariah Feeney III', 'Chyna Gerhold PhD', 'Lorenza Toy III', 'bechtelar.donny@example.com', 'u', 6, '1988-09-18', 7, 'French Guiana', 'sit', '23317 Shields Gateway Suite 895\nEast Breanafort, SC 59640-2540', '5', 'Beierbury', 'Dashawn Ryan', 'Ms. Rosalinda Hansen PhD', 'Dr. Jordyn Bartell', 'lurline55@example.com', '9', '7467 Weber Summit Suite 137\nPort Edmund, SD 00287-1378', 1, 'East Marcchester', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '330217', 111, 1, '1cTydFyrU0', '2019-06-19 11:05:57', '2019-06-19 11:05:57'),
(92588166, '4', 'Blaze Stracke', 'Jana Kulas Jr.', 'Chaya Sporer', 'hayes.ottilie@example.com', 'f', 4, '1998-10-24', 8, 'Turkey', 'et', '266 Funk Valleys Suite 876\nWilliefort, AZ 16692', '2', 'North Rowan', 'Zoe Kuhn V', 'Mr. Mason Torp DVM', 'Dr. Adalberto Yost I', 'junius.jacobs@example.net', '2', '30616 Smith Knoll Apt. 683\nLake Edythberg, ME 79593', 7, 'West Howard', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '769313', 111, 1, '1yxs1CR8mS', '2019-06-19 11:05:57', '2019-06-19 11:05:57'),
(443813037, '0', 'Janet Schmitt', 'Fermin Sipes', 'Dayana Gusikowski', 'cruickshank.gerard@example.com', 'o', 6, '1999-03-04', 3, 'Cape Verde', 'ut', '98672 Mraz Trafficway\nEast Leolafurt, OK 66294', '0', 'Feilmouth', 'Mozelle Olson', 'Neha Marquardt', 'Rosario Stoltenberg IV', 'jonas99@example.net', '2', '69513 Annette Crest Suite 622\nPort Paul, UT 27847-0410', 2, 'Wilburnville', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '83891230', 111, 1, '1rfsJwjWCx', '2019-06-19 11:05:57', '2019-06-19 11:05:57'),
(443813038, NULL, 'ak', '\'s_mname\' => $faker->name,', '\'s_surname\' => $faker->name,', 'ak@gm.com', 'm', 1123456789, '1998-06-25', 2, 'ghjk', '\'s_religion\'', '\'s_address\' => $faker->address,', '123446', '\'s_address', '\'guardian_fname\' => $faker->name,', '\'guardian_mname\' => $faker->name,', '[{\"key\":\"guardian_surname\",\"value\":\"\",\"description\":\"\",\"type\":\"text\",\"enabled\":true}]', 'agch@cgfvgbm.com', '1234567890', '\'guardian_address\' => $faker->address,', 123456, 'guardian_state', '$2y$10$mcNfJeUmisGiUnHCyM2Jd.zOmqSuVWaSuNYEC1LVzBebOrifj2KH.', '12345', 111, 1, NULL, '2019-06-19 11:32:01', '2019-06-19 11:32:01');

-- --------------------------------------------------------

--
-- Table structure for table `user_teachers`
--

CREATE TABLE `user_teachers` (
  `t_id` bigint(20) UNSIGNED NOT NULL,
  `t_ref_id` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '111',
  `t_fname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_mname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_surname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_dob` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_age` int(11) NOT NULL,
  `t_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_contact` bigint(20) UNSIGNED NOT NULL,
  `t_nationality` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_religion` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_address_pin` int(11) NOT NULL,
  `t_address_state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

INSERT INTO `user_teachers` (`t_id`, `t_ref_id`, `t_fname`, `t_mname`, `t_surname`, `t_dob`, `t_age`, `t_email`, `t_gender`, `t_contact`, `t_nationality`, `t_religion`, `t_address`, `t_address_pin`, `t_address_state`, `password`, `t_sub`, `status`, `remember_token`, `created_at`, `updated_at`, `t_authentication`) VALUES
(2, '8', 'Miles Dare', 'Dr. Hanna Zboncak', 'Rod Prohaska Sr.', '2007-01-14', 4, 'nbarrows@example.com', 'r', 8, 'United States of America', 'animi', '334 Dandre Gardens\nNorth Gayleburgh, NY 51830', 6, 'Nasirton', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'quo', 2, '6grWC2u1Ku', '2019-06-19 11:05:17', '2019-06-19 11:05:17', 1),
(5, '4', 'Prof. Devante Turner', 'Max Lynch', 'Raphael Wehner', '1992-02-17', 8, 'madeline.champlin@example.net', 'o', 9, 'Georgia', 'repudiandae', '83069 Gorczany Place\nNew Esthermouth, KY 97113', 6, 'Spinkaton', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'est', 7, 'bMdh7KnKN0', '2019-06-19 11:05:17', '2019-06-19 11:05:17', 1),
(7, '3', 'Halle Nicolas', 'Mrs. Evie Ferry', 'Wilson Champlin', '1988-11-02', 7, 'athiel@example.net', 'i', 2, 'Korea', 'architecto', '21995 Joesph Views\nRogahnfurt, CA 69414', 1, 'Lake Javontebury', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nam', 0, 'r0UwMXJYYt', '2019-06-19 11:05:17', '2019-06-19 11:05:17', 1),
(32, '7', 'Mr. Eldred DuBuque Jr.', 'Dr. Skyla Metz', 'Linnie Hane', '2003-08-27', 5, 'rfeil@example.com', 'f', 7, 'Egypt', 'a', '29662 Kassandra River Apt. 718\nNew Zechariahside, MS 97799-0978', 2, 'West Celiaport', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eius', 9, 'XkfSwsXAHd', '2019-06-19 11:05:17', '2019-06-19 11:05:17', 1),
(39, '5', 'Leatha Runolfsdottir Jr.', 'Retta Boyle', 'Alexandrea Bode', '2018-01-08', 5, 'pkunde@example.org', 'q', 3, 'Northern Mariana Islands', 'id', '4919 Bettie Turnpike Apt. 309\nHandberg, OK 79656-1523', 1, 'Schulistberg', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ea', 6, 'FmrDzGdTv6', '2019-06-19 11:05:15', '2019-06-19 11:05:15', 1),
(44, '0', 'Jacey Greenholt II', 'Georgianna Bruen', 'Camylle Bailey', '2008-06-22', 7, 'emmy.dare@example.com', 'x', 9, 'Romania', 'velit', '57892 Hickle Lake Suite 634\nPort Reid, SD 74874-5848', 3, 'North Maggie', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'voluptatem', 0, 'dyK4OAjVBI', '2019-06-19 11:05:17', '2019-06-19 11:05:17', 1),
(61, '9', 'Dr. Remington Monahan', 'Luz McCullough DVM', 'Kelli Fadel', '1972-10-09', 4, 'phoebe57@example.com', 'o', 9, 'Lao People\'s Democratic Republic', 'quia', '9899 McDermott Dam Apt. 812\nDawsonfort, IL 86562', 7, 'Lamarfurt', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'et', 4, '9Kc2NwIOze', '2019-06-19 11:05:17', '2019-06-19 11:05:17', 1),
(71, '0', 'Dominique Cassin Sr.', 'Prof. Jack Kautzer', 'Corrine Swift', '2012-02-23', 4, 'thomas.kreiger@example.org', 'v', 9, 'Venezuela', 'ea', '9774 Alanna Squares\nNorth Amani, VA 53823-1780', 7, 'Kuhicville', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'minima', 2, 'XW4F4S2OoK', '2019-06-19 11:05:17', '2019-06-19 11:05:17', 1),
(72, '6', 'Pearline White', 'Meagan Wiza Sr.', 'Prof. Emmy Stokes I', '1990-03-18', 8, 'camille39@example.net', 'g', 3, 'Jordan', 'ea', '814 Jones Field\nEast Arnoldo, AK 05734', 8, 'Sengerside', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'optio', 6, 'KCLVyG0fY1', '2019-06-19 11:05:17', '2019-06-19 11:05:17', 1),
(77, '1', 'Maybelle Murphy', 'Iliana Blanda DVM', 'Gerald Keeling', '1985-10-02', 8, 'dubuque.gisselle@example.com', 'g', 7, 'Cuba', 'non', '20115 Kunde Ramp Apt. 317\nNorth Brianport, RI 19524-6983', 4, 'Powlowskiside', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'harum', 8, 'Ts0ywh3aeV', '2019-06-19 11:05:17', '2019-06-19 11:05:17', 1),
(79, '9', 'Prof. Consuelo Gleason MD', 'Jaquelin Altenwerth', 'Jerad Davis', '1984-05-30', 7, 'anahi22@example.org', 'h', 4, 'British Virgin Islands', 'sequi', '288 Thad Isle\nEast Kenyafurt, IL 91441', 0, 'Lednertown', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'harum', 5, 'TvCIHbweqr', '2019-06-19 11:05:17', '2019-06-19 11:05:17', 1),
(86, '0', 'Marlin Dickinson', 'Jade Bartell', 'Shawna Stroman', '1975-05-16', 2, 'carolyne.runolfsdottir@example.org', 'z', 0, 'Lesotho', 'tempore', '392 Merritt Course Apt. 810\nGreenfelderburgh, GA 03905', 0, 'Port Isidro', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'consequatur', 1, 'XVTUDYHN7F', '2019-06-19 11:05:17', '2019-06-19 11:05:17', 1),
(97, '8', 'Gabriel Leffler PhD', 'Prof. Geovany Brakus', 'Ottis Kunze', '1985-07-14', 9, 'zhirthe@example.com', 'w', 2, 'Saint Pierre and Miquelon', 'voluptates', '66896 Donald Road\nNorth Cassiemouth, NC 47303-0335', 9, 'Kerlukeborough', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'a', 3, 't7mBdP0oa1', '2019-06-19 11:05:17', '2019-06-19 11:05:17', 1),
(99, '8', 'Burdette Kub', 'Cayla Little', 'Lorena Lowe III', '1970-02-16', 5, 'dashawn.mccullough@example.net', 'f', 6, 'Belgium', 'unde', '2383 Amparo Pass Apt. 046\nParisianchester, NJ 84139-4970', 0, 'Lake Ryder', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'quia', 2, 'ULoOWjAmJP', '2019-06-19 11:05:17', '2019-06-19 11:05:17', 1),
(179, '8', 'Ryleigh Rogahn', 'Prof. Jedediah Nitzsche', 'Dr. Kirk Fritsch', '1975-12-29', 9, 'derick.kuhic@example.com', 'n', 0, 'Dominican Republic', 'cumque', '327 Jakubowski Glen\nBauchton, NM 25945', 0, 'West Cedrick', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'omnis', 8, '9lxTgb2FtV', '2019-06-19 11:05:15', '2019-06-19 11:05:15', 1),
(204, '9', 'Keara Wehner V', 'Reid Jacobs I', 'Dr. Gust Schinner', '1995-06-28', 2, 'eleanore.frami@example.net', 'g', 8, 'French Guiana', 'totam', '54443 Susana Ways Suite 082\nLake Micaela, NY 92571', 1, 'Port Vedamouth', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ut', 6, 'mm4KSOZIsS', '2019-06-19 11:05:17', '2019-06-19 11:05:17', 1),
(296, '7', 'Theresa Ferry', 'Ms. Hildegard Keeling', 'Mrs. Edyth Cole', '1991-02-13', 3, 'keebler.lennie@example.net', 'v', 3, 'Congo', 'enim', '7233 Erika Ford Apt. 336\nGordonchester, NM 22030-4835', 5, 'Ovamouth', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'repellendus', 8, 'xCH0fRyBWP', '2019-06-19 11:05:17', '2019-06-19 11:05:17', 1),
(458, '7', 'Miss Filomena Nader', 'Cody Botsford', 'Charlie Larkin', '2019-06-03', 6, 'bill.hoeger@example.net', 'e', 6, 'Sao Tome and Principe', 'maxime', '7144 Kerluke Squares Apt. 395\nNorth Reta, NV 58282-1551', 5, 'Lubowitzview', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qui', 7, 'irO3KamMNd', '2019-06-19 11:05:15', '2019-06-19 11:05:15', 1),
(2324, '9', 'Wilfred Leuschke', 'Ardith Dickinson', 'Yvette Schoen', '1995-04-30', 3, 'lisette69@example.net', 'x', 3, 'Egypt', 'aperiam', '943 O\'Conner Fort\nNew Louisaland, OH 73249-1399', 0, 'Port Easter', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rerum', 7, 'qZZUr56z7y', '2019-06-19 11:05:17', '2019-06-19 11:05:17', 1),
(5479, '0', 'Mr. Eino Hackett PhD', 'Jarret Jenkins', 'Prof. Estel Mertz', '1981-10-14', 4, 'abner.strosin@example.net', 't', 6, 'Mauritania', 'explicabo', '6586 O\'Conner Oval\nCelestinotown, GA 94083-1688', 2, 'Marleefort', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'alias', 4, 'vmD5WOF6ev', '2019-06-19 11:05:17', '2019-06-19 11:05:17', 1),
(5842, '8', 'Arnoldo Wisozk', 'Prof. Travis Abbott', 'Cayla Mraz', '2005-11-16', 9, 'vconnelly@example.net', 'a', 6, 'Tanzania', 'alias', '1664 Renee Orchard Suite 205\nWest Clemmiemouth, WV 31478-1956', 6, 'North Jasenborough', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sint', 8, 'dfinFaKVnH', '2019-06-19 11:05:17', '2019-06-19 11:05:17', 1),
(6152, '2', 'Ernie Wilderman III', 'Ebony Bruen', 'Dallas Romaguera Jr.', '1987-05-18', 4, 'blick.ladarius@example.com', 'r', 1, 'Guadeloupe', 'ea', '12409 VonRueden Center\nDandremouth, IN 72143', 3, 'Ramirotown', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'maiores', 1, 'VMoEU8CGrg', '2019-06-19 11:05:17', '2019-06-19 11:05:17', 1),
(7956, '2', 'Ceasar Berge', 'Prof. Destinee Lemke', 'Brandon Kilback', '2000-09-15', 2, 'clay.heidenreich@example.org', 't', 4, 'Puerto Rico', 'dolores', '40935 Kautzer Skyway Apt. 872\nNorth Fredamouth, IA 14949', 4, 'Savanahland', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'libero', 7, 'HoYjrSg5gU', '2019-06-19 11:05:15', '2019-06-19 11:05:15', 1),
(8112, '7', 'Coralie Stehr', 'Aliza Crist IV', 'Ozella Bergstrom', '2013-05-27', 1, 'ezequiel.satterfield@example.org', 'p', 5, 'Congo', 'et', '26249 Anna Islands\nEllisshire, UT 71601', 4, 'Camylleberg', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sit', 8, 'PXkA4hT60T', '2019-06-19 11:05:17', '2019-06-19 11:05:17', 1),
(8564, '9', 'Doris Padberg', 'Joel Jacobson', 'Harmon Armstrong', '2017-03-07', 7, 'lubowitz.jennifer@example.com', 'b', 9, 'Brunei Darussalam', 'ut', '89086 Marisa Island Suite 391\nNew Roman, VT 00701', 2, 'Lake Emilia', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'molestias', 5, '9XCp4StaEV', '2019-06-19 11:05:17', '2019-06-19 11:05:17', 1),
(9676, '1', 'Dr. Lynn Lang Jr.', 'Mrs. Dayana Bogisich', 'Katlyn Bartoletti', '2019-01-27', 6, 'vdare@example.net', 'b', 4, 'China', 'et', '2616 Dibbert Springs\nPort Kayli, WY 59425-8142', 3, 'South Anthonyton', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'excepturi', 6, 'U7mFKHgDGO', '2019-06-19 11:05:17', '2019-06-19 11:05:17', 1),
(30387, '2', 'Jess Welch', 'Mr. Tillman Lynch Jr.', 'Madie Harber IV', '1990-04-11', 8, 'adolf.abernathy@example.com', 'd', 2, 'Cape Verde', 'labore', '98107 Harvey Forest Apt. 191\nRexberg, OH 31396-7596', 7, 'West Lianaberg', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ipsam', 5, 'IAh1iR8Pu0', '2019-06-19 11:05:17', '2019-06-19 11:05:17', 1),
(37990, '2', 'Dr. Kenyon Klein MD', 'Dr. Marley Abshire IV', 'Mr. Tate Ankunding', '2002-11-02', 7, 'lesch.jennifer@example.net', 'o', 5, 'Slovenia', 'autem', '768 Doyle Views Suite 374\nKristopherstad, DC 07427-4167', 8, 'Lake Annieburgh', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sit', 2, 'o0wUlJQHk0', '2019-06-19 11:05:17', '2019-06-19 11:05:17', 1),
(38979, '6', 'Prof. Julianne Buckridge III', 'Rosella Hagenes DDS', 'Alayna Howe', '2011-01-04', 8, 'therese.mcclure@example.org', 'x', 4, 'Jersey', 'minima', '6343 Winfield Corner\nLake Jan, AL 17110', 6, 'Lake Yasmin', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'omnis', 7, 'hG6DJao3O4', '2019-06-19 11:05:17', '2019-06-19 11:05:17', 1),
(55498, '4', 'Gerardo Mraz', 'Mr. Cyril Lesch', 'Orville Halvorson', '1981-07-31', 3, 'zora10@example.com', 'i', 0, 'French Polynesia', 'distinctio', '58925 Kayli Common Apt. 130\nParisianbury, UT 60271-7365', 6, 'South Bertland', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'id', 8, 'RlLO54jhTA', '2019-06-19 11:05:17', '2019-06-19 11:05:17', 1),
(84698, '5', 'Crystal Paucek V', 'Miss Mallie Denesik IV', 'Cassidy Bartoletti', '1984-03-08', 1, 'keebler.jalen@example.net', 't', 9, 'Chile', 'labore', '5226 Kasey Spurs\nWest Darren, AZ 17780-1266', 0, 'Port Wyatt', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'at', 1, 'ryR5RJhn4s', '2019-06-19 11:05:17', '2019-06-19 11:05:17', 1),
(261319, '8', 'Dorcas Batz', 'Ova Fisher', 'Eileen Brown', '2013-04-09', 0, 'kschmeler@example.net', 'y', 6, 'Belarus', 'asperiores', '46235 Pouros Villages\nWest Candido, KY 99943', 8, 'Luciennemouth', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dolorum', 1, 'm5pybVyXz1', '2019-06-19 11:05:17', '2019-06-19 11:05:17', 1),
(621247, '0', 'Godfrey Bashirian', 'Crystal Walter', 'Jasper Corkery II', '2012-04-06', 6, 'davis.vada@example.net', 'd', 9, 'Swaziland', 'voluptates', '685 Dashawn Viaduct Suite 770\nEttieton, SD 38916-5229', 9, 'Ewellside', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cupiditate', 8, 'VEEZC8HaDs', '2019-06-19 11:05:15', '2019-06-19 11:05:15', 1),
(657021, '4', 'Dixie Kling', 'Kraig Collins', 'Adeline Koelpin', '2002-06-02', 6, 'prohan@example.org', 'y', 3, 'Solomon Islands', 'et', '365 Shanna Summit\nNew Darlene, SC 83791', 3, 'Port Casimirfurt', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'similique', 7, 'Gz6bTqbDL9', '2019-06-19 11:05:15', '2019-06-19 11:05:15', 1),
(687443, '8', 'Elijah Berge', 'Mr. Ansley Pacocha', 'Ellsworth Franecki Jr.', '2017-07-26', 0, 'quinton.anderson@example.net', 'k', 4, 'Turks and Caicos Islands', 'eaque', '63739 Alva Spur\nNorth Dariana, NM 35959-7402', 8, 'Christyberg', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'recusandae', 3, 'SL1bRUblpT', '2019-06-19 11:05:17', '2019-06-19 11:05:17', 1),
(691477, '2', 'Henry Fisher', 'Lucinda Cartwright DDS', 'Meghan Dooley', '2014-07-16', 2, 'thora.johnston@example.com', 't', 0, 'Italy', 'iste', '27464 Wilfrid Drives Apt. 027\nSelenafort, RI 19494-7115', 3, 'Lake Floy', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'laudantium', 7, '8ZGvG2UGkq', '2019-06-19 11:05:17', '2019-06-19 11:05:17', 1),
(748857, '6', 'Joan Lesch', 'Emory Rowe', 'Annie Leannon', '2001-01-20', 1, 'ljohnson@example.org', 'w', 6, 'Timor-Leste', 'quisquam', '2838 Carissa Knoll Apt. 387\nNew Jessy, OH 45896-2695', 5, 'Hermanbury', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ut', 3, 'H7go8I8qHz', '2019-06-19 11:05:17', '2019-06-19 11:05:17', 1),
(793622, '1', 'Thora Cartwright', 'Prof. Ewald Shanahan', 'Prof. Harmony Schiller', '2004-10-08', 3, 'abraham89@example.org', 'c', 7, 'Rwanda', 'cupiditate', '588 Wilderman Parks\nFreidamouth, WA 63570', 7, 'East Alvena', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sunt', 7, 'l9jqfssxA6', '2019-06-19 11:05:17', '2019-06-19 11:05:17', 1),
(6469344, '5', 'Thurman Powlowski', 'Dr. Miracle Spencer', 'Kade Bernier', '1990-10-14', 9, 'freida60@example.org', 'q', 6, 'Puerto Rico', 'voluptatem', '210 Torphy Isle Apt. 520\nHilpertland, PA 23908', 3, 'Port Kathrynview', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sequi', 5, '8ghAPpicDo', '2019-06-19 11:05:17', '2019-06-19 11:05:17', 1),
(6543196, '6', 'Julien Huel', 'Mrs. Dominique Schultz', 'Catherine Wiza', '1985-09-02', 9, 'elsie.shanahan@example.com', 'm', 2, 'Georgia', 'eaque', '29918 Genesis Junction\nNorth Ashtyn, OH 43329', 1, 'East Alysamouth', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tempore', 1, 'pS59ztW185', '2019-06-19 11:05:17', '2019-06-19 11:05:17', 1),
(9330744, '4', 'Clark Emmerich', 'Ezekiel Blanda V', 'Hoyt Gutkowski', '1974-09-23', 9, 'ywyman@example.com', 'r', 5, 'El Salvador', 'incidunt', '23886 Retha Path Apt. 877\nWoodrowfurt, ME 53149-2954', 8, 'Wisokyborough', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'quia', 2, 'pWsWJTsgFj', '2019-06-19 11:05:17', '2019-06-19 11:05:17', 1),
(13889881, '5', 'Miss Ruby Denesik Jr.', 'Hazel McDermott', 'Demarcus Keeling', '1992-05-01', 6, 'rgottlieb@example.org', 't', 4, 'Liberia', 'tempora', '69037 Ernser Hollow\nChelseyport, MD 75158', 8, 'Lake Dudleyborough', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'voluptatum', 4, 'iKoZ4PASTj', '2019-06-19 11:05:15', '2019-06-19 11:05:15', 1),
(23687742, '6', 'Eleonore Windler', 'Gertrude Auer', 'Kristin Bosco', '2005-12-06', 7, 'alfred.goyette@example.com', 'u', 2, 'Dominican Republic', 'minus', '144 Khalid Square\nCruickshankbury, GA 02772', 7, 'East Maverick', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'temporibus', 5, 'Tuzv1mJbRR', '2019-06-19 11:05:17', '2019-06-19 11:05:17', 1),
(25137796, '4', 'Grace Greenholt', 'Roderick Green I', 'Dr. Jess Lesch', '2015-10-10', 9, 'clinton.veum@example.net', 'l', 5, 'Guadeloupe', 'est', '3813 Dach Drive Suite 695\nSouth Morton, CA 89434-7571', 7, 'Williehaven', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'molestias', 0, 'BgiJtkr6LL', '2019-06-19 11:05:17', '2019-06-19 11:05:17', 1),
(41099512, '8', 'Tess Hartmann', 'Aglae Lockman V', 'Lavern Hamill', '2012-03-01', 8, 'vheaney@example.org', 'm', 2, 'Tonga', 'occaecati', '549 Noah Curve\nAlvenaville, AL 15828', 9, 'Anahaven', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'quod', 3, '7PYaRTI3uU', '2019-06-19 11:05:17', '2019-06-19 11:05:17', 1),
(55644067, '0', 'Trace Ferry', 'Kaela Ledner', 'Stanford Mitchell', '1984-07-10', 4, 'sasha.doyle@example.org', 'l', 5, 'Vanuatu', 'minima', '17993 Einar Canyon Suite 194\nLake Kendallton, WY 82745-4661', 5, 'Port Rashawnview', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'id', 7, 'p8DOZ5wZ5H', '2019-06-19 11:05:17', '2019-06-19 11:05:17', 1),
(95575681, '8', 'Melvina Haag', 'Armani Lang', 'Donna Quigley', '1989-03-22', 8, 'nokuneva@example.com', 'j', 9, 'Philippines', 'sit', '11156 Stephan Shoals\nDiegoborough, NY 62053-8603', 8, 'East Melisa', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pariatur', 0, '7isaaVNoon', '2019-06-19 11:05:17', '2019-06-19 11:05:17', 1),
(96655379, '6', 'Cynthia Langworth', 'Queenie Walsh', 'Hilton Purdy', '2008-09-13', 8, 'gstrosin@example.net', 'q', 8, 'Norway', 'et', '61848 Kihn Manors Apt. 886\nHerzogport, OH 79248', 8, 'Schadenmouth', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'esse', 1, 'VfBbIKJFSU', '2019-06-19 11:05:15', '2019-06-19 11:05:15', 1),
(197509169, '6', 'Iva Leuschke', 'Arely Bergnaum', 'Prof. Paris Lubowitz MD', '1994-05-16', 3, 'marvin.ashleigh@example.com', 'r', 9, 'Vanuatu', 'ut', '808 Kali Stream Apt. 770\nSouth Selena, IA 33929-9365', 5, 'South Loganfurt', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'labore', 9, 'u6WeCDMZhM', '2019-06-19 11:05:15', '2019-06-19 11:05:15', 1),
(254256965, '1', 'Gladyce Borer', 'Jarvis Predovic', 'Prof. Murray Turcotte II', '1979-01-20', 0, 'hardy35@example.com', 'f', 2, 'Slovenia', 'voluptatum', '71014 Robyn Meadows\nNew Halle, IL 07014', 8, 'East Brycen', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dolor', 8, 'ZA48hxWhk2', '2019-06-19 11:05:17', '2019-06-19 11:05:17', 1),
(440815303, '3', 'Mr. Omer Bradtke', 'Audie Casper PhD', 'Miss Edythe Bode', '1993-09-04', 6, 'tsipes@example.net', 'r', 6, 'Chad', 'quo', '7128 Gregoria Grove Apt. 165\nWest Beverly, NC 32665', 1, 'North Winfieldburgh', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aut', 0, 'xZLemywetL', '2019-06-19 11:05:17', '2019-06-19 11:05:17', 1),
(534325625, '7', 'Prof. Eileen Greenholt V', 'Jacklyn Schinner', 'Charlotte Daugherty', '1973-01-10', 1, 'moses.rice@example.com', 'a', 8, 'Netherlands', 'nesciunt', '7653 Hermann Bypass\nJeremystad, MI 52666-6883', 1, 'Patsyshire', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'et', 5, 'BkfVM3FAvQ', '2019-06-19 11:05:17', '2019-06-19 11:05:17', 1),
(580627599, '9', 'Prof. Eldred Muller II', 'Mrs. Eleonore Davis I', 'Dr. Lue Bartoletti', '1972-01-10', 9, 'floyd97@example.org', 'n', 4, 'France', 'officia', '11933 Rau Viaduct\nNorth Eleanora, MT 81140', 2, 'Port Eliza', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'reprehenderit', 5, 'YQ8bUaFyeS', '2019-06-19 11:05:17', '2019-06-19 11:05:17', 1),
(581960527, '7', 'Dr. Gustave Walsh II', 'Breana Kuvalis', 'Miss Lillian Kautzer', '1976-03-12', 7, 'jack.larson@example.com', 'd', 4, 'Haiti', 'id', '8947 Ryan Skyway Suite 188\nNorth Isaac, GA 56375', 5, 'Klockotown', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vel', 9, 'rTa9IZMZYm', '2019-06-19 11:05:17', '2019-06-19 11:05:17', 1),
(632097508, '9', 'Liza Bartoletti', 'Lisette Gutmann', 'Alvena Collier II', '1978-04-04', 3, 'wherzog@example.org', 'c', 2, 'Equatorial Guinea', 'quaerat', '45931 Mertz Unions Suite 365\nBartolettifurt, MN 92308-2812', 1, 'New Orvalmouth', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'consequatur', 4, 'mVrQOmAdcW', '2019-06-19 11:05:15', '2019-06-19 11:05:15', 1),
(682650782, '4', 'Kian Rempel', 'Eino Marquardt', 'Mr. Cristina Crist Sr.', '2007-05-30', 4, 'ekuhn@example.org', 'f', 8, 'Niue', 'tempore', '2894 Pfeffer Bridge\nLake Tabitha, UT 57432-3611', 6, 'Sierratown', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'deserunt', 9, 'PJChf8Jv5b', '2019-06-19 11:05:17', '2019-06-19 11:05:17', 1),
(705142868, '0', 'Afton Jerde', 'Dr. Hipolito O\'Kon Sr.', 'Mrs. Chasity Mertz', '1971-07-04', 1, 'rdamore@example.net', 'f', 9, 'Palestinian Territories', 'tempora', '91204 Jessika Place\nGutkowskitown, CA 03733', 4, 'Lake Hazel', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'commodi', 6, '8IrXywIJG2', '2019-06-19 11:05:17', '2019-06-19 11:05:17', 1),
(804185160, '2', 'Ms. Annabell Kiehn', 'Prof. Eloy Ferry DDS', 'Miller Botsford', '2008-06-11', 5, 'hryan@example.com', 'y', 1, 'Samoa', 'voluptatem', '6207 Murazik Village\nSmithhaven, OH 45958-0438', 6, 'Erdmanburgh', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ad', 4, 'tur0KzRmgy', '2019-06-19 11:05:17', '2019-06-19 11:05:17', 1),
(837195962, '3', 'Roosevelt Emmerich', 'Christelle Kuhn', 'Wendy Upton', '1972-02-27', 1, 'flockman@example.org', 'g', 7, 'Cote d\'Ivoire', 'dolorum', '14546 Abagail Canyon Apt. 190\nLake Lloydstad, IL 74450', 3, 'Lake Keegan', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'odit', 0, 'al5dzuuG4A', '2019-06-19 11:05:17', '2019-06-19 11:05:17', 1),
(979644193, '7', 'Magdalen Reinger', 'Prof. Libbie Emard PhD', 'Sabryna Waelchi', '1989-03-06', 7, 'clarabelle.boyle@example.org', 'j', 0, 'Guinea', 'est', '40833 Dorcas Bridge Apt. 800\nLefflerfurt, PA 57769', 6, 'Rollinfurt', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'assumenda', 9, 'VWOiXoXZnX', '2019-06-19 11:05:17', '2019-06-19 11:05:17', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `examinations`
--
ALTER TABLE `examinations`
  ADD PRIMARY KEY (`exam_code`),
  ADD UNIQUE KEY `exam_code` (`exam_code`);

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
  ADD UNIQUE KEY `forum_saves_user_id_saved_id_unique` (`user_id`,`saved_id`);

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
  ADD UNIQUE KEY `question_id` (`question_id`);

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
  ADD PRIMARY KEY (`subject_id`);

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
  ADD PRIMARY KEY (`class_id`);

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
-- AUTO_INCREMENT for table `forum_channels`
--
ALTER TABLE `forum_channels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `forum_replies`
--
ALTER TABLE `forum_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `forum_saves`
--
ALTER TABLE `forum_saves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forum_threads`
--
ALTER TABLE `forum_threads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `streams`
--
ALTER TABLE `streams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `subject_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_backlog`
--
ALTER TABLE `table_backlog`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_classes`
--
ALTER TABLE `table_classes`
  MODIFY `class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_courses`
--
ALTER TABLE `table_courses`
  MODIFY `sub_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `topic_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `st_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_students`
--
ALTER TABLE `user_students`
  MODIFY `s_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=443813039;

--
-- AUTO_INCREMENT for table `user_teachers`
--
ALTER TABLE `user_teachers`
  MODIFY `t_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=979644194;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
