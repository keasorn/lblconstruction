-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2021 at 05:59 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lbl_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `background` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `over_cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `discover`, `cover`, `background`, `description`, `created_by`, `created_at`, `updated_at`, `over_cover`) VALUES
(1, 'About Us', '/uploading/files/discover.png', '/uploading/files/cover.gif', '/uploading/files/background.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 1, NULL, '2021-06-07 23:09:46', '/uploading/files/over_cover.gif');

-- --------------------------------------------------------

--
-- Table structure for table `archives`
--

CREATE TABLE `archives` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `archives`
--

INSERT INTO `archives` (`id`, `title`, `description`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'SUCCESS IN ALL SECTORS OF THE CONSTRUCTION FIELDS', 'As a construction leader, LBL meets the clients\' needs from concept to turnkey solutions on a wide-ranging array of building requirements. These include large-scale projects such as embassies, luxury hotels, modern office structures, prestigius villas, expansive humanitarian projects as well as commercial buidings and towers across Cambodia and beyond.\r\n\r\nMoving onward, LBL will continue to provide excellence in our service and top quality results for an ever-demanding construction sector, as it pursues its expansion in Cambodia and Southeast Asia.', 1, NULL, '2021-05-23 08:59:52');

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `award_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `awards`
--

INSERT INTO `awards` (`id`, `title`, `description`, `logo`, `order`, `created_by`, `created_at`, `updated_at`, `award_type`) VALUES
(1, 'Excellence Prize', 'Cambodian Chamber of commerce - 2012', '/uploading/files/60a86191085b0.jpg', 1, 1, '2021-05-21 18:30:24', '2021-06-03 00:44:58', 1),
(4, 'Excellence Prize', 'Cambodian Chamber of commerce - 2012', '/uploading/files/60a861afe1742.jpg', 2, 1, '2021-05-21 18:43:11', '2021-05-21 18:43:11', 0),
(5, 'Excellence Prize', 'Cambodian Chamber of commerce - 2012', '/uploading/files/60a86217b9628.jpg', 3, 1, '2021-05-21 18:44:55', '2021-06-03 00:45:11', 1),
(6, 'Excellence Prize', 'Cambodian Chamber of commerce - 2012', '/uploading/files/60a8623af32ef.jpg', 4, 1, '2021-05-21 18:45:31', '2021-05-21 18:45:31', 0),
(7, 'Excellence Prize', 'wqwqewq', '/uploading/files/60b888ac695cc.png', 23, 1, '2021-06-03 00:45:48', '2021-06-03 00:46:05', 0);

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `schedule` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `date_post` date NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`id`, `position`, `schedule`, `location`, `status`, `order`, `date_post`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'CONTRACT MANAGER', 'Full-time', 'Phnom Penh, Cambodia', 'Disable', 1, '2021-05-13', 1, '2021-05-21 23:38:31', '2021-05-22 08:59:00'),
(2, 'CONTRACT MANAGER', 'Full-time', 'Phnom Penh, Cambodia', 'Enable', 3, '2021-05-06', 1, '2021-05-21 23:39:56', '2021-05-22 09:09:11'),
(3, 'CONTRACT MANAGER', 'Full-time', 'Phnom Penh, Cambodia', 'Enable', 2, '2021-05-12', 1, '2021-05-21 23:41:33', '2021-05-22 08:05:25'),
(4, 'CONTRACT MANAGER', 'Part-Time', 'Phnom Penh, Cambodia', 'Enable', 1, '2021-05-21', 1, '2021-05-22 08:59:54', '2021-05-22 09:08:48'),
(5, 'CONTRACT MANAGER', 'Full-time', 'Phnom Penh, Cambodia', 'Enable', 3, '2021-03-11', 1, '2021-05-22 09:09:39', '2021-05-22 09:09:39'),
(6, 'CONTRACT MANAGER', 'Full-time', 'CONTRACT MANAGER', 'Enable', 9, '2021-06-17', 1, '2021-05-31 23:02:27', '2021-05-31 23:02:27');

-- --------------------------------------------------------

--
-- Table structure for table `desing_builds`
--

