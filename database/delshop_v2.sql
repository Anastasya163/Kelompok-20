-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2025 at 01:20 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `delshop_v2`
--

-- --------------------------------------------------------

--
-- Table structure for table `corousels`
--

CREATE TABLE `corousels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gambar_corousel` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `corousels`
--

INSERT INTO `corousels` (`id`, `gambar_corousel`, `status`, `created_at`, `updated_at`) VALUES
(1, '1715797247866-www.delshop.com.png', 1, NULL, NULL),
(2, '1715797772405-sdf.jpg', 1, NULL, '2024-05-27 11:47:05'),
(3, 'qwe.jpg', 1, NULL, '2024-05-27 11:38:40');

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
-- Table structure for table `gantiroles`
--

CREATE TABLE `gantiroles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `bukti` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Menunggu',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategoripembayarans`
--

CREATE TABLE `kategoripembayarans` (
  `id_kapem` int(10) UNSIGNED NOT NULL,
  `kategori_pembayaran` varchar(255) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Aktif',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategoripembayarans`
--

INSERT INTO `kategoripembayarans` (`id_kapem`, `kategori_pembayaran`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Tunai', 'Aktif', '2024-05-21 01:05:37', '2024-05-21 01:05:37');

-- --------------------------------------------------------

--
-- Table structure for table `kategoriproduk`
--

CREATE TABLE `kategoriproduk` (
  `kategori` varchar(255) NOT NULL,
  `gambar_kategori` varchar(255) DEFAULT NULL,
  `status_kategori` varchar(255) NOT NULL DEFAULT 'Aktif',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategoriproduk`
--

INSERT INTO `kategoriproduk` (`kategori`, `gambar_kategori`, `status_kategori`, `created_at`, `updated_at`) VALUES
('Atribut Del', '1716277051620-1713789427362-baju.jpg', 'Aktif', '2024-05-21 00:37:31', '2024-05-21 00:37:31'),
('Cafe Del', '1722567768177-Rectangle-122.png', 'Aktif', '2024-08-01 20:02:48', '2024-08-01 20:02:48'),
('Souvenir', '1716838359921-eed9cbb6-89d4-4c62-a301-8f65aa6f93de.jpg', 'Aktif', '2024-05-27 12:32:39', '2024-05-27 12:32:39');

-- --------------------------------------------------------

--
-- Table structure for table `metodepembayarans`
--

CREATE TABLE `metodepembayarans` (
  `id_metpem` int(10) UNSIGNED NOT NULL,
  `status_metpem` varchar(255) NOT NULL DEFAULT 'Aktif',
  `layanan` varchar(255) NOT NULL,
  `no_layanan` varchar(255) NOT NULL,
  `nama_pemilik` varchar(255) NOT NULL,
  `kategori_layanan` int(10) UNSIGNED NOT NULL,
  `kapem` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `metodepembayarans`
--

INSERT INTO `metodepembayarans` (`id_metpem`, `status_metpem`, `layanan`, `no_layanan`, `nama_pemilik`, `kategori_layanan`, `kapem`, `created_at`, `updated_at`) VALUES
(1, 'Aktif', 'Tunai', 'Tunai', 'Delshop', 1, 'Tunai', '2024-05-21 01:07:55', '2024-05-21 01:07:55');

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
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_04_03_063031_create_roles_table', 1),
(7, '2024_04_03_063050_create_produk_table', 1),
(8, '2024_04_03_063212_add_foreignkey_roles_to_produk', 1),
(9, '2024_04_03_063237_create_kategoriproduk_table', 1),
(10, '2024_04_03_063257_add_foreignkey_kategoriproduk_to_produk', 1),
(11, '2024_04_03_063318_add_foreignkey_roles_to_users', 1),
(12, '2024_04_03_063357_create_pesanans_table', 1),
(13, '2024_04_03_063406_create_pesanandetails_table', 1),
(14, '2024_04_03_063432_add_foreignkey_produk_to_pesanandetails', 1),
(15, '2024_04_03_063451_add_foreignkey_pesanans_to_pesanandetails', 1),
(16, '2024_04_03_063507_add_foreignkey_users_to_pesanans', 1),
(17, '2024_04_03_063532_create_kategoripembayarans_table', 1),
(18, '2024_04_03_063539_create_metodepembayarans_table', 1),
(19, '2024_04_03_063614_add_foreignkey_kategoripembayarans_to_metodepembayarans', 1),
(20, '2024_04_03_063658_add_foreignkey_metodepembayarans_to_pesanans', 1),
(21, '2024_04_03_063848_create_ukuranproduks_table', 1),
(22, '2024_04_03_063924_create_corousels_table', 1),
(23, '2024_04_03_063941_create_gantiroles_table', 1),
(24, '2024_04_03_064043_add_foreignkey_users_to_gantiroles_table', 1),
(25, '2024_04_03_064824_add_foreignkey_kategoripembayarans_to_pesanans_table', 1),
(26, '2024_05_20_035900_create_variasiproduk_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(500) NOT NULL,
  `notifiable_type` varchar(500) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('32e0c1d0-0bdd-4f72-9722-892985885f73', 'App\\Notifications\\NewMessageNotification', 'App\\Models\\User', 72, '{\"data\":\"Pesanan anda dengan Kode Pesanan DEL202405281 Menunggu Konfirmasi\",\"pesananId\":\"DEL202405281\"}', NULL, '2024-05-27 21:04:17', '2024-05-27 21:04:17'),
('46056ebe-8fb7-49eb-9ac7-ce2efb85456d', 'App\\Notifications\\NewMessageNotification', 'App\\Models\\User', 1, '{\"data\":\"Pesanan baru dengan Kode Pesanan DEL202407160\",\"pesananId\":\"DEL202407160\"}', '2024-07-23 20:50:30', '2024-07-16 05:35:20', '2024-07-23 20:50:30'),
('4960f6c0-d4b5-467d-9be6-3b95a151575b', 'App\\Notifications\\NewMessageNotification', 'App\\Models\\User', 1, '{\"data\":\"Pesanan baru dengan Kode Pesanan DEL202405281\",\"pesananId\":\"DEL202405281\"}', NULL, '2024-05-27 21:04:17', '2024-05-27 21:04:17'),
('496b339a-a46f-4a9b-ac74-12a5143394f5', 'App\\Notifications\\NewMessageNotification', 'App\\Models\\User', 1, '{\"data\":\"Pesanan anda dengan Kode Pesanan DEL202406043 Menunggu Konfirmasi\",\"pesananId\":\"DEL202406043\"}', NULL, '2024-06-04 01:50:09', '2024-06-04 01:50:09'),
('64cf6fdb-3624-4698-a173-c1006901dbbf', 'App\\Notifications\\NewMessageNotification', 'App\\Models\\User', 62, '{\"data\":\"Pesanan anda dengan Kode Pesanan DEL202407160 Menunggu Konfirmasi\",\"pesananId\":\"DEL202407160\"}', '2024-07-18 23:16:40', '2024-07-16 05:35:20', '2024-07-18 23:16:40'),
('662752e8-c8fd-42f1-b639-72158c9b761c', 'App\\Notifications\\NewMessageNotification', 'App\\Models\\User', 1, '{\"data\":\"Pesanan baru dengan Kode Pesanan DEL202406043\",\"pesananId\":\"DEL202406043\"}', NULL, '2024-06-04 01:50:09', '2024-06-04 01:50:09'),
('bd554e41-1f32-444e-926e-874de855aada', 'App\\Notifications\\NewMessageNotification', 'App\\Models\\User', 1, '{\"data\":\"Pesanan baru dengan Kode Pesanan DEL202406043\",\"pesananId\":\"DEL202406043\"}', NULL, '2024-06-04 01:45:50', '2024-06-04 01:45:50'),
('e8bcfa72-700c-4855-8053-f6d70312fe62', 'App\\Notifications\\NewMessageNotification', 'App\\Models\\User', 1, '{\"data\":\"Pesanan anda dengan Kode Pesanan DEL202406043 Menunggu Konfirmasi\",\"pesananId\":\"DEL202406043\"}', '2024-07-01 19:18:43', '2024-06-04 01:45:50', '2024-07-01 19:18:43');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `pesanandetails`
--

CREATE TABLE `pesanandetails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jumlah` int(11) NOT NULL,
  `jumlah_harga` int(11) NOT NULL,
  `modal_details` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `produk_id` bigint(20) UNSIGNED NOT NULL,
  `pesanan_id` bigint(20) UNSIGNED NOT NULL,
  `variasi_pes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `ukurans` varchar(255) DEFAULT NULL,
  `warna_produk` varchar(255) DEFAULT NULL,
  `angkatans` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pesanandetails`
--

INSERT INTO `pesanandetails` (`id`, `jumlah`, `jumlah_harga`, `modal_details`, `created_at`, `updated_at`, `produk_id`, `pesanan_id`, `variasi_pes`, `ukurans`, `warna_produk`, `angkatans`) VALUES
(23, 1, 100000, 85000.00, '2024-08-01 20:24:08', '2024-08-01 20:24:08', 21, 22, '[[\"Ukuran\",\"XL\"]]', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pesanans`
--

CREATE TABLE `pesanans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` varchar(255) NOT NULL DEFAULT 'null',
  `tanggal` date NOT NULL,
  `total_harga` int(11) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'keranjang',
  `nama_pengambil` varchar(255) DEFAULT NULL,
  `bukti_pembayaran` varchar(255) DEFAULT NULL,
  `modal_pesanan` double(8,2) NOT NULL DEFAULT 0.00,
  `alasan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `nama_layanan` int(10) UNSIGNED DEFAULT 1,
  `metode_pembayaran` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pesanans`
--

INSERT INTO `pesanans` (`id`, `kode`, `tanggal`, `total_harga`, `status`, `nama_pengambil`, `bukti_pembayaran`, `modal_pesanan`, `alasan`, `created_at`, `updated_at`, `user_id`, `nama_layanan`, `metode_pembayaran`) VALUES
(22, 'DEL202408021', '2024-08-02', 100000, 'Diproses', 'Maristo Pane', NULL, 85000.00, NULL, '2024-08-01 20:24:08', '2024-08-01 20:25:21', 62, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` bigint(20) UNSIGNED NOT NULL,
  `gambar_produk` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`gambar_produk`)),
  `nama_produk` varchar(255) NOT NULL,
  `harga` double NOT NULL,
  `jumlah_produk` double NOT NULL,
  `deskripsi` longtext NOT NULL,
  `status_produk` varchar(255) NOT NULL DEFAULT 'Aktif',
  `produk_unggulan` varchar(255) NOT NULL DEFAULT 'Non-Unggulan',
  `modal` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_pembeli` varchar(255) NOT NULL,
  `kategori_produk` varchar(255) NOT NULL,
  `ukuran_produk` varchar(255) DEFAULT NULL,
  `warna` varchar(255) DEFAULT NULL,
  `angkatan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `gambar_produk`, `nama_produk`, `harga`, `jumlah_produk`, `deskripsi`, `status_produk`, `produk_unggulan`, `modal`, `created_at`, `updated_at`, `role_pembeli`, `kategori_produk`, `ukuran_produk`, `warna`, `angkatan`) VALUES
(21, '[\"1722568554270-baju_del2.png\",\"1722568554270-kemeja-del.png\",\"1722568554271-3b3483dc9f2adb52ea73d7149e814ad1.png\"]', 'Pakaian Del', 100000, 100, 'Kaos DEL adalah pakaian resmi yang dirancang untuk mahasiswa Institut Teknologi Del (IT DEL). Terbuat dari bahan katun berkualitas tinggi, kaos ini menawarkan kenyamanan maksimal dan daya tahan yang lama. Dengan desain sederhana namun elegan, kaos ini menampilkan logo IT DEL yang mencerminkan identitas kampus.\r\n\r\nInformasi Tambahan:\r\nKaos DEL merupakan atribut wajib yang harus dimiliki oleh setiap mahasiswa IT DEL. Kaos ini digunakan sebagai seragam resmi yang harus dikenakan setiap hari Jumat, memperkuat rasa kebersamaan dan kebanggaan sebagai bagian dari komunitas IT DEL.\r\n\r\nBahan Lacost Pique\r\nBahan Tebal dan berpori-pori.\r\nBahan Nyaman dipakai sehari-hari.\r\nSize=Lebar dada x panjang baju\r\n\r\nM = 48cm x 65cm\r\nL = 50cm x 68cm\r\nXL = 52cm x 72cm\r\nXXL = 54cm x 74cm', 'Aktif', 'Non-Unggulan', 85000.00, '2024-08-01 20:15:54', '2024-08-01 20:15:54', 'Mahasiswa', 'Atribut Del', NULL, NULL, NULL),
(22, '[\"1722568697813-29c618278192ae95454409caae432161.jpg_720x720q80.jpg_.jpg\",\"1722568697814-WhatsApp-Image-2024-08-02-at-10.11.45_2c5bb881.jpg\"]', 'Botol Minum Tupperware', 100000, 100, 'Botol Tupperware adalah wadah minum berkualitas tinggi yang didesain untuk menjaga minuman tetap segar dan higienis. Terbuat dari bahan plastik bebas BPA, botol ini tahan lama dan ramah lingkungan. Dilengkapi dengan tutup rapat anti bocor dan desain ergonomis yang memudahkan untuk dibawa kemana saja.\r\n\r\nInformasi Tambahan:\r\nBotol Tupperware menjadi kewajiban bagi mahasiswa untuk dibawa ke kampus, mendukung gaya hidup sehat dan ramah lingkungan.', 'Aktif', 'Non-Unggulan', 90000.00, '2024-08-01 20:18:17', '2024-08-01 20:18:17', 'Publik', 'Atribut Del', NULL, NULL, NULL),
(23, '[\"1722568782072-topi-de.png\",\"1722568782073-topi-del.png\"]', 'Topi Del', 35000, 100, 'Topi DEL adalah atribut resmi yang dirancang khusus untuk mahasiswa Institut Teknologi Del (IT DEL). Terbuat dari bahan berkualitas tinggi, topi ini nyaman dipakai dan tahan lama. Dengan logo IT DEL yang elegan, topi ini mencerminkan identitas dan kebanggaan sebagai bagian dari komunitas IT DEL.\r\n\r\nInformasi Tambahan:\r\nTopi DEL merupakan atribut wajib yang harus dimiliki oleh setiap mahasiswa IT DEL, digunakan dalam berbagai kegiatan kampus dan acara resmi.', 'Aktif', 'Non-Unggulan', 28000.00, '2024-08-01 20:19:42', '2024-08-01 20:19:42', 'Mahasiswa', 'Atribut Del', NULL, NULL, NULL),
(24, '[\"1722568849872-Pin-Del.png\"]', 'Pin Del Mahasiswa', 10000, 100, 'Pin DEL adalah aksesoris resmi yang dirancang khusus untuk mahasiswa Institut Teknologi Del (IT DEL). Terbuat dari material logam berkualitas, pin ini menampilkan logo IT DEL yang khas, memberikan sentuhan elegan dan profesional pada pakaian Anda.\r\n\r\nInformasi Tambahan:\r\nPin DEL merupakan atribut wajib yang harus dimiliki dan dipakai setiap hari oleh mahasiswa IT DEL. Pin ini berfungsi sebagai identitas resmi dan simbol kebanggaan, menunjukkan keanggotaan dan komitmen Anda terhadap komunitas IT DEL.', 'Aktif', 'Non-Unggulan', 7000.00, '2024-08-01 20:20:49', '2024-08-01 20:20:49', 'Mahasiswa', 'Atribut Del', NULL, NULL, NULL),
(25, '[\"1722568944817-Gelas-Del.png\"]', 'Gelas Logo Del', 35000, 100, 'Gelas DEL adalah souvenir eksklusif yang dirancang untuk menambah koleksi Anda dengan sentuhan kampus. Terbuat dari bahan keramik berkualitas tinggi, gelas ini memiliki desain elegan dengan logo IT DEL yang menonjol. Ideal untuk digunakan sehari-hari atau sebagai hiasan, gelas ini juga tahan lama dan mudah dibersihkan.\r\n\r\nInformasi Tambahan:\r\nGelas DEL tersedia untuk dibeli oleh siapa saja, baik alumni, mahasiswa, maupun pengunjung. Sebagai souvenir, gelas ini menjadi pilihan sempurna untuk mengenang momen berharga atau sebagai hadiah istimewa yang mencerminkan kebanggaan terhadap IT DEL.', 'Aktif', 'Non-Unggulan', 28000.00, '2024-08-01 20:22:24', '2024-08-01 20:22:24', 'Publik', 'Atribut Del', NULL, NULL, NULL),
(26, '[\"1722569003441-WhatsApp-Image-2024-08-02-at-10.18.33_107446cb.jpg\"]', 'Tahu Crispy', 10000, 100, 'Tahu Crispy adalah camilan lezat yang diolah dengan resep khas dari Cafe DEL. Tahu ini memiliki tekstur renyah di luar dan lembut di dalam, diolah dengan bumbu pilihan yang menggugah selera. Setiap potongan tahu dipastikan memiliki rasa yang gurih dan crispy, menjadikannya pilihan sempurna untuk dinikmati kapan saja.\r\n\r\nInformasi Tambahan:\r\nTahu Crispy tersedia untuk dibeli oleh seluruh civitas kampus IT DEL. Ideal sebagai cemilan ringan saat istirahat atau pendamping santap siang, tahu ini siap memanjakan lidah Anda dengan kelezatan yang tak tertandingi. Nikmati Tahu Crispy di Cafe DEL dan rasakan sendiri kelezatannya!', 'Aktif', 'Non-Unggulan', 6000.00, '2024-08-01 20:23:23', '2024-08-01 20:23:23', 'Publik', 'Cafe Del', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role` varchar(255) NOT NULL,
  `kategori_role` enum('Administrator','Pembeli') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role`, `kategori_role`, `created_at`, `updated_at`) VALUES
('Admin', 'Administrator', NULL, NULL),
('Dosen/Staff', 'Pembeli', NULL, NULL),
('Mahasiswa', 'Pembeli', NULL, NULL),
('Pegawai', 'Administrator', NULL, NULL),
('Publik', 'Pembeli', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL DEFAULT 'Laki-Laki',
  `pekerjaan` varchar(255) NOT NULL DEFAULT '-',
  `alamat` varchar(255) NOT NULL DEFAULT '-',
  `no_telp` varchar(255) NOT NULL DEFAULT '-',
  `gambar_pengguna` varchar(255) NOT NULL DEFAULT 'profile.png',
  `tentang` longtext DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL DEFAULT 'https://twitter.com/',
  `facebook` varchar(255) NOT NULL DEFAULT 'https://facebook.com/',
  `instagram` varchar(255) NOT NULL DEFAULT 'https://instagram.com/',
  `linkedin` varchar(255) NOT NULL DEFAULT 'https://linkedin.com/',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL DEFAULT '$2y$10$5DNeMBwr01c/PxQDS7I6BOcxxQL5GT7naGt4Bftj5LBGZ4hgb8JO6',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_pengguna` varchar(255) NOT NULL DEFAULT 'Publik',
  `bukti` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `jenis_kelamin`, `pekerjaan`, `alamat`, `no_telp`, `gambar_pengguna`, `tentang`, `email`, `twitter`, `facebook`, `instagram`, `linkedin`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role_pengguna`, `bukti`) VALUES
(1, 'Admin Delshop', 'Laki-Laki', '-', '-', '-', 'profile.png', NULL, 'ecommerce.delshop@gmail.com', 'https://twitter.com/', 'https://facebook.com/', 'https://instagram.com/', 'https://linkedin.com/', NULL, '$2y$10$5DNeMBwr01c/PxQDS7I6BOcxxQL5GT7naGt4Bftj5LBGZ4hgb8JO6', NULL, NULL, NULL, 'Admin', NULL),
(62, 'Maristo Pane', 'Laki-Laki', '-', '-', '-', 'profile.png', NULL, 'maristopane10@example.com', 'https://twitter.com/', 'https://facebook.com/', 'https://instagram.com/', 'https://linkedin.com/', NULL, '$2y$10$yKQDOg5CciV8/CWHYAoVzeGm4t93gMjkMIhrdZ.RIyWvjAH/WGbFi', NULL, '2024-05-21 20:04:35', '2024-05-21 20:04:35', 'Mahasiswa', NULL),
(133, 'Christine Paramitha', 'Laki-Laki', '-', '-', '-', 'profile.png', NULL, 'manurungc27@gmail.com', 'https://twitter.com/', 'https://facebook.com/', 'https://instagram.com/', 'https://linkedin.com/', NULL, '$2y$10$GGwn7olHhmfYNdR6WqYVJuh7uGVOYd7OoNcR8h9a.8LXoWUX.sD1e', NULL, '2024-07-01 19:21:00', '2024-07-01 19:21:00', 'Mahasiswa', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `variasiproduk`
--

CREATE TABLE `variasiproduk` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_variasi` varchar(255) NOT NULL,
  `variasi` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`variasi`)),
  `produk_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variasiproduk`
--

INSERT INTO `variasiproduk` (`id`, `nama_variasi`, `variasi`, `produk_id`, `created_at`, `updated_at`) VALUES
(9, 'Ukuran', '[\"S\",\"M\",\"L\",\"XL\",\"XXL\"]', 21, '2024-08-01 20:15:54', '2024-08-01 20:15:54'),
(10, 'Warna', '[\"Ungu\",\"Hitam\",\"Merah\"]', 22, '2024-08-01 20:18:17', '2024-08-01 20:18:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `corousels`
--
ALTER TABLE `corousels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gantiroles`
--
ALTER TABLE `gantiroles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gantiroles_email_unique` (`email`),
  ADD KEY `gantiroles_user_id_foreign` (`user_id`);

--
-- Indexes for table `kategoripembayarans`
--
ALTER TABLE `kategoripembayarans`
  ADD PRIMARY KEY (`id_kapem`);

--
-- Indexes for table `kategoriproduk`
--
ALTER TABLE `kategoriproduk`
  ADD PRIMARY KEY (`kategori`);

--
-- Indexes for table `metodepembayarans`
--
ALTER TABLE `metodepembayarans`
  ADD PRIMARY KEY (`id_metpem`),
  ADD KEY `metodepembayarans_kategori_layanan_foreign` (`kategori_layanan`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- Indexes for table `pesanandetails`
--
ALTER TABLE `pesanandetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pesanandetails_produk_id_foreign` (`produk_id`),
  ADD KEY `pesanandetails_pesanan_id_foreign` (`pesanan_id`);

--
-- Indexes for table `pesanans`
--
ALTER TABLE `pesanans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pesanans_user_id_foreign` (`user_id`),
  ADD KEY `pesanans_nama_layanan_foreign` (`nama_layanan`),
  ADD KEY `pesanans_metode_pembayaran_foreign` (`metode_pembayaran`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD KEY `produk_role_pembeli_foreign` (`role_pembeli`),
  ADD KEY `produk_kategori_produk_foreign` (`kategori_produk`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_pengguna_foreign` (`role_pengguna`);

--
-- Indexes for table `variasiproduk`
--
ALTER TABLE `variasiproduk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variasiproduk_produk_id_foreign` (`produk_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `corousels`
--
ALTER TABLE `corousels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gantiroles`
--
ALTER TABLE `gantiroles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategoripembayarans`
--
ALTER TABLE `kategoripembayarans`
  MODIFY `id_kapem` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `metodepembayarans`
--
ALTER TABLE `metodepembayarans`
  MODIFY `id_metpem` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pesanandetails`
--
ALTER TABLE `pesanandetails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `pesanans`
--
ALTER TABLE `pesanans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `variasiproduk`
--
ALTER TABLE `variasiproduk`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gantiroles`
--
ALTER TABLE `gantiroles`
  ADD CONSTRAINT `gantiroles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `metodepembayarans`
--
ALTER TABLE `metodepembayarans`
  ADD CONSTRAINT `metodepembayarans_kategori_layanan_foreign` FOREIGN KEY (`kategori_layanan`) REFERENCES `kategoripembayarans` (`id_kapem`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pesanandetails`
--
ALTER TABLE `pesanandetails`
  ADD CONSTRAINT `pesanandetails_pesanan_id_foreign` FOREIGN KEY (`pesanan_id`) REFERENCES `pesanans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pesanandetails_produk_id_foreign` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`id_produk`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pesanans`
--
ALTER TABLE `pesanans`
  ADD CONSTRAINT `pesanans_metode_pembayaran_foreign` FOREIGN KEY (`metode_pembayaran`) REFERENCES `kategoripembayarans` (`id_kapem`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pesanans_nama_layanan_foreign` FOREIGN KEY (`nama_layanan`) REFERENCES `metodepembayarans` (`id_metpem`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pesanans_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_kategori_produk_foreign` FOREIGN KEY (`kategori_produk`) REFERENCES `kategoriproduk` (`kategori`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `produk_role_pembeli_foreign` FOREIGN KEY (`role_pembeli`) REFERENCES `roles` (`role`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_pengguna_foreign` FOREIGN KEY (`role_pengguna`) REFERENCES `roles` (`role`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `variasiproduk`
--
ALTER TABLE `variasiproduk`
  ADD CONSTRAINT `variasiproduk_produk_id_foreign` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`id_produk`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
