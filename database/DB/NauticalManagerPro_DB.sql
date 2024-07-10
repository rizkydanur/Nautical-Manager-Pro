-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Waktu pembuatan: 10 Jul 2024 pada 06.29
-- Versi server: 5.7.39
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `NauticalManagerPro_DB`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_06_19_042251_create_table_user_table', 2),
(6, '2024_06_19_042341_create_table_vendor_table', 3),
(7, '2024_06_19_043148_create_tabel_user_table', 4),
(8, '2024_06_19_043415_create_tabel_vendor_table', 5),
(9, '2024_06_19_043736_create_tabel_inventory_table', 6),
(10, '2024_06_19_044020_create_tabel_kapal_table', 6),
(11, '2024_06_19_060751_create_tabel_shipper_table', 7),
(12, '2024_06_19_061130_create_tabel_on_board_table', 8),
(13, '2024_06_19_061344_create_tabel_cargo_table', 9),
(14, '2024_06_19_061903_create_tabel_shipment_table', 10),
(15, '2024_06_19_063900_create_tabel_list_barang_table', 11),
(16, '2024_06_19_080620_create_tabel_purchasing_table', 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_cargo`
--

CREATE TABLE `tabel_cargo` (
  `id_cargo` bigint(20) UNSIGNED NOT NULL,
  `id_shipper` bigint(20) UNSIGNED NOT NULL,
  `nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_barang` int(11) NOT NULL,
  `total_tonase` decimal(10,2) NOT NULL,
  `total_kubikasi` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_inventory`
--

CREATE TABLE `tabel_inventory` (
  `id_inventory` bigint(20) UNSIGNED NOT NULL,
  `id_kapal` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_vendor` bigint(20) UNSIGNED NOT NULL,
  `nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty_barang` int(11) NOT NULL,
  `tanggal_terima` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_kapal`
--

CREATE TABLE `tabel_kapal` (
  `id_kapal` bigint(20) UNSIGNED NOT NULL,
  `nama_kapal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun_pembuatan_kapal` year(4) NOT NULL,
  `imo_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gross_ton_kapal` int(11) NOT NULL,
  `dwt_kapal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_list_barang`
--

CREATE TABLE `tabel_list_barang` (
  `id_list_barang` bigint(20) UNSIGNED NOT NULL,
  `id_vendor_barang` bigint(20) UNSIGNED NOT NULL,
  `nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga_barang` decimal(15,2) NOT NULL,
  `tanggal_expired` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_on_board`
--

CREATE TABLE `tabel_on_board` (
  `id_onboard` bigint(20) UNSIGNED NOT NULL,
  `id_kapal` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_purchasing`
--

CREATE TABLE `tabel_purchasing` (
  `id_purchasing` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_kapal` bigint(20) UNSIGNED NOT NULL,
  `id_list_barang` bigint(20) UNSIGNED NOT NULL,
  `total_anggaran` decimal(15,2) NOT NULL,
  `status` enum('pratinjau','di setujui') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pratinjau',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_shipment`
--

CREATE TABLE `tabel_shipment` (
  `id_shipment` bigint(20) UNSIGNED NOT NULL,
  `id_kapal` bigint(20) UNSIGNED NOT NULL,
  `id_cargo` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_shipper` bigint(20) UNSIGNED NOT NULL,
  `rute` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` decimal(15,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_shipper`
--

CREATE TABLE `tabel_shipper` (
  `id_shipper` bigint(20) UNSIGNED NOT NULL,
  `nama_shipper` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telfon` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('aktif','non aktif') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'aktif',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_user`
--

CREATE TABLE `tabel_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('on board','off board') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'on board',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_vendor`
--

CREATE TABLE `tabel_vendor` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_vendor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_tlfn` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tabel_vendor`
--

INSERT INTO `tabel_vendor` (`id`, `nama_vendor`, `vendor_barang`, `alamat`, `email`, `no_tlfn`, `created_at`, `updated_at`) VALUES
(1, 'test a', 'test a', 'test a', 'a@gmail.com', '000000000', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
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
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `tabel_cargo`
--
ALTER TABLE `tabel_cargo`
  ADD PRIMARY KEY (`id_cargo`),
  ADD KEY `tabel_cargo_id_shipper_foreign` (`id_shipper`);

--
-- Indeks untuk tabel `tabel_inventory`
--
ALTER TABLE `tabel_inventory`
  ADD PRIMARY KEY (`id_inventory`),
  ADD UNIQUE KEY `tabel_inventory_id_kapal_foreign` (`id_kapal`) USING BTREE,
  ADD KEY `tabel_inventory_id_user_foreign` (`id_user`),
  ADD KEY `tabel_inventory_id_vendor_foreign` (`id_vendor`);

--
-- Indeks untuk tabel `tabel_kapal`
--
ALTER TABLE `tabel_kapal`
  ADD PRIMARY KEY (`id_kapal`),
  ADD UNIQUE KEY `tabel_kapal_imo_number_unique` (`imo_number`);

--
-- Indeks untuk tabel `tabel_list_barang`
--
ALTER TABLE `tabel_list_barang`
  ADD PRIMARY KEY (`id_list_barang`),
  ADD KEY `tabel_list_barang_id_vendor_barang_foreign` (`id_vendor_barang`);

--
-- Indeks untuk tabel `tabel_on_board`
--
ALTER TABLE `tabel_on_board`
  ADD PRIMARY KEY (`id_onboard`),
  ADD KEY `tabel_on_board_id_kapal_foreign` (`id_kapal`),
  ADD KEY `tabel_on_board_id_user_foreign` (`id_user`);

--
-- Indeks untuk tabel `tabel_purchasing`
--
ALTER TABLE `tabel_purchasing`
  ADD PRIMARY KEY (`id_purchasing`),
  ADD KEY `tabel_purchasing_id_user_foreign` (`id_user`),
  ADD KEY `tabel_purchasing_id_kapal_foreign` (`id_kapal`),
  ADD KEY `tabel_purchasing_id_list_barang_foreign` (`id_list_barang`);

--
-- Indeks untuk tabel `tabel_shipment`
--
ALTER TABLE `tabel_shipment`
  ADD PRIMARY KEY (`id_shipment`),
  ADD KEY `tabel_shipment_id_kapal_foreign` (`id_kapal`),
  ADD KEY `tabel_shipment_id_cargo_foreign` (`id_cargo`),
  ADD KEY `tabel_shipment_id_user_foreign` (`id_user`),
  ADD KEY `tabel_shipment_id_shipper_foreign` (`id_shipper`);

--
-- Indeks untuk tabel `tabel_shipper`
--
ALTER TABLE `tabel_shipper`
  ADD PRIMARY KEY (`id_shipper`),
  ADD UNIQUE KEY `tabel_shipper_email_unique` (`email`);

--
-- Indeks untuk tabel `tabel_user`
--
ALTER TABLE `tabel_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tabel_user_email_unique` (`email`);

--
-- Indeks untuk tabel `tabel_vendor`
--
ALTER TABLE `tabel_vendor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tabel_vendor_email_unique` (`email`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tabel_cargo`
--
ALTER TABLE `tabel_cargo`
  MODIFY `id_cargo` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tabel_inventory`
--
ALTER TABLE `tabel_inventory`
  MODIFY `id_inventory` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tabel_kapal`
--
ALTER TABLE `tabel_kapal`
  MODIFY `id_kapal` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tabel_list_barang`
--
ALTER TABLE `tabel_list_barang`
  MODIFY `id_list_barang` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tabel_on_board`
--
ALTER TABLE `tabel_on_board`
  MODIFY `id_onboard` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tabel_purchasing`
--
ALTER TABLE `tabel_purchasing`
  MODIFY `id_purchasing` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tabel_shipment`
--
ALTER TABLE `tabel_shipment`
  MODIFY `id_shipment` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tabel_shipper`
--
ALTER TABLE `tabel_shipper`
  MODIFY `id_shipper` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tabel_user`
--
ALTER TABLE `tabel_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tabel_vendor`
--
ALTER TABLE `tabel_vendor`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tabel_cargo`
--
ALTER TABLE `tabel_cargo`
  ADD CONSTRAINT `tabel_cargo_id_shipper_foreign` FOREIGN KEY (`id_shipper`) REFERENCES `tabel_shipper` (`id_shipper`);

--
-- Ketidakleluasaan untuk tabel `tabel_inventory`
--
ALTER TABLE `tabel_inventory`
  ADD CONSTRAINT `tabel_inventory_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `tabel_user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tabel_inventory_id_vendor_foreign` FOREIGN KEY (`id_vendor`) REFERENCES `tabel_vendor` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tabel_list_barang`
--
ALTER TABLE `tabel_list_barang`
  ADD CONSTRAINT `tabel_list_barang_id_vendor_barang_foreign` FOREIGN KEY (`id_vendor_barang`) REFERENCES `tabel_vendor` (`id`);

--
-- Ketidakleluasaan untuk tabel `tabel_on_board`
--
ALTER TABLE `tabel_on_board`
  ADD CONSTRAINT `tabel_on_board_id_kapal_foreign` FOREIGN KEY (`id_kapal`) REFERENCES `tabel_kapal` (`id_kapal`),
  ADD CONSTRAINT `tabel_on_board_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `tabel_user` (`id`);

--
-- Ketidakleluasaan untuk tabel `tabel_purchasing`
--
ALTER TABLE `tabel_purchasing`
  ADD CONSTRAINT `tabel_purchasing_id_kapal_foreign` FOREIGN KEY (`id_kapal`) REFERENCES `tabel_kapal` (`id_kapal`),
  ADD CONSTRAINT `tabel_purchasing_id_list_barang_foreign` FOREIGN KEY (`id_list_barang`) REFERENCES `tabel_list_barang` (`id_list_barang`),
  ADD CONSTRAINT `tabel_purchasing_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `tabel_user` (`id`);

--
-- Ketidakleluasaan untuk tabel `tabel_shipment`
--
ALTER TABLE `tabel_shipment`
  ADD CONSTRAINT `tabel_shipment_id_cargo_foreign` FOREIGN KEY (`id_cargo`) REFERENCES `tabel_cargo` (`id_cargo`),
  ADD CONSTRAINT `tabel_shipment_id_kapal_foreign` FOREIGN KEY (`id_kapal`) REFERENCES `tabel_kapal` (`id_kapal`),
  ADD CONSTRAINT `tabel_shipment_id_shipper_foreign` FOREIGN KEY (`id_shipper`) REFERENCES `tabel_shipper` (`id_shipper`),
  ADD CONSTRAINT `tabel_shipment_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `tabel_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