CREATE TABLE `desing_builds` (
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `design_bg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `build_bg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `design_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `design_des` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `build_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `build_des` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `design_build_bg` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id` int(11) NOT NULL,
  `journey` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `desing_builds`
--

INSERT INTO `desing_builds` (`title`, `design_bg`, `build_bg`, `design_title`, `design_des`, `build_title`, `build_des`, `created_by`, `created_at`, `updated_at`, `design_build_bg`, `id`, `journey`) VALUES
('Design & Build', '/uploading/files/design_bg.mp4', '/uploading/files/build_bg.mp4', 'DESIGN & BUILD', 'Comprehensive solutions based on the close and continuous cooperation between the client and our team. Whether the requested work is a basic conceptual design, a fully detailed design or the entire delivery of the project, LBL uses its internal resources from start to finish. The design and build approach thus gives our clients a single point of contact of any project.', 'BUILD', 'The heart of each project is its construction.\r\nWith our technical expertise and experiences we conduct the operations with our professional teams, our special equipment and the management of resources to deliver creative and cost-efficient solutions that are fully compliant with the specific conditions of each project.', 1, NULL, '2021-05-28 02:58:17', '/uploading/files/design_build_bg.png', 1, '\"A Journey to Cambodia 3.0\"');

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `headers`
--

CREATE TABLE `headers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `background_pc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `background_mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `display_title` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `headers`
--

INSERT INTO `headers` (`id`, `title`, `description`, `facebook`, `instagram`, `linkin`, `logo`, `background_pc`, `background_mobile`, `created_by`, `created_at`, `updated_at`, `display_title`) VALUES
(1, 'A Construction Pioneer', 'Read LBL\'S Company Profile', 'https://www.facebook.com', 'http://instagram.com/', 'http://linkedin.com/', '/uploading/files/logo.svg', '/uploading/files/background_pc.mp4', '/uploading/files/background_mobile.jpg', 1, '2021-05-06 23:10:20', '2021-06-04 00:31:24', 0);

-- --------------------------------------------------------

--
-- Table structure for table `labels`
--

CREATE TABLE `labels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slogan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `home` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_us` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `design` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recommend` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `us` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `career` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `award` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `copyrights` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `labels`
--

INSERT INTO `labels` (`id`, `slogan`, `contact`, `home`, `about_us`, `design`, `project`, `recommend`, `us`, `career`, `award`, `copyrights`, `created_by`, `created_at`, `updated_at`) VALUES
(2, 'A Contruction, Architecture, Refurbishment, Public work, Engineering and Development company in Cambodia.', '43 Sihanouk boulevard, \r\nPhnom Penh BP 609\r\n(855) 23 215 296\r\nSales: sales@lbl-group.com\r\nCareers: jobs@lbl-group.com\r\nSuppliers: purchasing@lbl-group.com', 'Home', 'About Us', 'Design & Build', 'Projects', 'They Recommend', 'Us', 'Careers', 'Awards & Media', 'sdfdsCopyrights © 2020 LBL International - All rights reserved', 1, NULL, '2021-05-28 02:13:21');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  `order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`, `order`) VALUES
(25, '2014_10_12_000000_create_users_table', 1, 0),
(26, '2014_10_12_100000_create_password_resets_table', 1, 0),
(27, '2019_08_19_000000_create_failed_jobs_table', 1, 0),
(28, '2021_05_04_143157_create_traffic_table', 1, 0),
(29, '2021_05_05_143056_create_tasks_table', 1, 0),
(31, '2021_05_07_023434_create_section_pages_table', 2, 0),
(32, '2021_05_07_060039_create_headers_table', 3, 0),
(34, '2021_05_14_144114_create_teams_table', 4, 0),
(35, '2021_05_07_060039_create_abouts_table', 5, 0),
(36, '2021_05_14_144114_create_recommends_table', 6, 0),
(41, '2021_05_19_145517_create_awards_table', 9, 0),
(46, '2021_05_19_145134_create_careers_table', 10, 0),
(47, '2021_05_19_145904_create_labels_table', 10, 0),
(49, '2021_05_15_132124_create_desing_builds_table', 11, 0),
(52, '2021_05_23_115119_create_projects_table', 12, 0),
(54, '2021_05_23_132045_create_project_images_table', 13, 0);

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
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `image`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'HOTEL & RESORTS', '/uploading/files/60b4b0938682d.png', 1, NULL, '2021-05-31 02:46:59'),
(2, 'INDUSTRIAL', '/uploading/files/60aa70757e332.png', 1, NULL, '2021-05-23 08:10:45'),
(3, 'EMBASSIES', '/uploading/files/60aa7548c1253.png', 1, NULL, '2021-05-23 08:31:20'),
(4, 'SCHOOLS & HOSPITALS', '/uploading/files/60b4b2d7e48ec.png', 1, NULL, '2021-05-31 02:56:39'),
(5, 'RESIDENTAIL', '/uploading/files/60b4af4138ef9.png', 1, NULL, '2021-05-31 02:41:21'),
(6, 'COMMERCIALS', '/uploading/files/60b4b2195e537.png', 1, NULL, '2021-05-31 02:53:29'),
(7, 'OFFICES', '/uploading/files/60aa71a5d9c5b.png', 1, NULL, '2021-05-23 08:15:49'),
(8, 'INSTITUTIONS', '/uploading/files/60aa71b7cd185.png', 1, NULL, '2021-05-23 08:16:07');

-- --------------------------------------------------------

--
-- Table structure for table `project_images`
--

CREATE TABLE `project_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project` bigint(20) UNSIGNED NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_images`
--

INSERT INTO `project_images` (`id`, `image`, `project`, `created_by`, `created_at`, `updated_at`, `order`) VALUES
(1, '/uploading/files/60aa6eac364e7.png', 1, 1, '2021-05-23 08:02:23', '2021-05-23 08:03:08', 1),
(3, '/uploading/files/60aa733bedc85.jpg', 1, 1, '2021-05-23 08:22:35', '2021-05-23 08:22:35', 2),
(4, '/uploading/files/60aa852e646db.png', 2, 1, '2021-05-23 09:39:10', '2021-05-23 09:39:10', 1),
(5, '/uploading/files/60b8956fec7d2.png', 7, 1, '2021-06-03 01:40:15', '2021-06-03 01:40:15', 2),
(6, '/uploading/files/60b8957e129d4.png', 7, 1, '2021-06-03 01:40:30', '2021-06-03 01:40:30', 3),
(7, '/uploading/files/60b8958b31097.png', 7, 1, '2021-06-03 01:40:43', '2021-06-03 01:40:43', 4),
(8, '/uploading/files/60b9fe9076550.png', 2, 1, '2021-06-04 03:21:04', '2021-06-04 03:21:04', 3);

-- --------------------------------------------------------

--
-- Table structure for table `recommends`
--

CREATE TABLE `recommends` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recommends`
--

INSERT INTO `recommends` (`id`, `title`, `description`, `logo`, `order`, `created_by`, `created_at`, `updated_at`) VALUES
(6, 'Denis Blosse - Chief Technical Officer', '\"High level quality standard as Airport is expecting. All projects completed on time and in budget with good quality and no injuries\"', '/uploading/files/60b0c3b9961d6.png', 1, 1, '2021-05-15 07:08:57', '2021-05-28 03:19:37'),
(21, 'cambodia Airport', 'cambodia Airport', '/uploading/files/60b0c3d1cf21e.png', 2, 1, '2021-05-28 03:20:01', '2021-05-28 03:20:01'),
(22, 'dfs', 'dfs', '/uploading/files/60b0c7f4efcf4.png', 3, 1, '2021-05-28 03:37:40', '2021-05-28 03:37:40'),
(23, 'EU', 'eu', '/uploading/files/60b0c80f9207f.png', 4, 1, '2021-05-28 03:38:07', '2021-05-28 03:38:07'),
(24, 'lambo', 'lambo', '/uploading/files/60b0c82734aa9.png', 5, 1, '2021-05-28 03:38:31', '2021-05-28 03:38:31'),
(25, 'mc', 'mc', '/uploading/files/60b0c867ca7d5.png', 6, 1, '2021-05-28 03:39:35', '2021-05-28 03:39:35'),
(26, 'md', 'md', '/uploading/files/60b0c87f31328.png', 7, 1, '2021-05-28 03:39:59', '2021-05-28 03:39:59');

-- --------------------------------------------------------

--
-- Table structure for table `section_pages`
--

CREATE TABLE `section_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `section_pages`
--

INSERT INTO `section_pages` (`id`, `title`, `description`, `file`, `created_by`, `created_at`, `updated_at`) VALUES
(6, 'company_profile', '', '/uploading/files/company_profile.pdf', 1, '2021-05-06 21:47:58', '2021-05-06 21:47:58'),
(7, 'company_profile', '', '/uploading/files/company_profile.pdf', 1, '2021-05-06 22:07:29', '2021-05-06 22:07:29'),
(8, 'company_profile', '', '/uploading/files/company_profile.pdf', 1, '2021-05-06 22:09:08', '2021-05-06 22:09:08'),
(9, 'company_profile', '', '/uploading/files/company_profile.pdf', 1, '2021-06-03 21:54:29', '2021-06-03 21:54:29'),
(10, 'company_profile', '', '/uploading/files/company_profile.pdf', 1, '2021-06-03 21:54:48', '2021-06-03 21:54:48');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `response_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `progress` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `complete_date` date NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `description`, `response_by`, `start_date`, `progress`, `order`, `complete_date`, `created_by`, `created_at`, `updated_at`) VALUES
(2, 'Company Profile Section', 'sdfjdls', 'Mr. Kea', '2021-05-02', 100, 1, '2021-05-05', 1, '2021-05-05 10:26:08', '2021-05-05 21:52:50'),
(3, 'Heading Section', 'Section', 'Mr. Kea', '2021-05-02', 100, 2, '2021-05-07', 1, '2021-05-05 10:29:40', '2021-05-07 00:31:38'),
(4, 'Team Section', 'Team Section', 'Mr. Kea', '2021-05-02', 100, 4, '2021-05-13', 1, '2021-05-05 10:30:35', '2021-05-14 07:31:41'),
(5, 'Design and build Section', 'Design and build Section', 'Mr. Kea', '2021-05-10', 100, 5, '2021-05-14', 1, '2021-05-05 11:18:23', '2021-05-14 07:32:03'),
(6, 'Works achieve Section', 'Works achieve Section', 'Mr. Kea', '2021-05-10', 24, 6, '2021-05-14', 1, '2021-05-05 11:18:59', '2021-05-14 07:32:29'),
(7, 'Company who trusted Section', 'Company who trusted Section', 'Mr. Kea', '2021-02-17', 100, 8, '2021-05-21', 1, '2021-05-05 11:19:32', '2021-05-21 18:48:54'),
(8, 'Careers Section', 'Careers Section', 'Mr. Kea', '2021-02-17', 100, 7, '2021-05-21', 1, '2021-05-05 11:20:05', '2021-05-22 18:14:34'),
(9, 'Awards and media section', 'Awards and media section', 'Mr. Kea', '2021-02-12', 100, 9, '2021-05-21', 1, '2021-05-05 11:21:08', '2021-05-21 18:48:30'),
(10, 'Complete testing Phase', 'Complete testing Phase', 'Mr. Kea', '2021-05-24', 58, 10, '2021-05-28', 1, '2021-05-05 11:22:04', '2021-05-14 07:33:14'),
(12, 'About Section', 'About Section', 'Mr. Kea', '2021-05-02', 100, 3, '2021-05-12', 1, '2021-05-05 21:52:21', '2021-05-14 07:31:22');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `first_name`, `last_name`, `position`, `order`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Cecllo Lyslne', 'Khao-Levasseur', 'Chairwoman', 1, 1, '2021-05-14 08:33:14', '2021-05-14 08:33:14'),
(2, 'Stephane', 'Blgorre', 'Managing Director', 2, 1, '2021-05-14 08:36:28', '2021-05-14 08:36:28'),
(3, 'Jerome', 'Luclani-Khao', 'Deputy Managing Director', 3, 1, '2021-05-14 08:37:11', '2021-05-14 08:37:11'),
(4, 'Sar', 'chamroeun', 'CTO', 4, 1, '2021-05-14 08:37:45', '2021-05-14 08:37:45'),
(5, 'Isabclle', 'Leroux', 'CFO', 5, 1, '2021-05-14 08:38:18', '2021-06-08 00:17:25'),
(6, 'Cecllo Lyslne', 'Leroux', 'CONTRACT MANAGER', 6, 1, '2021-06-08 00:17:15', '2021-06-08 00:17:15'),
(7, 'Cecllo Lyslne', 'Khao-Levasseur', 'CONTRACT MANAGER', 7, 1, '2021-06-08 00:18:51', '2021-06-08 00:18:51'),
(8, 'Cecllo Lyslne', 'Blgorre', 'CONTRACT MANAGER', 8, 1, '2021-06-08 00:19:07', '2021-06-08 00:19:07');

-- --------------------------------------------------------

--
-- Table structure for table `traffic`
--

CREATE TABLE `traffic` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iso_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `continent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timezone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `traffic`
--

INSERT INTO `traffic` (`id`, `ip`, `iso_code`, `country`, `city`, `state_name`, `continent`, `currency`, `state`, `timezone`, `default`, `postal_code`, `lat`, `lon`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-05 19:14:56', '2021-05-05 19:14:56'),
(2, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-05 19:47:34', '2021-05-05 19:47:34'),
(3, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-05 21:42:09', '2021-05-05 21:42:09'),
(4, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-05 21:51:35', '2021-05-05 21:51:35'),
(5, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-06 19:18:45', '2021-05-06 19:18:45'),
(6, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-06 21:42:52', '2021-05-06 21:42:52'),
(7, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-06 21:48:08', '2021-05-06 21:48:08'),
(8, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-06 21:49:01', '2021-05-06 21:49:01'),
(9, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-06 21:49:32', '2021-05-06 21:49:32'),
(10, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-06 21:50:06', '2021-05-06 21:50:06'),
(11, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-06 21:50:11', '2021-05-06 21:50:11'),
(12, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-06 21:51:05', '2021-05-06 21:51:05'),
(13, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-06 21:52:03', '2021-05-06 21:52:03'),
(14, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-06 21:52:34', '2021-05-06 21:52:34'),
(15, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-06 21:53:22', '2021-05-06 21:53:22'),
(16, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-06 22:09:47', '2021-05-06 22:09:47'),
(17, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-06 22:47:43', '2021-05-06 22:47:43'),
(18, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-06 22:50:12', '2021-05-06 22:50:12'),
(19, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-06 23:10:32', '2021-05-06 23:10:32'),
(20, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-06 23:24:08', '2021-05-06 23:24:08'),
(21, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-06 23:24:48', '2021-05-06 23:24:48'),
(22, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-06 23:49:29', '2021-05-06 23:49:29'),
(23, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-06 23:49:42', '2021-05-06 23:49:42'),
(24, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-06 23:49:49', '2021-05-06 23:49:49'),
(25, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-06 23:50:03', '2021-05-06 23:50:03'),
(26, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-06 23:50:11', '2021-05-06 23:50:11'),
(27, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-06 23:50:46', '2021-05-06 23:50:46'),
(28, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-06 23:51:03', '2021-05-06 23:51:03'),
(29, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-06 23:51:27', '2021-05-06 23:51:27'),
(30, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-06 23:51:32', '2021-05-06 23:51:32'),
(31, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-06 23:53:32', '2021-05-06 23:53:32'),
(32, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-06 23:54:29', '2021-05-06 23:54:29'),
(33, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-06 23:56:01', '2021-05-06 23:56:01'),
(34, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-06 23:58:10', '2021-05-06 23:58:10'),
(35, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-06 23:59:01', '2021-05-06 23:59:01'),
(36, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-06 23:59:53', '2021-05-06 23:59:53'),
(37, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-07 00:00:34', '2021-05-07 00:00:34'),
(38, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-07 00:02:58', '2021-05-07 00:02:58'),
(39, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-07 00:03:27', '2021-05-07 00:03:27'),
(40, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-07 00:05:07', '2021-05-07 00:05:07'),
(41, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-07 00:05:12', '2021-05-07 00:05:12'),
(42, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-07 00:06:20', '2021-05-07 00:06:20'),
(43, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-07 00:07:00', '2021-05-07 00:07:00'),
(44, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-07 00:08:52', '2021-05-07 00:08:52'),
(45, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-07 00:09:05', '2021-05-07 00:09:05'),
(46, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-07 00:10:12', '2021-05-07 00:10:12'),
(47, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-07 00:12:45', '2021-05-07 00:12:45'),
(48, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-07 00:13:39', '2021-05-07 00:13:39'),
(49, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-07 00:15:11', '2021-05-07 00:15:11'),
(50, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-07 00:16:56', '2021-05-07 00:16:56'),
(51, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-07 00:18:33', '2021-05-07 00:18:33'),
(52, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-07 00:20:23', '2021-05-07 00:20:23'),
(53, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-07 00:22:48', '2021-05-07 00:22:48'),
(54, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-07 00:25:07', '2021-05-07 00:25:07'),
(55, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-07 00:25:15', '2021-05-07 00:25:15'),
(56, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-07 00:25:25', '2021-05-07 00:25:25'),
(57, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-07 00:25:29', '2021-05-07 00:25:29'),
(58, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-07 00:27:01', '2021-05-07 00:27:01'),
(59, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-07 00:27:15', '2021-05-07 00:27:15'),
(60, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-07 00:27:44', '2021-05-07 00:27:44'),
(61, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-07 00:28:07', '2021-05-07 00:28:07'),
(62, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-07 00:28:31', '2021-05-07 00:28:31'),
(63, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-07 00:28:53', '2021-05-07 00:28:53'),
(64, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-07 00:29:20', '2021-05-07 00:29:20'),
(65, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-07 00:30:15', '2021-05-07 00:30:15'),
(66, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-07 00:30:24', '2021-05-07 00:30:24'),
(67, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-07 00:30:50', '2021-05-07 00:30:50'),
(68, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-07 00:31:02', '2021-05-07 00:31:02'),
(69, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-07 00:39:04', '2021-05-07 00:39:04'),
(70, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-07 00:56:55', '2021-05-07 00:56:55'),
(71, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-07 01:06:50', '2021-05-07 01:06:50'),
(72, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-07 01:07:26', '2021-05-07 01:07:26'),
(73, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-07 01:07:50', '2021-05-07 01:07:50'),
(74, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-07 01:08:25', '2021-05-07 01:08:25'),
(75, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-07 01:08:29', '2021-05-07 01:08:29'),
(76, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-07 01:09:05', '2021-05-07 01:09:05'),
(77, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-07 01:09:58', '2021-05-07 01:09:58'),
(78, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-07 01:10:04', '2021-05-07 01:10:04'),
(79, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-07 01:10:51', '2021-05-07 01:10:51'),
(80, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-07 01:11:00', '2021-05-07 01:11:00'),
(81, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-07 01:11:05', '2021-05-07 01:11:05'),
(82, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-07 01:11:10', '2021-05-07 01:11:10'),
(83, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-07 01:11:20', '2021-05-07 01:11:20'),
(84, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-07 01:11:28', '2021-05-07 01:11:28'),
(85, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-07 01:12:16', '2021-05-07 01:12:16'),
(86, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-07 01:53:25', '2021-05-07 01:53:25'),
(87, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-14 06:30:33', '2021-05-14 06:30:33'),
(88, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-14 06:35:27', '2021-05-14 06:35:27'),
(89, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-14 06:37:10', '2021-05-14 06:37:10'),
(90, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-14 06:37:13', '2021-05-14 06:37:13'),
(91, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-14 06:40:09', '2021-05-14 06:40:09'),
(92, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-14 06:40:29', '2021-05-14 06:40:29'),
(93, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-14 06:40:38', '2021-05-14 06:40:38'),
(94, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-14 06:40:53', '2021-05-14 06:40:53'),
(95, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-14 06:41:14', '2021-05-14 06:41:14'),
(96, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-14 06:46:26', '2021-05-14 06:46:26'),
(97, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-14 06:47:45', '2021-05-14 06:47:45'),
(98, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-14 06:47:52', '2021-05-14 06:47:52'),
(99, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-14 06:48:19', '2021-05-14 06:48:19'),
(100, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-14 06:49:51', '2021-05-14 06:49:51'),
(101, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-14 06:49:59', '2021-05-14 06:49:59'),
(102, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-14 06:50:16', '2021-05-14 06:50:16'),
(103, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-14 06:51:13', '2021-05-14 06:51:13'),
(104, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-14 06:51:18', '2021-05-14 06:51:18'),
(105, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-14 06:51:34', '2021-05-14 06:51:34'),
(106, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-14 06:52:44', '2021-05-14 06:52:44'),
(107, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-14 06:53:18', '2021-05-14 06:53:18'),
(108, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-14 06:54:58', '2021-05-14 06:54:58'),
(109, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-14 07:29:06', '2021-05-14 07:29:06'),
(110, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-14 07:29:28', '2021-05-14 07:29:28'),
(111, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-14 07:35:21', '2021-05-14 07:35:21'),
(112, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-14 08:17:22', '2021-05-14 08:17:22'),
(113, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-14 08:17:39', '2021-05-14 08:17:39'),
(114, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-14 08:17:53', '2021-05-14 08:17:53'),
(115, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-14 08:18:44', '2021-05-14 08:18:44'),
(116, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-14 08:19:40', '2021-05-14 08:19:40'),
(117, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-14 08:20:04', '2021-05-14 08:20:04'),
(118, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-14 08:22:06', '2021-05-14 08:22:06'),
(119, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-14 08:22:47', '2021-05-14 08:22:47'),
(120, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-14 08:28:25', '2021-05-14 08:28:25'),
(121, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-14 08:28:54', '2021-05-14 08:28:54'),
(122, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-14 08:33:49', '2021-05-14 08:33:49'),
(123, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-14 08:34:03', '2021-05-14 08:34:03'),
(124, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-14 08:34:51', '2021-05-14 08:34:51'),
(125, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-14 08:35:05', '2021-05-14 08:35:05'),
(126, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-14 08:38:24', '2021-05-14 08:38:24'),
(127, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-14 08:39:35', '2021-05-14 08:39:35'),
(128, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-14 08:40:03', '2021-05-14 08:40:03'),
(129, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-14 08:41:36', '2021-05-14 08:41:36'),
(130, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-14 08:58:19', '2021-05-14 08:58:19'),
(131, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-14 09:04:03', '2021-05-14 09:04:03'),
(132, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-14 09:04:29', '2021-05-14 09:04:29'),
(133, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-14 09:05:08', '2021-05-14 09:05:08'),
(134, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-14 09:05:29', '2021-05-14 09:05:29'),
(135, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-14 09:06:09', '2021-05-14 09:06:09'),
(136, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-14 09:06:35', '2021-05-14 09:06:35'),
(137, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-14 09:07:13', '2021-05-14 09:07:13'),
(138, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-14 09:07:35', '2021-05-14 09:07:35'),
(139, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-14 09:10:14', '2021-05-14 09:10:14'),
(140, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-14 09:11:39', '2021-05-14 09:11:39'),
(141, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-14 09:32:04', '2021-05-14 09:32:04'),
(142, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-15 06:17:18', '2021-05-15 06:17:18'),
(143, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-15 06:18:12', '2021-05-15 06:18:12'),
(144, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-15 06:18:17', '2021-05-15 06:18:17'),
(145, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-15 07:24:25', '2021-05-15 07:24:25'),
(146, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-15 07:25:07', '2021-05-15 07:25:07'),
(147, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-15 07:27:43', '2021-05-15 07:27:43'),
(148, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-15 07:28:48', '2021-05-15 07:28:48'),
(149, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-15 07:28:49', '2021-05-15 07:28:49'),
(150, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-15 07:31:18', '2021-05-15 07:31:18'),
(151, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-15 07:32:04', '2021-05-15 07:32:04'),
(152, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-15 07:34:15', '2021-05-15 07:34:15'),
(153, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-15 07:38:20', '2021-05-15 07:38:20'),
(154, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-15 07:40:23', '2021-05-15 07:40:23'),
(155, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-15 07:41:15', '2021-05-15 07:41:15'),
(156, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-15 07:42:57', '2021-05-15 07:42:57'),
(157, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-15 07:44:01', '2021-05-15 07:44:01'),
(158, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-15 07:44:58', '2021-05-15 07:44:58'),
(159, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-15 07:45:18', '2021-05-15 07:45:18'),
(160, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-15 07:45:50', '2021-05-15 07:45:50'),
(161, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-15 07:47:40', '2021-05-15 07:47:40'),
(162, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-15 07:48:31', '2021-05-15 07:48:31'),
(163, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-15 07:49:23', '2021-05-15 07:49:23'),
(164, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-15 07:50:41', '2021-05-15 07:50:41'),
(165, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-15 07:51:24', '2021-05-15 07:51:24'),
(166, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-15 07:52:27', '2021-05-15 07:52:27'),
(167, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-15 07:53:22', '2021-05-15 07:53:22'),
(168, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-19 08:00:10', '2021-05-19 08:00:10'),
(169, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-19 08:38:45', '2021-05-19 08:38:45'),
(170, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-19 08:41:40', '2021-05-19 08:41:40'),
(171, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-19 08:43:11', '2021-05-19 08:43:11'),
(172, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-19 08:44:27', '2021-05-19 08:44:27'),
(173, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-19 08:44:37', '2021-05-19 08:44:37'),
(174, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-19 08:46:31', '2021-05-19 08:46:31'),
(175, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-19 08:51:05', '2021-05-19 08:51:05'),
(176, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-21 06:27:17', '2021-05-21 06:27:17'),
(177, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-21 18:11:54', '2021-05-21 18:11:54'),
(178, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-21 18:19:12', '2021-05-21 18:19:12'),
(179, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-21 18:19:32', '2021-05-21 18:19:32'),
(180, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-21 18:20:29', '2021-05-21 18:20:29'),
(181, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-21 18:40:43', '2021-05-21 18:40:43'),
(182, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-21 18:41:34', '2021-05-21 18:41:34'),
(183, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-21 18:44:23', '2021-05-21 18:44:23'),
(184, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-21 18:45:00', '2021-05-21 18:45:00'),
(185, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-21 18:47:25', '2021-05-21 18:47:25'),
(186, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-21 23:57:39', '2021-05-21 23:57:39'),
(187, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-21 23:59:55', '2021-05-21 23:59:55'),
(188, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 00:07:53', '2021-05-22 00:07:53'),
(189, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 06:25:37', '2021-05-22 06:25:37'),
(190, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 06:26:44', '2021-05-22 06:26:44'),
(191, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 06:27:17', '2021-05-22 06:27:17'),
(192, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 06:28:00', '2021-05-22 06:28:00'),
(193, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 06:31:45', '2021-05-22 06:31:45'),
(194, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 06:38:03', '2021-05-22 06:38:03'),
(195, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 06:38:09', '2021-05-22 06:38:09'),
(196, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 06:38:11', '2021-05-22 06:38:11'),
(197, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 06:39:05', '2021-05-22 06:39:05'),
(198, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 06:51:17', '2021-05-22 06:51:17'),
(199, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 06:52:47', '2021-05-22 06:52:47'),
(200, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 06:52:57', '2021-05-22 06:52:57'),
(201, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 06:54:33', '2021-05-22 06:54:33'),
(202, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 06:56:06', '2021-05-22 06:56:06'),
(203, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 06:56:48', '2021-05-22 06:56:48'),
(204, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 06:57:55', '2021-05-22 06:57:55'),
(205, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 06:58:16', '2021-05-22 06:58:16'),
(206, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 06:59:22', '2021-05-22 06:59:22'),
(207, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 07:00:32', '2021-05-22 07:00:32'),
(208, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 07:01:43', '2021-05-22 07:01:43'),
(209, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 07:03:37', '2021-05-22 07:03:37'),
(210, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 07:04:05', '2021-05-22 07:04:05'),
(211, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 07:04:31', '2021-05-22 07:04:31'),
(212, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 07:05:31', '2021-05-22 07:05:31'),
(213, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 07:10:00', '2021-05-22 07:10:00'),
(214, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 07:11:23', '2021-05-22 07:11:23'),
(215, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 07:12:32', '2021-05-22 07:12:32'),
(216, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 07:13:36', '2021-05-22 07:13:36'),
(217, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 07:14:21', '2021-05-22 07:14:21'),
(218, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 07:14:46', '2021-05-22 07:14:46'),
(219, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 07:16:01', '2021-05-22 07:16:01'),
(220, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 07:24:33', '2021-05-22 07:24:33'),
(221, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 07:26:45', '2021-05-22 07:26:45'),
(222, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 07:28:50', '2021-05-22 07:28:50'),
(223, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 07:29:32', '2021-05-22 07:29:32'),
(224, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 07:30:39', '2021-05-22 07:30:39'),
(225, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 07:32:04', '2021-05-22 07:32:04'),
(226, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 07:34:51', '2021-05-22 07:34:51'),
(227, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 07:35:20', '2021-05-22 07:35:20'),
(228, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 07:37:16', '2021-05-22 07:37:16'),
(229, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 07:38:31', '2021-05-22 07:38:31'),
(230, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 07:45:17', '2021-05-22 07:45:17'),
(231, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 07:45:41', '2021-05-22 07:45:41'),
(232, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 07:47:26', '2021-05-22 07:47:26'),
(233, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 07:49:58', '2021-05-22 07:49:58'),
(234, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 07:50:19', '2021-05-22 07:50:19'),
(235, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 07:50:39', '2021-05-22 07:50:39'),
(236, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 07:58:48', '2021-05-22 07:58:48'),
(237, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 07:59:21', '2021-05-22 07:59:21'),
(238, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 07:59:49', '2021-05-22 07:59:49'),
(239, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 08:00:59', '2021-05-22 08:00:59'),
(240, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 08:02:49', '2021-05-22 08:02:49'),
(241, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 08:03:24', '2021-05-22 08:03:24'),
(242, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 08:03:44', '2021-05-22 08:03:44'),
(243, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 08:04:00', '2021-05-22 08:04:00'),
(244, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 08:04:25', '2021-05-22 08:04:25'),
(245, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 08:05:06', '2021-05-22 08:05:06'),
(246, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 08:05:40', '2021-05-22 08:05:40'),
(247, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 08:07:57', '2021-05-22 08:07:57'),
(248, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 08:10:12', '2021-05-22 08:10:12'),
(249, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 08:14:22', '2021-05-22 08:14:22'),
(250, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 08:15:15', '2021-05-22 08:15:15'),
(251, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 08:19:33', '2021-05-22 08:19:33'),
(252, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 08:20:08', '2021-05-22 08:20:08'),
(253, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 08:23:28', '2021-05-22 08:23:28'),
(254, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 08:23:54', '2021-05-22 08:23:54'),
(255, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 08:25:09', '2021-05-22 08:25:09'),
(256, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 08:26:13', '2021-05-22 08:26:13'),
(257, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 08:29:55', '2021-05-22 08:29:55'),
(258, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 08:30:24', '2021-05-22 08:30:24'),
(259, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 08:30:46', '2021-05-22 08:30:46'),
(260, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 08:31:11', '2021-05-22 08:31:11'),
(261, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 08:32:08', '2021-05-22 08:32:08'),
(262, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 08:33:23', '2021-05-22 08:33:23'),
(263, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 08:33:48', '2021-05-22 08:33:48'),
(264, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 08:34:29', '2021-05-22 08:34:29'),
(265, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 08:35:36', '2021-05-22 08:35:36'),
(266, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 08:35:54', '2021-05-22 08:35:54');
INSERT INTO `traffic` (`id`, `ip`, `iso_code`, `country`, `city`, `state_name`, `continent`, `currency`, `state`, `timezone`, `default`, `postal_code`, `lat`, `lon`, `created_at`, `updated_at`) VALUES
(267, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 08:36:19', '2021-05-22 08:36:19'),
(268, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 08:37:53', '2021-05-22 08:37:53'),
(269, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 08:39:24', '2021-05-22 08:39:24'),
(270, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 08:40:18', '2021-05-22 08:40:18'),
(271, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 08:41:53', '2021-05-22 08:41:53'),
(272, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 08:43:01', '2021-05-22 08:43:01'),
(273, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 08:43:05', '2021-05-22 08:43:05'),
(274, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 08:44:23', '2021-05-22 08:44:23'),
(275, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 08:46:28', '2021-05-22 08:46:28'),
(276, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 08:47:41', '2021-05-22 08:47:41'),
(277, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 08:47:56', '2021-05-22 08:47:56'),
(278, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 08:48:37', '2021-05-22 08:48:37'),
(279, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 08:49:27', '2021-05-22 08:49:27'),
(280, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 08:51:34', '2021-05-22 08:51:34'),
(281, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 08:52:33', '2021-05-22 08:52:33'),
(282, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 08:54:10', '2021-05-22 08:54:10'),
(283, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 08:55:04', '2021-05-22 08:55:04'),
(284, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 08:57:20', '2021-05-22 08:57:20'),
(285, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 08:59:05', '2021-05-22 08:59:05'),
(286, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 08:59:59', '2021-05-22 08:59:59'),
(287, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 09:03:22', '2021-05-22 09:03:22'),
(288, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 09:04:27', '2021-05-22 09:04:27'),
(289, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 09:05:32', '2021-05-22 09:05:32'),
(290, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 09:06:47', '2021-05-22 09:06:47'),
(291, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 09:08:21', '2021-05-22 09:08:21'),
(292, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 09:08:51', '2021-05-22 09:08:51'),
(293, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 09:09:20', '2021-05-22 09:09:20'),
(294, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 09:09:42', '2021-05-22 09:09:42'),
(295, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 09:28:14', '2021-05-22 09:28:14'),
(296, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 09:47:31', '2021-05-22 09:47:31'),
(297, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 18:17:12', '2021-05-22 18:17:12'),
(298, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 22:32:38', '2021-05-22 22:32:38'),
(299, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 23:06:56', '2021-05-22 23:06:56'),
(300, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 23:10:54', '2021-05-22 23:10:54'),
(301, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 23:12:00', '2021-05-22 23:12:00'),
(302, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 23:12:32', '2021-05-22 23:12:32'),
(303, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 23:13:57', '2021-05-22 23:13:57'),
(304, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 23:15:08', '2021-05-22 23:15:08'),
(305, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 23:16:28', '2021-05-22 23:16:28'),
(306, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 23:16:49', '2021-05-22 23:16:49'),
(307, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 23:17:21', '2021-05-22 23:17:21'),
(308, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 23:17:30', '2021-05-22 23:17:30'),
(309, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 23:18:28', '2021-05-22 23:18:28'),
(310, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 23:18:30', '2021-05-22 23:18:30'),
(311, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 23:18:47', '2021-05-22 23:18:47'),
(312, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 23:18:49', '2021-05-22 23:18:49'),
(313, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 23:19:19', '2021-05-22 23:19:19'),
(314, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 23:19:19', '2021-05-22 23:19:19'),
(315, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 23:20:49', '2021-05-22 23:20:49'),
(316, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 23:23:28', '2021-05-22 23:23:28'),
(317, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 23:28:07', '2021-05-22 23:28:07'),
(318, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 23:28:52', '2021-05-22 23:28:52'),
(319, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 23:38:25', '2021-05-22 23:38:25'),
(320, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 23:39:00', '2021-05-22 23:39:00'),
(321, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 23:39:59', '2021-05-22 23:39:59'),
(322, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 23:52:06', '2021-05-22 23:52:06'),
(323, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 23:53:37', '2021-05-22 23:53:37'),
(324, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 23:58:25', '2021-05-22 23:58:25'),
(325, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-22 23:59:16', '2021-05-22 23:59:16'),
(326, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 02:48:19', '2021-05-23 02:48:19'),
(327, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 02:58:44', '2021-05-23 02:58:44'),
(328, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 02:59:10', '2021-05-23 02:59:10'),
(329, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 04:40:52', '2021-05-23 04:40:52'),
(330, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 07:37:01', '2021-05-23 07:37:01'),
(331, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 07:37:43', '2021-05-23 07:37:43'),
(332, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 07:39:17', '2021-05-23 07:39:17'),
(333, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 07:39:53', '2021-05-23 07:39:53'),
(334, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 07:41:18', '2021-05-23 07:41:18'),
(335, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 07:42:21', '2021-05-23 07:42:21'),
(336, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 07:42:52', '2021-05-23 07:42:52'),
(337, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 07:43:41', '2021-05-23 07:43:41'),
(338, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 07:43:51', '2021-05-23 07:43:51'),
(339, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 07:46:08', '2021-05-23 07:46:08'),
(340, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 08:06:26', '2021-05-23 08:06:26'),
(341, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 08:07:20', '2021-05-23 08:07:20'),
(342, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 08:08:02', '2021-05-23 08:08:02'),
(343, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 08:09:34', '2021-05-23 08:09:34'),
(344, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 08:12:16', '2021-05-23 08:12:16'),
(345, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 08:14:26', '2021-05-23 08:14:26'),
(346, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 08:16:12', '2021-05-23 08:16:12'),
(347, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 08:17:32', '2021-05-23 08:17:32'),
(348, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 08:22:04', '2021-05-23 08:22:04'),
(349, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 08:22:38', '2021-05-23 08:22:38'),
(350, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 08:23:48', '2021-05-23 08:23:48'),
(351, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 08:25:24', '2021-05-23 08:25:24'),
(352, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 08:27:56', '2021-05-23 08:27:56'),
(353, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 08:28:28', '2021-05-23 08:28:28'),
(354, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 08:31:24', '2021-05-23 08:31:24'),
(355, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 08:34:20', '2021-05-23 08:34:20'),
(356, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 09:01:01', '2021-05-23 09:01:01'),
(357, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 09:01:32', '2021-05-23 09:01:32'),
(358, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 09:19:03', '2021-05-23 09:19:03'),
(359, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 09:31:26', '2021-05-23 09:31:26'),
(360, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 09:38:31', '2021-05-23 09:38:31'),
(361, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 09:39:14', '2021-05-23 09:39:14'),
(362, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 09:41:43', '2021-05-23 09:41:43'),
(363, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 09:43:29', '2021-05-23 09:43:29'),
(364, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 09:51:53', '2021-05-23 09:51:53'),
(365, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 09:53:03', '2021-05-23 09:53:03'),
(366, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 09:53:37', '2021-05-23 09:53:37'),
(367, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 09:55:54', '2021-05-23 09:55:54'),
(368, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 10:02:55', '2021-05-23 10:02:55'),
(369, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 10:05:08', '2021-05-23 10:05:08'),
(370, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 10:07:56', '2021-05-23 10:07:56'),
(371, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 10:08:20', '2021-05-23 10:08:20'),
(372, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 10:11:50', '2021-05-23 10:11:50'),
(373, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 10:14:06', '2021-05-23 10:14:06'),
(374, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 10:15:17', '2021-05-23 10:15:17'),
(375, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 10:15:56', '2021-05-23 10:15:56'),
(376, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 10:16:44', '2021-05-23 10:16:44'),
(377, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 10:16:45', '2021-05-23 10:16:45'),
(378, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 10:20:50', '2021-05-23 10:20:50'),
(379, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 10:22:24', '2021-05-23 10:22:24'),
(380, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 10:22:45', '2021-05-23 10:22:45'),
(381, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 10:22:47', '2021-05-23 10:22:47'),
(382, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 10:23:42', '2021-05-23 10:23:42'),
(383, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 10:24:11', '2021-05-23 10:24:11'),
(384, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 10:26:51', '2021-05-23 10:26:51'),
(385, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 10:27:58', '2021-05-23 10:27:58'),
(386, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 10:28:26', '2021-05-23 10:28:26'),
(387, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 10:30:22', '2021-05-23 10:30:22'),
(388, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 10:33:39', '2021-05-23 10:33:39'),
(389, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 10:40:07', '2021-05-23 10:40:07'),
(390, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 10:40:32', '2021-05-23 10:40:32'),
(391, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-23 10:40:59', '2021-05-23 10:40:59'),
(392, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-24 21:10:03', '2021-05-24 21:10:03'),
(393, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-24 21:54:47', '2021-05-24 21:54:47'),
(394, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-24 21:56:13', '2021-05-24 21:56:13'),
(395, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-24 21:56:51', '2021-05-24 21:56:51'),
(396, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-24 22:00:10', '2021-05-24 22:00:10'),
(397, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-24 22:00:22', '2021-05-24 22:00:22'),
(398, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-24 22:00:38', '2021-05-24 22:00:38'),
(399, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-24 22:01:01', '2021-05-24 22:01:01'),
(400, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-24 22:01:16', '2021-05-24 22:01:16'),
(401, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-24 22:01:37', '2021-05-24 22:01:37'),
(402, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-24 22:01:49', '2021-05-24 22:01:49'),
(403, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-24 22:02:01', '2021-05-24 22:02:01'),
(404, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-24 22:02:16', '2021-05-24 22:02:16'),
(405, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-24 22:02:28', '2021-05-24 22:02:28'),
(406, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 00:40:10', '2021-05-28 00:40:10'),
(407, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 00:44:02', '2021-05-28 00:44:02'),
(408, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 00:44:44', '2021-05-28 00:44:44'),
(409, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 00:45:03', '2021-05-28 00:45:03'),
(410, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 00:45:46', '2021-05-28 00:45:46'),
(411, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 00:46:19', '2021-05-28 00:46:19'),
(412, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 00:46:29', '2021-05-28 00:46:29'),
(413, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 00:46:50', '2021-05-28 00:46:50'),
(414, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 00:47:21', '2021-05-28 00:47:21'),
(415, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 00:49:57', '2021-05-28 00:49:57'),
(416, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 00:52:22', '2021-05-28 00:52:22'),
(417, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 00:52:31', '2021-05-28 00:52:31'),
(418, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 01:01:54', '2021-05-28 01:01:54'),
(419, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 01:05:53', '2021-05-28 01:05:53'),
(420, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 01:06:27', '2021-05-28 01:06:27'),
(421, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 01:06:50', '2021-05-28 01:06:50'),
(422, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 01:07:50', '2021-05-28 01:07:50'),
(423, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 01:08:15', '2021-05-28 01:08:15'),
(424, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 01:09:03', '2021-05-28 01:09:03'),
(425, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 01:09:23', '2021-05-28 01:09:23'),
(426, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 01:10:09', '2021-05-28 01:10:09'),
(427, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 01:10:48', '2021-05-28 01:10:48'),
(428, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 01:11:52', '2021-05-28 01:11:52'),
(429, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 01:12:17', '2021-05-28 01:12:17'),
(430, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 01:12:34', '2021-05-28 01:12:34'),
(431, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 01:13:03', '2021-05-28 01:13:03'),
(432, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 01:13:46', '2021-05-28 01:13:46'),
(433, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 01:14:58', '2021-05-28 01:14:58'),
(434, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 01:17:04', '2021-05-28 01:17:04'),
(435, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 01:18:35', '2021-05-28 01:18:35'),
(436, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 01:19:16', '2021-05-28 01:19:16'),
(437, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 01:20:14', '2021-05-28 01:20:14'),
(438, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 01:21:37', '2021-05-28 01:21:37'),
(439, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 01:22:19', '2021-05-28 01:22:19'),
(440, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 01:22:50', '2021-05-28 01:22:50'),
(441, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 01:23:23', '2021-05-28 01:23:23'),
(442, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 01:23:59', '2021-05-28 01:23:59'),
(443, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 01:25:01', '2021-05-28 01:25:01'),
(444, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 01:25:59', '2021-05-28 01:25:59'),
(445, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 01:26:39', '2021-05-28 01:26:39'),
(446, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 01:29:44', '2021-05-28 01:29:44'),
(447, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 01:30:52', '2021-05-28 01:30:52'),
(448, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 01:31:26', '2021-05-28 01:31:26'),
(449, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 01:31:56', '2021-05-28 01:31:56'),
(450, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 01:32:37', '2021-05-28 01:32:37'),
(451, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 01:33:02', '2021-05-28 01:33:02'),
(452, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 01:35:10', '2021-05-28 01:35:10'),
(453, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 01:35:59', '2021-05-28 01:35:59'),
(454, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 01:38:55', '2021-05-28 01:38:55'),
(455, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 01:42:43', '2021-05-28 01:42:43'),
(456, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 01:45:29', '2021-05-28 01:45:29'),
(457, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 01:45:44', '2021-05-28 01:45:44'),
(458, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 01:50:28', '2021-05-28 01:50:28'),
(459, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 01:52:22', '2021-05-28 01:52:22'),
(460, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 01:55:12', '2021-05-28 01:55:12'),
(461, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 01:55:33', '2021-05-28 01:55:33'),
(462, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 01:55:48', '2021-05-28 01:55:48'),
(463, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 01:56:19', '2021-05-28 01:56:19'),
(464, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 01:57:57', '2021-05-28 01:57:57'),
(465, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 01:58:43', '2021-05-28 01:58:43'),
(466, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 02:00:19', '2021-05-28 02:00:19'),
(467, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 02:01:28', '2021-05-28 02:01:28'),
(468, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 02:02:07', '2021-05-28 02:02:07'),
(469, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 02:03:28', '2021-05-28 02:03:28'),
(470, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 02:03:47', '2021-05-28 02:03:47'),
(471, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 02:04:15', '2021-05-28 02:04:15'),
(472, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 02:05:47', '2021-05-28 02:05:47'),
(473, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 02:06:52', '2021-05-28 02:06:52'),
(474, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 02:07:39', '2021-05-28 02:07:39'),
(475, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 02:08:12', '2021-05-28 02:08:12'),
(476, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 02:08:33', '2021-05-28 02:08:33'),
(477, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 02:10:18', '2021-05-28 02:10:18'),
(478, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 02:11:29', '2021-05-28 02:11:29'),
(479, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 02:11:48', '2021-05-28 02:11:48'),
(480, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 02:12:57', '2021-05-28 02:12:57'),
(481, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 02:15:13', '2021-05-28 02:15:13'),
(482, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 02:16:17', '2021-05-28 02:16:17'),
(483, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 02:18:06', '2021-05-28 02:18:06'),
(484, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 02:18:40', '2021-05-28 02:18:40'),
(485, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 02:20:54', '2021-05-28 02:20:54'),
(486, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 02:21:12', '2021-05-28 02:21:12'),
(487, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 02:22:15', '2021-05-28 02:22:15'),
(488, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 02:22:33', '2021-05-28 02:22:33'),
(489, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 02:24:07', '2021-05-28 02:24:07'),
(490, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 02:28:59', '2021-05-28 02:28:59'),
(491, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 02:30:43', '2021-05-28 02:30:43'),
(492, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 02:36:56', '2021-05-28 02:36:56'),
(493, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 02:37:20', '2021-05-28 02:37:20'),
(494, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 02:39:38', '2021-05-28 02:39:38'),
(495, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 02:41:41', '2021-05-28 02:41:41'),
(496, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 02:43:32', '2021-05-28 02:43:32'),
(497, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 02:45:06', '2021-05-28 02:45:06'),
(498, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 02:46:49', '2021-05-28 02:46:49'),
(499, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 02:49:15', '2021-05-28 02:49:15'),
(500, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 02:49:50', '2021-05-28 02:49:50'),
(501, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 02:50:43', '2021-05-28 02:50:43'),
(502, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 02:52:48', '2021-05-28 02:52:48'),
(503, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 02:53:18', '2021-05-28 02:53:18'),
(504, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 02:53:40', '2021-05-28 02:53:40'),
(505, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 02:54:24', '2021-05-28 02:54:24'),
(506, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 02:58:22', '2021-05-28 02:58:22'),
(507, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 03:00:43', '2021-05-28 03:00:43'),
(508, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 03:00:50', '2021-05-28 03:00:50'),
(509, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 03:02:16', '2021-05-28 03:02:16'),
(510, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 03:02:54', '2021-05-28 03:02:54'),
(511, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 03:03:47', '2021-05-28 03:03:47'),
(512, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 03:04:16', '2021-05-28 03:04:16'),
(513, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 03:04:30', '2021-05-28 03:04:30'),
(514, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 03:04:44', '2021-05-28 03:04:44'),
(515, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 03:04:53', '2021-05-28 03:04:53'),
(516, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 03:05:19', '2021-05-28 03:05:19'),
(517, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 03:06:06', '2021-05-28 03:06:06'),
(518, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 03:08:53', '2021-05-28 03:08:53'),
(519, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 03:10:37', '2021-05-28 03:10:37'),
(520, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 03:10:59', '2021-05-28 03:10:59'),
(521, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 03:12:28', '2021-05-28 03:12:28'),
(522, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 03:12:59', '2021-05-28 03:12:59'),
(523, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 03:14:25', '2021-05-28 03:14:25'),
(524, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 03:15:59', '2021-05-28 03:15:59'),
(525, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 03:16:30', '2021-05-28 03:16:30'),
(526, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 03:18:47', '2021-05-28 03:18:47'),
(527, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 03:20:05', '2021-05-28 03:20:05'),
(528, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 03:21:13', '2021-05-28 03:21:13'),
(529, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 03:24:14', '2021-05-28 03:24:14'),
(530, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 03:26:09', '2021-05-28 03:26:09'),
(531, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 03:26:37', '2021-05-28 03:26:37'),
(532, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 03:28:26', '2021-05-28 03:28:26');
INSERT INTO `traffic` (`id`, `ip`, `iso_code`, `country`, `city`, `state_name`, `continent`, `currency`, `state`, `timezone`, `default`, `postal_code`, `lat`, `lon`, `created_at`, `updated_at`) VALUES
(533, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 03:30:09', '2021-05-28 03:30:09'),
(534, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 03:31:13', '2021-05-28 03:31:13'),
(535, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 03:31:40', '2021-05-28 03:31:40'),
(536, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 03:32:14', '2021-05-28 03:32:14'),
(537, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 03:32:28', '2021-05-28 03:32:28'),
(538, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 03:33:15', '2021-05-28 03:33:15'),
(539, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 03:33:57', '2021-05-28 03:33:57'),
(540, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 03:34:28', '2021-05-28 03:34:28'),
(541, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 03:34:45', '2021-05-28 03:34:45'),
(542, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 03:35:02', '2021-05-28 03:35:02'),
(543, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 03:36:22', '2021-05-28 03:36:22'),
(544, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 03:36:59', '2021-05-28 03:36:59'),
(545, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 03:37:45', '2021-05-28 03:37:45'),
(546, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 03:38:35', '2021-05-28 03:38:35'),
(547, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 03:40:04', '2021-05-28 03:40:04'),
(548, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 03:42:18', '2021-05-28 03:42:18'),
(549, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 03:45:30', '2021-05-28 03:45:30'),
(550, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 03:46:17', '2021-05-28 03:46:17'),
(551, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 03:46:43', '2021-05-28 03:46:43'),
(552, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 03:47:03', '2021-05-28 03:47:03'),
(553, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 03:47:32', '2021-05-28 03:47:32'),
(554, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 03:47:57', '2021-05-28 03:47:57'),
(555, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 03:48:25', '2021-05-28 03:48:25'),
(556, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 03:49:08', '2021-05-28 03:49:08'),
(557, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 03:49:26', '2021-05-28 03:49:26'),
(558, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 03:49:51', '2021-05-28 03:49:51'),
(559, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 03:50:14', '2021-05-28 03:50:14'),
(560, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 04:04:18', '2021-05-28 04:04:18'),
(561, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 04:04:46', '2021-05-28 04:04:46'),
(562, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 04:05:33', '2021-05-28 04:05:33'),
(563, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 04:05:48', '2021-05-28 04:05:48'),
(564, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 04:07:07', '2021-05-28 04:07:07'),
(565, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 04:07:26', '2021-05-28 04:07:26'),
(566, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 04:10:39', '2021-05-28 04:10:39'),
(567, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 04:11:13', '2021-05-28 04:11:13'),
(568, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 04:12:05', '2021-05-28 04:12:05'),
(569, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 04:13:43', '2021-05-28 04:13:43'),
(570, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 04:14:13', '2021-05-28 04:14:13'),
(571, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 04:16:05', '2021-05-28 04:16:05'),
(572, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-28 08:04:03', '2021-05-28 08:04:03'),
(573, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 00:27:34', '2021-05-31 00:27:34'),
(574, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 00:37:04', '2021-05-31 00:37:04'),
(575, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 00:39:08', '2021-05-31 00:39:08'),
(576, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 00:39:57', '2021-05-31 00:39:57'),
(577, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 00:41:53', '2021-05-31 00:41:53'),
(578, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 00:43:00', '2021-05-31 00:43:00'),
(579, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 00:43:25', '2021-05-31 00:43:25'),
(580, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 00:44:00', '2021-05-31 00:44:00'),
(581, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 00:44:22', '2021-05-31 00:44:22'),
(582, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 00:44:41', '2021-05-31 00:44:41'),
(583, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 00:46:27', '2021-05-31 00:46:27'),
(584, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 00:47:06', '2021-05-31 00:47:06'),
(585, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 00:47:08', '2021-05-31 00:47:08'),
(586, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 00:48:06', '2021-05-31 00:48:06'),
(587, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 00:48:30', '2021-05-31 00:48:30'),
(588, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 00:49:21', '2021-05-31 00:49:21'),
(589, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 00:50:27', '2021-05-31 00:50:27'),
(590, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 00:54:03', '2021-05-31 00:54:03'),
(591, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 00:54:18', '2021-05-31 00:54:18'),
(592, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 00:54:39', '2021-05-31 00:54:39'),
(593, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 00:54:50', '2021-05-31 00:54:50'),
(594, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 01:19:19', '2021-05-31 01:19:19'),
(595, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 01:26:47', '2021-05-31 01:26:47'),
(596, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 01:27:53', '2021-05-31 01:27:53'),
(597, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 01:33:54', '2021-05-31 01:33:54'),
(598, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 01:36:10', '2021-05-31 01:36:10'),
(599, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 01:37:53', '2021-05-31 01:37:53'),
(600, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 01:38:17', '2021-05-31 01:38:17'),
(601, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 01:39:07', '2021-05-31 01:39:07'),
(602, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 01:39:30', '2021-05-31 01:39:30'),
(603, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 01:39:59', '2021-05-31 01:39:59'),
(604, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 01:40:22', '2021-05-31 01:40:22'),
(605, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 01:40:42', '2021-05-31 01:40:42'),
(606, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 01:40:58', '2021-05-31 01:40:58'),
(607, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 01:41:35', '2021-05-31 01:41:35'),
(608, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 01:44:07', '2021-05-31 01:44:07'),
(609, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 01:45:46', '2021-05-31 01:45:46'),
(610, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 01:47:39', '2021-05-31 01:47:39'),
(611, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 01:49:04', '2021-05-31 01:49:04'),
(612, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 02:27:36', '2021-05-31 02:27:36'),
(613, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 02:28:06', '2021-05-31 02:28:06'),
(614, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 02:29:04', '2021-05-31 02:29:04'),
(615, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 02:29:34', '2021-05-31 02:29:34'),
(616, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 02:31:00', '2021-05-31 02:31:00'),
(617, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 02:31:42', '2021-05-31 02:31:42'),
(618, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 02:33:11', '2021-05-31 02:33:11'),
(619, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 02:33:48', '2021-05-31 02:33:48'),
(620, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 02:36:22', '2021-05-31 02:36:22'),
(621, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 02:36:45', '2021-05-31 02:36:45'),
(622, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 02:38:03', '2021-05-31 02:38:03'),
(623, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 02:41:30', '2021-05-31 02:41:30'),
(624, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 02:41:57', '2021-05-31 02:41:57'),
(625, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 02:43:16', '2021-05-31 02:43:16'),
(626, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 02:44:25', '2021-05-31 02:44:25'),
(627, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 02:45:29', '2021-05-31 02:45:29'),
(628, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 02:46:09', '2021-05-31 02:46:09'),
(629, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 02:47:02', '2021-05-31 02:47:02'),
(630, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 02:48:05', '2021-05-31 02:48:05'),
(631, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 02:48:29', '2021-05-31 02:48:29'),
(632, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 02:49:06', '2021-05-31 02:49:06'),
(633, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 02:49:31', '2021-05-31 02:49:31'),
(634, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 02:51:18', '2021-05-31 02:51:18'),
(635, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 02:53:32', '2021-05-31 02:53:32'),
(636, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 02:55:22', '2021-05-31 02:55:22'),
(637, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 02:56:17', '2021-05-31 02:56:17'),
(638, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 02:56:42', '2021-05-31 02:56:42'),
(639, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 02:59:57', '2021-05-31 02:59:57'),
(640, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 03:00:43', '2021-05-31 03:00:43'),
(641, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 03:01:18', '2021-05-31 03:01:18'),
(642, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 03:26:26', '2021-05-31 03:26:26'),
(643, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 03:26:47', '2021-05-31 03:26:47'),
(644, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 03:27:24', '2021-05-31 03:27:24'),
(645, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 03:46:13', '2021-05-31 03:46:13'),
(646, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 22:32:11', '2021-05-31 22:32:11'),
(647, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 22:34:08', '2021-05-31 22:34:08'),
(648, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 22:35:46', '2021-05-31 22:35:46'),
(649, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 22:36:40', '2021-05-31 22:36:40'),
(650, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 22:36:50', '2021-05-31 22:36:50'),
(651, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 22:37:03', '2021-05-31 22:37:03'),
(652, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 22:39:10', '2021-05-31 22:39:10'),
(653, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 22:39:38', '2021-05-31 22:39:38'),
(654, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 22:41:39', '2021-05-31 22:41:39'),
(655, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 23:02:31', '2021-05-31 23:02:31'),
(656, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 23:23:03', '2021-05-31 23:23:03'),
(657, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 23:23:49', '2021-05-31 23:23:49'),
(658, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 23:24:58', '2021-05-31 23:24:58'),
(659, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 23:27:19', '2021-05-31 23:27:19'),
(660, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 23:28:28', '2021-05-31 23:28:28'),
(661, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 23:28:44', '2021-05-31 23:28:44'),
(662, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 23:29:34', '2021-05-31 23:29:34'),
(663, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 23:31:07', '2021-05-31 23:31:07'),
(664, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 23:31:46', '2021-05-31 23:31:46'),
(665, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 23:33:25', '2021-05-31 23:33:25'),
(666, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 23:33:45', '2021-05-31 23:33:45'),
(667, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 23:35:23', '2021-05-31 23:35:23'),
(668, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 23:35:41', '2021-05-31 23:35:41'),
(669, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 23:36:31', '2021-05-31 23:36:31'),
(670, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 23:37:09', '2021-05-31 23:37:09'),
(671, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 23:37:23', '2021-05-31 23:37:23'),
(672, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 23:38:11', '2021-05-31 23:38:11'),
(673, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 23:43:46', '2021-05-31 23:43:46'),
(674, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-05-31 23:46:37', '2021-05-31 23:46:37'),
(675, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 00:33:04', '2021-06-01 00:33:04'),
(676, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 00:34:47', '2021-06-01 00:34:47'),
(677, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 00:35:08', '2021-06-01 00:35:08'),
(678, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 00:36:17', '2021-06-01 00:36:17'),
(679, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 00:37:38', '2021-06-01 00:37:38'),
(680, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 00:37:56', '2021-06-01 00:37:56'),
(681, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 00:38:14', '2021-06-01 00:38:14'),
(682, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 00:39:05', '2021-06-01 00:39:05'),
(683, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 00:39:26', '2021-06-01 00:39:26'),
(684, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 00:39:52', '2021-06-01 00:39:52'),
(685, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 00:40:46', '2021-06-01 00:40:46'),
(686, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 00:41:14', '2021-06-01 00:41:14'),
(687, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 00:42:35', '2021-06-01 00:42:35'),
(688, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 00:43:00', '2021-06-01 00:43:00'),
(689, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 00:43:39', '2021-06-01 00:43:39'),
(690, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 00:44:24', '2021-06-01 00:44:24'),
(691, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 00:44:43', '2021-06-01 00:44:43'),
(692, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 00:45:01', '2021-06-01 00:45:01'),
(693, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 00:45:09', '2021-06-01 00:45:09'),
(694, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 00:45:17', '2021-06-01 00:45:17'),
(695, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 00:45:33', '2021-06-01 00:45:33'),
(696, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 00:46:01', '2021-06-01 00:46:01'),
(697, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 00:46:35', '2021-06-01 00:46:35'),
(698, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 00:46:56', '2021-06-01 00:46:56'),
(699, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 00:47:31', '2021-06-01 00:47:31'),
(700, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 00:49:10', '2021-06-01 00:49:10'),
(701, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 00:50:41', '2021-06-01 00:50:41'),
(702, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 00:52:35', '2021-06-01 00:52:35'),
(703, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 00:53:59', '2021-06-01 00:53:59'),
(704, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 00:54:14', '2021-06-01 00:54:14'),
(705, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 00:55:45', '2021-06-01 00:55:45'),
(706, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 00:56:10', '2021-06-01 00:56:10'),
(707, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 00:56:28', '2021-06-01 00:56:28'),
(708, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 00:56:59', '2021-06-01 00:56:59'),
(709, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 00:59:31', '2021-06-01 00:59:31'),
(710, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 01:00:20', '2021-06-01 01:00:20'),
(711, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 01:02:41', '2021-06-01 01:02:41'),
(712, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 01:04:55', '2021-06-01 01:04:55'),
(713, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 01:05:50', '2021-06-01 01:05:50'),
(714, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 01:06:48', '2021-06-01 01:06:48'),
(715, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 01:08:02', '2021-06-01 01:08:02'),
(716, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 01:08:21', '2021-06-01 01:08:21'),
(717, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 01:11:39', '2021-06-01 01:11:39'),
(718, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 01:13:00', '2021-06-01 01:13:00'),
(719, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 01:14:52', '2021-06-01 01:14:52'),
(720, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 01:15:24', '2021-06-01 01:15:24'),
(721, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 01:16:07', '2021-06-01 01:16:07'),
(722, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 01:19:23', '2021-06-01 01:19:23'),
(723, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 01:20:32', '2021-06-01 01:20:32'),
(724, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 01:22:13', '2021-06-01 01:22:13'),
(725, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 01:23:10', '2021-06-01 01:23:10'),
(726, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 01:24:12', '2021-06-01 01:24:12'),
(727, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 01:24:28', '2021-06-01 01:24:28'),
(728, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 01:25:16', '2021-06-01 01:25:16'),
(729, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 01:26:03', '2021-06-01 01:26:03'),
(730, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 01:31:29', '2021-06-01 01:31:29'),
(731, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 01:31:51', '2021-06-01 01:31:51'),
(732, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 01:33:36', '2021-06-01 01:33:36'),
(733, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 01:33:53', '2021-06-01 01:33:53'),
(734, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 01:34:41', '2021-06-01 01:34:41'),
(735, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 01:35:12', '2021-06-01 01:35:12'),
(736, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 01:35:53', '2021-06-01 01:35:53'),
(737, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 01:36:19', '2021-06-01 01:36:19'),
(738, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 01:36:50', '2021-06-01 01:36:50'),
(739, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 01:37:09', '2021-06-01 01:37:09'),
(740, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 01:37:23', '2021-06-01 01:37:23'),
(741, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 01:37:51', '2021-06-01 01:37:51'),
(742, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 01:38:44', '2021-06-01 01:38:44'),
(743, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 01:39:36', '2021-06-01 01:39:36'),
(744, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 01:41:15', '2021-06-01 01:41:15'),
(745, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 01:44:06', '2021-06-01 01:44:06'),
(746, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 01:44:18', '2021-06-01 01:44:18'),
(747, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 01:45:17', '2021-06-01 01:45:17'),
(748, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 01:46:19', '2021-06-01 01:46:19'),
(749, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 01:46:31', '2021-06-01 01:46:31'),
(750, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 01:47:15', '2021-06-01 01:47:15'),
(751, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 02:01:39', '2021-06-01 02:01:39'),
(752, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 02:02:17', '2021-06-01 02:02:17'),
(753, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 02:04:28', '2021-06-01 02:04:28'),
(754, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 02:08:21', '2021-06-01 02:08:21'),
(755, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 02:11:57', '2021-06-01 02:11:57'),
(756, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 02:13:19', '2021-06-01 02:13:19'),
(757, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 02:20:14', '2021-06-01 02:20:14'),
(758, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 02:23:17', '2021-06-01 02:23:17'),
(759, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 02:23:37', '2021-06-01 02:23:37'),
(760, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 02:24:09', '2021-06-01 02:24:09'),
(761, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 02:24:54', '2021-06-01 02:24:54'),
(762, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 02:25:16', '2021-06-01 02:25:16'),
(763, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 02:25:41', '2021-06-01 02:25:41'),
(764, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 02:27:13', '2021-06-01 02:27:13'),
(765, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 02:27:47', '2021-06-01 02:27:47'),
(766, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 02:29:02', '2021-06-01 02:29:02'),
(767, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 02:30:12', '2021-06-01 02:30:12'),
(768, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 02:31:01', '2021-06-01 02:31:01'),
(769, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 02:31:12', '2021-06-01 02:31:12'),
(770, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 02:32:37', '2021-06-01 02:32:37'),
(771, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 02:33:18', '2021-06-01 02:33:18'),
(772, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 02:33:47', '2021-06-01 02:33:47'),
(773, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 02:34:10', '2021-06-01 02:34:10'),
(774, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 02:34:33', '2021-06-01 02:34:33'),
(775, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 02:35:38', '2021-06-01 02:35:38'),
(776, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 02:36:12', '2021-06-01 02:36:12'),
(777, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 02:36:35', '2021-06-01 02:36:35'),
(778, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 02:37:12', '2021-06-01 02:37:12'),
(779, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 02:38:20', '2021-06-01 02:38:20'),
(780, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 02:39:44', '2021-06-01 02:39:44'),
(781, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 02:39:56', '2021-06-01 02:39:56'),
(782, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 02:40:27', '2021-06-01 02:40:27'),
(783, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 02:40:46', '2021-06-01 02:40:46'),
(784, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 02:41:22', '2021-06-01 02:41:22'),
(785, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 02:42:42', '2021-06-01 02:42:42'),
(786, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 02:43:08', '2021-06-01 02:43:08'),
(787, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 02:43:51', '2021-06-01 02:43:51'),
(788, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 02:44:03', '2021-06-01 02:44:03'),
(789, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 02:46:00', '2021-06-01 02:46:00'),
(790, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 02:47:42', '2021-06-01 02:47:42'),
(791, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 02:48:10', '2021-06-01 02:48:10'),
(792, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 02:48:40', '2021-06-01 02:48:40'),
(793, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 02:49:20', '2021-06-01 02:49:20'),
(794, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 02:50:03', '2021-06-01 02:50:03'),
(795, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 02:50:23', '2021-06-01 02:50:23'),
(796, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 02:51:50', '2021-06-01 02:51:50'),
(797, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 02:52:59', '2021-06-01 02:52:59'),
(798, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 02:53:22', '2021-06-01 02:53:22');
INSERT INTO `traffic` (`id`, `ip`, `iso_code`, `country`, `city`, `state_name`, `continent`, `currency`, `state`, `timezone`, `default`, `postal_code`, `lat`, `lon`, `created_at`, `updated_at`) VALUES
(799, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 02:54:33', '2021-06-01 02:54:33'),
(800, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 02:55:18', '2021-06-01 02:55:18'),
(801, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 02:56:26', '2021-06-01 02:56:26'),
(802, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 02:58:00', '2021-06-01 02:58:00'),
(803, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 02:58:48', '2021-06-01 02:58:48'),
(804, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 02:59:23', '2021-06-01 02:59:23'),
(805, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 03:00:06', '2021-06-01 03:00:06'),
(806, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 03:00:35', '2021-06-01 03:00:35'),
(807, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 03:03:04', '2021-06-01 03:03:04'),
(808, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 03:05:51', '2021-06-01 03:05:51'),
(809, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 03:13:34', '2021-06-01 03:13:34'),
(810, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 03:14:48', '2021-06-01 03:14:48'),
(811, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 03:15:12', '2021-06-01 03:15:12'),
(812, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 03:15:51', '2021-06-01 03:15:51'),
(813, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 03:16:37', '2021-06-01 03:16:37'),
(814, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 03:18:45', '2021-06-01 03:18:45'),
(815, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 03:18:47', '2021-06-01 03:18:47'),
(816, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 03:19:10', '2021-06-01 03:19:10'),
(817, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 03:19:46', '2021-06-01 03:19:46'),
(818, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 03:20:31', '2021-06-01 03:20:31'),
(819, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 03:22:23', '2021-06-01 03:22:23'),
(820, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 03:22:57', '2021-06-01 03:22:57'),
(821, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 03:23:12', '2021-06-01 03:23:12'),
(822, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 03:25:50', '2021-06-01 03:25:50'),
(823, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 03:26:55', '2021-06-01 03:26:55'),
(824, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 03:30:29', '2021-06-01 03:30:29'),
(825, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 03:37:05', '2021-06-01 03:37:05'),
(826, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-01 22:38:41', '2021-06-01 22:38:41'),
(827, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 00:08:14', '2021-06-02 00:08:14'),
(828, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 00:13:18', '2021-06-02 00:13:18'),
(829, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 00:26:03', '2021-06-02 00:26:03'),
(830, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 00:26:32', '2021-06-02 00:26:32'),
(831, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 00:29:27', '2021-06-02 00:29:27'),
(832, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 00:30:23', '2021-06-02 00:30:23'),
(833, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 00:30:35', '2021-06-02 00:30:35'),
(834, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 00:31:28', '2021-06-02 00:31:28'),
(835, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 00:37:00', '2021-06-02 00:37:00'),
(836, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 00:37:24', '2021-06-02 00:37:24'),
(837, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 00:39:15', '2021-06-02 00:39:15'),
(838, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 00:42:54', '2021-06-02 00:42:54'),
(839, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 00:43:22', '2021-06-02 00:43:22'),
(840, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 00:43:36', '2021-06-02 00:43:36'),
(841, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 00:43:55', '2021-06-02 00:43:55'),
(842, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 00:44:38', '2021-06-02 00:44:38'),
(843, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 00:45:03', '2021-06-02 00:45:03'),
(844, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 00:47:20', '2021-06-02 00:47:20'),
(845, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 00:47:46', '2021-06-02 00:47:46'),
(846, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 00:48:20', '2021-06-02 00:48:20'),
(847, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 00:48:34', '2021-06-02 00:48:34'),
(848, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 00:49:04', '2021-06-02 00:49:04'),
(849, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 00:50:38', '2021-06-02 00:50:38'),
(850, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 00:51:11', '2021-06-02 00:51:11'),
(851, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 00:52:51', '2021-06-02 00:52:51'),
(852, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 00:53:13', '2021-06-02 00:53:13'),
(853, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 00:53:29', '2021-06-02 00:53:29'),
(854, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 00:54:02', '2021-06-02 00:54:02'),
(855, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 00:54:19', '2021-06-02 00:54:19'),
(856, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 00:55:10', '2021-06-02 00:55:10'),
(857, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 00:55:32', '2021-06-02 00:55:32'),
(858, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 01:00:43', '2021-06-02 01:00:43'),
(859, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 01:01:40', '2021-06-02 01:01:40'),
(860, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 01:02:20', '2021-06-02 01:02:20'),
(861, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 01:02:51', '2021-06-02 01:02:51'),
(862, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 01:03:41', '2021-06-02 01:03:41'),
(863, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 01:04:30', '2021-06-02 01:04:30'),
(864, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 01:05:12', '2021-06-02 01:05:12'),
(865, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 01:05:38', '2021-06-02 01:05:38'),
(866, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 01:05:46', '2021-06-02 01:05:46'),
(867, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 01:06:08', '2021-06-02 01:06:08'),
(868, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 01:06:24', '2021-06-02 01:06:24'),
(869, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 01:06:34', '2021-06-02 01:06:34'),
(870, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 01:18:51', '2021-06-02 01:18:51'),
(871, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 01:20:21', '2021-06-02 01:20:21'),
(872, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 01:21:15', '2021-06-02 01:21:15'),
(873, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 01:22:08', '2021-06-02 01:22:08'),
(874, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 01:22:41', '2021-06-02 01:22:41'),
(875, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 01:26:18', '2021-06-02 01:26:18'),
(876, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 01:26:44', '2021-06-02 01:26:44'),
(877, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 01:26:58', '2021-06-02 01:26:58'),
(878, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 01:27:11', '2021-06-02 01:27:11'),
(879, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 01:27:30', '2021-06-02 01:27:30'),
(880, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 01:27:39', '2021-06-02 01:27:39'),
(881, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 01:28:03', '2021-06-02 01:28:03'),
(882, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 01:28:19', '2021-06-02 01:28:19'),
(883, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 01:28:26', '2021-06-02 01:28:26'),
(884, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 01:29:10', '2021-06-02 01:29:10'),
(885, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 01:29:44', '2021-06-02 01:29:44'),
(886, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 01:30:04', '2021-06-02 01:30:04'),
(887, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 01:31:26', '2021-06-02 01:31:26'),
(888, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 01:37:08', '2021-06-02 01:37:08'),
(889, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 01:37:31', '2021-06-02 01:37:31'),
(890, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 01:41:35', '2021-06-02 01:41:35'),
(891, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 01:42:25', '2021-06-02 01:42:25'),
(892, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 01:42:58', '2021-06-02 01:42:58'),
(893, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 01:45:03', '2021-06-02 01:45:03'),
(894, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 01:46:04', '2021-06-02 01:46:04'),
(895, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 01:47:36', '2021-06-02 01:47:36'),
(896, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 01:49:35', '2021-06-02 01:49:35'),
(897, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 01:51:10', '2021-06-02 01:51:10'),
(898, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 01:51:26', '2021-06-02 01:51:26'),
(899, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 01:53:25', '2021-06-02 01:53:25'),
(900, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 01:54:29', '2021-06-02 01:54:29'),
(901, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 01:55:05', '2021-06-02 01:55:05'),
(902, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 01:55:30', '2021-06-02 01:55:30'),
(903, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 01:56:11', '2021-06-02 01:56:11'),
(904, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 01:56:51', '2021-06-02 01:56:51'),
(905, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 01:57:10', '2021-06-02 01:57:10'),
(906, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 01:57:17', '2021-06-02 01:57:17'),
(907, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 01:58:25', '2021-06-02 01:58:25'),
(908, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 01:58:51', '2021-06-02 01:58:51'),
(909, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 01:59:07', '2021-06-02 01:59:07'),
(910, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 01:59:33', '2021-06-02 01:59:33'),
(911, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 02:00:02', '2021-06-02 02:00:02'),
(912, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 02:01:06', '2021-06-02 02:01:06'),
(913, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 02:01:20', '2021-06-02 02:01:20'),
(914, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 02:01:31', '2021-06-02 02:01:31'),
(915, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 02:01:44', '2021-06-02 02:01:44'),
(916, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 02:02:04', '2021-06-02 02:02:04'),
(917, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 02:02:59', '2021-06-02 02:02:59'),
(918, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 02:03:18', '2021-06-02 02:03:18'),
(919, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 02:03:43', '2021-06-02 02:03:43'),
(920, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 02:04:07', '2021-06-02 02:04:07'),
(921, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 02:04:20', '2021-06-02 02:04:20'),
(922, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 02:04:43', '2021-06-02 02:04:43'),
(923, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 02:06:16', '2021-06-02 02:06:16'),
(924, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 02:06:44', '2021-06-02 02:06:44'),
(925, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 02:07:14', '2021-06-02 02:07:14'),
(926, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 02:07:28', '2021-06-02 02:07:28'),
(927, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 02:08:43', '2021-06-02 02:08:43'),
(928, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 02:08:58', '2021-06-02 02:08:58'),
(929, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 02:09:47', '2021-06-02 02:09:47'),
(930, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 02:09:59', '2021-06-02 02:09:59'),
(931, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 02:20:13', '2021-06-02 02:20:13'),
(932, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 02:20:27', '2021-06-02 02:20:27'),
(933, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 02:20:51', '2021-06-02 02:20:51'),
(934, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 02:23:11', '2021-06-02 02:23:11'),
(935, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 16:37:40', '2021-06-02 16:37:40'),
(936, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 16:38:04', '2021-06-02 16:38:04'),
(937, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 16:39:43', '2021-06-02 16:39:43'),
(938, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 16:41:16', '2021-06-02 16:41:16'),
(939, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 16:42:08', '2021-06-02 16:42:08'),
(940, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 16:43:25', '2021-06-02 16:43:25'),
(941, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 16:46:27', '2021-06-02 16:46:27'),
(942, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 16:47:50', '2021-06-02 16:47:50'),
(943, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 16:50:04', '2021-06-02 16:50:04'),
(944, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 16:51:04', '2021-06-02 16:51:04'),
(945, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 16:51:24', '2021-06-02 16:51:24'),
(946, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 16:53:56', '2021-06-02 16:53:56'),
(947, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 16:54:19', '2021-06-02 16:54:19'),
(948, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 16:55:16', '2021-06-02 16:55:16'),
(949, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 16:56:32', '2021-06-02 16:56:32'),
(950, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 16:58:01', '2021-06-02 16:58:01'),
(951, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 16:59:13', '2021-06-02 16:59:13'),
(952, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 16:59:41', '2021-06-02 16:59:41'),
(953, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 17:00:11', '2021-06-02 17:00:11'),
(954, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 17:01:19', '2021-06-02 17:01:19'),
(955, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 17:01:46', '2021-06-02 17:01:46'),
(956, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 17:04:35', '2021-06-02 17:04:35'),
(957, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 17:07:29', '2021-06-02 17:07:29'),
(958, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 17:08:14', '2021-06-02 17:08:14'),
(959, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 17:08:34', '2021-06-02 17:08:34'),
(960, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 17:09:42', '2021-06-02 17:09:42'),
(961, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 17:13:16', '2021-06-02 17:13:16'),
(962, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 17:14:05', '2021-06-02 17:14:05'),
(963, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 17:14:18', '2021-06-02 17:14:18'),
(964, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 17:16:30', '2021-06-02 17:16:30'),
(965, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 17:16:37', '2021-06-02 17:16:37'),
(966, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 17:18:41', '2021-06-02 17:18:41'),
(967, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 19:42:30', '2021-06-02 19:42:30'),
(968, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 19:45:08', '2021-06-02 19:45:08'),
(969, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 19:47:27', '2021-06-02 19:47:27'),
(970, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 19:53:42', '2021-06-02 19:53:42'),
(971, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 19:57:46', '2021-06-02 19:57:46'),
(972, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 20:00:14', '2021-06-02 20:00:14'),
(973, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 20:01:31', '2021-06-02 20:01:31'),
(974, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 20:02:30', '2021-06-02 20:02:30'),
(975, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 20:02:49', '2021-06-02 20:02:49'),
(976, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 20:03:08', '2021-06-02 20:03:08'),
(977, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 20:03:22', '2021-06-02 20:03:22'),
(978, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 20:04:19', '2021-06-02 20:04:19'),
(979, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 20:05:18', '2021-06-02 20:05:18'),
(980, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 20:12:30', '2021-06-02 20:12:30'),
(981, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 20:14:44', '2021-06-02 20:14:44'),
(982, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 20:15:28', '2021-06-02 20:15:28'),
(983, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 20:17:12', '2021-06-02 20:17:12'),
(984, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 20:17:31', '2021-06-02 20:17:31'),
(985, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 20:17:46', '2021-06-02 20:17:46'),
(986, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 20:17:57', '2021-06-02 20:17:57'),
(987, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 20:18:47', '2021-06-02 20:18:47'),
(988, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 20:20:43', '2021-06-02 20:20:43'),
(989, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 20:22:41', '2021-06-02 20:22:41'),
(990, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 20:23:42', '2021-06-02 20:23:42'),
(991, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 20:26:45', '2021-06-02 20:26:45'),
(992, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 20:27:39', '2021-06-02 20:27:39'),
(993, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 20:28:02', '2021-06-02 20:28:02'),
(994, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 20:29:09', '2021-06-02 20:29:09'),
(995, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 20:30:22', '2021-06-02 20:30:22'),
(996, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 20:30:51', '2021-06-02 20:30:51'),
(997, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 20:32:36', '2021-06-02 20:32:36'),
(998, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 20:33:01', '2021-06-02 20:33:01'),
(999, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 20:33:47', '2021-06-02 20:33:47'),
(1000, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 20:35:01', '2021-06-02 20:35:01'),
(1001, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 20:36:11', '2021-06-02 20:36:11'),
(1002, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 20:36:39', '2021-06-02 20:36:39'),
(1003, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 20:37:14', '2021-06-02 20:37:14'),
(1004, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 20:38:31', '2021-06-02 20:38:31'),
(1005, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 20:39:55', '2021-06-02 20:39:55'),
(1006, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 20:42:03', '2021-06-02 20:42:03'),
(1007, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 20:42:34', '2021-06-02 20:42:34'),
(1008, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 20:43:36', '2021-06-02 20:43:36'),
(1009, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 20:44:07', '2021-06-02 20:44:07'),
(1010, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 20:44:45', '2021-06-02 20:44:45'),
(1011, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 20:45:35', '2021-06-02 20:45:35'),
(1012, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 22:33:48', '2021-06-02 22:33:48'),
(1013, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 22:34:23', '2021-06-02 22:34:23'),
(1014, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 22:38:00', '2021-06-02 22:38:00'),
(1015, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 22:39:47', '2021-06-02 22:39:47'),
(1016, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 22:40:16', '2021-06-02 22:40:16'),
(1017, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 22:41:27', '2021-06-02 22:41:27'),
(1018, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 22:44:02', '2021-06-02 22:44:02'),
(1019, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 22:45:24', '2021-06-02 22:45:24'),
(1020, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 22:46:26', '2021-06-02 22:46:26'),
(1021, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 22:47:25', '2021-06-02 22:47:25'),
(1022, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 22:47:45', '2021-06-02 22:47:45'),
(1023, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 22:48:55', '2021-06-02 22:48:55'),
(1024, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 22:50:33', '2021-06-02 22:50:33'),
(1025, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 22:52:45', '2021-06-02 22:52:45'),
(1026, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 22:53:38', '2021-06-02 22:53:38'),
(1027, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 22:54:21', '2021-06-02 22:54:21'),
(1028, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 22:54:51', '2021-06-02 22:54:51'),
(1029, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 22:55:53', '2021-06-02 22:55:53'),
(1030, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 22:57:48', '2021-06-02 22:57:48'),
(1031, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 22:57:57', '2021-06-02 22:57:57'),
(1032, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 22:58:48', '2021-06-02 22:58:48'),
(1033, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 22:59:30', '2021-06-02 22:59:30'),
(1034, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 23:00:25', '2021-06-02 23:00:25'),
(1035, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 23:01:33', '2021-06-02 23:01:33'),
(1036, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 23:03:08', '2021-06-02 23:03:08'),
(1037, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 23:05:30', '2021-06-02 23:05:30'),
(1038, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 23:06:11', '2021-06-02 23:06:11'),
(1039, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 23:07:05', '2021-06-02 23:07:05'),
(1040, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-02 23:09:55', '2021-06-02 23:09:55'),
(1041, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-03 00:09:44', '2021-06-03 00:09:44'),
(1042, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-03 00:25:14', '2021-06-03 00:25:14'),
(1043, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-03 00:28:31', '2021-06-03 00:28:31'),
(1044, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-03 00:33:11', '2021-06-03 00:33:11'),
(1045, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-03 00:47:48', '2021-06-03 00:47:48'),
(1046, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-03 01:25:44', '2021-06-03 01:25:44'),
(1047, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-03 01:25:57', '2021-06-03 01:25:57'),
(1048, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-03 01:26:10', '2021-06-03 01:26:10'),
(1049, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-03 01:26:26', '2021-06-03 01:26:26'),
(1050, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-03 01:26:47', '2021-06-03 01:26:47'),
(1051, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-03 01:28:30', '2021-06-03 01:28:30'),
(1052, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-03 01:28:46', '2021-06-03 01:28:46'),
(1053, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-03 01:40:47', '2021-06-03 01:40:47'),
(1054, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-03 01:42:38', '2021-06-03 01:42:38'),
(1055, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-03 01:47:11', '2021-06-03 01:47:11'),
(1056, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-03 01:49:06', '2021-06-03 01:49:06'),
(1057, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-03 01:49:45', '2021-06-03 01:49:45'),
(1058, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-03 01:50:50', '2021-06-03 01:50:50'),
(1059, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-03 01:51:41', '2021-06-03 01:51:41'),
(1060, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-03 01:55:07', '2021-06-03 01:55:07'),
(1061, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-03 01:55:42', '2021-06-03 01:55:42'),
(1062, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-03 01:56:16', '2021-06-03 01:56:16'),
(1063, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-03 01:56:45', '2021-06-03 01:56:45');
INSERT INTO `traffic` (`id`, `ip`, `iso_code`, `country`, `city`, `state_name`, `continent`, `currency`, `state`, `timezone`, `default`, `postal_code`, `lat`, `lon`, `created_at`, `updated_at`) VALUES
(1064, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-03 01:57:35', '2021-06-03 01:57:35'),
(1065, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-03 02:02:24', '2021-06-03 02:02:24'),
(1066, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-03 02:03:37', '2021-06-03 02:03:37'),
(1067, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-03 02:05:40', '2021-06-03 02:05:40'),
(1068, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-03 02:05:41', '2021-06-03 02:05:41'),
(1069, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-03 02:07:38', '2021-06-03 02:07:38'),
(1070, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-03 21:26:02', '2021-06-03 21:26:02'),
(1071, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-03 21:27:54', '2021-06-03 21:27:54'),
(1072, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-03 21:28:10', '2021-06-03 21:28:10'),
(1073, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-03 21:28:42', '2021-06-03 21:28:42'),
(1074, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-03 21:29:51', '2021-06-03 21:29:51'),
(1075, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-03 21:30:37', '2021-06-03 21:30:37'),
(1076, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-03 23:23:20', '2021-06-03 23:23:20'),
(1077, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-03 23:51:27', '2021-06-03 23:51:27'),
(1078, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-03 23:52:53', '2021-06-03 23:52:53'),
(1079, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-03 23:59:11', '2021-06-03 23:59:11'),
(1080, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 00:00:47', '2021-06-04 00:00:47'),
(1081, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 00:02:26', '2021-06-04 00:02:26'),
(1082, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 00:03:57', '2021-06-04 00:03:57'),
(1083, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 00:23:38', '2021-06-04 00:23:38'),
(1084, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 00:24:02', '2021-06-04 00:24:02'),
(1085, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 00:29:33', '2021-06-04 00:29:33'),
(1086, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 00:31:55', '2021-06-04 00:31:55'),
(1087, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 00:33:39', '2021-06-04 00:33:39'),
(1088, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 00:48:59', '2021-06-04 00:48:59'),
(1089, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 01:02:26', '2021-06-04 01:02:26'),
(1090, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 01:02:46', '2021-06-04 01:02:46'),
(1091, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 02:02:31', '2021-06-04 02:02:31'),
(1092, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 02:03:34', '2021-06-04 02:03:34'),
(1093, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 02:04:16', '2021-06-04 02:04:16'),
(1094, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 02:06:03', '2021-06-04 02:06:03'),
(1095, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 02:06:48', '2021-06-04 02:06:48'),
(1096, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 02:07:47', '2021-06-04 02:07:47'),
(1097, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 02:08:13', '2021-06-04 02:08:13'),
(1098, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 02:11:25', '2021-06-04 02:11:25'),
(1099, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 02:13:37', '2021-06-04 02:13:37'),
(1100, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 02:23:28', '2021-06-04 02:23:28'),
(1101, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 02:23:58', '2021-06-04 02:23:58'),
(1102, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 02:24:42', '2021-06-04 02:24:42'),
(1103, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 02:25:07', '2021-06-04 02:25:07'),
(1104, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 02:27:04', '2021-06-04 02:27:04'),
(1105, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 02:28:05', '2021-06-04 02:28:05'),
(1106, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 02:28:48', '2021-06-04 02:28:48'),
(1107, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 02:29:11', '2021-06-04 02:29:11'),
(1108, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 02:30:39', '2021-06-04 02:30:39'),
(1109, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 02:31:11', '2021-06-04 02:31:11'),
(1110, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 02:32:48', '2021-06-04 02:32:48'),
(1111, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 02:34:12', '2021-06-04 02:34:12'),
(1112, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 02:35:07', '2021-06-04 02:35:07'),
(1113, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 02:35:44', '2021-06-04 02:35:44'),
(1114, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 02:36:49', '2021-06-04 02:36:49'),
(1115, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 02:37:22', '2021-06-04 02:37:22'),
(1116, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 02:37:46', '2021-06-04 02:37:46'),
(1117, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 02:38:12', '2021-06-04 02:38:12'),
(1118, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 02:38:32', '2021-06-04 02:38:32'),
(1119, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 02:38:55', '2021-06-04 02:38:55'),
(1120, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 02:42:30', '2021-06-04 02:42:30'),
(1121, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 02:42:42', '2021-06-04 02:42:42'),
(1122, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 02:44:14', '2021-06-04 02:44:14'),
(1123, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 02:46:01', '2021-06-04 02:46:01'),
(1124, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 02:48:12', '2021-06-04 02:48:12'),
(1125, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 02:48:42', '2021-06-04 02:48:42'),
(1126, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 02:49:00', '2021-06-04 02:49:00'),
(1127, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 02:49:21', '2021-06-04 02:49:21'),
(1128, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 02:50:25', '2021-06-04 02:50:25'),
(1129, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 02:50:53', '2021-06-04 02:50:53'),
(1130, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 02:52:08', '2021-06-04 02:52:08'),
(1131, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 02:52:52', '2021-06-04 02:52:52'),
(1132, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 02:53:14', '2021-06-04 02:53:14'),
(1133, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 02:53:31', '2021-06-04 02:53:31'),
(1134, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 02:53:46', '2021-06-04 02:53:46'),
(1135, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 02:54:01', '2021-06-04 02:54:01'),
(1136, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 02:55:14', '2021-06-04 02:55:14'),
(1137, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 02:56:11', '2021-06-04 02:56:11'),
(1138, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 02:56:24', '2021-06-04 02:56:24'),
(1139, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 02:56:36', '2021-06-04 02:56:36'),
(1140, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 02:57:52', '2021-06-04 02:57:52'),
(1141, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 02:59:15', '2021-06-04 02:59:15'),
(1142, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 03:03:40', '2021-06-04 03:03:40'),
(1143, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 03:07:12', '2021-06-04 03:07:12'),
(1144, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 03:07:33', '2021-06-04 03:07:33'),
(1145, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 03:07:43', '2021-06-04 03:07:43'),
(1146, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 03:08:10', '2021-06-04 03:08:10'),
(1147, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 03:09:12', '2021-06-04 03:09:12'),
(1148, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 03:09:30', '2021-06-04 03:09:30'),
(1149, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 03:11:03', '2021-06-04 03:11:03'),
(1150, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 03:12:34', '2021-06-04 03:12:34'),
(1151, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 03:13:56', '2021-06-04 03:13:56'),
(1152, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 03:15:03', '2021-06-04 03:15:03'),
(1153, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 03:16:14', '2021-06-04 03:16:14'),
(1154, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 03:16:23', '2021-06-04 03:16:23'),
(1155, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 03:16:55', '2021-06-04 03:16:55'),
(1156, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 03:17:23', '2021-06-04 03:17:23'),
(1157, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 03:19:07', '2021-06-04 03:19:07'),
(1158, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 03:21:08', '2021-06-04 03:21:08'),
(1159, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 03:22:20', '2021-06-04 03:22:20'),
(1160, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 03:22:38', '2021-06-04 03:22:38'),
(1161, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 03:24:09', '2021-06-04 03:24:09'),
(1162, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 03:24:24', '2021-06-04 03:24:24'),
(1163, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 03:25:03', '2021-06-04 03:25:03'),
(1164, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 03:26:14', '2021-06-04 03:26:14'),
(1165, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 03:26:41', '2021-06-04 03:26:41'),
(1166, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 03:32:21', '2021-06-04 03:32:21'),
(1167, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 03:32:54', '2021-06-04 03:32:54'),
(1168, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 03:33:14', '2021-06-04 03:33:14'),
(1169, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 03:34:55', '2021-06-04 03:34:55'),
(1170, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 03:36:01', '2021-06-04 03:36:01'),
(1171, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 03:36:22', '2021-06-04 03:36:22'),
(1172, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 03:39:13', '2021-06-04 03:39:13'),
(1173, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 03:39:41', '2021-06-04 03:39:41'),
(1174, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 03:41:14', '2021-06-04 03:41:14'),
(1175, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 03:43:05', '2021-06-04 03:43:05'),
(1176, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 03:44:41', '2021-06-04 03:44:41'),
(1177, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 03:45:22', '2021-06-04 03:45:22'),
(1178, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 03:46:14', '2021-06-04 03:46:14'),
(1179, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 03:46:28', '2021-06-04 03:46:28'),
(1180, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 03:46:54', '2021-06-04 03:46:54'),
(1181, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 03:49:07', '2021-06-04 03:49:07'),
(1182, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 03:51:39', '2021-06-04 03:51:39'),
(1183, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 03:52:05', '2021-06-04 03:52:05'),
(1184, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 03:52:21', '2021-06-04 03:52:21'),
(1185, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 03:52:38', '2021-06-04 03:52:38'),
(1186, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 03:53:33', '2021-06-04 03:53:33'),
(1187, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 03:54:16', '2021-06-04 03:54:16'),
(1188, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 03:54:45', '2021-06-04 03:54:45'),
(1189, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 03:55:18', '2021-06-04 03:55:18'),
(1190, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 03:55:33', '2021-06-04 03:55:33'),
(1191, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 03:59:49', '2021-06-04 03:59:49'),
(1192, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-04 04:01:18', '2021-06-04 04:01:18'),
(1193, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-07 23:08:47', '2021-06-07 23:08:47'),
(1194, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-07 23:09:51', '2021-06-07 23:09:51'),
(1195, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-07 23:12:52', '2021-06-07 23:12:52'),
(1196, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-07 23:13:06', '2021-06-07 23:13:06'),
(1197, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-07 23:14:28', '2021-06-07 23:14:28'),
(1198, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-07 23:19:59', '2021-06-07 23:19:59'),
(1199, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-07 23:20:22', '2021-06-07 23:20:22'),
(1200, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-07 23:20:48', '2021-06-07 23:20:48'),
(1201, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-07 23:22:53', '2021-06-07 23:22:53'),
(1202, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-08 00:09:51', '2021-06-08 00:09:51'),
(1203, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-08 00:11:33', '2021-06-08 00:11:33'),
(1204, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-08 00:12:27', '2021-06-08 00:12:27'),
(1205, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-08 00:13:57', '2021-06-08 00:13:57'),
(1206, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-08 00:14:20', '2021-06-08 00:14:20'),
(1207, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-08 00:14:42', '2021-06-08 00:14:42'),
(1208, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-08 00:15:08', '2021-06-08 00:15:08'),
(1209, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-08 00:17:29', '2021-06-08 00:17:29'),
(1210, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-08 00:18:18', '2021-06-08 00:18:18'),
(1211, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-08 00:19:14', '2021-06-08 00:19:14'),
(1212, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-08 00:19:28', '2021-06-08 00:19:28'),
(1213, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 00:52:19', '2021-06-21 00:52:19'),
(1214, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 00:54:44', '2021-06-21 00:54:44'),
(1215, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 01:04:14', '2021-06-21 01:04:14'),
(1216, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 01:05:29', '2021-06-21 01:05:29'),
(1217, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 01:06:31', '2021-06-21 01:06:31'),
(1218, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 01:06:54', '2021-06-21 01:06:54'),
(1219, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 01:07:48', '2021-06-21 01:07:48'),
(1220, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 01:08:28', '2021-06-21 01:08:28'),
(1221, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 01:09:19', '2021-06-21 01:09:19'),
(1222, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 01:09:43', '2021-06-21 01:09:43'),
(1223, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 01:10:45', '2021-06-21 01:10:45'),
(1224, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 01:12:28', '2021-06-21 01:12:28'),
(1225, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 01:14:14', '2021-06-21 01:14:14'),
(1226, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 01:14:45', '2021-06-21 01:14:45'),
(1227, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 01:16:39', '2021-06-21 01:16:39'),
(1228, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 01:17:32', '2021-06-21 01:17:32'),
(1229, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 01:18:20', '2021-06-21 01:18:20'),
(1230, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 01:18:55', '2021-06-21 01:18:55'),
(1231, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 01:22:49', '2021-06-21 01:22:49'),
(1232, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 01:25:12', '2021-06-21 01:25:12'),
(1233, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 01:25:27', '2021-06-21 01:25:27'),
(1234, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 01:25:49', '2021-06-21 01:25:49'),
(1235, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 01:26:11', '2021-06-21 01:26:11'),
(1236, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 01:26:45', '2021-06-21 01:26:45'),
(1237, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 01:27:08', '2021-06-21 01:27:08'),
(1238, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 01:27:50', '2021-06-21 01:27:50'),
(1239, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 01:28:33', '2021-06-21 01:28:33'),
(1240, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 01:30:44', '2021-06-21 01:30:44'),
(1241, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 01:31:47', '2021-06-21 01:31:47'),
(1242, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 01:32:05', '2021-06-21 01:32:05'),
(1243, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 01:32:23', '2021-06-21 01:32:23'),
(1244, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 01:34:53', '2021-06-21 01:34:53'),
(1245, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 01:35:31', '2021-06-21 01:35:31'),
(1246, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 01:36:35', '2021-06-21 01:36:35'),
(1247, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 01:37:02', '2021-06-21 01:37:02'),
(1248, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 01:38:28', '2021-06-21 01:38:28'),
(1249, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 01:38:54', '2021-06-21 01:38:54'),
(1250, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 01:41:21', '2021-06-21 01:41:21'),
(1251, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 01:45:47', '2021-06-21 01:45:47'),
(1252, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 01:46:06', '2021-06-21 01:46:06'),
(1253, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 01:46:59', '2021-06-21 01:46:59'),
(1254, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 01:47:08', '2021-06-21 01:47:08'),
(1255, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 01:48:41', '2021-06-21 01:48:41'),
(1256, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 01:49:02', '2021-06-21 01:49:02'),
(1257, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 01:49:20', '2021-06-21 01:49:20'),
(1258, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 01:49:30', '2021-06-21 01:49:30'),
(1259, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 01:50:25', '2021-06-21 01:50:25'),
(1260, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 01:50:52', '2021-06-21 01:50:52'),
(1261, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 01:51:00', '2021-06-21 01:51:00'),
(1262, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 01:51:30', '2021-06-21 01:51:30'),
(1263, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 01:51:57', '2021-06-21 01:51:57'),
(1264, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 01:58:22', '2021-06-21 01:58:22'),
(1265, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 02:07:38', '2021-06-21 02:07:38'),
(1266, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 02:07:54', '2021-06-21 02:07:54'),
(1267, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 02:09:11', '2021-06-21 02:09:11'),
(1268, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 02:13:09', '2021-06-21 02:13:09'),
(1269, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 02:13:41', '2021-06-21 02:13:41'),
(1270, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 02:15:14', '2021-06-21 02:15:14'),
(1271, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 02:16:34', '2021-06-21 02:16:34'),
(1272, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 02:20:50', '2021-06-21 02:20:50'),
(1273, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 02:22:09', '2021-06-21 02:22:09'),
(1274, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 02:23:05', '2021-06-21 02:23:05'),
(1275, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 02:23:20', '2021-06-21 02:23:20'),
(1276, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 02:23:47', '2021-06-21 02:23:47'),
(1277, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 02:24:28', '2021-06-21 02:24:28'),
(1278, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 02:25:31', '2021-06-21 02:25:31'),
(1279, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 02:26:08', '2021-06-21 02:26:08'),
(1280, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 02:26:41', '2021-06-21 02:26:41'),
(1281, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 02:26:57', '2021-06-21 02:26:57'),
(1282, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 02:27:14', '2021-06-21 02:27:14'),
(1283, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 02:27:32', '2021-06-21 02:27:32'),
(1284, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 02:27:49', '2021-06-21 02:27:49'),
(1285, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 02:28:05', '2021-06-21 02:28:05'),
(1286, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 02:30:39', '2021-06-21 02:30:39'),
(1287, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 02:32:38', '2021-06-21 02:32:38'),
(1288, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 02:33:02', '2021-06-21 02:33:02'),
(1289, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 02:33:13', '2021-06-21 02:33:13'),
(1290, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 02:33:27', '2021-06-21 02:33:27'),
(1291, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 02:33:54', '2021-06-21 02:33:54'),
(1292, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 02:34:23', '2021-06-21 02:34:23'),
(1293, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 02:35:10', '2021-06-21 02:35:10'),
(1294, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 02:37:16', '2021-06-21 02:37:16'),
(1295, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 02:40:42', '2021-06-21 02:40:42'),
(1296, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 02:41:48', '2021-06-21 02:41:48'),
(1297, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 02:42:12', '2021-06-21 02:42:12'),
(1298, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 02:42:50', '2021-06-21 02:42:50'),
(1299, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 02:43:50', '2021-06-21 02:43:50'),
(1300, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 03:08:30', '2021-06-21 03:08:30'),
(1301, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 03:08:47', '2021-06-21 03:08:47'),
(1302, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 03:09:48', '2021-06-21 03:09:48'),
(1303, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 03:10:45', '2021-06-21 03:10:45'),
(1304, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 03:24:03', '2021-06-21 03:24:03'),
(1305, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 03:48:28', '2021-06-21 03:48:28'),
(1306, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-06-21 06:51:55', '2021-06-21 06:51:55'),
(1307, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-01 22:44:01', '2021-07-01 22:44:01'),
(1308, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-01 22:54:44', '2021-07-01 22:54:44'),
(1309, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-01 22:59:21', '2021-07-01 22:59:21'),
(1310, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-01 23:00:43', '2021-07-01 23:00:43'),
(1311, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-01 23:02:27', '2021-07-01 23:02:27'),
(1312, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-01 23:03:24', '2021-07-01 23:03:24'),
(1313, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-01 23:06:29', '2021-07-01 23:06:29'),
(1314, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-01 23:07:26', '2021-07-01 23:07:26'),
(1315, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-01 23:07:56', '2021-07-01 23:07:56'),
(1316, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-01 23:08:53', '2021-07-01 23:08:53'),
(1317, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-01 23:13:01', '2021-07-01 23:13:01'),
(1318, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-01 23:13:21', '2021-07-01 23:13:21'),
(1319, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-01 23:27:45', '2021-07-01 23:27:45'),
(1320, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-01 23:28:10', '2021-07-01 23:28:10'),
(1321, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-01 23:30:22', '2021-07-01 23:30:22'),
(1322, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-01 23:31:09', '2021-07-01 23:31:09'),
(1323, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-01 23:36:44', '2021-07-01 23:36:44'),
(1324, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-01 23:36:56', '2021-07-01 23:36:56'),
(1325, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-01 23:39:48', '2021-07-01 23:39:48'),
(1326, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-06 23:19:47', '2021-07-06 23:19:47'),
(1327, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-06 23:21:39', '2021-07-06 23:21:39');
INSERT INTO `traffic` (`id`, `ip`, `iso_code`, `country`, `city`, `state_name`, `continent`, `currency`, `state`, `timezone`, `default`, `postal_code`, `lat`, `lon`, `created_at`, `updated_at`) VALUES
(1328, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-06 23:23:18', '2021-07-06 23:23:18'),
(1329, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-06 23:27:05', '2021-07-06 23:27:05'),
(1330, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-06 23:30:56', '2021-07-06 23:30:56'),
(1331, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-06 23:31:06', '2021-07-06 23:31:06'),
(1332, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-06 23:34:02', '2021-07-06 23:34:02'),
(1333, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-06 23:44:35', '2021-07-06 23:44:35'),
(1334, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-06 23:45:36', '2021-07-06 23:45:36'),
(1335, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-06 23:47:07', '2021-07-06 23:47:07'),
(1336, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-06 23:48:35', '2021-07-06 23:48:35'),
(1337, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-06 23:49:42', '2021-07-06 23:49:42'),
(1338, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-06 23:51:22', '2021-07-06 23:51:22'),
(1339, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-06 23:52:20', '2021-07-06 23:52:20'),
(1340, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-06 23:53:35', '2021-07-06 23:53:35'),
(1341, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-06 23:54:14', '2021-07-06 23:54:14'),
(1342, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-06 23:56:14', '2021-07-06 23:56:14'),
(1343, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-06 23:57:11', '2021-07-06 23:57:11'),
(1344, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-06 23:58:32', '2021-07-06 23:58:32'),
(1345, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-06 23:59:22', '2021-07-06 23:59:22'),
(1346, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-07 00:04:57', '2021-07-07 00:04:57'),
(1347, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-07 21:59:26', '2021-07-07 21:59:26'),
(1348, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-07 22:03:50', '2021-07-07 22:03:50'),
(1349, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-07 22:05:18', '2021-07-07 22:05:18'),
(1350, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-07 22:09:13', '2021-07-07 22:09:13'),
(1351, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-07 22:10:23', '2021-07-07 22:10:23'),
(1352, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-07 22:13:12', '2021-07-07 22:13:12'),
(1353, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-07 22:14:59', '2021-07-07 22:14:59'),
(1354, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-07 22:16:23', '2021-07-07 22:16:23'),
(1355, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-07 22:21:54', '2021-07-07 22:21:54'),
(1356, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-07 22:22:31', '2021-07-07 22:22:31'),
(1357, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-07 22:24:50', '2021-07-07 22:24:50'),
(1358, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-07 22:26:59', '2021-07-07 22:26:59'),
(1359, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-07 22:29:39', '2021-07-07 22:29:39'),
(1360, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-07 22:30:03', '2021-07-07 22:30:03'),
(1361, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-07 22:36:20', '2021-07-07 22:36:20'),
(1362, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-07 22:45:14', '2021-07-07 22:45:14'),
(1363, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-07 22:45:54', '2021-07-07 22:45:54'),
(1364, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-07 22:46:36', '2021-07-07 22:46:36'),
(1365, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-07 22:49:21', '2021-07-07 22:49:21'),
(1366, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-07 22:50:16', '2021-07-07 22:50:16'),
(1367, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-07 23:00:41', '2021-07-07 23:00:41'),
(1368, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-07 23:31:57', '2021-07-07 23:31:57'),
(1369, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-07 23:32:22', '2021-07-07 23:32:22'),
(1370, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-07 23:32:56', '2021-07-07 23:32:56'),
(1371, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-07 23:37:59', '2021-07-07 23:37:59'),
(1372, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-07 23:38:45', '2021-07-07 23:38:45'),
(1373, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-07 23:40:48', '2021-07-07 23:40:48'),
(1374, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-07 23:41:28', '2021-07-07 23:41:28'),
(1375, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-07 23:41:54', '2021-07-07 23:41:54'),
(1376, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-07 23:49:52', '2021-07-07 23:49:52'),
(1377, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-07 23:50:39', '2021-07-07 23:50:39'),
(1378, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-07 23:51:08', '2021-07-07 23:51:08'),
(1379, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-07 23:51:39', '2021-07-07 23:51:39'),
(1380, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-07 23:53:28', '2021-07-07 23:53:28'),
(1381, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-07 23:54:30', '2021-07-07 23:54:30'),
(1382, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-07 23:54:38', '2021-07-07 23:54:38'),
(1383, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-07 23:55:32', '2021-07-07 23:55:32'),
(1384, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-07 23:59:59', '2021-07-07 23:59:59'),
(1385, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-08 00:01:30', '2021-07-08 00:01:30'),
(1386, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-08 00:02:00', '2021-07-08 00:02:00'),
(1387, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-08 00:02:31', '2021-07-08 00:02:31'),
(1388, '127.0.0.0', 'US', 'United States', 'New Haven', 'Connecticut', 'NA', 'USD', 'CT', 'America/New_York', '1', '06510', '41.31', '-72.92', '2021-07-08 00:04:16', '2021-07-08 00:04:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_profile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `users` (`id`, `name`, `img_profile`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '/upload/admin/profile/admin_user.jpg', 'admin@lblconstruction.com', '2021-05-05 10:06:49', '$2y$10$BihMwNAHKWFLdu69RLFi0ORPrlxHYxuA0lPTLD/8aizlE2GpOWZz6', 'utuVPWJGJdZ1x3f5Mh9rIyZdCfCK5QVEKQRdRPopGEBetapfOvBf9qkrWydC', '2021-05-05 10:06:49', '2021-05-05 10:06:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `abouts_created_by_foreign` (`created_by`);

--
-- Indexes for table `archives`
--
ALTER TABLE `archives`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `awards_created_by_foreign` (`created_by`);

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `careers_created_by_foreign` (`created_by`);

--
-- Indexes for table `desing_builds`
--
ALTER TABLE `desing_builds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `desing_builds_created_by_foreign` (`created_by`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `headers`
--
ALTER TABLE `headers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `headers_created_by_foreign` (`created_by`);

--
-- Indexes for table `labels`
--
ALTER TABLE `labels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `labels_created_by_foreign` (`created_by`);

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
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `archives_created_by_foreign` (`created_by`);

--
-- Indexes for table `project_images`
--
ALTER TABLE `project_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_images_project_foreign` (`project`),
  ADD KEY `project_images_created_by_foreign` (`created_by`);

--
-- Indexes for table `recommends`
--
ALTER TABLE `recommends`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recommends_created_by_foreign` (`created_by`);

--
-- Indexes for table `section_pages`
--
ALTER TABLE `section_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `section_pages_created_by_foreign` (`created_by`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_created_by_foreign` (`created_by`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_created_by_foreign` (`created_by`);

--
-- Indexes for table `traffic`
--
ALTER TABLE `traffic`
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
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `archives`
--
ALTER TABLE `archives`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `awards`
--
ALTER TABLE `awards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `desing_builds`
--
ALTER TABLE `desing_builds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `headers`
--
ALTER TABLE `headers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `labels`
--
ALTER TABLE `labels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `project_images`
--
ALTER TABLE `project_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `recommends`
--
ALTER TABLE `recommends`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `section_pages`
--
ALTER TABLE `section_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `traffic`
--
ALTER TABLE `traffic`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1389;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `abouts`
--
ALTER TABLE `abouts`
  ADD CONSTRAINT `abouts_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `awards`
--
ALTER TABLE `awards`
  ADD CONSTRAINT `awards_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `careers`
--
ALTER TABLE `careers`
  ADD CONSTRAINT `careers_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `desing_builds`
--
ALTER TABLE `desing_builds`
  ADD CONSTRAINT `desing_builds_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `headers`
--
ALTER TABLE `headers`
  ADD CONSTRAINT `headers_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `labels`
--
ALTER TABLE `labels`
  ADD CONSTRAINT `labels_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `archives_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `project_images`
--
ALTER TABLE `project_images`
  ADD CONSTRAINT `project_images_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `project_images_project_foreign` FOREIGN KEY (`project`) REFERENCES `projects` (`id`);

--
-- Constraints for table `recommends`
--
ALTER TABLE `recommends`
  ADD CONSTRAINT `recommends_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `section_pages`
--
ALTER TABLE `section_pages`
  ADD CONSTRAINT `section_pages_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `teams`
--
ALTER TABLE `teams`
  ADD CONSTRAINT `teams_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
