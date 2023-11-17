-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2023 at 07:12 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbnews`
--

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_17_013332_create_news_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `url_image` varchar(255) NOT NULL,
  `published_at` datetime NOT NULL,
  `category` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `author`, `description`, `content`, `url`, `url_image`, `published_at`, `category`, `created_at`, `updated_at`) VALUES
(3, 'Video:Keluarga Tak aman, palestina waswas di kualifikasi piala dunia', 'CNN Indonesia', 'Pelatih timnas Palestina Makram Daboub mengatakan para pemainnya tidak bisa fokus 100 persen menjalani Kualifikasi Piala Dunia 2026.', 'Usai Palestina menahan imbang Lebanon tanpa gol di Uni Emirat Arab, Kamis (16/1), Daboub menyebut fokus para pemain timnas Palestina selalu tertuju ke informasi seputar anggota keluarga yang berada di Gaza.Daboub mengatakan untuk sering melihat handphone untuk mengecek keadaan keluarga.', 'https://bit.ly/sport-url', 'https://bit.ly/sport-image', '2023-11-17 00:00:00', 'sport', '2023-11-16 23:05:19', '2023-11-16 23:05:19'),
(4, 'Jokowi akui belum ada investor asing masuk ikn', 'CNN Indonesia', 'Presiden Joko Widodo (Jokowi) mengungkap belum ada investor asing yang masuk ke Ibu Kota Negara (IKN) Nusantara.', 'Sampai saat ini belum ada (investasi asing masuk IKN), kata Jokowi di sela KTT APEC di California, Amerika Serikat, Kamis (16/11) waktu setempat.Meski begitu, Jokowi optimis para investor asing bakalan tertarik masuk ke IKN. Pasalnya, saat ini saja sudah banyak pengusaha lokal Tanah Air yang menanam modal di IKN.', 'https://www.cnnindonesia.com/ekonomi/20231117114224-532-1025511/jokowi-akui-belum-ada-investor-asing-masuk-ikn', 'https://akcdn.detik.net.id/visual/2022/11/19/jokowi-di-apec-1_169.jpeg?w=650&q=90', '2023-11-17 00:00:00', 'finance', '2023-11-16 23:08:24', '2023-11-16 23:08:24'),
(5, 'Xi Jinping Bawa Limosin Antipeluru Hongqi N701 Temui Joe Biden', 'CNN Indonesia', 'Presiden China Xi Jinping membawa limosinnya sendiri saat tiba di Amerika Serikat pada Selasa (14/11). Limosin itu tak lain dan tak bukan adalah Hongqi N701.', 'Berdasarkan unggahan video di media sosial, N701 Xi dikawal puluhan kendaraan saat keluar dari bandara. Kendaraan yang mayoritas berwarna hitam itu di antaranya moge polisi, SUV bongsor merek Cadillac dan Chevrolet, truk Ford dan van Mercedes-Benz.Pemerintah China tampaknya tak cuma membawa satu unit sebab terlihat di konvoi itu ada dua N701 berwarna hitam. Hal seperti ini juga dilakukan ketika di Bali.N701 adalah kode mobil kepresidenan Xi, spesifikasi aslinya bukan konsumsi publik. Meski begitu mobil ini dipercaya dirancang dari basis sedan terbesar Hongqi, yakni H9.Ukuran bodi N701 diperkirakan panjangnya sekitar 5,5 meter, lebar lebih dari 2 meter, tinggi 1,5 meter dan jarak sumbu roda 3,4 meter. Limosin ini besarnya nyaris sama dengan Hongqi L5, mobil kepresidenan Xi sebelumnya.', 'https://www.cnnindonesia.com/otomotif/20231116131123-587-1025047/xi-jinping-bawa-limosin-antipeluru-hongqi-n701-temui-joe-biden', 'https://akcdn.detik.net.id/visual/2023/11/16/us-apec-summit_169.jpeg?w=650&q=90', '2023-11-17 00:00:00', 'automotive', '2023-11-16 23:11:10', '2023-11-16 23:11:10');

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'auth_token', '289f6c6b629ba0513a1b60d399ef5d20c857fa3679de3f5e2b549ea382ab38a3', '[\"*\"]', '2023-11-16 23:11:17', NULL, '2023-11-16 22:36:09', '2023-11-16 23:11:17');

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
(1, 'fatih', 'fatih2@gmail.com', NULL, '$2y$12$.mUWSx1yJ2ARY4.cKzXBw.56i1gf04FeDKAxH6F0j/gO2l6YbHRde', NULL, '2023-11-16 22:34:37', '2023-11-16 22:34:37');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
