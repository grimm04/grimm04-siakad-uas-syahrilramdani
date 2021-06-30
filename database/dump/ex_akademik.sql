-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Jun 2021 pada 13.18
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ex_akademik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `absensi_guru`
--

CREATE TABLE `absensi_guru` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `guru_id` int(11) NOT NULL,
  `kehadiran_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `absensi_guru`
--

INSERT INTO `absensi_guru` (`id`, `tanggal`, `guru_id`, `kehadiran_id`, `created_at`, `updated_at`) VALUES
(1, '2021-06-30', 1, 5, '2021-06-30 07:46:55', '2021-06-30 07:46:55'),
(3, '2021-06-30', 5, 6, '2021-06-30 10:26:42', '2021-06-30 10:26:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_card` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_guru` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `kode` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jk` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tmp_lahir` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`id`, `id_card`, `nip`, `nama_guru`, `mapel_id`, `kode`, `jk`, `telp`, `tmp_lahir`, `tgl_lahir`, `foto`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '00001', '196910291995031002', 'Rusmiansyah, S.Pd', 1, '111', 'L', '08123211781', 'Lumajang', '1969-11-11', 'uploads/guru/13211130062021_guru1.jpg', '2021-06-30 04:21:13', '2021-06-30 04:21:13', NULL),
(2, '00002', '197909202009032002', 'Sri Pujiastuti, S.Pd', 2, '112', 'P', '08221827838', 'Banjaran', '1989-12-31', 'uploads/guru/22491530062021_guru2.jpg', '2021-06-30 08:49:22', '2021-06-30 08:49:22', NULL),
(3, '00003', '198405152009031003', 'AGUS HERYANTO, ST., MT', 5, '113', 'L', '0812330089', 'Bangsal', '1987-01-15', 'uploads/guru/12261630062021_guru3.jpg', '2021-06-30 09:26:12', '2021-06-30 09:26:12', NULL),
(4, '00004', '198304212009032005', 'SITI SUNDARI, S.Pd. M.Pd', 6, '114', 'P', '08221334588', 'Kujung', '1986-02-27', 'uploads/guru/58281630062021_guru4.jpg', '2021-06-30 09:28:58', '2021-06-30 09:28:58', NULL),
(5, '00005', '19761013 2005011010', 'ISNU SULEKSONO, S.Pd', 3, '115', 'L', '0895681829', 'Bandung', '1983-02-08', 'uploads/guru/07101730062021_g_isnu.jpg', '2021-06-30 10:10:07', '2021-06-30 10:10:07', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hari`
--

CREATE TABLE `hari` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_hari` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `hari`
--

INSERT INTO `hari` (`id`, `nama_hari`, `created_at`, `updated_at`) VALUES
(1, 'Senin', '2021-06-22 07:08:34', '2021-06-22 07:08:34'),
(2, 'Selasa', '2021-06-22 07:08:34', '2021-06-22 07:08:34'),
(3, 'Rabu', '2021-06-22 07:08:34', '2021-06-22 07:08:34'),
(4, 'Kamis', '2021-06-22 07:08:34', '2021-06-22 07:08:34'),
(5, 'Jum\'at', '2021-06-22 07:08:34', '2021-06-22 07:08:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hari_id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `guru_id` int(11) NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `ruang_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`id`, `hari_id`, `kelas_id`, `mapel_id`, `guru_id`, `jam_mulai`, `jam_selesai`, `ruang_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 1, 3, 1, 1, '07:30:00', '08:30:00', 1, '2021-06-30 10:02:38', '2021-06-30 10:02:38', NULL),
(4, 1, 3, 2, 2, '09:15:00', '10:45:00', 1, '2021-06-30 10:03:22', '2021-06-30 10:03:22', NULL),
(5, 1, 3, 5, 3, '13:00:00', '14:30:00', 1, '2021-06-30 10:04:10', '2021-06-30 10:04:10', NULL),
(6, 3, 3, 6, 4, '07:30:00', '08:30:00', 1, '2021-06-30 10:04:53', '2021-06-30 10:04:53', NULL),
(7, 3, 3, 5, 3, '09:15:00', '10:45:00', 1, '2021-06-30 10:06:14', '2021-06-30 10:06:14', NULL),
(8, 3, 3, 3, 5, '17:00:00', '20:00:00', 1, '2021-06-30 10:14:08', '2021-06-30 10:14:08', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kehadiran`
--

