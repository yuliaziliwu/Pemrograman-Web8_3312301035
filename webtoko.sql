-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2024 at 12:31 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webtoko`
--

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
(3, '0001_01_01_000002_create_jobs_table', 1);

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
('TZs995Nbczzyf8xto1bs3CcVeAojkeCPoqdTlPub', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRzQ5YlV6amhlVm5wR3JsT0xOR3RzNHkydWJvVWVoWlV3aGptWEdudCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9saXN0cHJvZHVrIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1715941698);

-- --------------------------------------------------------

--
-- Table structure for table `tblproduk`
--

CREATE TABLE `tblproduk` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblproduk`
--

INSERT INTO `tblproduk` (`id`, `nama`, `deskripsi`, `harga`) VALUES
(1, 'Emina Star Lash Aqua Mascara', 'Star Lash Aqua Mascara adalah maskara dengan formula tahan air yang membantu menonjolkan matamu.', 52000),
(2, 'Wardah EyeXpert Perfectcurl Mascara', 'Maskara ini sendiri memiliki manfaat yaitu curl lock power yang berfungsi membuat bulu mata lebih tebal, lebih lentik dan juga tahan lama saat dipakai, dan breathable yang tahan air, minyak dan keringat sehingga maskara tidak mudah luntur.\r\n', 60350),
(3, 'Carasun Solar Smart UV - Sun Cushion SPF 50+ PA++++ Refill', 'Carasun Solar Smart UV - Tint Sun Cushion merupakan inovasi 2-in-1 antara sunscreen atau tabir surya atau sunblock dan tinted foundation dalam bentuk BB cushion.\r\n\r\n', 99920),
(4, 'Gentle Foaming Facial Cleanser', 'Trueve Gentle Foaming Facial Cleanser diformulasikan dengan busa yang lembut sehingga dapat membersihkan kulit tanpa membuatnya kering dan seperti tertarik. Cocok untuk semua jenis kulit termasuk kulit sensitif.\r\n', 32560),
(5, 'Nacific Super Clean Foam Cleanser', 'Mengandung Kaolin Clay, Tea Tree Leaf Oil, Pappermint Extract, Soda (Sodium Bivarbonate) sebagai kandungan utama. Super Clean Foam Cleanser adalah sahabat terbaik untuk kulit bersihmu!', 151900),
(6, 'Wardah Everyday Cheek and Lip Tint\r\n', 'Wardah Everyday Cheek and Liptint dengan formula ringan dan aroma fruity yang menyegarkan. ', 52900),
(7, 'Erha Acneact Witch Hazel & BHA Gentle Acne Facial Wash', 'Salicylic Acid (BHA) sebagai antibakteri yang menghambat pertumbuhan bakteri P.acnes (bakteri penyebab jerawat), dan exfoliating agent untuk mengangkat sel kulit mati dan mengurangi microcomedones pada kulit.\r\n', 151000),
(8, 'Dancoly Rosemary Hair Activating Shampoo', 'Mengandung rosemary essence yang data secara efektif membantu memperbaiki mikrisirkulasi kulit kepala, menutrisi dan meningkatkan aktivitas folikel rambut.', 379000),
(9, 'Erha AcneAct Anti Acne Serum', 'Dikembangkan dengan formula dermatologi, ERHA AcneAct Anti Acne Serum merupakan serum yang diformulasikan khusus untuk kulit berminyak dan berjerawat.\r\n\r\nKANDUNGAN UTAMA\r\n2% BHA & Niacinamide\r\n', 151200),
(10, 'Cetaphil Moisturizing Lotion', 'Cetaphil Moisturizing Lotion secara khusus diformulasikan untuk menenangkan kulit kering kronis Anda. Formulanya tidak berminyak, tidak menimbulkan iritasi dan non-komedogenik (tidak akan menyumbat pori-pori), membuat Anda merasa lebih nyaman dengan kulit Anda sendiri.', 206100),
(11, 'Age Corrector Serum 20ml - Peptides & Soya Phytoplacenta', 'Age Corrector Serum adalah anti aging serum yang terbukti secara klinis dapat membantu menyamarkan kerutan di wajah dan menjaga elastisitas kulit.', 222000),
(12, 'Studio Tropik Flawless Priming Water', 'STUDIO TROPIK #Flawless Priming Water mengandung pelembab dan memberikan kesan wajah tampak lebih \"dewy\" dan halus. Mengandung formula Air Mawar dan Aloe Vera yang menyegarkan wajah. Cocok sebagai dasar make-up\r\n', 98000),
(13, 'Shirojyun Ultimate Whitening Milk', 'Hada Labo dengan formula Perfect x Simple, hanya menggunakan bahan berkualitas terbaik dan hanya yang bermanfaat bagi kulit. No added alcohol, no fragrance, and no colorant.', 72000),
(14, 'Bioderma Sensibio Gel Moussant - Foaming Gel Cleanser', 'Pembersih wajah bilas dengan kemampuan membersihkan yang lembut, menenangkan dan melembapkan kulit\r\n', 220000),
(15, 'Multitech 1484 Point Sponge', 'Spons kubus ALL IN ONE! Multitech 1484 Point Sponge merupakan spons yang digunakan untuk membaurkan riasan anda dan memberikan hasil yang sempurna. \r\n', 87900),
(16, '1715 Instapop Face Brush', 'The Real Techniques Instapop Cheek Brush is designed for one-sweep application of bold cheek color.\r\n', 232000),
(17, 'Lash Applicator', 'Aplikasikan bulu mata palsumu dengan cepat menggunakan Pocket Eyelash Applicator. Gunakan ujung silikon berwarna pink lalu tekan dengan lembut pada garis mata. Pengaplikasian yang mudah dan tidak berantakan! ', 73000),
(18, 'Eyelash Curler TV113', 'Penjepit bulu mata yang terbuat dari kualitas terbaik. Mampu membuat bulu matamu terlihat lebih lentik, dapat digunakan untuk penggunaan sehari-hari atau penggunaan profesional.\r\n', 56900),
(19, 'Lip Fuller Big Diamond', 'Benefit of This Product:\r\n*Long Lasting Volume-Plumping Lips\r\nMemberikan tampilan bibir lebih bervolume dan plumpy yang tahan lama\r\n*Shiny Lips Like Diamond Glitters\r\nBibir lebih berkilau seperti Diamond Glitters\r\n', 269100),
(20, 'Brylee Orange Blossom Facial Mask', 'Mengandung Aktivitas tinggi molekul kecil esensi Vitamin C, seiring dengan efisien aktivitas antioksidan, masker ini membantu memutihkan dan mencerahkan kulit wajah, menyamarkan noda hitam, menyamarkan noda bekas jerawat, dan mengemba- likan keelastisitasan kulit.', 5700);

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
-- Indexes for dumped tables
--

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
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- Indexes for table `tblproduk`
--
ALTER TABLE `tblproduk`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblproduk`
--
ALTER TABLE `tblproduk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
