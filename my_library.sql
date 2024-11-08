-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2024 at 07:56 AM
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
  `ISBN` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `judul`, `penerbit`, `penulis`, `tahun_terbit`, `ISBN`, `created_at`, `updated_at`) VALUES
(1, 'Enim magnam nobis tempore.', 'PJ Yuliarti Tbk', 'Rudi Radit Saefullah M.Ak', 1996, '9781854991362', '2024-11-07 22:45:31', '2024-11-07 22:45:31'),
(2, 'Quos voluptas adipisci est magni tenetur vero.', 'CV Pradipta Tbk', 'Vega Ramadan', 1972, '9795606306267', '2024-11-07 22:45:31', '2024-11-07 22:45:31'),
(3, 'Vel repellat fuga quia officiis.', 'CV Dabukke Pertiwi (Persero) Tbk', 'Rusman Prakasa', 2017, '9782275506166', '2024-11-07 22:45:31', '2024-11-07 22:45:31'),
(4, 'Et ipsa corporis nulla dicta ad.', 'Fa Usamah Marpaung Tbk', 'Silvia Fitria Wijayanti S.E.', 2021, '9799887553990', '2024-11-07 22:45:31', '2024-11-07 22:45:31'),
(5, 'Nemo enim est qui.', 'Fa Maryati Rahmawati Tbk', 'Okta Waluyo Sitorus', 2009, '9796424127959', '2024-11-07 22:45:31', '2024-11-07 22:45:31'),
(6, 'Harum mollitia consectetur nisi.', 'PD Oktaviani Dabukke', 'Prakosa Sihombing', 2023, '9786755119754', '2024-11-07 22:45:31', '2024-11-07 22:45:31'),
(7, 'Eligendi quod repudiandae id dolor laboriosam assumenda.', 'PJ Halim Kurniawan', 'Taswir Firmansyah', 2006, '9789595596204', '2024-11-07 22:45:31', '2024-11-07 22:45:31'),
(8, 'Ratione quo sed ut quaerat sit fuga qui.', 'PJ Prabowo', 'Jessica Mandasari', 1997, '9790761078417', '2024-11-07 22:45:31', '2024-11-07 22:45:31'),
(9, 'Rerum et molestiae aspernatur quis qui aspernatur voluptas.', 'PJ Puspita Siregar', 'Aswani Emil Saptono', 2014, '9789355234445', '2024-11-07 22:45:31', '2024-11-07 22:45:31'),
(10, 'Voluptas consectetur dolorem voluptate iusto nostrum.', 'Yayasan Hasanah Sirait', 'Oman Widodo', 2018, '9789124159641', '2024-11-07 22:45:31', '2024-11-07 22:45:31');

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
(1, 'Optio inventore autem qui.', 'Daren Quigley', 'Gislason-Mayer', '1995', 'modi', NULL, NULL),
(2, 'Eum quo.', 'Max Stehr I', 'Kihn, Batz and Nicolas', '2008', 'expedita', NULL, NULL),
(3, 'Autem vitae facilis.', 'Esther Prohaska', 'Stroman-Mayer', '1987', 'et', NULL, NULL),
(4, 'Nostrum dolorum nam.', 'Terrence Wiegand', 'Welch-Lesch', '1982', 'qui', NULL, NULL),
(5, 'Vitae eius omnis recusandae.', 'Liam Koch', 'Blick Group', '1978', 'eveniet', NULL, NULL),
(6, 'Quaerat sequi voluptatibus aut.', 'Westley Schroeder', 'Pollich, Satterfield and Kshlerin', '1973', 'consequatur', NULL, NULL),
(7, 'Corporis non eum iusto.', 'Ford Heathcote', 'Schaefer, Kautzer and Gulgowski', '1989', 'illum', NULL, NULL),
(8, 'Ut odio et pariatur.', 'Ernest Block', 'Zieme, Wisozk and Monahan', '1992', 'commodi', NULL, NULL),
(9, 'Dolor veniam qui.', 'Elijah Heidenreich', 'Kuvalis LLC', '1972', 'magni', NULL, NULL),
(10, 'Dolorem autem.', 'Ahmed Tromp', 'Hamill, Hansen and Ferry', '1972', 'fugit', NULL, NULL);

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
(1, 'Rem inventore dolores provident aut.', 'Prof. Moshe Hyatt', 'Maybelle Walsh', '2003', 'Dicta aut ut aut accusantium qui et. Et ex eligendi quo culpa molestias. Sit facilis earum sunt perspiciatis et.', NULL, NULL),
(2, 'Iure at aliquam ullam officia est.', 'Zechariah Hahn V', 'Prof. Alverta Schultz', '2012', 'Voluptatum laudantium consectetur sequi occaecati ipsam est. Qui ut illum consequatur recusandae voluptatem et.', NULL, NULL),
(3, 'Culpa ut pariatur at et.', 'Leda Stanton', 'Ms. Elissa Rolfson', '1976', 'Nihil sequi odit libero autem enim eius ipsam eius. Voluptatem et labore cupiditate. Eveniet perspiciatis facilis ut possimus.', NULL, NULL),
(4, 'Rem nihil aut animi quas.', 'Kade Bechtelar', 'Domingo Kuphal', '2011', 'Sit qui totam dicta consequuntur placeat maiores voluptates. Qui in ut quia pariatur maxime numquam. Dolorum odio neque porro et praesentium et.', NULL, NULL),
(5, 'Tempore quia nulla quia aut et.', 'Keith Funk', 'Madge Heller', '1988', 'Et et minus vitae omnis necessitatibus. Voluptatem culpa aspernatur quasi sed quas voluptatem et. Ad corporis corrupti eligendi excepturi soluta incidunt eum facilis. Fuga at libero animi debitis et. Voluptatum voluptatum ea commodi aut.', NULL, NULL),
(6, 'Quas expedita corrupti sed numquam nostrum nam.', 'Dejuan Graham', 'Wiley Zulauf', '1977', 'Eum perferendis ipsum animi unde dolorem aut. Eum ex labore quia est est. Fugit autem hic deserunt sapiente. Ut necessitatibus itaque dolorem aut.', NULL, NULL),
(7, 'Deleniti molestiae nulla omnis.', 'Polly Wyman', 'Ms. Kaelyn Lubowitz', '1972', 'Ea occaecati nam dolores velit. Incidunt rerum nisi beatae optio ullam. Suscipit praesentium ipsam est velit. Non omnis recusandae fugit ullam ea asperiores.', NULL, NULL),
(8, 'Quaerat et dolore hic impedit accusantium suscipit.', 'Santos Daugherty PhD', 'Ronaldo Bosco', '1981', 'Harum et expedita qui. Eum iusto sint corporis eligendi suscipit alias. Ducimus explicabo consequuntur numquam dolorem placeat rerum aut consectetur. Explicabo consequatur ducimus cupiditate id rerum dolorem.', NULL, NULL),
(9, 'Autem nisi blanditiis in ut.', 'Mrs. Cynthia Doyle Jr.', 'Felix Gutmann', '1991', 'Ut ea eligendi vel eos qui blanditiis fugit. Id rerum quia esse temporibus dolorum consectetur. Enim qui quas facilis itaque.', NULL, NULL),
(10, 'Et eius provident dolores.', 'Prof. Chet Abbott Jr.', 'Xander Bartoletti', '1980', 'Excepturi qui officiis numquam cumque. Nobis tenetur qui quam ut et rerum. Et quos atque laborum sunt tempore culpa.', NULL, NULL);

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
  `ISBN` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `journals`
