-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2024 at 08:45 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_library`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `tahun_terbit` int(11) NOT NULL,
  `isbn` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `judul`, `penerbit`, `penulis`, `tahun_terbit`, `isbn`, `created_at`, `updated_at`) VALUES
(1, 'Ullam rerum dolore esse doloremque est.', 'Yayasan Putra (Persero) Tbk', 'Cindy Pratiwi', 1982, '9784149714776', '2024-11-07 23:36:09', '2024-11-07 23:36:09'),
(2, 'Ut molestias tempora non quia.', 'UD Suryatmi Rahayu', 'Karen Sudiati M.Ak', 1978, '9795624138468', '2024-11-07 23:36:09', '2024-11-07 23:36:09'),
(3, 'Consequatur maxime voluptas nihil et asperiores.', 'UD Pradipta Manullang (Persero) Tbk', 'Diana Amelia Sudiati S.Pt', 1980, '9796973308328', '2024-11-07 23:36:09', '2024-11-07 23:36:09'),
(4, 'Magnam facilis doloremque excepturi qui eligendi.', 'PJ Prastuti Agustina', 'Gadang Jindra Wahyudin M.Kom.', 1998, '9798567919446', '2024-11-07 23:36:09', '2024-11-07 23:36:09'),
(5, 'Sapiente voluptas nam et repellendus sint aut dolorem ut.', 'Yayasan Rahimah Hasanah Tbk', 'Ayu Ophelia Suartini', 2000, '9783476033987', '2024-11-07 23:36:09', '2024-11-07 23:36:09'),
(6, 'Quae corrupti minima sit mollitia.', 'Yayasan Hariyah Wibowo', 'Malika Rahayu M.TI.', 2012, '9794400487622', '2024-11-07 23:36:09', '2024-11-07 23:36:09'),
(7, 'Officiis adipisci beatae dicta laudantium itaque consequatur culpa.', 'UD Nasyiah Handayani Tbk', 'Ella Lailasari', 1983, '9793250820894', '2024-11-07 23:36:09', '2024-11-07 23:36:09'),
(8, 'Mollitia nam laboriosam aut unde qui.', 'PT Hartati Wacana', 'Elvina Melani S.H.', 2010, '9798304085618', '2024-11-07 23:36:09', '2024-11-07 23:36:09'),
(9, 'Recusandae excepturi consectetur reprehenderit repellendus itaque incidunt quisquam.', 'Yayasan Pranowo Fujiati (Persero) Tbk', 'Karman Enteng Salahudin', 1971, '9786588655535', '2024-11-07 23:36:09', '2024-11-07 23:36:09'),
(10, 'Sequi vero nihil aut omnis est.', 'Fa Maheswara Padmasari', 'Raisa Pratiwi S.Pt', 2019, '9788844494322', '2024-11-07 23:36:09', '2024-11-07 23:36:09');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cds`
--

CREATE TABLE `cds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `artist` varchar(255) NOT NULL,
  `publisher` varchar(255) NOT NULL,
  `release_year` year(4) NOT NULL,
  `genre` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cds`
--

