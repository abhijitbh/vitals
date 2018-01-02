-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 02, 2018 at 05:12 PM
-- Server version: 5.7.20-0ubuntu0.16.04.1
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vitals`
--

-- --------------------------------------------------------

--
-- Table structure for table `Assessment`
--

CREATE TABLE `Assessment` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enchanced_comments` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Assessment`
--

INSERT INTO `Assessment` (`id`, `name`, `location`, `version_number`, `enchanced_comments`, `created_at`, `updated_at`) VALUES
(1, 'Comments', 'Baner', '123', 'Good Morning.', '2017-12-30 03:06:25', '2017-12-30 03:06:25'),
(2, 'Harper Barton', 'Warje', 'Nostrud non eius aute eligendi corrupti voluptatibus sint eiusmod voluptas corrupti est eligendi libero aut dolores labore dolorem commodi aliquip', 'Facilis labore delectus eum eveniet non eu omnis obcaecati officiis', '2018-01-02 04:30:58', '2018-01-02 04:30:58'),
(3, 'Veda Grant', 'Warje', 'Itaque aut qui veniam odit impedit reprehenderit eaque proident vero ducimus', 'Autem cumque sint vitae enim laboriosam sed velit iure ullam quis duis quia in minim culpa et odio', '2018-01-02 05:09:59', '2018-01-02 05:09:59'),
(4, 'Neve Hopper', 'Kothrud', 'Lorem cupiditate soluta vel necessitatibus', 'Ad aperiam animi exercitation similique voluptate et fugiat praesentium', '2018-01-02 05:11:27', '2018-01-02 05:11:27'),
(5, 'Gail Boyer', 'Sinhgad', 'Aut quod adipisci repudiandae repellendus Irure repudiandae qui ut et dolorem rem id', 'Provident dolorem reprehenderit aliqua Eos tempora earum accusantium ut ab et ratione facere', '2018-01-02 05:12:32', '2018-01-02 05:12:32'),
(6, 'Janna Glenn', 'Kothrud', 'Beatae cupiditate commodo non suscipit assumenda quo quis animi error obcaecati sint', 'Elit velit aut rerum sapiente excepteur itaque dolores do magni perferendis', '2018-01-02 06:07:25', '2018-01-02 06:07:25');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domain_name` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `name`, `domain_name`, `created_at`, `updated_at`) VALUES
(1, 'Aloha Technology', 'aloha-technology', '2017-12-30 03:14:28', '2017-12-30 03:14:28');

-- --------------------------------------------------------

--
-- Table structure for table `Header`
--

CREATE TABLE `Header` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aid` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Header`
--