--

INSERT INTO `journals` (`id`, `judul`, `penerbit`, `penulis`, `tahun_terbit`, `ISBN`, `created_at`, `updated_at`) VALUES
(1, 'Et perspiciatis aut aut dolor blanditiis.', 'Yayasan Hartati', 'Estiawan Nugroho S.IP', 2005, '9789489091259', '2024-11-07 22:45:31', '2024-11-07 22:45:31'),
(2, 'Totam aspernatur consequatur id voluptatem in aut iste.', 'Fa Nugroho Prayoga', 'Caraka Hutagalung M.TI.', 1986, '9794626526983', '2024-11-07 22:45:31', '2024-11-07 22:45:31'),
(3, 'Et corrupti perspiciatis quis.', 'Perum Hutasoit Halim', 'Radika Thamrin M.Pd', 1975, '9782467332016', '2024-11-07 22:45:31', '2024-11-07 22:45:31'),
(4, 'Sit recusandae aut ut libero recusandae provident odio laudantium.', 'Perum Riyanti Saragih', 'Farhunnisa Andriani', 2013, '9787809239541', '2024-11-07 22:45:31', '2024-11-07 22:45:31'),
(5, 'Repudiandae amet harum aut recusandae at veritatis.', 'CV Puspita Astuti', 'Ihsan Kusumo', 1989, '9782807834637', '2024-11-07 22:45:31', '2024-11-07 22:45:31'),
(6, 'Officia ea est rerum omnis hic et in.', 'UD Sihombing', 'Warji Thamrin', 1998, '9782343853949', '2024-11-07 22:45:31', '2024-11-07 22:45:31'),
(7, 'Doloremque vitae quos porro dolores est possimus.', 'Yayasan Yolanda Agustina', 'Lasmono Edi Hutasoit', 2017, '9783213304462', '2024-11-07 22:45:31', '2024-11-07 22:45:31'),
(8, 'Tenetur ipsum voluptas rem eos quod labore.', 'UD Sitorus Siregar Tbk', 'Damar Situmorang', 2007, '9782554257437', '2024-11-07 22:45:31', '2024-11-07 22:45:31'),
(9, 'Enim quos quasi atque quia.', 'Fa Kuswandari Safitri (Persero) Tbk', 'Raina Mardhiyah S.T.', 2003, '9799183585589', '2024-11-07 22:45:31', '2024-11-07 22:45:31'),
(10, 'Aperiam autem eaque id sed fugit qui sed.', 'Perum Yulianti Tbk', 'Sabrina Uyainah', 1971, '9785270126032', '2024-11-07 22:45:31', '2024-11-07 22:45:31');

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
(1, 'Wuckert, Nienow and Vandervort', '1973-11-08', 'Feeney-Mante', 'da', NULL, NULL),
(2, 'Schmeler, Moore and Goldner', '2003-07-16', 'Brakus Group', 'rm', NULL, NULL),
(3, 'Walter-Nikolaus', '1985-07-26', 'Casper Ltd', 've', NULL, NULL),
(4, 'Bernhard, Kohler and Green', '2012-05-11', 'Bednar, Leannon and Rice', 'ml', NULL, NULL),
(5, 'Lindgren-Bernier', '2022-01-31', 'O\'Kon and Sons', 'ss', NULL, NULL),
(6, 'Hickle-Orn', '1988-01-28', 'Miller Ltd', 'lt', NULL, NULL),
(7, 'Herman Ltd', '1993-11-05', 'Treutel-Wunsch', 'tk', NULL, NULL),
(8, 'Runte, Heathcote and Wuckert', '1982-07-25', 'Eichmann-Kozey', 'no', NULL, NULL),
(9, 'King, Jast and Howell', '1975-04-01', 'Medhurst-Walter', 'su', NULL, NULL),
(10, 'Mertz, Ebert and Bogisich', '1974-07-27', 'Wilderman-Fadel', 'gv', NULL, NULL);

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
('h4CaRKHBT7q0U0aFUXVzJqcPCNiEacluXENlSmUW', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSGxQMzh2c3ZpZFhSTGFvREJzSE9ab0FyRmpPR0IyUXdEMVVWaUdVWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jZHMvYXNjIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1731048983);

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
(1, 'Test User', 'test@example.com', '2024-11-07 22:45:30', '$2y$12$V/7v3mGoVWD53EIiUj5Roe0Rhq7qG1wrGhsy4xp50Zl0Vat5Mq0nC', '8XhO8fa5jE', '2024-11-07 22:45:31', '2024-11-07 22:45:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `books_isbn_unique` (`ISBN`);

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
  ADD UNIQUE KEY `journals_isbn_unique` (`ISBN`);

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