INSERT INTO `cds` (`id`, `title`, `artist`, `publisher`, `release_year`, `genre`, `created_at`, `updated_at`) VALUES
(1, 'Iste dolor voluptatum unde.', 'Garnett Koepp', 'Crooks Inc', '2023', 'ipsam', NULL, NULL),
(2, 'Eius facere ut.', 'Emilie Kilback V', 'Stoltenberg, Paucek and Bruen', '2024', 'doloribus', NULL, NULL),
(3, 'Vero expedita facere.', 'Grady Lehner PhD', 'Upton and Sons', '1983', 'ullam', NULL, NULL),
(4, 'Repellendus in.', 'Dedrick Witting', 'Heidenreich-Hegmann', '1998', 'molestias', NULL, NULL),
(5, 'Sed aut sed voluptas.', 'Carolina Gutkowski', 'Quitzon, Fahey and Robel', '2019', 'impedit', NULL, NULL),
(6, 'Doloremque labore molestiae labore.', 'Madaline Macejkovic', 'Brekke LLC', '2010', 'ut', NULL, NULL),
(7, 'Cumque cumque recusandae.', 'Angel Hermann', 'Zboncak, Halvorson and Blanda', '2000', 'impedit', NULL, NULL),
(8, 'Dignissimos ab ut.', 'Landen Gottlieb', 'Hauck-Hettinger', '2020', 'voluptatem', NULL, NULL),
(9, 'Et ut rem.', 'Jennifer Connelly PhD', 'Botsford and Sons', '2017', 'quam', NULL, NULL),
(10, 'Ut quia esse molestiae nisi.', 'Prof. Nikko Wolf III', 'Simonis and Sons', '1989', 'sint', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `final_year_projects`
--

CREATE TABLE `final_year_projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `supervisor` varchar(255) NOT NULL,
  `submission_year` year(4) NOT NULL,
  `abstract` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `final_year_projects`
--

INSERT INTO `final_year_projects` (`id`, `title`, `student_name`, `supervisor`, `submission_year`, `abstract`, `created_at`, `updated_at`) VALUES
(1, 'Neque aut aliquid qui sint esse vero.', 'Cecil Wisozk', 'Vern Boehm', '2015', 'Consequuntur vero dicta rerum voluptatum. Unde ut debitis quasi nesciunt. Sit odio voluptatem voluptatem nostrum deserunt. In omnis quidem perferendis doloremque unde.', NULL, NULL),
(2, 'Illum qui aliquam vitae.', 'Miss Tracy Moen Jr.', 'Mrs. Anastasia Kertzmann V', '1970', 'Aliquid ea harum aperiam voluptates. Laborum id eius dolorem ab. Aut tempora perspiciatis quibusdam voluptatibus iure suscipit illo quam.', NULL, NULL),
(3, 'Cum labore nobis eum.', 'Ms. June Langworth', 'Prof. Douglas Jacobson', '1979', 'In aut delectus non. Expedita veniam et quisquam sed quis id. Quod sint aliquam et aut id et eius. Exercitationem reiciendis in vel ipsa voluptas quas impedit.', NULL, NULL),
(4, 'Vero ut suscipit eum.', 'Dina Murray', 'Aglae Hirthe', '2017', 'Laborum non voluptates facere voluptatem ut deleniti. Voluptatem quae commodi inventore quis quasi. Fuga vel fugiat omnis tempore. Ut molestiae et quibusdam voluptatem expedita maiores voluptas.', NULL, NULL),
(5, 'Suscipit deserunt sequi sit.', 'Rhett Koss I', 'Dr. Elwin Hickle III', '1981', 'Possimus eos et non quo. Ipsum voluptatem vero perferendis natus amet suscipit aliquid. Mollitia commodi et sed facere consequatur aut eum. Nostrum tempore dolorem alias.', NULL, NULL),
(6, 'Quo at ullam aliquam consequuntur.', 'Audreanne Ferry', 'Alysha Monahan MD', '2020', 'Magni quis maxime excepturi ex dignissimos nobis alias. Maiores eligendi dicta vel voluptas sapiente. Harum atque magnam nihil enim excepturi voluptas consequuntur. Expedita omnis doloribus quas sapiente ad dolore.', NULL, NULL),
(7, 'Pariatur eveniet ut enim quia.', 'Emily Emard', 'Thad Skiles', '1990', 'Quaerat nam qui illo cumque. Ducimus aut vitae sed qui quae. Mollitia aperiam consequuntur ullam est aliquam voluptas temporibus.', NULL, NULL),
(8, 'Voluptatibus odit corporis nobis.', 'Yasmeen Waelchi', 'Brannon Watsica', '1991', 'Neque neque aperiam qui praesentium rem officia. Nemo ut velit alias iste quia tenetur deserunt vitae. Non ad animi ipsam sed fugiat autem fugiat. Quod sint dignissimos magni in.', NULL, NULL),
(9, 'Nostrum iure enim ab.', 'Mr. Hans Ratke', 'Madaline Fritsch', '1983', 'Expedita voluptas sint nemo autem quo. Et quas accusamus consequuntur et distinctio incidunt est. Repudiandae quia optio officia voluptatibus.', NULL, NULL),
(10, 'Debitis dolor vitae a ducimus.', 'Ms. Addie Jacobson Jr.', 'Rodger O\'Kon', '2007', 'Soluta et eum eaque et. Repellat dolore iusto recusandae blanditiis consequatur.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `journals`
--

CREATE TABLE `journals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `tahun_terbit` int(11) NOT NULL,
  `isbn` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `journals`
--

INSERT INTO `journals` (`id`, `judul`, `penerbit`, `penulis`, `tahun_terbit`, `isbn`, `created_at`, `updated_at`) VALUES
(1, 'Fugit veritatis excepturi alias facilis quibusdam nihil dolorem.', 'UD Hasanah Megantara', 'Restu Riyanti', 2011, '9795390179009', '2024-11-07 23:36:09', '2024-11-07 23:36:09'),
(2, 'Culpa vitae rerum cumque.', 'PJ Simanjuntak Fujiati Tbk', 'Cici Usamah M.Ak', 1996, '9791411702997', '2024-11-07 23:36:09', '2024-11-07 23:36:09'),
(3, 'Quo praesentium voluptatibus necessitatibus rerum perferendis.', 'Fa Kuswoyo Oktaviani', 'Paramita Yolanda S.IP', 1997, '9793044712558', '2024-11-07 23:36:09', '2024-11-07 23:36:09'),
(4, 'Id nemo accusamus quis ipsa non veritatis et illo.', 'Perum Wulandari Nurdiyanti (Persero) Tbk', 'Sakura Yuliarti', 1983, '9792223969806', '2024-11-07 23:36:09', '2024-11-07 23:36:09'),
(5, 'Tenetur nisi unde provident et sed et.', 'Fa Yuliarti (Persero) Tbk', 'Gilda Gabriella Usada M.TI.', 1979, '9787959109084', '2024-11-07 23:36:09', '2024-11-07 23:36:09'),
(6, 'Provident vel aperiam dolorem nulla aliquid facere.', 'UD Simbolon Purwanti', 'Elma Laksita', 1984, '9784921468552', '2024-11-07 23:36:09', '2024-11-07 23:36:09'),
(7, 'Reiciendis delectus est cupiditate ratione soluta corrupti laboriosam.', 'PD Hariyah', 'Darimin Bakijan Suryono S.H.', 2018, '9781852972660', '2024-11-07 23:36:09', '2024-11-07 23:36:09'),
(8, 'Non est nemo minus quasi.', 'UD Jailani Suryono', 'Cemani Hutagalung S.Gz', 1971, '9784867531679', '2024-11-07 23:36:09', '2024-11-07 23:36:09'),
(9, 'Quam placeat qui porro sit reprehenderit quidem.', 'UD Kusumo', 'Gamani Ikhsan Santoso M.Farm', 1986, '9793846821717', '2024-11-07 23:36:09', '2024-11-07 23:36:09'),
(10, 'Enim tempora similique unde maxime consequatur voluptatem assumenda dolor.', 'Fa Napitupulu', 'Keisha Vera Laksmiwati', 1983, '9790381218187', '2024-11-07 23:36:09', '2024-11-07 23:36:09');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_11_08_042552_books', 1),
(5, '2024_11_08_042636_journal', 1),
(6, '2024_11_08_062938_create_cds_table', 1),
(7, '2024_11_08_062941_create_newspapers_table', 1),
(8, '2024_11_08_062942_create_final_year_projects_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `newspapers`
--

CREATE TABLE `newspapers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `publication_date` date NOT NULL,
  `publisher` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newspapers`
--

INSERT INTO `newspapers` (`id`, `name`, `publication_date`, `publisher`, `language`, `created_at`, `updated_at`) VALUES
(1, 'Langworth-Davis', '2009-05-28', 'Eichmann Ltd', 'co', NULL, NULL),
(2, 'Bergnaum-Kassulke', '1978-08-28', 'Kassulke Ltd', 'ho', NULL, NULL),
(3, 'Kilback, Douglas and Sawayn', '2009-10-04', 'Renner-Jacobi', 'fr', NULL, NULL),
(4, 'Mayer, Murray and Stanton', '1989-12-29', 'Emmerich, Bradtke and Gutkowski', 'nb', NULL, NULL),
(5, 'Predovic, Gusikowski and Goyette', '1984-01-14', 'Green Ltd', 'dz', NULL, NULL),
(6, 'Dibbert Group', '2013-06-30', 'Donnelly and Sons', 'tg', NULL, NULL),
(7, 'Funk Ltd', '2020-05-11', 'Bogisich, McKenzie and Kiehn', 'ak', NULL, NULL),
(8, 'Hagenes Group', '1982-04-13', 'Heidenreich-Zboncak', 'sd', NULL, NULL),
(9, 'Little-Treutel', '2021-01-15', 'Hand-Hermiston', 'nl', NULL, NULL),
(10, 'Jones-Eichmann', '1984-05-29', 'Eichmann PLC', 'fi', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('h4CaRKHBT7q0U0aFUXVzJqcPCNiEacluXENlSmUW', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUWxOVXJhTnNIQ0tSY0J2bTBRRk9IVU5rNXJsRFJDQnRZYk9xdFJtZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9maW5hbF95ZWFyX3Byb2plY3RzL2FzYyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1731051869);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'test@example.com', '2024-11-07 23:36:09', '$2y$12$3qRQnRWl1hBrhDlyOPk/0eE97WlAQK7CqZJcpIwO8L/d2h0aogxkK', 'swA07RlZri', '2024-11-07 23:36:09', '2024-11-07 23:36:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `books_isbn_unique` (`isbn`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cds`
--
ALTER TABLE `cds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `final_year_projects`
--
ALTER TABLE `final_year_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `journals`
--
ALTER TABLE `journals`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `journals_isbn_unique` (`isbn`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newspapers`
--
ALTER TABLE `newspapers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cds`
--
ALTER TABLE `cds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `final_year_projects`
--
ALTER TABLE `final_year_projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `journals`
--
ALTER TABLE `journals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `newspapers`
--
ALTER TABLE `newspapers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