INSERT INTO `Header` (`id`, `name`, `aid`, `created_at`, `updated_at`) VALUES
(1, 'Sample', 1, '2017-12-30 03:06:50', '2017-12-30 03:06:50'),
(2, 'Comments', 1, '2017-12-30 06:04:44', '2017-12-30 06:04:44'),
(3, 'Test', 1, '2018-01-02 05:38:01', '2018-01-02 05:38:01'),
(4, 'Sample2', 1, '2018-01-02 06:07:38', '2018-01-02 06:07:38');

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
(23, '2014_10_12_000000_create_users_table', 1),
(24, '2014_10_12_100000_create_password_resets_table', 1),
(25, '2017_12_12_103929_create_company_table', 1),
(26, '2017_12_12_104831_create_modules_table', 1),
(27, '2017_12_14_110321_create_user_product_table', 1),
(28, '2017_12_15_085110_create_users_activity_table', 1),
(29, '2017_12_28_143320_create_Assessment_table', 1),
(30, '2017_12_28_163735_create_Header_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `module_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `module_name`, `created_at`, `updated_at`) VALUES
(1, 'Lead & Referral Management (CRM)', NULL, NULL),
(2, 'Census & Occupancy Tracking', NULL, NULL),
(3, 'Assessments & Care Plans', NULL, NULL),
(4, 'Incident Tracking', NULL, NULL),
(5, 'Billing & Accounts Receivable (A/R)', NULL, NULL);

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
-- Table structure for table `Questions`
--

CREATE TABLE `Questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `topic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `question_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `question_data` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer_explanation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hid` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Questions`
--

INSERT INTO `Questions` (`id`, `topic`, `question_text`, `question_data`, `answer_explanation`, `hid`, `created_at`, `updated_at`) VALUES
(40, 'Fruits', 'Your Best Fruits', 'Hi Good Morning', 'Apple', 1, '2018-01-02 02:23:22', '2018-01-02 02:23:22'),
(45, 'Et distinctio Rerum in dolor harum sint assumenda reprehenderit nostrud voluptate quae excepteur cum', 'Voluptatem nostrud dolore adipisci ipsum elit totam esse', 'Labore modi maiores id vel omnis pariatur Voluptatibus porro enim quis dicta est aperiam eum lorem vel', 'Minus et alias magnam sed laboris consectetur consequatur eaque corporis et quo et esse soluta', 2, '2018-01-02 05:14:42', '2018-01-02 05:14:42'),
(46, 'Mollitia porro in sint similique quis alias aliqua Nisi vel', 'Praesentium enim est eiusmod in iure id numquam suscipit et perspiciatis elit exercitationem eos est dolore quaerat aliquam praesentium id', 'Est consequat Ut distinctio Modi velit dolore ipsum', 'Neque qui quod et enim commodo nisi enim a excepteur omnis non maiores est aperiam', 2, '2018-01-02 06:07:52', '2018-01-02 06:07:52');

-- --------------------------------------------------------

--
-- Table structure for table `questions_option`
--

CREATE TABLE `questions_option` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `value` varchar(1000) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions_option`
--

INSERT INTO `questions_option` (`id`, `question_id`, `value`, `created_at`, `updated_at`) VALUES
(3, 30, 'Steven Smith', '2017-12-30 04:34:14', '2017-12-30 04:34:14'),
(4, 30, 'David Warner', '2017-12-30 04:34:14', '2017-12-30 04:34:14'),
(5, 30, 'Joe root', '2017-12-30 04:34:14', '2017-12-30 04:34:14'),
(6, 30, 'Kane Williamson', '2017-12-30 04:34:14', '2017-12-30 04:34:14'),
(7, 31, 'Virat Kohli', '2017-12-30 04:36:15', '2017-12-30 04:36:15'),
(8, 31, 'Steven Smith', '2017-12-30 04:36:15', '2017-12-30 04:36:15'),
(9, 31, 'David Warner', '2017-12-30 04:36:15', '2017-12-30 04:36:15'),
(10, 31, 'Joe root', '2017-12-30 04:36:15', '2017-12-30 04:36:15'),
(11, 31, 'Kane Williamson', '2017-12-30 04:36:15', '2017-12-30 04:36:15'),
(12, 32, 'Virat Kohli', '2017-12-30 04:37:01', '2017-12-30 04:37:01'),
(13, 32, 'Steven Smith', '2017-12-30 04:37:01', '2017-12-30 04:37:01'),
(14, 32, 'David Warner', '2017-12-30 04:37:01', '2017-12-30 04:37:01'),
(15, 32, 'Joe root', '2017-12-30 04:37:01', '2017-12-30 04:37:01'),
(16, 32, 'Kane Williamson', '2017-12-30 04:37:01', '2017-12-30 04:37:01'),
(17, 34, 'Apple', '2018-01-02 01:24:48', '2018-01-02 01:24:48'),
(18, 34, 'Mango', '2018-01-02 01:24:48', '2018-01-02 01:24:48'),
(19, 34, 'Rice', '2018-01-02 01:24:48', '2018-01-02 01:24:48'),
(20, 34, 'Chiken', '2018-01-02 01:24:48', '2018-01-02 01:24:48'),
(21, 34, 'Sweet', '2018-01-02 01:24:48', '2018-01-02 01:24:48'),
(22, 35, 'Minima consequatur Quibusdam dolorem qui sed id totam sint voluptas adipisci minus quae et nulla in error aut debitis dolores', '2018-01-02 02:14:26', '2018-01-02 02:14:26'),
(23, 35, 'Aliquip praesentium quia voluptates illo iusto sed irure qui quaerat ipsum facere fugiat sapiente ipsum dolore est', '2018-01-02 02:14:26', '2018-01-02 02:14:26'),
(24, 35, 'Ea temporibus facere totam est placeat', '2018-01-02 02:14:26', '2018-01-02 02:14:26'),
(25, 35, 'Cumque aliquip omnis qui non sapiente labore esse qui magna quis dolore corporis blanditiis sunt omnis voluptatem non commodi aspernatur', '2018-01-02 02:14:26', '2018-01-02 02:14:26'),
(26, 35, 'Ad similique voluptatem Expedita dolore et sed impedit voluptas dolores voluptas porro deleniti aliquam', '2018-01-02 02:14:26', '2018-01-02 02:14:26'),
(27, 36, 'Apple', '2018-01-02 02:16:37', '2018-01-02 02:16:37'),
(28, 36, 'Mango', '2018-01-02 02:16:37', '2018-01-02 02:16:37'),
(29, 36, 'Banana', '2018-01-02 02:16:37', '2018-01-02 02:16:37'),
(30, 36, 'Pine Apple', '2018-01-02 02:16:37', '2018-01-02 02:16:37'),
(31, 36, 'Sweet', '2018-01-02 02:16:37', '2018-01-02 02:16:37'),
(32, 40, 'Apple', '2018-01-02 02:23:22', '2018-01-02 02:23:22'),
(33, 40, 'Mango', '2018-01-02 02:23:22', '2018-01-02 02:23:22'),
(34, 40, 'Pine Apple', '2018-01-02 02:23:22', '2018-01-02 02:23:22'),
(35, 40, 'Orange', '2018-01-02 02:23:22', '2018-01-02 02:23:22'),
(36, 40, 'Watermelon', '2018-01-02 02:23:22', '2018-01-02 02:23:22'),
(37, 41, 'Apple', '2018-01-02 02:34:44', '2018-01-02 02:34:44'),
(38, 41, 'Mango', '2018-01-02 02:34:44', '2018-01-02 02:34:44'),
(39, 41, 'Orange', '2018-01-02 02:34:44', '2018-01-02 02:34:44'),
(40, 41, 'Banana', '2018-01-02 02:34:45', '2018-01-02 02:34:45'),
(42, 43, 'Dolor est quidem ipsum sit iure recusandae Delectus magna voluptatem omnis ratione cupiditate lorem eum velit anim ea necessitatibus', '2018-01-02 05:07:58', '2018-01-02 05:07:58'),
(43, 43, 'Qui enim quia eum atque voluptas sed a rem reprehenderit cumque debitis itaque consectetur ut iusto praesentium vitae dolorem et', '2018-01-02 05:07:58', '2018-01-02 05:07:58'),
(44, 43, 'Pariatur Nihil possimus culpa reprehenderit tempore id asperiores deserunt aut accusamus fugit porro architecto Nam sed id et incidunt', '2018-01-02 05:07:58', '2018-01-02 05:07:58'),
(45, 43, 'Asperiores asperiores impedit explicabo Eos id tempor', '2018-01-02 05:07:58', '2018-01-02 05:07:58'),
(46, 43, 'Error unde laboris qui labore', '2018-01-02 05:07:58', '2018-01-02 05:07:58'),
(47, 44, 'Deleniti assumenda sed eveniet optio molestiae qui asperiores sit laudantium qui non consequuntur velit dolore ratione', '2018-01-02 05:14:33', '2018-01-02 05:14:33'),
(48, 44, 'Aute animi laboriosam amet id do aliquip aut accusamus rem dolore amet', '2018-01-02 05:14:33', '2018-01-02 05:14:33'),
(49, 44, 'Et molestiae iste amet suscipit facere reprehenderit dolore atque ut tempor ullamco', '2018-01-02 05:14:33', '2018-01-02 05:14:33'),
(50, 44, 'Sit commodo rerum irure odio anim repudiandae adipisci quia perspiciatis quos officia veritatis aut voluptatibus aliquip consequuntur aut qui Nam', '2018-01-02 05:14:33', '2018-01-02 05:14:33'),
(51, 44, 'Molestiae voluptatem Omnis minima id adipisci', '2018-01-02 05:14:33', '2018-01-02 05:14:33'),
(52, 45, 'Consequuntur perferendis amet temporibus iusto voluptatem exercitationem dolorem dolor', '2018-01-02 05:14:42', '2018-01-02 05:14:42'),
(53, 45, 'Nesciunt laboris et dolorem iure quis ipsa beatae ut commodi pariatur Ea', '2018-01-02 05:14:42', '2018-01-02 05:14:42'),
(54, 45, 'Tempora voluptas sed in incididunt commodo ad culpa dolor architecto fuga Voluptatem Ea ut tenetur alias quia adipisicing velit tempora', '2018-01-02 05:14:42', '2018-01-02 05:14:42'),
(55, 45, 'Pariatur Vel Nam dolor atque sequi et beatae dolorem quae eius dolores', '2018-01-02 05:14:42', '2018-01-02 05:14:42'),
(56, 45, 'Enim debitis sequi ipsum corrupti in ea amet recusandae Sapiente nobis aliqua Quasi', '2018-01-02 05:14:42', '2018-01-02 05:14:42'),
(57, 46, 'Ea enim dolor maxime tempora rerum sit officia esse reprehenderit autem mollitia', '2018-01-02 06:07:52', '2018-01-02 06:07:52'),
(58, 46, 'Quis repudiandae odit accusantium aliquip ad enim ad qui qui sunt rerum dolor est sint qui', '2018-01-02 06:07:52', '2018-01-02 06:07:52'),
(59, 46, 'At laudantium ipsam enim cupidatat commodi veniam fugiat qui voluptate culpa vero consequatur qui', '2018-01-02 06:07:52', '2018-01-02 06:07:52'),
(60, 46, 'Ut omnis incididunt et fugiat est quisquam ex eaque sit in dolor laboriosam enim veniam adipisci deleniti et iusto', '2018-01-02 06:07:52', '2018-01-02 06:07:52'),
(61, 46, 'Sapiente eum quia voluptate est consequat Hic fugit porro veniam sint non praesentium sunt anim reprehenderit', '2018-01-02 06:07:52', '2018-01-02 06:07:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_me` text COLLATE utf8mb4_unicode_ci,
  `cid` int(11) DEFAULT NULL,
  `admin` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `address`, `city`, `country`, `postal_code`, `avatar`, `google_id`, `about_me`, `cid`, `admin`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$qfKTvqfeH41NGf6FeEnrS.UQYAgfCpOza1gqjmTHeTNslym4ZR1Cy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 1, '3Ar8yDBD0CutFY2r3htc1twSzdy2bqOuXFL6HiIEiMlw9gKzZIt5EsXvAqxF', '2017-12-30 03:14:28', '2017-12-30 03:14:28'),
(2, 'Amery Powell', 'fasaqubu@yahoo.com', '$2y$10$Qjcbvr0MATvbLteI0h8b9.2bSVvmDqKVJ.2MNhW0YALyZuoYLMCpK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, '2017-12-30 03:14:51', '2017-12-30 03:14:51'),
(3, 'Abel Holmes', 'luxomiliqi@hotmail.com', '$2y$10$Yasi9FVCFqKbpZh3oo0iReWvhYiYU59cyNcTJ0J2pXFes2cN99H9i', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, '2017-12-30 03:15:05', '2017-12-30 03:15:05'),
(4, 'Suraj', 'suraj@gmail.com', '$2y$10$xbkj7QCstmmkix7cQEDFTedPXgknU1h2I2e1UlGZyhpM9CVIcB6IW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, '2017-12-30 03:15:28', '2017-12-30 03:15:28');

-- --------------------------------------------------------

--
-- Table structure for table `users_activity`
--

CREATE TABLE `users_activity` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_activity`
--

INSERT INTO `users_activity` (`id`, `user_id`, `url`, `ip`, `created_at`, `updated_at`) VALUES
(1, 4, 'http://aloha-technology.vitals.com/home', '192.168.8.182', '2017-12-30 03:04:28', '2017-12-30 03:04:28'),
(2, 4, 'http://aloha-technology.vitals.com/home', '192.168.8.182', '2017-12-30 03:04:30', '2017-12-30 03:04:30'),
(3, 4, 'http://aloha-technology.vitals.com/profile', '192.168.8.182', '2017-12-30 03:04:31', '2017-12-30 03:04:31'),
(4, 1, 'http://vitals.com/userproduct', '192.168.8.182', '2017-12-30 03:04:42', '2017-12-30 03:04:42'),
(5, 1, 'http://vitals.com/module/2', '192.168.8.182', '2017-12-30 03:04:45', '2017-12-30 03:04:45'),
(6, 1, 'http://vitals.com/module/3', '192.168.8.182', '2017-12-30 03:04:48', '2017-12-30 03:04:48'),
(7, 1, 'http://vitals.com/module/4', '192.168.8.182', '2017-12-30 03:04:51', '2017-12-30 03:04:51'),
(8, 1, 'http://vitals.com/add-assesment', '192.168.8.182', '2017-12-30 03:05:56', '2017-12-30 03:05:56'),
(9, 1, 'http://vitals.com/assesment', '192.168.8.182', '2017-12-30 03:06:25', '2017-12-30 03:06:25'),
(10, 1, 'http://vitals.com/add-assesment', '192.168.8.182', '2017-12-30 03:06:39', '2017-12-30 03:06:39'),
(11, 1, 'http://vitals.com/add-header', '192.168.8.182', '2017-12-30 03:06:43', '2017-12-30 03:06:43'),
(12, 1, 'http://vitals.com/header', '192.168.8.182', '2017-12-30 03:06:50', '2017-12-30 03:06:50'),
(13, 1, 'http://vitals.com/add-header', '192.168.8.182', '2017-12-30 03:06:50', '2017-12-30 03:06:50'),
(14, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 03:06:51', '2017-12-30 03:06:51'),
(15, 1, 'http://vitals.com/userproduct', '192.168.8.182', '2017-12-30 03:07:28', '2017-12-30 03:07:28'),
(16, 1, 'http://vitals.com/module/3', '192.168.8.182', '2017-12-30 03:07:30', '2017-12-30 03:07:30'),
(17, 1, 'http://vitals.com/userproduct', '192.168.8.182', '2017-12-30 03:07:41', '2017-12-30 03:07:41'),
(18, 1, 'http://vitals.com/module/2', '192.168.8.182', '2017-12-30 03:07:43', '2017-12-30 03:07:43'),
(19, 1, 'http://vitals.com/module/2', '192.168.8.182', '2017-12-30 03:08:25', '2017-12-30 03:08:25'),
(20, 1, 'http://vitals.com/userproduct', '192.168.8.182', '2017-12-30 03:15:54', '2017-12-30 03:15:54'),
(21, 1, 'http://vitals.com/module/4', '192.168.8.182', '2017-12-30 03:15:57', '2017-12-30 03:15:57'),
(22, 1, 'http://vitals.com/module/4', '192.168.8.182', '2017-12-30 03:16:22', '2017-12-30 03:16:22'),
(23, 1, 'http://vitals.com/module/4', '192.168.8.182', '2017-12-30 03:18:50', '2017-12-30 03:18:50'),
(24, 1, 'http://vitals.com/module/4', '192.168.8.182', '2017-12-30 03:18:53', '2017-12-30 03:18:53'),
(25, 1, 'http://vitals.com/module/4', '192.168.8.182', '2017-12-30 03:19:04', '2017-12-30 03:19:04'),
(26, 1, 'http://vitals.com/userproduct', '192.168.8.182', '2017-12-30 03:19:07', '2017-12-30 03:19:07'),
(27, 1, 'http://vitals.com/module/3', '192.168.8.182', '2017-12-30 03:19:08', '2017-12-30 03:19:08'),
(28, 1, 'http://vitals.com/module/4', '192.168.8.182', '2017-12-30 03:19:11', '2017-12-30 03:19:11'),
(29, 1, 'http://vitals.com/module/2', '192.168.8.182', '2017-12-30 03:19:15', '2017-12-30 03:19:15'),
(30, 1, 'http://vitals.com/module/2', '192.168.8.182', '2017-12-30 03:19:33', '2017-12-30 03:19:33'),
(31, 1, 'http://vitals.com/module/2', '192.168.8.182', '2017-12-30 03:19:37', '2017-12-30 03:19:37'),
(32, 1, 'http://vitals.com/userproduct', '192.168.8.182', '2017-12-30 03:19:40', '2017-12-30 03:19:40'),
(33, 1, 'http://vitals.com/module/3', '192.168.8.182', '2017-12-30 03:19:41', '2017-12-30 03:19:41'),
(34, 1, 'http://vitals.com/userproduct', '192.168.8.182', '2017-12-30 03:19:45', '2017-12-30 03:19:45'),
(35, 1, 'http://vitals.com/module/2', '192.168.8.182', '2017-12-30 03:19:48', '2017-12-30 03:19:48'),
(36, 1, 'http://vitals.com/module/2', '192.168.8.182', '2017-12-30 03:20:35', '2017-12-30 03:20:35'),
(37, 1, 'http://vitals.com/module/2', '192.168.8.182', '2017-12-30 03:20:36', '2017-12-30 03:20:36'),
(38, 1, 'http://vitals.com/module/2', '192.168.8.182', '2017-12-30 03:20:37', '2017-12-30 03:20:37'),
(39, 1, 'http://vitals.com/module/2', '192.168.8.182', '2017-12-30 03:20:37', '2017-12-30 03:20:37'),
(40, 1, 'http://vitals.com/module/2', '192.168.8.182', '2017-12-30 03:20:38', '2017-12-30 03:20:38'),
(41, 1, 'http://vitals.com/module/2', '192.168.8.182', '2017-12-30 03:20:38', '2017-12-30 03:20:38'),
(42, 1, 'http://vitals.com/module/2', '192.168.8.182', '2017-12-30 03:20:38', '2017-12-30 03:20:38'),
(43, 1, 'http://vitals.com/userproduct', '192.168.8.182', '2017-12-30 03:21:04', '2017-12-30 03:21:04'),
(44, 1, 'http://vitals.com/userproduct', '192.168.8.182', '2017-12-30 03:24:03', '2017-12-30 03:24:03'),
(45, 1, 'http://vitals.com/module/3', '192.168.8.182', '2017-12-30 03:24:07', '2017-12-30 03:24:07'),
(46, 1, 'http://vitals.com/module/3', '192.168.8.182', '2017-12-30 03:25:55', '2017-12-30 03:25:55'),
(47, 1, 'http://vitals.com/module/3', '192.168.8.182', '2017-12-30 03:25:57', '2017-12-30 03:25:57'),
(48, 1, 'http://vitals.com/module/3', '192.168.8.182', '2017-12-30 03:25:58', '2017-12-30 03:25:58'),
(49, 1, 'http://vitals.com/module/3', '192.168.8.182', '2017-12-30 03:25:58', '2017-12-30 03:25:58'),
(50, 1, 'http://vitals.com/module/3', '192.168.8.182', '2017-12-30 03:25:58', '2017-12-30 03:25:58'),
(51, 1, 'http://vitals.com/module/3', '192.168.8.182', '2017-12-30 03:25:59', '2017-12-30 03:25:59'),
(52, 1, 'http://vitals.com/module/3', '192.168.8.182', '2017-12-30 03:25:59', '2017-12-30 03:25:59'),
(53, 1, 'http://vitals.com/module/3', '192.168.8.182', '2017-12-30 03:25:59', '2017-12-30 03:25:59'),
(54, 1, 'http://vitals.com/module/3', '192.168.8.182', '2017-12-30 03:26:00', '2017-12-30 03:26:00'),
(55, 1, 'http://vitals.com/module/3', '192.168.8.182', '2017-12-30 03:26:04', '2017-12-30 03:26:04'),
(56, 1, 'http://vitals.com/module/4', '192.168.8.182', '2017-12-30 03:26:08', '2017-12-30 03:26:08'),
(57, 1, 'http://vitals.com/module/2', '192.168.8.182', '2017-12-30 03:26:13', '2017-12-30 03:26:13'),
(58, 1, 'http://vitals.com/add-assesment', '192.168.8.182', '2017-12-30 03:37:26', '2017-12-30 03:37:26'),
(59, 1, 'http://vitals.com/add-header', '192.168.8.182', '2017-12-30 03:37:28', '2017-12-30 03:37:28'),
(60, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 03:37:44', '2017-12-30 03:37:44'),
(61, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 03:39:01', '2017-12-30 03:39:01'),
(62, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 03:39:03', '2017-12-30 03:39:03'),
(63, 1, 'http://vitals.com/question/1', '192.168.8.182', '2017-12-30 03:40:35', '2017-12-30 03:40:35'),
(64, 1, 'http://vitals.com/question/1', '192.168.8.182', '2017-12-30 03:43:54', '2017-12-30 03:43:54'),
(65, 1, 'http://vitals.com/question/1', '192.168.8.182', '2017-12-30 03:52:15', '2017-12-30 03:52:15'),
(66, 1, 'http://vitals.com/question/1', '192.168.8.182', '2017-12-30 03:53:32', '2017-12-30 03:53:32'),
(67, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 03:56:09', '2017-12-30 03:56:09'),
(68, 1, 'http://vitals.com/question/1', '192.168.8.182', '2017-12-30 03:58:14', '2017-12-30 03:58:14'),
(69, 1, 'http://vitals.com/question/1', '192.168.8.182', '2017-12-30 04:05:50', '2017-12-30 04:05:50'),
(70, 1, 'http://vitals.com/question/1', '192.168.8.182', '2017-12-30 04:06:32', '2017-12-30 04:06:32'),
(71, 1, 'http://vitals.com/question/1', '192.168.8.182', '2017-12-30 04:07:10', '2017-12-30 04:07:10'),
(72, 1, 'http://vitals.com/question/1', '192.168.8.182', '2017-12-30 04:12:32', '2017-12-30 04:12:32'),
(73, 1, 'http://vitals.com/question/1', '192.168.8.182', '2017-12-30 04:13:52', '2017-12-30 04:13:52'),
(74, 1, 'http://vitals.com/question/1', '192.168.8.182', '2017-12-30 04:14:29', '2017-12-30 04:14:29'),
(75, 1, 'http://vitals.com/question/1', '192.168.8.182', '2017-12-30 04:15:27', '2017-12-30 04:15:27'),
(76, 1, 'http://vitals.com/question/1', '192.168.8.182', '2017-12-30 04:16:37', '2017-12-30 04:16:37'),
(77, 1, 'http://vitals.com/question/1', '192.168.8.182', '2017-12-30 04:16:40', '2017-12-30 04:16:40'),
(78, 1, 'http://vitals.com/question/1', '192.168.8.182', '2017-12-30 04:17:34', '2017-12-30 04:17:34'),
(79, 1, 'http://vitals.com/question/1', '192.168.8.182', '2017-12-30 04:17:48', '2017-12-30 04:17:48'),
(80, 1, 'http://vitals.com/question/1', '192.168.8.182', '2017-12-30 04:18:45', '2017-12-30 04:18:45'),
(81, 1, 'http://vitals.com/question/1', '192.168.8.182', '2017-12-30 04:19:42', '2017-12-30 04:19:42'),
(82, 1, 'http://vitals.com/question/1', '192.168.8.182', '2017-12-30 04:23:43', '2017-12-30 04:23:43'),
(83, 1, 'http://vitals.com/question/1', '192.168.8.182', '2017-12-30 04:24:57', '2017-12-30 04:24:57'),
(84, 1, 'http://vitals.com/question/1', '192.168.8.182', '2017-12-30 04:28:27', '2017-12-30 04:28:27'),
(85, 1, 'http://vitals.com/question/1', '192.168.8.182', '2017-12-30 04:28:43', '2017-12-30 04:28:43'),
(86, 1, 'http://vitals.com/question/1', '192.168.8.182', '2017-12-30 04:29:23', '2017-12-30 04:29:23'),
(87, 1, 'http://vitals.com/question/1', '192.168.8.182', '2017-12-30 04:33:27', '2017-12-30 04:33:27'),
(88, 1, 'http://vitals.com/question/1', '192.168.8.182', '2017-12-30 04:34:14', '2017-12-30 04:34:14'),
(89, 1, 'http://vitals.com/question/1', '192.168.8.182', '2017-12-30 04:36:15', '2017-12-30 04:36:15'),
(90, 1, 'http://vitals.com/question/1', '192.168.8.182', '2017-12-30 04:37:01', '2017-12-30 04:37:01'),
(91, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 04:41:21', '2017-12-30 04:41:21'),
(92, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 04:43:50', '2017-12-30 04:43:50'),
(93, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 04:44:06', '2017-12-30 04:44:06'),
(94, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 04:44:15', '2017-12-30 04:44:15'),
(95, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 04:44:31', '2017-12-30 04:44:31'),
(96, 1, 'http://vitals.com/add-header', '192.168.8.182', '2017-12-30 04:45:21', '2017-12-30 04:45:21'),
(97, 1, 'http://vitals.com/add-header', '192.168.8.182', '2017-12-30 04:46:48', '2017-12-30 04:46:48'),
(98, 1, 'http://vitals.com/add-header', '192.168.8.182', '2017-12-30 04:47:15', '2017-12-30 04:47:15'),
(99, 1, 'http://vitals.com/add-header', '192.168.8.182', '2017-12-30 04:47:39', '2017-12-30 04:47:39'),
(100, 1, 'http://vitals.com/add-assesment', '192.168.8.182', '2017-12-30 04:47:44', '2017-12-30 04:47:44'),
(101, 1, 'http://vitals.com/add-header', '192.168.8.182', '2017-12-30 04:47:46', '2017-12-30 04:47:46'),
(102, 1, 'http://vitals.com/add-header', '192.168.8.182', '2017-12-30 04:48:01', '2017-12-30 04:48:01'),
(103, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 04:48:03', '2017-12-30 04:48:03'),
(104, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 04:53:19', '2017-12-30 04:53:19'),
(105, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 04:53:44', '2017-12-30 04:53:44'),
(106, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 04:54:01', '2017-12-30 04:54:01'),
(107, 1, 'http://vitals.com/add-header', '192.168.8.182', '2017-12-30 04:55:11', '2017-12-30 04:55:11'),
(108, 1, 'http://vitals.com/add-header', '192.168.8.182', '2017-12-30 04:55:19', '2017-12-30 04:55:19'),
(109, 1, 'http://vitals.com/add-assesment', '192.168.8.182', '2017-12-30 04:55:24', '2017-12-30 04:55:24'),
(110, 1, 'http://vitals.com/add-header', '192.168.8.182', '2017-12-30 04:55:26', '2017-12-30 04:55:26'),
(111, 1, 'http://vitals.com/add-header', '192.168.8.182', '2017-12-30 04:55:32', '2017-12-30 04:55:32'),
(112, 1, 'http://vitals.com/add-header', '192.168.8.182', '2017-12-30 04:55:44', '2017-12-30 04:55:44'),
(113, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 04:56:08', '2017-12-30 04:56:08'),
(114, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 04:59:56', '2017-12-30 04:59:56'),
(115, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 05:01:17', '2017-12-30 05:01:17'),
(116, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 05:01:39', '2017-12-30 05:01:39'),
(117, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 05:02:15', '2017-12-30 05:02:15'),
(118, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 05:02:59', '2017-12-30 05:02:59'),
(119, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 05:03:01', '2017-12-30 05:03:01'),
(120, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 05:08:55', '2017-12-30 05:08:55'),
(121, 1, 'http://vitals.com/add-header', '192.168.8.182', '2017-12-30 05:09:56', '2017-12-30 05:09:56'),
(122, 1, 'http://vitals.com/add-header', '192.168.8.182', '2017-12-30 05:10:26', '2017-12-30 05:10:26'),
(123, 1, 'http://vitals.com/add-header', '192.168.8.182', '2017-12-30 05:11:07', '2017-12-30 05:11:07'),
(124, 1, 'http://vitals.com/add-header', '192.168.8.182', '2017-12-30 05:11:33', '2017-12-30 05:11:33'),
(125, 1, 'http://vitals.com/add-header', '192.168.8.182', '2017-12-30 05:11:36', '2017-12-30 05:11:36'),
(126, 1, 'http://vitals.com/add-header', '192.168.8.182', '2017-12-30 05:12:02', '2017-12-30 05:12:02'),
(127, 1, 'http://vitals.com/add-header', '192.168.8.182', '2017-12-30 05:12:29', '2017-12-30 05:12:29'),
(128, 1, 'http://vitals.com/add-header', '192.168.8.182', '2017-12-30 05:12:36', '2017-12-30 05:12:36'),
(129, 1, 'http://vitals.com/userproduct', '192.168.8.182', '2017-12-30 05:12:48', '2017-12-30 05:12:48'),
(130, 1, 'http://vitals.com/add-assesment', '192.168.8.182', '2017-12-30 05:12:49', '2017-12-30 05:12:49'),
(131, 1, 'http://vitals.com/add-header', '192.168.8.182', '2017-12-30 05:12:54', '2017-12-30 05:12:54'),
(132, 1, 'http://vitals.com/add-header', '192.168.8.182', '2017-12-30 05:13:42', '2017-12-30 05:13:42'),
(133, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 05:13:44', '2017-12-30 05:13:44'),
(134, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 05:14:00', '2017-12-30 05:14:00'),
(135, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 05:14:26', '2017-12-30 05:14:26'),
(136, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 05:14:47', '2017-12-30 05:14:47'),
(137, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 05:14:50', '2017-12-30 05:14:50'),
(138, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 05:14:59', '2017-12-30 05:14:59'),
(139, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 05:15:13', '2017-12-30 05:15:13'),
(140, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 05:15:15', '2017-12-30 05:15:15'),
(141, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 05:15:16', '2017-12-30 05:15:16'),
(142, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 05:15:19', '2017-12-30 05:15:19'),
(143, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 05:29:52', '2017-12-30 05:29:52'),
(144, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 05:31:29', '2017-12-30 05:31:29'),
(145, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 05:31:44', '2017-12-30 05:31:44'),
(146, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 05:31:45', '2017-12-30 05:31:45'),
(147, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 05:31:46', '2017-12-30 05:31:46'),
(148, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 05:31:47', '2017-12-30 05:31:47'),
(149, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 05:32:17', '2017-12-30 05:32:17'),
(150, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 05:32:25', '2017-12-30 05:32:25'),
(151, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 05:32:52', '2017-12-30 05:32:52'),
(152, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 05:33:33', '2017-12-30 05:33:33'),
(153, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 05:34:26', '2017-12-30 05:34:26'),
(154, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 05:34:54', '2017-12-30 05:34:54'),
(155, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 05:34:55', '2017-12-30 05:34:55'),
(156, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 05:34:56', '2017-12-30 05:34:56'),
(157, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 05:34:56', '2017-12-30 05:34:56'),
(158, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 05:34:56', '2017-12-30 05:34:56'),
(159, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 05:34:57', '2017-12-30 05:34:57'),
(160, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 05:36:59', '2017-12-30 05:36:59'),
(161, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 05:38:01', '2017-12-30 05:38:01'),
(162, 1, 'http://vitals.com/add-header', '192.168.8.182', '2017-12-30 05:39:31', '2017-12-30 05:39:31'),
(163, 1, 'http://vitals.com/add-header', '192.168.8.182', '2017-12-30 05:42:06', '2017-12-30 05:42:06'),
(164, 1, 'http://vitals.com/add-header', '192.168.8.182', '2017-12-30 05:42:43', '2017-12-30 05:42:43'),
(165, 1, 'http://vitals.com/add-header', '192.168.8.182', '2017-12-30 05:46:12', '2017-12-30 05:46:12'),
(166, 1, 'http://vitals.com/add-header', '192.168.8.182', '2017-12-30 05:49:01', '2017-12-30 05:49:01'),
(167, 1, 'http://vitals.com/add-header', '192.168.8.182', '2017-12-30 05:49:15', '2017-12-30 05:49:15'),
(168, 1, 'http://vitals.com/add-header', '192.168.8.182', '2017-12-30 05:49:41', '2017-12-30 05:49:41'),
(169, 1, 'http://vitals.com/add-header', '192.168.8.182', '2017-12-30 05:51:01', '2017-12-30 05:51:01'),
(170, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 05:51:12', '2017-12-30 05:51:12'),
(171, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 05:51:33', '2017-12-30 05:51:33'),
(172, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 05:51:42', '2017-12-30 05:51:42'),
(173, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 05:51:57', '2017-12-30 05:51:57'),
(174, 1, 'http://vitals.com/add-header', '192.168.8.182', '2017-12-30 05:55:01', '2017-12-30 05:55:01'),
(175, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 05:55:08', '2017-12-30 05:55:08'),
(176, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 05:57:02', '2017-12-30 05:57:02'),
(177, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 05:57:05', '2017-12-30 05:57:05'),
(178, 1, 'http://vitals.com/add-header', '192.168.8.182', '2017-12-30 05:59:54', '2017-12-30 05:59:54'),
(179, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:00:10', '2017-12-30 06:00:10'),
(180, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:00:52', '2017-12-30 06:00:52'),
(181, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:02:51', '2017-12-30 06:02:51'),
(182, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:04:31', '2017-12-30 06:04:31'),
(183, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:04:34', '2017-12-30 06:04:34'),
(184, 1, 'http://vitals.com/header', '192.168.8.182', '2017-12-30 06:04:44', '2017-12-30 06:04:44'),
(185, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:04:44', '2017-12-30 06:04:44'),
(186, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2017-12-30 06:04:56', '2017-12-30 06:04:56'),
(187, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:04:58', '2017-12-30 06:04:58'),
(188, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:05:52', '2017-12-30 06:05:52'),
(189, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:06:26', '2017-12-30 06:06:26'),
(190, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:07:00', '2017-12-30 06:07:00'),
(191, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:07:31', '2017-12-30 06:07:31'),
(192, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:07:34', '2017-12-30 06:07:34'),
(193, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2017-12-30 06:07:36', '2017-12-30 06:07:36'),
(194, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:07:37', '2017-12-30 06:07:37'),
(195, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2017-12-30 06:07:39', '2017-12-30 06:07:39'),
(196, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:07:41', '2017-12-30 06:07:41'),
(197, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:08:25', '2017-12-30 06:08:25'),
(198, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2017-12-30 06:09:04', '2017-12-30 06:09:04'),
(199, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:09:06', '2017-12-30 06:09:06'),
(200, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2017-12-30 06:09:08', '2017-12-30 06:09:08'),
(201, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2017-12-30 06:09:55', '2017-12-30 06:09:55'),
(202, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2017-12-30 06:10:10', '2017-12-30 06:10:10'),
(203, 1, 'http://vitals.com/add-header', '192.168.8.182', '2017-12-30 06:11:11', '2017-12-30 06:11:11'),
(204, 1, 'http://vitals.com/add-header', '192.168.8.182', '2017-12-30 06:12:16', '2017-12-30 06:12:16'),
(205, 1, 'http://vitals.com/add-header', '192.168.8.182', '2017-12-30 06:12:44', '2017-12-30 06:12:44'),
(206, 1, 'http://vitals.com/add-header', '192.168.8.182', '2017-12-30 06:12:55', '2017-12-30 06:12:55'),
(207, 1, 'http://vitals.com/add-header', '192.168.8.182', '2017-12-30 06:12:59', '2017-12-30 06:12:59'),
(208, 1, 'http://vitals.com/add-header', '192.168.8.182', '2017-12-30 06:14:32', '2017-12-30 06:14:32'),
(209, 1, 'http://vitals.com/add-assesment', '192.168.8.182', '2017-12-30 06:14:35', '2017-12-30 06:14:35'),
(210, 1, 'http://vitals.com/add-assesment', '192.168.8.182', '2017-12-30 06:14:38', '2017-12-30 06:14:38'),
(211, 1, 'http://vitals.com/add-header', '192.168.8.182', '2017-12-30 06:14:40', '2017-12-30 06:14:40'),
(212, 1, 'http://vitals.com/add-header', '192.168.8.182', '2017-12-30 06:15:13', '2017-12-30 06:15:13'),
(213, 1, 'http://vitals.com/add-header', '192.168.8.182', '2017-12-30 06:15:14', '2017-12-30 06:15:14'),
(214, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:16:20', '2017-12-30 06:16:20'),
(215, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2017-12-30 06:16:23', '2017-12-30 06:16:23'),
(216, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:23:54', '2017-12-30 06:23:54'),
(217, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2017-12-30 06:23:55', '2017-12-30 06:23:55'),
(218, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:23:56', '2017-12-30 06:23:56'),
(219, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2017-12-30 06:23:57', '2017-12-30 06:23:57'),
(220, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2017-12-30 06:25:14', '2017-12-30 06:25:14'),
(221, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2017-12-30 06:25:51', '2017-12-30 06:25:51'),
(222, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:25:55', '2017-12-30 06:25:55'),
(223, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2017-12-30 06:25:57', '2017-12-30 06:25:57'),
(224, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:25:58', '2017-12-30 06:25:58'),
(225, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2017-12-30 06:25:59', '2017-12-30 06:25:59'),
(226, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2017-12-30 06:26:25', '2017-12-30 06:26:25'),
(227, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:26:27', '2017-12-30 06:26:27'),
(228, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2017-12-30 06:26:29', '2017-12-30 06:26:29'),
(229, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:26:31', '2017-12-30 06:26:31'),
(230, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2017-12-30 06:26:32', '2017-12-30 06:26:32'),
(231, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:26:36', '2017-12-30 06:26:36'),
(232, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2017-12-30 06:26:38', '2017-12-30 06:26:38'),
(233, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:26:38', '2017-12-30 06:26:38'),
(234, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2017-12-30 06:26:39', '2017-12-30 06:26:39'),
(235, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:27:10', '2017-12-30 06:27:10'),
(236, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:27:40', '2017-12-30 06:27:40'),
(237, 4, 'http://aloha-technology.vitals.com/home', '192.168.8.182', '2017-12-30 06:28:05', '2017-12-30 06:28:05'),
(238, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:30:22', '2017-12-30 06:30:22'),
(239, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:31:07', '2017-12-30 06:31:07'),
(240, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:31:26', '2017-12-30 06:31:26'),
(241, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:31:52', '2017-12-30 06:31:52'),
(242, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:31:57', '2017-12-30 06:31:57'),
(243, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2017-12-30 06:31:59', '2017-12-30 06:31:59'),
(244, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:32:03', '2017-12-30 06:32:03'),
(245, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2017-12-30 06:32:08', '2017-12-30 06:32:08'),
(246, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:32:09', '2017-12-30 06:32:09'),
(247, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2017-12-30 06:32:10', '2017-12-30 06:32:10'),
(248, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:32:11', '2017-12-30 06:32:11'),
(249, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2017-12-30 06:32:12', '2017-12-30 06:32:12'),
(250, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:32:13', '2017-12-30 06:32:13'),
(251, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2017-12-30 06:32:13', '2017-12-30 06:32:13'),
(252, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:32:14', '2017-12-30 06:32:14'),
(253, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2017-12-30 06:32:14', '2017-12-30 06:32:14'),
(254, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:32:14', '2017-12-30 06:32:14'),
(255, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2017-12-30 06:32:15', '2017-12-30 06:32:15'),
(256, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:32:15', '2017-12-30 06:32:15'),
(257, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2017-12-30 06:32:16', '2017-12-30 06:32:16'),
(258, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:32:17', '2017-12-30 06:32:17'),
(259, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2017-12-30 06:32:17', '2017-12-30 06:32:17'),
(260, 1, 'http://vitals.com/add-header', '192.168.8.182', '2017-12-30 06:33:19', '2017-12-30 06:33:19'),
(261, 1, 'http://vitals.com/add-header', '192.168.8.182', '2017-12-30 06:33:38', '2017-12-30 06:33:38'),
(262, 1, 'http://vitals.com/add-header', '192.168.8.182', '2017-12-30 06:33:59', '2017-12-30 06:33:59'),
(263, 1, 'http://vitals.com/add-header', '192.168.8.182', '2017-12-30 06:34:11', '2017-12-30 06:34:11'),
(264, 1, 'http://vitals.com/add-header', '192.168.8.182', '2017-12-30 06:35:09', '2017-12-30 06:35:09'),
(265, 1, 'http://vitals.com/add-header', '192.168.8.182', '2017-12-30 06:36:25', '2017-12-30 06:36:25'),
(266, 1, 'http://vitals.com/add-assesment', '192.168.8.182', '2017-12-30 06:36:28', '2017-12-30 06:36:28'),
(267, 1, 'http://vitals.com/add-assesment', '192.168.8.182', '2017-12-30 06:36:29', '2017-12-30 06:36:29'),
(268, 1, 'http://vitals.com/add-header', '192.168.8.182', '2017-12-30 06:36:31', '2017-12-30 06:36:31'),
(269, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:36:32', '2017-12-30 06:36:32'),
(270, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2017-12-30 06:36:33', '2017-12-30 06:36:33'),
(271, 1, 'http://vitals.com/add-assesment', '192.168.8.182', '2017-12-30 06:36:34', '2017-12-30 06:36:34'),
(272, 1, 'http://vitals.com/add-assesment', '192.168.8.182', '2017-12-30 06:36:36', '2017-12-30 06:36:36'),
(273, 1, 'http://vitals.com/add-header', '192.168.8.182', '2017-12-30 06:36:37', '2017-12-30 06:36:37'),
(274, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:36:39', '2017-12-30 06:36:39'),
(275, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:38:11', '2017-12-30 06:38:11'),
(276, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:38:17', '2017-12-30 06:38:17'),
(277, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:38:46', '2017-12-30 06:38:46'),
(278, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:40:11', '2017-12-30 06:40:11'),
(279, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:40:36', '2017-12-30 06:40:36'),
(280, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:41:35', '2017-12-30 06:41:35'),
(281, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:48:42', '2017-12-30 06:48:42'),
(282, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:54:31', '2017-12-30 06:54:31'),
(283, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:54:33', '2017-12-30 06:54:33'),
(284, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2017-12-30 06:54:35', '2017-12-30 06:54:35'),
(285, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:54:35', '2017-12-30 06:54:35'),
(286, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:55:31', '2017-12-30 06:55:31'),
(287, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:56:51', '2017-12-30 06:56:51'),
(288, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:57:25', '2017-12-30 06:57:25'),
(289, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:57:43', '2017-12-30 06:57:43'),
(290, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:58:03', '2017-12-30 06:58:03'),
(291, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:58:20', '2017-12-30 06:58:20'),
(292, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:58:39', '2017-12-30 06:58:39'),
(293, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:58:41', '2017-12-30 06:58:41'),
(294, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:58:42', '2017-12-30 06:58:42'),
(295, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:58:42', '2017-12-30 06:58:42'),
(296, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:58:42', '2017-12-30 06:58:42'),
(297, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 06:59:59', '2017-12-30 06:59:59'),
(298, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 07:01:16', '2017-12-30 07:01:16'),
(299, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 07:01:17', '2017-12-30 07:01:17'),
(300, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 07:01:18', '2017-12-30 07:01:18'),
(301, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 07:01:18', '2017-12-30 07:01:18'),
(302, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 07:01:19', '2017-12-30 07:01:19'),
(303, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 07:01:19', '2017-12-30 07:01:19'),
(304, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 07:09:28', '2017-12-30 07:09:28'),
(305, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 07:09:38', '2017-12-30 07:09:38'),
(306, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 07:09:39', '2017-12-30 07:09:39'),
(307, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2017-12-30 07:09:40', '2017-12-30 07:09:40'),
(308, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2017-12-30 07:09:41', '2017-12-30 07:09:41'),
(309, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2017-12-30 07:09:42', '2017-12-30 07:09:42'),
(310, 1, 'http://vitals.com/userproduct', '192.168.8.182', '2018-01-01 23:42:55', '2018-01-01 23:42:55'),
(311, 1, 'http://vitals.com/add-assesment', '192.168.8.182', '2018-01-01 23:42:58', '2018-01-01 23:42:58'),
(312, 1, 'http://vitals.com/userproduct', '192.168.8.182', '2018-01-01 23:43:00', '2018-01-01 23:43:00'),
(313, 1, 'http://vitals.com/module/2', '192.168.8.182', '2018-01-01 23:43:01', '2018-01-01 23:43:01'),
(314, 1, 'http://vitals.com/module/3', '192.168.8.182', '2018-01-01 23:43:08', '2018-01-01 23:43:08'),
(315, 1, 'http://vitals.com/module/3', '192.168.8.182', '2018-01-01 23:44:28', '2018-01-01 23:44:28'),
(316, 1, 'http://vitals.com/module/3', '192.168.8.182', '2018-01-01 23:47:00', '2018-01-01 23:47:00'),
(317, 1, 'http://vitals.com/add-assesment', '192.168.8.182', '2018-01-01 23:47:03', '2018-01-01 23:47:03'),
(318, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-01 23:47:12', '2018-01-01 23:47:12'),
(319, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-01 23:47:16', '2018-01-01 23:47:16'),
(320, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2018-01-01 23:47:17', '2018-01-01 23:47:17'),
(321, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-01 23:47:18', '2018-01-01 23:47:18'),
(322, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2018-01-01 23:47:19', '2018-01-01 23:47:19'),
(323, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-01 23:47:21', '2018-01-01 23:47:21'),
(324, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-01 23:48:53', '2018-01-01 23:48:53'),
(325, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-01 23:49:00', '2018-01-01 23:49:00'),
(326, 1, 'http://vitals.com/add-assesment', '192.168.8.182', '2018-01-01 23:49:02', '2018-01-01 23:49:02'),
(327, 1, 'http://vitals.com/add-assesment', '192.168.8.182', '2018-01-01 23:49:03', '2018-01-01 23:49:03'),
(328, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-01 23:49:05', '2018-01-01 23:49:05'),
(329, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-01 23:50:00', '2018-01-01 23:50:00'),
(330, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-01 23:50:19', '2018-01-01 23:50:19'),
(331, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-01 23:51:20', '2018-01-01 23:51:20'),
(332, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-01 23:52:25', '2018-01-01 23:52:25'),
(333, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-01 23:53:26', '2018-01-01 23:53:26'),
(334, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-01 23:54:39', '2018-01-01 23:54:39'),
(335, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-01 23:55:21', '2018-01-01 23:55:21'),
(336, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-01 23:55:24', '2018-01-01 23:55:24'),
(337, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-01 23:55:46', '2018-01-01 23:55:46'),
(338, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-01 23:55:54', '2018-01-01 23:55:54'),
(339, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-01 23:56:34', '2018-01-01 23:56:34'),
(340, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-01 23:57:16', '2018-01-01 23:57:16'),
(341, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-01 23:58:53', '2018-01-01 23:58:53'),
(342, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-01 23:59:19', '2018-01-01 23:59:19'),
(343, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-01 23:59:41', '2018-01-01 23:59:41'),
(344, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-01 23:59:59', '2018-01-01 23:59:59'),
(345, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:00:55', '2018-01-02 00:00:55'),
(346, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:02:27', '2018-01-02 00:02:27'),
(347, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:02:50', '2018-01-02 00:02:50'),
(348, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:02:53', '2018-01-02 00:02:53'),
(349, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:02:55', '2018-01-02 00:02:55'),
(350, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:02:57', '2018-01-02 00:02:57'),
(351, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:04:02', '2018-01-02 00:04:02'),
(352, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:04:05', '2018-01-02 00:04:05'),
(353, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:04:15', '2018-01-02 00:04:15'),
(354, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:04:16', '2018-01-02 00:04:16'),
(355, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:04:17', '2018-01-02 00:04:17'),
(356, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:04:18', '2018-01-02 00:04:18'),
(357, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:04:18', '2018-01-02 00:04:18'),
(358, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:04:19', '2018-01-02 00:04:19'),
(359, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:04:19', '2018-01-02 00:04:19'),
(360, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:04:20', '2018-01-02 00:04:20'),
(361, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:04:44', '2018-01-02 00:04:44'),
(362, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:04:54', '2018-01-02 00:04:54'),
(363, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:05:44', '2018-01-02 00:05:44'),
(364, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:06:04', '2018-01-02 00:06:04'),
(365, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:06:57', '2018-01-02 00:06:57'),
(366, 4, 'http://aloha-technology.vitals.com/home', '192.168.8.182', '2018-01-02 00:07:22', '2018-01-02 00:07:22'),
(367, 4, 'http://aloha-technology.vitals.com/home', '192.168.8.182', '2018-01-02 00:07:25', '2018-01-02 00:07:25'),
(368, 4, 'http://aloha-technology.vitals.com/home', '192.168.8.182', '2018-01-02 00:07:26', '2018-01-02 00:07:26'),
(369, 4, 'http://aloha-technology.vitals.com/profile', '192.168.8.182', '2018-01-02 00:07:27', '2018-01-02 00:07:27'),
(370, 4, 'http://aloha-technology.vitals.com/home', '192.168.8.182', '2018-01-02 00:07:28', '2018-01-02 00:07:28'),
(371, 4, 'http://aloha-technology.vitals.com/profile', '192.168.8.182', '2018-01-02 00:07:30', '2018-01-02 00:07:30'),
(372, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:08:57', '2018-01-02 00:08:57'),
(373, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:13:27', '2018-01-02 00:13:27'),
(374, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:13:30', '2018-01-02 00:13:30'),
(375, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:13:49', '2018-01-02 00:13:49'),
(376, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:14:12', '2018-01-02 00:14:12'),
(377, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:14:45', '2018-01-02 00:14:45'),
(378, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:15:10', '2018-01-02 00:15:10'),
(379, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:15:59', '2018-01-02 00:15:59'),
(380, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:16:14', '2018-01-02 00:16:14'),
(381, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:20:44', '2018-01-02 00:20:44'),
(382, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:22:53', '2018-01-02 00:22:53'),
(383, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:23:14', '2018-01-02 00:23:14'),
(384, 1, 'http://vitals.com/add-assesment', '192.168.8.182', '2018-01-02 00:24:36', '2018-01-02 00:24:36'),
(385, 1, 'http://vitals.com/userproduct', '192.168.8.182', '2018-01-02 00:24:37', '2018-01-02 00:24:37'),
(386, 1, 'http://vitals.com/add-assesment', '192.168.8.182', '2018-01-02 00:27:10', '2018-01-02 00:27:10'),
(387, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:27:11', '2018-01-02 00:27:11'),
(388, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:27:12', '2018-01-02 00:27:12'),
(389, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:27:15', '2018-01-02 00:27:15'),
(390, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:27:16', '2018-01-02 00:27:16'),
(391, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:27:17', '2018-01-02 00:27:17'),
(392, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:27:17', '2018-01-02 00:27:17'),
(393, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:27:18', '2018-01-02 00:27:18'),
(394, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:27:28', '2018-01-02 00:27:28'),
(395, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:28:51', '2018-01-02 00:28:51'),
(396, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:44:41', '2018-01-02 00:44:41'),
(397, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:44:42', '2018-01-02 00:44:42'),
(398, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:45:19', '2018-01-02 00:45:19'),
(399, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:46:45', '2018-01-02 00:46:45'),
(400, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2018-01-02 00:46:48', '2018-01-02 00:46:48'),
(401, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2018-01-02 00:47:04', '2018-01-02 00:47:04'),
(402, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2018-01-02 00:47:08', '2018-01-02 00:47:08'),
(403, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:48:30', '2018-01-02 00:48:30'),
(404, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2018-01-02 00:48:34', '2018-01-02 00:48:34'),
(405, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2018-01-02 00:49:49', '2018-01-02 00:49:49'),
(406, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2018-01-02 00:49:52', '2018-01-02 00:49:52'),
(407, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2018-01-02 00:51:16', '2018-01-02 00:51:16'),
(408, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2018-01-02 00:51:26', '2018-01-02 00:51:26'),
(409, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:52:27', '2018-01-02 00:52:27'),
(410, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2018-01-02 00:52:28', '2018-01-02 00:52:28'),
(411, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 00:52:37', '2018-01-02 00:52:37'),
(412, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 00:52:42', '2018-01-02 00:52:42'),
(413, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2018-01-02 00:52:44', '2018-01-02 00:52:44'),
(414, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:52:53', '2018-01-02 00:52:53'),
(415, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:53:06', '2018-01-02 00:53:06'),
(416, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2018-01-02 00:53:08', '2018-01-02 00:53:08'),
(417, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 00:53:12', '2018-01-02 00:53:12'),
(418, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2018-01-02 00:53:33', '2018-01-02 00:53:33'),
(419, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2018-01-02 00:53:36', '2018-01-02 00:53:36'),
(420, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:54:17', '2018-01-02 00:54:17'),
(421, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 00:54:35', '2018-01-02 00:54:35'),
(422, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:55:00', '2018-01-02 00:55:00'),
(423, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:56:26', '2018-01-02 00:56:26'),
(424, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 00:56:29', '2018-01-02 00:56:29'),
(425, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2018-01-02 00:56:42', '2018-01-02 00:56:42'),
(426, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 00:56:44', '2018-01-02 00:56:44'),
(427, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2018-01-02 00:56:47', '2018-01-02 00:56:47'),
(428, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2018-01-02 00:56:50', '2018-01-02 00:56:50'),
(429, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 00:57:04', '2018-01-02 00:57:04'),
(430, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2018-01-02 00:57:10', '2018-01-02 00:57:10'),
(431, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 00:57:12', '2018-01-02 00:57:12'),
(432, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:58:15', '2018-01-02 00:58:15'),
(433, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:58:27', '2018-01-02 00:58:27'),
(434, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:58:56', '2018-01-02 00:58:56'),
(435, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:59:00', '2018-01-02 00:59:00'),
(436, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:59:23', '2018-01-02 00:59:23'),
(437, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 00:59:34', '2018-01-02 00:59:34'),
(438, 1, 'http://vitals.com/userproduct', '192.168.8.182', '2018-01-02 01:00:11', '2018-01-02 01:00:11'),
(439, 1, 'http://vitals.com/add-assesment', '192.168.8.182', '2018-01-02 01:00:13', '2018-01-02 01:00:13'),
(440, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 01:00:15', '2018-01-02 01:00:15'),
(441, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 01:01:06', '2018-01-02 01:01:06'),
(442, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 01:01:19', '2018-01-02 01:01:19'),
(443, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 01:01:37', '2018-01-02 01:01:37'),
(444, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 01:01:43', '2018-01-02 01:01:43'),
(445, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 01:02:01', '2018-01-02 01:02:01'),
(446, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 01:02:10', '2018-01-02 01:02:10'),
(447, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 01:02:25', '2018-01-02 01:02:25'),
(448, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 01:02:59', '2018-01-02 01:02:59'),
(449, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 01:03:01', '2018-01-02 01:03:01'),
(450, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 01:03:05', '2018-01-02 01:03:05'),
(451, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 01:03:42', '2018-01-02 01:03:42'),
(452, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 01:03:44', '2018-01-02 01:03:44'),
(453, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 01:03:51', '2018-01-02 01:03:51'),
(454, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 01:04:22', '2018-01-02 01:04:22'),
(455, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 01:06:38', '2018-01-02 01:06:38'),
(456, 1, 'http://vitals.com/question/1', '192.168.8.182', '2018-01-02 01:08:37', '2018-01-02 01:08:37'),
(457, 1, 'http://vitals.com/question/1', '192.168.8.182', '2018-01-02 01:09:26', '2018-01-02 01:09:26'),
(458, 1, 'http://vitals.com/question/1', '192.168.8.182', '2018-01-02 01:09:50', '2018-01-02 01:09:50'),
(459, 1, 'http://vitals.com/question/1', '192.168.8.182', '2018-01-02 01:09:55', '2018-01-02 01:09:55'),
(460, 1, 'http://vitals.com/question/1', '192.168.8.182', '2018-01-02 01:10:01', '2018-01-02 01:10:01'),
(461, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 01:10:03', '2018-01-02 01:10:03'),
(462, 1, 'http://vitals.com/question/1', '192.168.8.182', '2018-01-02 01:10:09', '2018-01-02 01:10:09'),
(463, 1, 'http://vitals.com/question/1', '192.168.8.182', '2018-01-02 01:10:15', '2018-01-02 01:10:15'),
(464, 1, 'http://vitals.com/question/1', '192.168.8.182', '2018-01-02 01:10:33', '2018-01-02 01:10:33'),
(465, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 01:11:58', '2018-01-02 01:11:58'),
(466, 1, 'http://vitals.com/question/1', '192.168.8.182', '2018-01-02 01:12:02', '2018-01-02 01:12:02'),
(467, 1, 'http://vitals.com/question/1', '192.168.8.182', '2018-01-02 01:14:41', '2018-01-02 01:14:41'),
(468, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 01:16:34', '2018-01-02 01:16:34'),
(469, 1, 'http://vitals.com/question/1', '192.168.8.182', '2018-01-02 01:16:40', '2018-01-02 01:16:40'),
(470, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 01:17:21', '2018-01-02 01:17:21'),
(471, 1, 'http://vitals.com/question/1', '192.168.8.182', '2018-01-02 01:17:24', '2018-01-02 01:17:24'),
(472, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 01:20:54', '2018-01-02 01:20:54'),
(473, 1, 'http://vitals.com/question/1', '192.168.8.182', '2018-01-02 01:21:06', '2018-01-02 01:21:06'),
(474, 1, 'http://vitals.com/question/1', '192.168.8.182', '2018-01-02 01:22:01', '2018-01-02 01:22:01'),
(475, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 01:22:37', '2018-01-02 01:22:37'),
(476, 1, 'http://vitals.com/question/1', '192.168.8.182', '2018-01-02 01:22:44', '2018-01-02 01:22:44'),
(477, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 01:22:44', '2018-01-02 01:22:44'),
(478, 1, 'http://vitals.com/question/1', '192.168.8.182', '2018-01-02 01:24:48', '2018-01-02 01:24:48'),
(479, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 01:24:48', '2018-01-02 01:24:48'),
(480, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 01:25:48', '2018-01-02 01:25:48'),
(481, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 01:27:32', '2018-01-02 01:27:32'),
(482, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 01:27:48', '2018-01-02 01:27:48'),
(483, 1, 'http://vitals.com/add-assesment', '192.168.8.182', '2018-01-02 01:27:53', '2018-01-02 01:27:53'),
(484, 1, 'http://vitals.com/add-assesment', '192.168.8.182', '2018-01-02 01:27:55', '2018-01-02 01:27:55'),
(485, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 01:28:01', '2018-01-02 01:28:01'),
(486, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 01:29:17', '2018-01-02 01:29:17');
INSERT INTO `users_activity` (`id`, `user_id`, `url`, `ip`, `created_at`, `updated_at`) VALUES
(487, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 01:30:09', '2018-01-02 01:30:09'),
(488, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 01:30:46', '2018-01-02 01:30:46'),
(489, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 01:31:14', '2018-01-02 01:31:14'),
(490, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 01:32:30', '2018-01-02 01:32:30'),
(491, 1, 'http://vitals.com/add-assesment', '192.168.8.182', '2018-01-02 01:33:11', '2018-01-02 01:33:11'),
(492, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 01:33:14', '2018-01-02 01:33:14'),
(493, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 01:33:34', '2018-01-02 01:33:34'),
(494, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 01:40:34', '2018-01-02 01:40:34'),
(495, 1, 'http://vitals.com/add-assesment', '192.168.8.182', '2018-01-02 01:40:51', '2018-01-02 01:40:51'),
(496, 1, 'http://vitals.com/add-assesment', '192.168.8.182', '2018-01-02 01:40:56', '2018-01-02 01:40:56'),
(497, 1, 'http://vitals.com/add-assesment', '192.168.8.182', '2018-01-02 01:41:00', '2018-01-02 01:41:00'),
(498, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 01:41:02', '2018-01-02 01:41:02'),
(499, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 01:43:20', '2018-01-02 01:43:20'),
(500, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 01:44:59', '2018-01-02 01:44:59'),
(501, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 01:46:42', '2018-01-02 01:46:42'),
(502, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 01:48:22', '2018-01-02 01:48:22'),
(503, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 01:49:14', '2018-01-02 01:49:14'),
(504, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 01:50:10', '2018-01-02 01:50:10'),
(505, 1, 'http://vitals.com/question/30', '192.168.8.182', '2018-01-02 01:53:07', '2018-01-02 01:53:07'),
(506, 1, 'http://vitals.com/question/30', '192.168.8.182', '2018-01-02 01:53:29', '2018-01-02 01:53:29'),
(507, 1, 'http://vitals.com/question/30', '192.168.8.182', '2018-01-02 01:54:06', '2018-01-02 01:54:06'),
(508, 1, 'http://vitals.com/question/30', '192.168.8.182', '2018-01-02 01:55:10', '2018-01-02 01:55:10'),
(509, 1, 'http://vitals.com/question/34', '192.168.8.182', '2018-01-02 01:55:14', '2018-01-02 01:55:14'),
(510, 1, 'http://vitals.com/question/34', '192.168.8.182', '2018-01-02 01:55:54', '2018-01-02 01:55:54'),
(511, 1, 'http://vitals.com/question/34', '192.168.8.182', '2018-01-02 01:55:58', '2018-01-02 01:55:58'),
(512, 1, 'http://vitals.com/question/34', '192.168.8.182', '2018-01-02 01:56:15', '2018-01-02 01:56:15'),
(513, 1, 'http://vitals.com/question/34', '192.168.8.182', '2018-01-02 01:56:19', '2018-01-02 01:56:19'),
(514, 1, 'http://vitals.com/question/34', '192.168.8.182', '2018-01-02 01:59:00', '2018-01-02 01:59:00'),
(515, 1, 'http://vitals.com/question/34', '192.168.8.182', '2018-01-02 02:00:48', '2018-01-02 02:00:48'),
(516, 1, 'http://vitals.com/question/32', '192.168.8.182', '2018-01-02 02:00:51', '2018-01-02 02:00:51'),
(517, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 02:00:51', '2018-01-02 02:00:51'),
(518, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 02:00:56', '2018-01-02 02:00:56'),
(519, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 02:00:59', '2018-01-02 02:00:59'),
(520, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 02:04:07', '2018-01-02 02:04:07'),
(521, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2018-01-02 02:04:18', '2018-01-02 02:04:18'),
(522, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2018-01-02 02:04:46', '2018-01-02 02:04:46'),
(523, 1, 'http://vitals.com/question/add-header', '192.168.8.182', '2018-01-02 02:06:30', '2018-01-02 02:06:30'),
(524, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 02:06:30', '2018-01-02 02:06:30'),
(525, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 02:06:33', '2018-01-02 02:06:33'),
(526, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 02:06:35', '2018-01-02 02:06:35'),
(527, 1, 'http://vitals.com/question/add-header', '192.168.8.182', '2018-01-02 02:07:04', '2018-01-02 02:07:04'),
(528, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 02:07:04', '2018-01-02 02:07:04'),
(529, 1, 'http://vitals.com/question/add-header', '192.168.8.182', '2018-01-02 02:07:29', '2018-01-02 02:07:29'),
(530, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 02:07:29', '2018-01-02 02:07:29'),
(531, 1, 'http://vitals.com/question/add-header', '192.168.8.182', '2018-01-02 02:07:54', '2018-01-02 02:07:54'),
(532, 1, 'http://vitals.com/question/add-header', '192.168.8.182', '2018-01-02 02:09:06', '2018-01-02 02:09:06'),
(533, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 02:09:19', '2018-01-02 02:09:19'),
(534, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 02:09:35', '2018-01-02 02:09:35'),
(535, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 02:09:51', '2018-01-02 02:09:51'),
(536, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 02:10:48', '2018-01-02 02:10:48'),
(537, 1, 'http://vitals.com/question/add-header', '192.168.8.182', '2018-01-02 02:11:00', '2018-01-02 02:11:00'),
(538, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 02:12:18', '2018-01-02 02:12:18'),
(539, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 02:12:28', '2018-01-02 02:12:28'),
(540, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 02:13:49', '2018-01-02 02:13:49'),
(541, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 02:13:59', '2018-01-02 02:13:59'),
(542, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 02:14:11', '2018-01-02 02:14:11'),
(543, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2018-01-02 02:14:12', '2018-01-02 02:14:12'),
(544, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2018-01-02 02:14:15', '2018-01-02 02:14:15'),
(545, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 02:14:17', '2018-01-02 02:14:17'),
(546, 1, 'http://vitals.com/question/1', '192.168.8.182', '2018-01-02 02:14:26', '2018-01-02 02:14:26'),
(547, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 02:14:50', '2018-01-02 02:14:50'),
(548, 1, 'http://vitals.com/question/1', '192.168.8.182', '2018-01-02 02:16:37', '2018-01-02 02:16:37'),
(549, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2018-01-02 02:17:13', '2018-01-02 02:17:13'),
(550, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 02:17:15', '2018-01-02 02:17:15'),
(551, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2018-01-02 02:17:17', '2018-01-02 02:17:17'),
(552, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 02:17:18', '2018-01-02 02:17:18'),
(553, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 02:17:42', '2018-01-02 02:17:42'),
(554, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 02:18:30', '2018-01-02 02:18:30'),
(555, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2018-01-02 02:18:33', '2018-01-02 02:18:33'),
(556, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 02:18:35', '2018-01-02 02:18:35'),
(557, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 02:19:28', '2018-01-02 02:19:28'),
(558, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 02:19:30', '2018-01-02 02:19:30'),
(559, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2018-01-02 02:19:31', '2018-01-02 02:19:31'),
(560, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2018-01-02 02:19:38', '2018-01-02 02:19:38'),
(561, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2018-01-02 02:19:49', '2018-01-02 02:19:49'),
(562, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 02:19:51', '2018-01-02 02:19:51'),
(563, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2018-01-02 02:19:52', '2018-01-02 02:19:52'),
(564, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 02:19:53', '2018-01-02 02:19:53'),
(565, 1, 'http://vitals.com/question/1', '192.168.8.182', '2018-01-02 02:20:02', '2018-01-02 02:20:02'),
(566, 1, 'http://vitals.com/question/1', '192.168.8.182', '2018-01-02 02:20:02', '2018-01-02 02:20:02'),
(567, 1, 'http://vitals.com/question/1', '192.168.8.182', '2018-01-02 02:20:03', '2018-01-02 02:20:03'),
(568, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 02:20:59', '2018-01-02 02:20:59'),
(569, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 02:21:02', '2018-01-02 02:21:02'),
(570, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2018-01-02 02:21:03', '2018-01-02 02:21:03'),
(571, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 02:21:04', '2018-01-02 02:21:04'),
(572, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2018-01-02 02:21:07', '2018-01-02 02:21:07'),
(573, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 02:21:09', '2018-01-02 02:21:09'),
(574, 1, 'http://vitals.com/question/36', '192.168.8.182', '2018-01-02 02:21:10', '2018-01-02 02:21:10'),
(575, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 02:21:11', '2018-01-02 02:21:11'),
(576, 1, 'http://vitals.com/question/1', '192.168.8.182', '2018-01-02 02:23:22', '2018-01-02 02:23:22'),
(577, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 02:23:22', '2018-01-02 02:23:22'),
(578, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 02:25:00', '2018-01-02 02:25:00'),
(579, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 02:25:07', '2018-01-02 02:25:07'),
(580, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 02:28:58', '2018-01-02 02:28:58'),
(581, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 02:29:24', '2018-01-02 02:29:24'),
(582, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 02:30:39', '2018-01-02 02:30:39'),
(583, 1, 'http://vitals.com/question/31', '192.168.8.182', '2018-01-02 02:30:42', '2018-01-02 02:30:42'),
(584, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 02:30:42', '2018-01-02 02:30:42'),
(585, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 02:31:24', '2018-01-02 02:31:24'),
(586, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 02:31:35', '2018-01-02 02:31:35'),
(587, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 02:31:37', '2018-01-02 02:31:37'),
(588, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 02:31:38', '2018-01-02 02:31:38'),
(589, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 02:31:38', '2018-01-02 02:31:38'),
(590, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 02:31:38', '2018-01-02 02:31:38'),
(591, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 02:33:08', '2018-01-02 02:33:08'),
(592, 1, 'http://vitals.com/question/1', '192.168.8.182', '2018-01-02 02:34:44', '2018-01-02 02:34:44'),
(593, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 02:34:44', '2018-01-02 02:34:44'),
(594, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 02:39:45', '2018-01-02 02:39:45'),
(595, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 02:40:13', '2018-01-02 02:40:13'),
(596, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 02:40:20', '2018-01-02 02:40:20'),
(597, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 02:49:47', '2018-01-02 02:49:47'),
(598, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 02:50:46', '2018-01-02 02:50:46'),
(599, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 02:52:09', '2018-01-02 02:52:09'),
(600, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 02:55:56', '2018-01-02 02:55:56'),
(601, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 02:59:26', '2018-01-02 02:59:26'),
(602, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 02:59:28', '2018-01-02 02:59:28'),
(603, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 02:59:30', '2018-01-02 02:59:30'),
(604, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 03:00:25', '2018-01-02 03:00:25'),
(605, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 03:00:48', '2018-01-02 03:00:48'),
(606, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 03:03:00', '2018-01-02 03:03:00'),
(607, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 03:03:51', '2018-01-02 03:03:51'),
(608, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 03:11:06', '2018-01-02 03:11:06'),
(609, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 04:06:38', '2018-01-02 04:06:38'),
(610, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 04:07:03', '2018-01-02 04:07:03'),
(611, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 04:14:43', '2018-01-02 04:14:43'),
(612, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 04:14:47', '2018-01-02 04:14:47'),
(613, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 04:14:56', '2018-01-02 04:14:56'),
(614, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 04:16:08', '2018-01-02 04:16:08'),
(615, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 04:16:20', '2018-01-02 04:16:20'),
(616, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 04:16:47', '2018-01-02 04:16:47'),
(617, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 04:16:48', '2018-01-02 04:16:48'),
(618, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 04:17:30', '2018-01-02 04:17:30'),
(619, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 04:17:37', '2018-01-02 04:17:37'),
(620, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 04:18:10', '2018-01-02 04:18:10'),
(621, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 04:18:24', '2018-01-02 04:18:24'),
(622, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 04:18:24', '2018-01-02 04:18:24'),
(623, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 04:18:37', '2018-01-02 04:18:37'),
(624, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 04:18:37', '2018-01-02 04:18:37'),
(625, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 04:18:54', '2018-01-02 04:18:54'),
(626, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 04:19:03', '2018-01-02 04:19:03'),
(627, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 04:19:46', '2018-01-02 04:19:46'),
(628, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 04:19:46', '2018-01-02 04:19:46'),
(629, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 04:19:47', '2018-01-02 04:19:47'),
(630, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 04:23:29', '2018-01-02 04:23:29'),
(631, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 04:26:58', '2018-01-02 04:26:58'),
(632, 1, 'http://vitals.com/question/41', '192.168.8.182', '2018-01-02 04:27:00', '2018-01-02 04:27:00'),
(633, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 04:27:35', '2018-01-02 04:27:35'),
(634, 1, 'http://vitals.com/question/42', '192.168.8.182', '2018-01-02 04:27:42', '2018-01-02 04:27:42'),
(635, 1, 'http://vitals.com/question/42', '192.168.8.182', '2018-01-02 04:28:38', '2018-01-02 04:28:38'),
(636, 1, 'http://vitals.com/question/42', '192.168.8.182', '2018-01-02 04:29:09', '2018-01-02 04:29:09'),
(637, 1, 'http://vitals.com/question/42', '192.168.8.182', '2018-01-02 04:29:39', '2018-01-02 04:29:39'),
(638, 1, 'http://vitals.com/question/42', '192.168.8.182', '2018-01-02 04:29:59', '2018-01-02 04:29:59'),
(639, 1, 'http://vitals.com/question/42', '192.168.8.182', '2018-01-02 04:30:13', '2018-01-02 04:30:13'),
(640, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 04:30:18', '2018-01-02 04:30:18'),
(641, 1, 'http://vitals.com/question/42', '192.168.8.182', '2018-01-02 04:30:20', '2018-01-02 04:30:20'),
(642, 1, 'http://vitals.com/question/42', '192.168.8.182', '2018-01-02 04:30:32', '2018-01-02 04:30:32'),
(643, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 04:30:32', '2018-01-02 04:30:32'),
(644, 1, 'http://vitals.com/add-assesment', '192.168.8.182', '2018-01-02 04:30:38', '2018-01-02 04:30:38'),
(645, 1, 'http://vitals.com/assesment', '192.168.8.182', '2018-01-02 04:30:58', '2018-01-02 04:30:58'),
(646, 1, 'http://vitals.com/add-assesment', '192.168.8.182', '2018-01-02 04:31:01', '2018-01-02 04:31:01'),
(647, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 04:31:15', '2018-01-02 04:31:15'),
(648, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 04:31:23', '2018-01-02 04:31:23'),
(649, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 04:31:34', '2018-01-02 04:31:34'),
(650, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 04:32:12', '2018-01-02 04:32:12'),
(651, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 04:32:40', '2018-01-02 04:32:40'),
(652, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 04:33:27', '2018-01-02 04:33:27'),
(653, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 04:34:30', '2018-01-02 04:34:30'),
(654, 1, 'http://vitals.com/userproduct', '192.168.8.182', '2018-01-02 04:34:49', '2018-01-02 04:34:49'),
(655, 1, 'http://vitals.com/add-assesment', '192.168.8.182', '2018-01-02 04:34:51', '2018-01-02 04:34:51'),
(656, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 04:34:53', '2018-01-02 04:34:53'),
(657, 1, 'http://vitals.com/add-assesment', '192.168.8.182', '2018-01-02 04:35:32', '2018-01-02 04:35:32'),
(658, 1, 'http://vitals.com/add-assesment', '192.168.8.182', '2018-01-02 04:35:35', '2018-01-02 04:35:35'),
(659, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 04:36:01', '2018-01-02 04:36:01'),
(660, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 04:36:24', '2018-01-02 04:36:24'),
(661, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 04:40:09', '2018-01-02 04:40:09'),
(662, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 04:40:18', '2018-01-02 04:40:18'),
(663, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 04:40:34', '2018-01-02 04:40:34'),
(664, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 04:40:58', '2018-01-02 04:40:58'),
(665, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 04:41:32', '2018-01-02 04:41:32'),
(666, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 04:41:32', '2018-01-02 04:41:32'),
(667, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 04:42:11', '2018-01-02 04:42:11'),
(668, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 04:42:47', '2018-01-02 04:42:47'),
(669, 1, 'http://vitals.com/question/add-header', '192.168.8.182', '2018-01-02 04:42:47', '2018-01-02 04:42:47'),
(670, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 04:42:52', '2018-01-02 04:42:52'),
(671, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 04:42:53', '2018-01-02 04:42:53'),
(672, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 04:42:53', '2018-01-02 04:42:53'),
(673, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 04:42:53', '2018-01-02 04:42:53'),
(674, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 04:42:54', '2018-01-02 04:42:54'),
(675, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 04:42:54', '2018-01-02 04:42:54'),
(676, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 04:42:54', '2018-01-02 04:42:54'),
(677, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 04:43:26', '2018-01-02 04:43:26'),
(678, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 04:43:38', '2018-01-02 04:43:38'),
(679, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 04:43:45', '2018-01-02 04:43:45'),
(680, 1, 'http://vitals.com/add-assesment', '192.168.8.182', '2018-01-02 04:45:00', '2018-01-02 04:45:00'),
(681, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 04:45:07', '2018-01-02 04:45:07'),
(682, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 04:45:18', '2018-01-02 04:45:18'),
(683, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 04:45:52', '2018-01-02 04:45:52'),
(684, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 04:45:58', '2018-01-02 04:45:58'),
(685, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 04:46:01', '2018-01-02 04:46:01'),
(686, 1, 'http://vitals.com/add-header', '192.168.8.182', '2018-01-02 04:46:16', '2018-01-02 04:46:16'),
(687, 1, 'http://vitals.com/add-assesment', '192.168.8.182', '2018-01-02 04:48:54', '2018-01-02 04:48:54'),
(688, 1, 'http://vitals.com/add-assesment', '192.168.8.182', '2018-01-02 04:49:13', '2018-01-02 04:49:13'),
(689, 1, 'http://vitals.com/assesment', '192.168.8.182', '2018-01-02 04:55:21', '2018-01-02 04:55:21'),
(690, 1, 'http://vitals.com/assesment', '192.168.8.182', '2018-01-02 04:56:03', '2018-01-02 04:56:03'),
(691, 1, 'http://vitals.com/userproduct', '192.168.8.182', '2018-01-02 04:56:47', '2018-01-02 04:56:47'),
(692, 1, 'http://vitals.com/userproduct', '192.168.8.182', '2018-01-02 04:57:12', '2018-01-02 04:57:12'),
(693, 1, 'http://vitals.com/assesment', '192.168.8.182', '2018-01-02 04:57:16', '2018-01-02 04:57:16'),
(694, 1, 'http://vitals.com/edit/assesment/1', '192.168.8.182', '2018-01-02 04:57:24', '2018-01-02 04:57:24'),
(695, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 04:57:36', '2018-01-02 04:57:36'),
(696, 1, 'http://vitals.com/assesment', '192.168.8.182', '2018-01-02 04:57:57', '2018-01-02 04:57:57'),
(697, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 04:57:58', '2018-01-02 04:57:58'),
(698, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 04:58:00', '2018-01-02 04:58:00'),
(699, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 04:58:00', '2018-01-02 04:58:00'),
(700, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 04:58:01', '2018-01-02 04:58:01'),
(701, 1, 'http://vitals.com/edit/assesment/1', '192.168.8.182', '2018-01-02 04:58:02', '2018-01-02 04:58:02'),
(702, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 04:58:04', '2018-01-02 04:58:04'),
(703, 1, 'http://vitals.com/edit/assesment/1', '192.168.8.182', '2018-01-02 04:58:05', '2018-01-02 04:58:05'),
(704, 1, 'http://vitals.com/assesment', '192.168.8.182', '2018-01-02 04:59:59', '2018-01-02 04:59:59'),
(705, 1, 'http://vitals.com/assesment', '192.168.8.182', '2018-01-02 05:02:08', '2018-01-02 05:02:08'),
(706, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2018-01-02 05:02:12', '2018-01-02 05:02:12'),
(707, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 05:02:23', '2018-01-02 05:02:23'),
(708, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 05:02:29', '2018-01-02 05:02:29'),
(709, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2018-01-02 05:02:34', '2018-01-02 05:02:34'),
(710, 1, 'http://vitals.com/assesment', '192.168.8.182', '2018-01-02 05:03:08', '2018-01-02 05:03:08'),
(711, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2018-01-02 05:03:10', '2018-01-02 05:03:10'),
(712, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2018-01-02 05:03:19', '2018-01-02 05:03:19'),
(713, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2018-01-02 05:03:22', '2018-01-02 05:03:22'),
(714, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2018-01-02 05:03:50', '2018-01-02 05:03:50'),
(715, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2018-01-02 05:03:51', '2018-01-02 05:03:51'),
(716, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2018-01-02 05:03:51', '2018-01-02 05:03:51'),
(717, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2018-01-02 05:03:51', '2018-01-02 05:03:51'),
(718, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2018-01-02 05:03:51', '2018-01-02 05:03:51'),
(719, 1, 'http://vitals.com/headers/1', '192.168.8.182', '2018-01-02 05:03:56', '2018-01-02 05:03:56'),
(720, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2018-01-02 05:03:58', '2018-01-02 05:03:58'),
(721, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2018-01-02 05:04:17', '2018-01-02 05:04:17'),
(722, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2018-01-02 05:04:20', '2018-01-02 05:04:20'),
(723, 1, 'http://vitals.com/headers/2', '192.168.8.182', '2018-01-02 05:05:58', '2018-01-02 05:05:58'),
(724, 1, 'http://vitals.com/assesment', '192.168.8.182', '2018-01-02 05:06:04', '2018-01-02 05:06:04'),
(725, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:06:06', '2018-01-02 05:06:06'),
(726, 1, 'http://vitals.com/edit/assesment/1', '192.168.8.182', '2018-01-02 05:06:09', '2018-01-02 05:06:09'),
(727, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:06:13', '2018-01-02 05:06:13'),
(728, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:06:35', '2018-01-02 05:06:35'),
(729, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:06:45', '2018-01-02 05:06:45'),
(730, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:06:45', '2018-01-02 05:06:45'),
(731, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:06:46', '2018-01-02 05:06:46'),
(732, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:07:07', '2018-01-02 05:07:07'),
(733, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:07:13', '2018-01-02 05:07:13'),
(734, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:07:19', '2018-01-02 05:07:19'),
(735, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:07:30', '2018-01-02 05:07:30'),
(736, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:07:43', '2018-01-02 05:07:43'),
(737, 1, 'http://vitals.com/question/2', '192.168.8.182', '2018-01-02 05:07:58', '2018-01-02 05:07:58'),
(738, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:07:58', '2018-01-02 05:07:58'),
(739, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:08:00', '2018-01-02 05:08:00'),
(740, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:08:37', '2018-01-02 05:08:37'),
(741, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:08:49', '2018-01-02 05:08:49'),
(742, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:09:29', '2018-01-02 05:09:29'),
(743, 1, 'http://vitals.com/assesment', '192.168.8.182', '2018-01-02 05:09:30', '2018-01-02 05:09:30'),
(744, 1, 'http://vitals.com/edit/assesment/1', '192.168.8.182', '2018-01-02 05:09:32', '2018-01-02 05:09:32'),
(745, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:09:36', '2018-01-02 05:09:36'),
(746, 1, 'http://vitals.com/assesment', '192.168.8.182', '2018-01-02 05:09:38', '2018-01-02 05:09:38'),
(747, 1, 'http://vitals.com/edit/assesment/1', '192.168.8.182', '2018-01-02 05:09:39', '2018-01-02 05:09:39'),
(748, 1, 'http://vitals.com/assesment', '192.168.8.182', '2018-01-02 05:09:42', '2018-01-02 05:09:42'),
(749, 1, 'http://vitals.com/userproduct', '192.168.8.182', '2018-01-02 05:09:47', '2018-01-02 05:09:47'),
(750, 1, 'http://vitals.com/assesment', '192.168.8.182', '2018-01-02 05:09:52', '2018-01-02 05:09:52'),
(751, 1, 'http://vitals.com/assesment', '192.168.8.182', '2018-01-02 05:09:59', '2018-01-02 05:09:59'),
(752, 1, 'http://vitals.com/assesment', '192.168.8.182', '2018-01-02 05:11:19', '2018-01-02 05:11:19'),
(753, 1, 'http://vitals.com/assesment', '192.168.8.182', '2018-01-02 05:11:21', '2018-01-02 05:11:21'),
(754, 1, 'http://vitals.com/assesment', '192.168.8.182', '2018-01-02 05:11:21', '2018-01-02 05:11:21'),
(755, 1, 'http://vitals.com/assesment', '192.168.8.182', '2018-01-02 05:11:21', '2018-01-02 05:11:21'),
(756, 1, 'http://vitals.com/assesment', '192.168.8.182', '2018-01-02 05:11:21', '2018-01-02 05:11:21'),
(757, 1, 'http://vitals.com/assesment', '192.168.8.182', '2018-01-02 05:11:22', '2018-01-02 05:11:22'),
(758, 1, 'http://vitals.com/assesment', '192.168.8.182', '2018-01-02 05:11:22', '2018-01-02 05:11:22'),
(759, 1, 'http://vitals.com/assesment', '192.168.8.182', '2018-01-02 05:11:22', '2018-01-02 05:11:22'),
(760, 1, 'http://vitals.com/assesment', '192.168.8.182', '2018-01-02 05:11:22', '2018-01-02 05:11:22'),
(761, 1, 'http://vitals.com/assesment', '192.168.8.182', '2018-01-02 05:11:27', '2018-01-02 05:11:27'),
(762, 1, 'http://vitals.com/assesment', '192.168.8.182', '2018-01-02 05:11:27', '2018-01-02 05:11:27'),
(763, 1, 'http://vitals.com/assesment', '192.168.8.182', '2018-01-02 05:11:40', '2018-01-02 05:11:40'),
(764, 1, 'http://vitals.com/assesment', '192.168.8.182', '2018-01-02 05:12:28', '2018-01-02 05:12:28'),
(765, 1, 'http://vitals.com/assesment', '192.168.8.182', '2018-01-02 05:12:32', '2018-01-02 05:12:32'),
(766, 1, 'http://vitals.com/assesment', '192.168.8.182', '2018-01-02 05:12:32', '2018-01-02 05:12:32'),
(767, 1, 'http://vitals.com/edit/assesment/1', '192.168.8.182', '2018-01-02 05:12:44', '2018-01-02 05:12:44'),
(768, 1, 'http://vitals.com/question/41', '192.168.8.182', '2018-01-02 05:12:50', '2018-01-02 05:12:50'),
(769, 1, 'http://vitals.com/edit/assesment/1', '192.168.8.182', '2018-01-02 05:12:50', '2018-01-02 05:12:50'),
(770, 1, 'http://vitals.com/assesment', '192.168.8.182', '2018-01-02 05:12:54', '2018-01-02 05:12:54'),
(771, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:12:56', '2018-01-02 05:12:56'),
(772, 1, 'http://vitals.com/question/43', '192.168.8.182', '2018-01-02 05:12:58', '2018-01-02 05:12:58'),
(773, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:12:58', '2018-01-02 05:12:58'),
(774, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:13:00', '2018-01-02 05:13:00'),
(775, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:13:44', '2018-01-02 05:13:44'),
(776, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:13:50', '2018-01-02 05:13:50'),
(777, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:14:22', '2018-01-02 05:14:22'),
(778, 1, 'http://vitals.com/assesment', '192.168.8.182', '2018-01-02 05:14:26', '2018-01-02 05:14:26'),
(779, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:14:28', '2018-01-02 05:14:28'),
(780, 1, 'http://vitals.com/question/2', '192.168.8.182', '2018-01-02 05:14:33', '2018-01-02 05:14:33'),
(781, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:14:33', '2018-01-02 05:14:33'),
(782, 1, 'http://vitals.com/question/44', '192.168.8.182', '2018-01-02 05:14:36', '2018-01-02 05:14:36'),
(783, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:14:36', '2018-01-02 05:14:36'),
(784, 1, 'http://vitals.com/question/2', '192.168.8.182', '2018-01-02 05:14:42', '2018-01-02 05:14:42'),
(785, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:14:42', '2018-01-02 05:14:42'),
(786, 1, 'http://vitals.com/edit/assesment/3', '192.168.8.182', '2018-01-02 05:15:49', '2018-01-02 05:15:49'),
(787, 1, 'http://vitals.com/assesment', '192.168.8.182', '2018-01-02 05:15:52', '2018-01-02 05:15:52'),
(788, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:15:53', '2018-01-02 05:15:53'),
(789, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:17:12', '2018-01-02 05:17:12'),
(790, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:24:13', '2018-01-02 05:24:13'),
(791, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:25:31', '2018-01-02 05:25:31'),
(792, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:25:56', '2018-01-02 05:25:56'),
(793, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:26:31', '2018-01-02 05:26:31'),
(794, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:26:51', '2018-01-02 05:26:51'),
(795, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:28:01', '2018-01-02 05:28:01'),
(796, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:28:52', '2018-01-02 05:28:52'),
(797, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:29:29', '2018-01-02 05:29:29'),
(798, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:30:07', '2018-01-02 05:30:07'),
(799, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:31:43', '2018-01-02 05:31:43'),
(800, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:32:22', '2018-01-02 05:32:22'),
(801, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:36:20', '2018-01-02 05:36:20'),
(802, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:37:01', '2018-01-02 05:37:01'),
(803, 1, 'http://vitals.com/header', '192.168.8.182', '2018-01-02 05:38:01', '2018-01-02 05:38:01'),
(804, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:38:01', '2018-01-02 05:38:01'),
(805, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:40:08', '2018-01-02 05:40:08'),
(806, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:40:49', '2018-01-02 05:40:49'),
(807, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:41:14', '2018-01-02 05:41:14'),
(808, 1, 'http://vitals.com/assesment', '192.168.8.182', '2018-01-02 05:41:30', '2018-01-02 05:41:30'),
(809, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:41:46', '2018-01-02 05:41:46'),
(810, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:44:38', '2018-01-02 05:44:38'),
(811, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:44:58', '2018-01-02 05:44:58'),
(812, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:45:26', '2018-01-02 05:45:26'),
(813, 1, 'http://vitals.com/edit/assesment/1', '192.168.8.182', '2018-01-02 05:45:30', '2018-01-02 05:45:30'),
(814, 1, 'http://vitals.com/edit/assesment/1', '192.168.8.182', '2018-01-02 05:46:20', '2018-01-02 05:46:20'),
(815, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:47:25', '2018-01-02 05:47:25'),
(816, 1, 'http://vitals.com/question-edit/45', '192.168.8.182', '2018-01-02 05:47:27', '2018-01-02 05:47:27'),
(817, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:48:06', '2018-01-02 05:48:06'),
(818, 1, 'http://vitals.com/question-edit/45', '192.168.8.182', '2018-01-02 05:48:12', '2018-01-02 05:48:12'),
(819, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:48:26', '2018-01-02 05:48:26'),
(820, 1, 'http://vitals.com/question-edit/45', '192.168.8.182', '2018-01-02 05:50:11', '2018-01-02 05:50:11'),
(821, 1, 'http://vitals.com/question/2', '192.168.8.182', '2018-01-02 05:50:15', '2018-01-02 05:50:15'),
(822, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:50:15', '2018-01-02 05:50:15'),
(823, 1, 'http://vitals.com/question-edit/45', '192.168.8.182', '2018-01-02 05:50:18', '2018-01-02 05:50:18'),
(824, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:51:15', '2018-01-02 05:51:15'),
(825, 1, 'http://vitals.com/question/46', '192.168.8.182', '2018-01-02 05:51:21', '2018-01-02 05:51:21'),
(826, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:51:21', '2018-01-02 05:51:21'),
(827, 1, 'http://vitals.com/question-edit/45', '192.168.8.182', '2018-01-02 05:51:37', '2018-01-02 05:51:37'),
(828, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:51:46', '2018-01-02 05:51:46'),
(829, 1, 'http://vitals.com/question-edit/45', '192.168.8.182', '2018-01-02 05:51:49', '2018-01-02 05:51:49'),
(830, 1, 'http://vitals.com/question/2', '192.168.8.182', '2018-01-02 05:51:51', '2018-01-02 05:51:51'),
(831, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:51:51', '2018-01-02 05:51:51'),
(832, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:52:14', '2018-01-02 05:52:14'),
(833, 1, 'http://vitals.com/question/47', '192.168.8.182', '2018-01-02 05:52:17', '2018-01-02 05:52:17'),
(834, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:52:18', '2018-01-02 05:52:18'),
(835, 1, 'http://vitals.com/question-edit/45', '192.168.8.182', '2018-01-02 05:52:19', '2018-01-02 05:52:19'),
(836, 1, 'http://vitals.com/userproduct', '192.168.8.182', '2018-01-02 05:53:29', '2018-01-02 05:53:29'),
(837, 1, 'http://vitals.com/assesment', '192.168.8.182', '2018-01-02 05:53:32', '2018-01-02 05:53:32'),
(838, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 05:53:38', '2018-01-02 05:53:38'),
(839, 1, 'http://vitals.com/userproduct', '192.168.8.182', '2018-01-02 06:07:13', '2018-01-02 06:07:13'),
(840, 1, 'http://vitals.com/assesment', '192.168.8.182', '2018-01-02 06:07:18', '2018-01-02 06:07:18'),
(841, 1, 'http://vitals.com/assesment', '192.168.8.182', '2018-01-02 06:07:25', '2018-01-02 06:07:25'),
(842, 1, 'http://vitals.com/assesment', '192.168.8.182', '2018-01-02 06:07:25', '2018-01-02 06:07:25'),
(843, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 06:07:28', '2018-01-02 06:07:28'),
(844, 1, 'http://vitals.com/header', '192.168.8.182', '2018-01-02 06:07:38', '2018-01-02 06:07:38'),
(845, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 06:07:38', '2018-01-02 06:07:38'),
(846, 1, 'http://vitals.com/question/2', '192.168.8.182', '2018-01-02 06:07:51', '2018-01-02 06:07:51'),
(847, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 06:07:51', '2018-01-02 06:07:51'),
(848, 1, 'http://vitals.com/question-edit/46', '192.168.8.182', '2018-01-02 06:08:39', '2018-01-02 06:08:39'),
(849, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 06:08:48', '2018-01-02 06:08:48'),
(850, 1, 'http://vitals.com/question-edit/46', '192.168.8.182', '2018-01-02 06:08:51', '2018-01-02 06:08:51'),
(851, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 06:09:04', '2018-01-02 06:09:04'),
(852, 1, 'http://vitals.com/question-edit/46', '192.168.8.182', '2018-01-02 06:09:06', '2018-01-02 06:09:06'),
(853, 1, 'http://vitals.com/edit/assesment/2', '192.168.8.182', '2018-01-02 06:09:24', '2018-01-02 06:09:24'),
(854, 1, 'http://vitals.com/question-edit/46', '192.168.8.182', '2018-01-02 06:09:26', '2018-01-02 06:09:26');

-- --------------------------------------------------------

--
-- Table structure for table `user_product`
--

CREATE TABLE `user_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `toggle` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_product`
--

INSERT INTO `user_product` (`id`, `uid`, `module_id`, `toggle`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, '2017-12-30 03:14:28', '2017-12-30 03:14:28'),
(2, 1, 2, 0, '2017-12-30 03:14:28', '2017-12-30 03:14:28'),
(3, 1, 5, 0, '2017-12-30 03:14:28', '2017-12-30 03:14:28'),
(4, 1, 6, 0, '2017-12-30 03:14:28', '2017-12-30 03:14:28'),
(9, 3, 1, 0, '2017-12-30 03:15:05', '2017-12-30 03:15:05'),
(10, 3, 2, 0, '2017-12-30 03:15:05', '2017-12-30 03:15:05'),
(11, 3, 5, 0, '2017-12-30 03:15:05', '2017-12-30 03:15:05'),
(12, 3, 6, 0, '2017-12-30 03:15:05', '2017-12-30 03:15:05'),
(13, 4, 1, 0, '2017-12-30 03:15:28', '2017-12-30 03:15:28'),
(14, 4, 2, 0, '2017-12-30 03:15:28', '2017-12-30 03:15:28'),
(15, 4, 5, 0, '2017-12-30 03:15:28', '2017-12-30 03:15:28'),
(16, 4, 6, 0, '2017-12-30 03:15:28', '2017-12-30 03:15:28'),
(17, 2, 1, 0, '2017-12-30 03:19:33', '2017-12-30 03:19:33'),
(18, 2, 2, 1, '2017-12-30 03:19:33', '2017-12-30 03:19:33'),
(19, 2, 5, 1, '2017-12-30 03:19:33', '2017-12-30 03:19:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Assessment`
--
ALTER TABLE `Assessment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Header`
--
ALTER TABLE `Header`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `Questions`
--
ALTER TABLE `Questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions_option`
--
ALTER TABLE `questions_option`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users_activity`
--
ALTER TABLE `users_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_product`
--
ALTER TABLE `user_product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Assessment`
--
ALTER TABLE `Assessment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Header`
--
ALTER TABLE `Header`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `Questions`
--
ALTER TABLE `Questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `questions_option`
--
ALTER TABLE `questions_option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users_activity`
--
ALTER TABLE `users_activity`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=855;
--
-- AUTO_INCREMENT for table `user_product`
--
ALTER TABLE `user_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