CREATE TABLE `kehadiran` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ket` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kehadiran`
--

INSERT INTO `kehadiran` (`id`, `ket`, `color`, `created_at`, `updated_at`) VALUES
(1, 'Hadir', '3C0', '2021-06-22 07:08:35', '2021-06-22 07:08:35'),
(2, 'Izin', '0CF', '2021-06-22 07:08:35', '2021-06-22 07:08:35'),
(3, 'Bertugas Keluar', 'F90', '2021-06-22 07:08:35', '2021-06-22 07:08:35'),
(4, 'Sakit', 'FF0', '2021-06-22 07:08:35', '2021-06-22 07:08:35'),
(5, 'Terlambat', '7F0', '2021-06-22 07:08:35', '2021-06-22 07:08:35'),
(6, 'Tanpa Keterangan', 'F00', '2021-06-22 07:08:35', '2021-06-22 07:08:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kelas` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paket_id` int(11) NOT NULL,
  `guru_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id`, `nama_kelas`, `paket_id`, `guru_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'X RPL 1', 7, 3, '2021-06-30 09:30:03', '2021-06-30 09:30:03', NULL),
(4, 'X BISNIS 2', 2, 4, '2021-06-30 09:30:39', '2021-06-30 09:30:39', NULL),
(5, 'X DESAIN 1', 8, 1, '2021-06-30 09:32:08', '2021-06-30 09:32:08', NULL),
(6, 'X OTOMASI', 3, 2, '2021-06-30 09:41:26', '2021-06-30 09:41:26', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapel`
--

CREATE TABLE `mapel` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_mapel` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paket_id` int(11) NOT NULL,
  `kelompok` enum('A','B','C') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `mapel`
--

INSERT INTO `mapel` (`id`, `nama_mapel`, `paket_id`, `kelompok`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Matematika', 9, 'A', '2021-06-30 04:18:19', '2021-06-30 04:18:19', NULL),
(2, 'B Inggris', 9, 'A', '2021-06-30 04:18:38', '2021-06-30 04:18:38', NULL),
(3, 'Web Dinamis', 7, 'C', '2021-06-30 04:19:10', '2021-06-30 04:19:10', NULL),
(4, 'Jaringan Dasar', 7, 'C', '2021-06-30 09:09:32', '2021-06-30 09:09:32', NULL),
(5, 'Design Grafis 1', 8, 'C', '2021-06-30 09:09:50', '2021-06-30 09:09:50', NULL),
(6, 'Pemasaran', 2, 'B', '2021-06-30 09:10:20', '2021-06-30 09:10:20', NULL);

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_03_12_092809_create_hari_table', 1),
(5, '2020_03_12_092854_create_guru_table', 1),
(6, '2020_03_12_092926_create_absensi_guru_table', 1),
(7, '2020_03_12_092941_create_jadwal_table', 1),
(8, '2020_03_12_092953_create_kehadiran_table', 1),
(9, '2020_03_12_093010_create_kelas_table', 1),
(10, '2020_03_12_093018_create_mapel_table', 1),
(11, '2020_03_12_093027_create_nilai_table', 1),
(12, '2020_03_12_093036_create_paket_table', 1),
(13, '2020_03_12_093050_create_pengumuman_table', 1),
(14, '2020_03_12_093102_create_rapot_table', 1),
(15, '2020_03_12_093117_create_ruang_table', 1),
(16, '2020_03_12_093130_create_siswa_table', 1),
(17, '2020_03_16_102220_create_ulangan_table', 1),
(18, '2020_04_07_094355_create_sikap_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `guru_id` int(11) NOT NULL,
  `kkm` int(11) NOT NULL,
  `deskripsi_a` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi_b` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi_c` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi_d` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `nilai`
--

INSERT INTO `nilai` (`id`, `guru_id`, `kkm`, `deskripsi_a`, `deskripsi_b`, `deskripsi_c`, `deskripsi_d`, `created_at`, `updated_at`) VALUES
(1, 1, 70, '85', '75', '65', '0', '2021-06-30 07:50:52', '2021-06-30 07:53:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `paket`
--

CREATE TABLE `paket` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ket` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `paket`
--

INSERT INTO `paket` (`id`, `ket`, `created_at`, `updated_at`) VALUES
(1, 'Akuntansi dan Keuangan Lembaga', '2021-06-22 07:08:35', '2021-06-22 07:08:35'),
(2, 'Bisnis Daring dan Pemasaran', '2021-06-22 07:08:35', '2021-06-22 07:08:35'),
(3, 'Otomasi dan Tatakelola Perkantoran', '2021-06-22 07:08:35', '2021-06-22 07:08:35'),
(7, 'Rekayasa Perangkat Lunak', '2021-06-22 07:08:35', '2021-06-22 07:08:35'),
(8, 'Desain Grafika', '2021-06-22 07:08:35', '2021-06-22 07:08:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `opsi` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pengumuman`
--

INSERT INTO `pengumuman` (`id`, `opsi`, `isi`, `created_at`, `updated_at`) VALUES
(1, 'pengumuman', 'Selamat Beraktifitas&nbsp;', '2021-06-22 07:08:35', '2021-06-30 08:43:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rapot`
--

CREATE TABLE `rapot` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `guru_id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `p_nilai` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_predikat` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `k_nilai` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k_predikat` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k_deskripsi` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `rapot`
--

INSERT INTO `rapot` (`id`, `siswa_id`, `kelas_id`, `guru_id`, `mapel_id`, `p_nilai`, `p_predikat`, `p_deskripsi`, `k_nilai`, `k_predikat`, `k_deskripsi`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, '80', 'C', '55-74', NULL, NULL, NULL, '2021-06-30 07:52:21', '2021-06-30 07:52:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruang`
--

CREATE TABLE `ruang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_ruang` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ruang`
--

INSERT INTO `ruang` (`id`, `nama_ruang`, `created_at`, `updated_at`) VALUES
(1, 'Ruang 01', '2021-06-22 07:08:35', '2021-06-22 07:08:35'),
(2, 'Ruang 02', '2021-06-22 07:08:35', '2021-06-22 07:08:35'),
(3, 'Ruang 03', '2021-06-22 07:08:35', '2021-06-22 07:08:35'),
(4, 'Ruang 04', '2021-06-22 07:08:35', '2021-06-22 07:08:35'),
(5, 'Ruang 05', '2021-06-22 07:08:35', '2021-06-22 07:08:35'),
(6, 'Ruang 06', '2021-06-22 07:08:35', '2021-06-22 07:08:35'),
(7, 'Ruang 07', '2021-06-22 07:08:35', '2021-06-22 07:08:35'),
(8, 'Ruang 08', '2021-06-22 07:08:35', '2021-06-22 07:08:35'),
(9, 'Ruang 09', '2021-06-22 07:08:35', '2021-06-22 07:08:35'),
(10, 'Ruang 10', '2021-06-22 07:08:35', '2021-06-22 07:08:35'),
(11, 'Ruang 11', '2021-06-22 07:08:35', '2021-06-22 07:08:35'),
(12, 'Ruang 12', '2021-06-22 07:08:35', '2021-06-22 07:08:35'),
(13, 'Ruang 13', '2021-06-22 07:08:35', '2021-06-22 07:08:35'),
(14, 'Ruang 14', '2021-06-22 07:08:35', '2021-06-22 07:08:35'),
(15, 'Ruang 15', '2021-06-22 07:08:35', '2021-06-22 07:08:35'),
(16, 'Ruang 16', '2021-06-22 07:08:35', '2021-06-22 07:08:35'),
(17, 'Ruang 17', '2021-06-22 07:08:35', '2021-06-22 07:08:35'),
(18, 'Ruang 18', '2021-06-22 07:08:35', '2021-06-22 07:08:35'),
(19, 'Ruang 19', '2021-06-22 07:08:35', '2021-06-22 07:08:35'),
(20, 'Ruang 20', '2021-06-22 07:08:35', '2021-06-22 07:08:35'),
(21, 'Ruang 21', '2021-06-22 07:08:35', '2021-06-22 07:08:35'),
(22, 'Ruang 22', '2021-06-22 07:08:35', '2021-06-22 07:08:35'),
(23, 'Ruang 23', '2021-06-22 07:08:35', '2021-06-22 07:08:35'),
(24, 'Ruang 24', '2021-06-22 07:08:35', '2021-06-22 07:08:35'),
(25, 'Ruang 25', '2021-06-22 07:08:35', '2021-06-22 07:08:35'),
(26, 'Ruang 26', '2021-06-22 07:08:35', '2021-06-22 07:08:35'),
(27, 'Ruang 27', '2021-06-22 07:08:35', '2021-06-22 07:08:35'),
(28, 'Ruang 28', '2021-06-22 07:08:35', '2021-06-22 07:08:35'),
(29, 'Ruang 29', '2021-06-22 07:08:35', '2021-06-22 07:08:35'),
(30, 'Ruang 30', '2021-06-22 07:08:35', '2021-06-22 07:08:35'),
(31, 'Ruang 31', '2021-06-22 07:08:35', '2021-06-22 07:08:35'),
(32, 'Ruang 32', '2021-06-22 07:08:35', '2021-06-22 07:08:35'),
(33, 'Ruang 33', '2021-06-22 07:08:35', '2021-06-22 07:08:35'),
(34, 'Ruang 34', '2021-06-22 07:08:35', '2021-06-22 07:08:35'),
(35, 'Ruang 35', '2021-06-22 07:08:35', '2021-06-22 07:08:35'),
(36, 'Ruang 36', '2021-06-22 07:08:35', '2021-06-22 07:08:35'),
(37, 'Ruang 37', '2021-06-22 07:08:35', '2021-06-22 07:08:35'),
(38, 'Ruang 38', '2021-06-22 07:08:35', '2021-06-22 07:08:35'),
(39, 'Ruang 39', '2021-06-22 07:08:35', '2021-06-22 07:08:35'),
(40, 'Ruang 40', '2021-06-22 07:08:35', '2021-06-22 07:08:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sikap`
--

CREATE TABLE `sikap` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `guru_id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `sikap_1` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sikap_2` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sikap_3` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_induk` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nis` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_siswa` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jk` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tmp_lahir` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id`, `no_induk`, `nis`, `nama_siswa`, `jk`, `telp`, `tmp_lahir`, `tgl_lahir`, `foto`, `kelas_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, '90003', '1809599002', 'Adinda Putri', 'P', '0896571920', 'Banjar', '2000-10-15', 'uploads/siswa/27451630062021_siswa3.jpg', 3, '2021-06-30 09:45:27', '2021-06-30 09:45:27', NULL),
(4, '90004', '1809599003', 'Maman A', 'L', '0882727811', 'Banjar', '2000-06-07', 'uploads/siswa/06471630062021_siswadummy.jpg', 3, '2021-06-30 09:47:06', '2021-06-30 09:47:06', NULL),
(5, '90005', '1809599003', 'Afwan Bagja', 'L', '0297991112', 'Kulon', '1999-08-01', 'uploads/siswa/09481630062021_siswadummy.jpg', 3, '2021-06-30 09:48:09', '2021-06-30 09:48:09', NULL),
(6, '90006', '1809599004', 'Sri Wahyuni', 'P', '0297991112', 'Banjar', '1999-08-01', 'uploads/siswa/09481630062021_siswadummy.jpg', 3, '2021-06-30 09:48:09', '2021-06-30 09:48:09', NULL),
(7, '90006', '1809599003', 'Bagas Condi', 'L', '0297991112', 'Banjar', '1999-08-01', 'uploads/siswa/09481630062021_siswadummy.jpg', 3, '2021-06-30 09:48:09', '2021-06-30 09:48:09', NULL),
(8, '90007', '1809599005', 'Vee Magicom', 'P', '0812829', 'Banjar', '2001-12-13', 'uploads/siswa/40531630062021_siswadummyp.png', 5, '2021-06-30 09:53:40', '2021-06-30 09:53:40', NULL),
(9, '90008', '1809599006', 'Najwa', 'P', '0893818929', 'Banjar', '2001-01-20', 'uploads/siswa/40531630062021_siswadummyp.png', 5, '2021-06-30 09:53:40', '2021-06-30 09:53:40', NULL),
(10, '90009', '1809599007', 'Purnama Jaya', 'L', '0893818929', 'Banjar', '2001-01-20', 'uploads/siswa/09481630062021_siswadummy.jpg', 5, '2021-06-30 09:53:40', '2021-06-30 09:53:40', NULL),
(11, '90010', '1809599009', 'Wahyu Jailudin', 'L', '0893818929', 'Banjar', '2000-01-22', 'uploads/siswa/09481630062021_siswadummy.jpg', 5, '2021-06-30 09:53:40', '2021-06-30 09:53:40', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ulangan`
--

CREATE TABLE `ulangan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `guru_id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `ulha_1` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ulha_2` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uts` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ulha_3` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uas` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ulangan`
--

INSERT INTO `ulangan` (`id`, `siswa_id`, `kelas_id`, `guru_id`, `mapel_id`, `ulha_1`, `ulha_2`, `uts`, `ulha_3`, `uas`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, '80', '80', '80', '80', '80', '2021-06-30 07:52:21', '2021-06-30 07:52:21');

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
  `role` enum('Admin','Guru','Siswa','Operator') COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_induk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_card` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `no_induk`, `id_card`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$fR3UcRof3H4sKhFiaUnswerMgWPPt2p6EyCk99AitrAfJyApRYx9C', 'Admin', NULL, NULL, 'KlTxZ8YN1bPl3y9WzUrjILsAGbxakNrCg94mKi5MJ6DGtqo3VsqJjVOR5eFx', '2021-06-22 07:08:35', '2021-06-30 08:41:13', NULL),
(2, 'selvi mayangsari', 'siswa1@gmail.com', NULL, '$2y$10$KUAZUqfB7kyaeGQLf6NGhuuPFSWzoawFwJ1pInqZG1ei2PkCcPoea', 'Siswa', '90001', NULL, NULL, '2021-06-30 04:31:34', '2021-06-30 10:07:49', '2021-06-30 10:07:49'),
(3, 'operator1', 'operator1@gmail.com', NULL, '$2y$10$ooRi5gn0UKf/gbCjrS0yHe4SxImT8dTdnJZaifNBQWWEurT74pYfi', 'Operator', NULL, NULL, NULL, '2021-06-30 07:37:16', '2021-06-30 07:37:16', NULL),
(4, 'Rusmiansyah, S.Pd', 'guru1@gmail.com', NULL, '$2y$10$y28Q.ohyEWohBATkz5f64OIp0FgUOzfBYXXcTsBOWXloX4F.uXhDC', 'Guru', NULL, '00001', NULL, '2021-06-30 07:37:59', '2021-06-30 07:37:59', NULL),
(5, 'adinda putri', 'siswa2@gmail.com', NULL, '$2y$10$K.gCWrTQ.mOlD1XLRZ1UGe0oMgzIM1JrpEqXcO/y3oBinViL58IYm', 'Siswa', '90003', NULL, NULL, '2021-06-30 10:07:38', '2021-06-30 10:07:38', NULL),
(6, 'maman a', 'siswa4@gmail.com', NULL, '$2y$10$aHN6/6rpfZgaCzxlqAfLsexHYqWi7VZUFsKYREQd6yjSdJoI8VFOC', 'Siswa', '90004', NULL, NULL, '2021-06-30 10:08:33', '2021-06-30 10:08:33', NULL),
(7, 'ISNU SULEKSONO, S.Pd', 'guru5@gmail.com', NULL, '$2y$10$PJ1AleeT6sEM2Iuo.KSVXuJ9PNoQDyrQolIEAP58gviSX8l6DF3Xy', 'Guru', NULL, '00005', NULL, '2021-06-30 10:11:46', '2021-06-30 10:11:46', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `absensi_guru`
--
ALTER TABLE `absensi_guru`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `hari`
--
ALTER TABLE `hari`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kehadiran`
--
ALTER TABLE `kehadiran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `paket`
--
ALTER TABLE `paket`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rapot`
--
ALTER TABLE `rapot`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sikap`
--
ALTER TABLE `sikap`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ulangan`
--
ALTER TABLE `ulangan`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT untuk tabel `absensi_guru`
--
ALTER TABLE `absensi_guru`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `guru`
--
ALTER TABLE `guru`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `hari`
--
ALTER TABLE `hari`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `kehadiran`
--
ALTER TABLE `kehadiran`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `paket`
--
ALTER TABLE `paket`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `rapot`
--
ALTER TABLE `rapot`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `ruang`
--
ALTER TABLE `ruang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `sikap`
--
ALTER TABLE `sikap`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `ulangan`
--
ALTER TABLE `ulangan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
