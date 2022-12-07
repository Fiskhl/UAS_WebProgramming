-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 07, 2022 at 10:54 PM
-- Server version: 10.5.18-MariaDB-cll-lve
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smkr5117_ypr1505`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `desc`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Penerimaan Siswa-Siswi Baru', 'Sedang mencari SMK yang sesuai dengan passion kamu? SMK PUTRA RIFARA aja, ada banyak jurusan yang bisa kamu pilih sesuai keinginan kamu.', '1669266372_smk1.jpg', '0', '2022-11-23 21:56:54', '2022-11-23 22:06:12');

-- --------------------------------------------------------

--
-- Table structure for table `beritas`
--

CREATE TABLE `beritas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `beritas`
--

INSERT INTO `beritas` (`id`, `title`, `slug`, `content`, `kategori_id`, `thumbnail`, `is_active`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Pelepasan siswa SMP dan SMK', 'yayasan-pendidikan-putra-rifara-menggelar-acara-pelepasan-siswa-smp-dan-smk', 'Pada Sabtu 14 Mei 2022,  Yayasan Pendidikan Putra Rifara menggelar acara pelepasan siswa SMP dan SMK. Acara pelepasan siswa di sekolah yang berlokasi di Desa Bojong Renged, Kecamatan Teluknaga, Kabupaten Tangerang, Banten, tersebut mengambil tema “Satukan Tekad Menuju Kesuksesan, Raih cita-cita mu Setinggi Langit ”.', 1, '1670120215_PELEPASAN-SISWA-PUTRA-RIFARA-TANGERANG-MEI-2022.jpeg', '0', 1, '2022-12-03 19:16:55', '2022-12-03 19:17:26'),
(2, 'Sejarah Berdirinya SMK Putra Rifara', 'sejarah-berdirinya-smk-putra-rifara', 'SMK Putra Rifara didirikan oleh Yayasan Pendidikan Putra Rifara, Tepat pada tanggal 15 Mei 2020 dengan membuka pendaftaran untuk 2 Program Keahlian Yaitu Akuntansi (AK) dan Adminitrasi Perkantoran (OTP). Didukung oleh team promosi sekolah SMK Putra Rifara mendapatkan Siswa sebanyak 3 Rombel 1 Rombel untuk Program Keahlian Akuntansi (AK) dan 2 Rombel untuk Program Keahlian Administrasi Sekolah (AP). SMK Putra Rifara sejak awal memiliki Guru yang sudah berpengalaman dibidangnya dengan mengedepankan pendidikan moral dan akademik.\r\nAwal berdiri SMK Putra Rifara menggunakan Gedung SDN Rawa Rengas 1 (bersifat sementara) yaitu selama 2 tahun (2010-2012) dengan jam KBM dilaksanakan di Siang hari. Kemudian pada tahun 2013 SMK Putra Rifara sudah pindah ke Gedung Sekolah milik sendiri di kawasan Bojong Renged Kec. Teluknaga Kab. Tangerang. Pada tahun tersebut SMK Putra Rifara baru memiliki 1 lantai gedung dengan 6 ruang kelas yang saat itu sudah memiliki 12 rombel dan kegiatan KBM dilaksanakan Pagi dan Siang. Pembagunan Gedung Milik Sendiri SMK Putra Rifara terus melanjutkan program pembangunan untuk melengkapi sarana dan prasarana yang mendukung untuk kegiatan sekolah, hingga saat ini SMK Putra Rifara sudah memiliki gedung 3 lantai dengan 16 Ruang Kelas, 1 Ruang Guru, Lab Komputer, Mushola, Ruang Yayasan, Ruang Kepala, 2 Ruang Tata Usaha, dll.', 2, '1670121610_32314.jpg', '0', 1, '2022-12-03 19:40:10', '2022-12-03 19:40:10');

-- --------------------------------------------------------

--
-- Table structure for table `berkas_murids`
--

CREATE TABLE `berkas_murids` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `kartu_keluarga` varchar(255) DEFAULT NULL,
  `akte_kelahiran` varchar(255) DEFAULT NULL,
  `surat_kelakuan_baik` varchar(255) DEFAULT NULL,
  `surat_sehat` varchar(255) DEFAULT NULL,
  `surat_tidak_buta_warna` varchar(255) DEFAULT NULL,
  `rapor` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `ijazah` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `berkas_murids`
--

INSERT INTO `berkas_murids` (`id`, `user_id`, `kartu_keluarga`, `akte_kelahiran`, `surat_kelakuan_baik`, `surat_sehat`, `surat_tidak_buta_warna`, `rapor`, `foto`, `ijazah`, `created_at`, `updated_at`) VALUES
(1, 5, '1670035004_8909.jpg', '1670035004_8909.jpg', '1670035004_8909.jpg', '1670035004_8909.jpg', '1670035004_8908.jpg', '1670035004_8908.jpg', '1670035004_8909.jpg', '1670035004_8908.jpg', '2022-12-02 19:34:38', '2022-12-02 19:36:44');

-- --------------------------------------------------------

--
-- Table structure for table `data_jurusans`
--

CREATE TABLE `data_jurusans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jurusan_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_jurusans`
--

INSERT INTO `data_jurusans` (`id`, `jurusan_id`, `image`, `content`, `created_at`, `updated_at`) VALUES
(8, 8, '1668942851_resize_smk.png', 'Program Keahlian Akuntansi dan Keuangan Lembaga secara umum memberikan keterampilan kepada peserta didik untuk mengelola dan melakukan pencatatan keuangan secara manual maupun komputerisasi, dan membekali peserta dengan keterampilan akuntansi, mengelola transaksi keuangan, pajak dan membentuk siswa yang bersikap mandiri dan berkarakter sehingga lulusannya dapat menjadi staff accounting yang handal.\r\nTenaga bagian akuntansi sangat diperlukan oleh seluruh perusahaan kecil, menengah, dan besar. Baik itu perusahaan jasa, perusahaan dagang maupun perusahaan pabrik karena data yang dihasilkan oleh bagian akuntansi sangat diperlukan perusahaan untuk mengetahui likuiditas, solvabilitas dan rentabilitas perusahaan.', '2022-11-20 04:14:11', '2022-11-20 04:14:11'),
(9, 9, '1668942910_resize_smk.png', 'Otorisasi Tata Kelola Perkantoran atau biasa disingkat OTKP, dulu bernama Administrasi Perkantoran atau AP merupakan salah satu cabang bidang keahlian Bisnis dan Manajemen mempelajari tentang Pengetikan naskah atau dokumen, Penanganan telepon, Penataan dan pengelolaan surat atau dokumen, Penataan dan pengelolaan arsip, Penanganan perjalanan bisnis, Penanganan dana kas kecil, Penyiapan pertemuan atau rapat, Penanganan aplikasi, dan Penanganan informasi melalui internet.', '2022-11-20 04:15:10', '2022-11-20 04:15:10'),
(10, 10, '1668942932_resize_smk.png', 'Jurusan Multimedia atau sering juga disebut MM adalah salah satu dari banyaknya jurusan di SMK. Jurusan multimedia ini merupakan suatu jurusan SMK di bidang komputer yang mempelajari tentang penggunaan komputer guna untuk menyajikan data teks, suara, gambar, animasi, serta video yang dibuat semenarik mungkin dengan tools-tools yang sudah tersedia seperti halnya Adobe Photoshop, CorelDraw, Freehand, Adobe After Efect, dan lain-lain.', '2022-11-20 04:15:32', '2022-11-20 04:15:32'),
(11, 11, '1668943034_resize_smk.png', 'TKJ (Teknik Komputer dan Jaringan) adalah ilmu berbasis Teknologi Informasi dan Komunikasi terkait kemampuan algoritma, dan pemrograman komputer, perakitan komputer, perakitan jaringan komputer, dan pengoperasian perangkat lunak, dan internet. Teknik komputer, dan jaringan juga membutuhkan pemahaman di bidang teknik listrik, dan ilmu komputer sehingga mampu mengembangkan, dan mengintegrasikan perangkat lunak, dan perangkat keras.', '2022-11-20 04:17:14', '2022-11-20 04:17:14');

-- --------------------------------------------------------

--
-- Table structure for table `data_murids`
--

CREATE TABLE `data_murids` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `nis` bigint(20) DEFAULT NULL,
  `nisn` bigint(20) DEFAULT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `agama` enum('Islam','Kristen Katolik','Kristen Protestan','Hindu','Budha','Konghucu') DEFAULT NULL,
  `telp` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `asal_sekolah` varchar(255) DEFAULT NULL,
  `proses` enum('Pendaftaran','Berkas','Murid','Ditolak') NOT NULL DEFAULT 'Pendaftaran',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_murids`
--

INSERT INTO `data_murids` (`id`, `user_id`, `nis`, `nisn`, `tempat_lahir`, `tgl_lahir`, `agama`, `telp`, `whatsapp`, `alamat`, `asal_sekolah`, `proses`, `created_at`, `updated_at`) VALUES
(2, 5, NULL, NULL, 'Tangerang', '2022-12-06', 'Kristen Protestan', '1', '727429832', 'adddda', 'SMPN 1 Teluknaga', 'Pendaftaran', '2022-12-02 19:31:45', '2022-12-02 19:34:10'),
(3, 6, NULL, NULL, NULL, NULL, NULL, NULL, '123', NULL, 'SMPHOLOLIVE ID', 'Pendaftaran', '2022-12-06 00:05:26', '2022-12-06 00:05:26');

-- --------------------------------------------------------

--
-- Table structure for table `data_orang_tuas`
--

CREATE TABLE `data_orang_tuas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `nama_ayah` varchar(255) DEFAULT NULL,
  `pendidikan_ayah` enum('SD','SMP','SMA/SMK','S1','S2','S3') DEFAULT NULL,
  `telp_ayah` varchar(255) DEFAULT NULL,
  `pekerjaan_ayah` enum('Wiraswasta','Wirausaha','ASN','Buruh') DEFAULT NULL,
  `alamat_ayah` varchar(255) DEFAULT NULL,
  `nama_ibu` varchar(255) DEFAULT NULL,
  `pendidikan_ibu` enum('SD','SMP','SMA/SMK','S1','S2','S3') DEFAULT NULL,
  `telp_ibu` varchar(255) DEFAULT NULL,
  `pekerjaan_ibu` enum('Ibu Rumah Tangga','Wiraswasta','Wirausaha','ASN','Buruh') DEFAULT NULL,
  `alamat_ibu` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_orang_tuas`
--

INSERT INTO `data_orang_tuas` (`id`, `user_id`, `nama_ayah`, `pendidikan_ayah`, `telp_ayah`, `pekerjaan_ayah`, `alamat_ayah`, `nama_ibu`, `pendidikan_ibu`, `telp_ibu`, `pekerjaan_ibu`, `alamat_ibu`, `created_at`, `updated_at`) VALUES
(1, 5, 'sdsd', 'S1', '343', 'Wirausaha', 'sdsd', 'rfef', 'S1', '43', 'Ibu Rumah Tangga', 'rfef', '2022-12-02 19:34:10', '2022-12-02 19:34:38');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `desc` text NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `acara` datetime NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `desc`, `slug`, `content`, `thumbnail`, `acara`, `lokasi`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Yasinan Rutin Mingguan', 'YAPURA 1505', 'yasinan-rutin-mingguan', 'Yasisnan Rutin Yayasan Putra Rifara (YAPURA 1505) dilaksanakan pada setiap Jum\'at pagi dan sore hari.', '1670121151_32291.jpg', '2022-12-09 07:00:00', 'SMK Putra Rifara', '0', '2022-12-03 19:32:31', '2022-12-03 19:32:31');

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
-- Table structure for table `footers`
--

CREATE TABLE `footers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `telp` varchar(255) NOT NULL,
  `whatsapp` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footers`
--

INSERT INTO `footers` (`id`, `facebook`, `instagram`, `twitter`, `youtube`, `logo`, `telp`, `whatsapp`, `email`, `desc`, `created_at`, `updated_at`) VALUES
(1, '-', '-', '-', '-', '1669166245_logo2.png', '085777600335', '085777600335', 'smkputrarifara@gmail.com', 'SMK Putra Rifara', '2022-11-20 05:43:29', '2022-11-22 18:17:26');

-- --------------------------------------------------------

--
-- Table structure for table `image_sliders`
--

CREATE TABLE `image_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `urutan` int(11) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image_sliders`
--

INSERT INTO `image_sliders` (`id`, `image`, `title`, `desc`, `urutan`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '1669033029_smk1.jpg', 'SMK Putra Rifara', 'Kreatif, Terampil, Berani, Aktif, Berprestasi, Berkompetisi', 0, '0', '2022-11-21 05:17:09', '2022-11-21 05:19:20');

-- --------------------------------------------------------

--
-- Table structure for table `jurusans`
--

CREATE TABLE `jurusans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `singkatan` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jurusans`
--

INSERT INTO `jurusans` (`id`, `nama`, `singkatan`, `slug`, `is_active`, `created_at`, `updated_at`) VALUES
(8, 'Akutansi dan Keuangan Lembaga', 'AKL', 'akutansi-dan-keuangan-lembaga', '0', '2022-11-20 04:14:11', '2022-11-20 04:14:11'),
(9, 'Otorisasi Tata Kelola Perkantoran', 'OTKP', 'otorisasi-tata-kelola-perkantoran', '0', '2022-11-20 04:15:10', '2022-11-20 04:15:10'),
(10, 'Multimedia', 'MM', 'multimedia', '0', '2022-11-20 04:15:32', '2022-11-20 04:15:32'),
(11, 'Teknik Komputer dan Jaringan', 'TKJ', 'teknik-komputer-dan-jaringan', '0', '2022-11-20 04:17:14', '2022-11-20 04:17:14');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_beritas`
--

CREATE TABLE `kategori_beritas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori_beritas`
--

INSERT INTO `kategori_beritas` (`id`, `nama`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Acara', '0', '2022-11-23 23:28:27', '2022-11-23 23:28:27'),
(2, 'History', '0', '2022-12-03 19:39:17', '2022-12-03 19:39:17');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatans`
--

CREATE TABLE `kegiatans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `imagas` varchar(255) DEFAULT NULL,
  `content` text NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kegiatans`
--

INSERT INTO `kegiatans` (`id`, `nama`, `slug`, `image`, `imagas`, `content`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Futsal', 'futsal', '1669024689_futsal_liga_rifara.jpg', NULL, 'Putra Rifara Futsal merupakan ekstrakurikuler yang bergerak di bidang olahraga yaitu futsal. Putra Rifara Futsal tentunya ingin menjadi wadah bagi murid untuk dapat menyalurkan bakatnya dengan mengikuti ekstrakulikuler ini. ekstrakurikuler Putra Rifara Futsal mengikuti berbagai kompetisi setiap tahunnya untuk membawa nama sekolah menjadi juara. ekstrakurikuler ini memberikan pelatihan futsal tidak hanya untuk pria tetapi juga untuk wanita.', '0', '2022-11-21 02:58:09', '2022-11-21 02:59:28'),
(2, 'Pramuka', 'pramuka', '1669025624_pramuka.jpg', NULL, 'Pramuka adalah salah satu kegiatan ekstrakulikuler  di SMK Putra Rifara. Dengan mengikuti kegiatan ini, siswa/i diharapkan mendapat manfaat kepramukaan, yaitu  lebih percaya diri. Dengan dikelilingi sesama anggota pramuka yang saling mendukung, anak jadi lebih berani, percaya diri, dan berempati. Mendukung perkembangan emosional sosial. Melatih anak berpendapat, menyelesaikan konflik melalui diskusi, mengungkapkan emosi secara positif, menghargai perbedaan, mengenali isyarat nonverbal, dan berbagai keterampilan lain yang mendukung perkembangan sosial emosionalnya. serta menumbuhkan tanggung jawab dan disiplin.', '0', '2022-11-21 03:13:44', '2022-11-21 03:18:56'),
(3, 'Dance', 'dance', '1669026314_dance.jpg_large', NULL, 'Dance adalah kegiatan ekstrakurikuler yang berfokus di bidang tari. Tujuan di bentuknya ekstrakurikuler Dance adalah menjadi tempat atau wadah untuk murid SMK Putra Rifara yang tertarik dengan dunia tari, ada berbagai macam style yang akan dipelajari seperti: b-boy, locking, hip-hop, ladies, popping, dll. Tak hanya menjadi wadah tetapi ekstrakurikuler Dance juga akan memberikan kalian pengalaman baru dengan tampil di berbagai acara sekolah. Buat teman-teman yang ingin mendapatkan ilmu baru tentang dunia tari, ekstrakurikuler Dance selalu mengadakan workshop untuk kalian semua yang rindu belajar tari lebih lagi. Mari kita bertumbuh bersama dan menjadi seorang dancer!', '0', '2022-11-21 03:25:14', '2022-11-21 03:25:14'),
(4, 'Tari Daerah', 'tari-daerah', '1669027086_tari_daerah.webp', NULL, 'Tari Daerah merupakan kegiatan ekstrakurikuler di SMK Putra Rifara yang memberi wadah bagi murid yang ingin menyalurkan bakat dan minatnya dalam seni tradisional yang berasal dari Indonesia. Tujuan utama adanya ekstrakurikuler Tari Daerah adalah menjadi sarana bagi murid SMK Putra Rifara untuk mengembangkan bakat sekaligus melestarikan budaya Indonesia melalui tarian nusantara. Bersama Tari Daerah mari lestarikan budaya kita, budaya nusantara.', '0', '2022-11-21 03:38:07', '2022-11-21 03:38:07'),
(5, 'Marching Band', 'marching-band', '1669027409_marching_band.webp', NULL, 'Marching band merupakan kegiatan dimana sekelompok orang bermain musik sambil berbaris, bergerak dan berjalan membentuk berbagai visualisasi gerakan. Hal ini lah yang membedakan marching band dengan jenis kegiatan bermusik lainnya, karena saat bermain marching band, pemain di tuntut untuk selalu bergerak dinamis mengikuti irama musik yang dimainkan, tidak diam statis di tempat. Marching band dapat didefinisikan sebagai bentuk permainan musik dan olahraga yang terdiri dari beberapa orang personil untuk mengiringi langkah dalam berbaris, atau dengan kata lain berbaris sambil bermain musik (Sudrajat, 2005:3). Sedangkan Marko (2013) mengemukakan definisi marching band sebagai “kegiatan yang melibatkan fisik, musik dan dimensi artistik. Sebagian besar waktu aktifitas marching band adalah berada diluar ruangan , dalam beberapa hari latihan, motivasi dan tim-kerja yang diperlukan untuk mengatur mencapai sampai tujuan akhir yaitu kinerja yang sempurna.', '0', '2022-11-21 03:43:29', '2022-11-21 03:43:29');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_03_30_084531_create_data_orang_tuas_table', 1),
(6, '2022_04_01_191038_create_berkas_murids_table', 1),
(7, '2022_05_20_062053_create_authors_table', 1),
(8, '2022_05_20_062103_create_publishers_table', 1),
(9, '2022_05_20_062130_create_categories_table', 1),
(10, '2022_05_20_062140_create_books_table', 1),
(11, '2022_05_20_062219_create_members_table', 1),
(12, '2022_05_20_062236_create_borrowings_table', 1),
(13, '2022_07_16_094123_create_bank_accounts_table', 1),
(14, '2022_07_16_094821_create_payment_spps_table', 1),
(15, '2022_07_16_100447_create_detail_payment_spps_table', 1),
(16, '2022_07_29_081354_add_column_in_detail_payment_spps_table', 1),
(17, '2022_11_15_100634_create_banks_tables', 1),
(18, '2022_11_15_100847_create_jurusans_table', 1),
(19, '2022_11_15_102026_create_data_jurusans_table', 1),
(20, '2022_11_15_102036_create_kegiatans_table', 1),
(21, '2022_11_15_102045_create_image_sliders_table', 1),
(22, '2022_11_15_102102_add_field_to_image_sliders_table', 1),
(23, '2022_11_15_102109_create_abouts_table', 1),
(24, '2022_11_15_102123_create_videos_table', 1),
(25, '2022_11_15_102129_create_kategori_beritas_table', 1),
(26, '2022_11_15_102136_create_beritas_table', 1),
(27, '2022_11_15_102142_create_events_table', 1),
(28, '2022_11_15_102150_add_field_to_events_table', 1),
(29, '2022_11_15_102156_create_footers_table', 1),
(30, '2022_11_15_102203_create_permission_tables', 1),
(31, '2022_11_15_102209_create_users_details_table', 1),
(32, '2022_11_15_102215_create_data_murids_table', 1),
(33, '2022_11_15_102222_create_profile_sekolahs_table', 1),
(34, '2022_11_15_102228_create_visimisis_table', 1),
(35, '2022_11_15_102234_add_value_role_in_users_table', 1),
(36, '2022_11_15_102242_add_value_role_in_users_details_table', 1),
(37, '2022_11_15_102249_add_field_to_data_murids', 1),
(38, '2022_11_15_102256_add_value_role_bendahara_in_users_table', 1),
(39, '2022_11_15_102304_add_value_role_bendahara_in_users_details_table', 1),
(40, '2022_11_15_102311_add_column_account_name_in_bank_accounts_table', 1),
(41, '2022_11_15_102319_create_settings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(7, 'App\\Models\\User', 2),
(7, 'App\\Models\\User', 5),
(7, 'App\\Models\\User', 6),
(9, 'App\\Models\\User', 3),
(9, 'App\\Models\\User', 4);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profile_sekolahs`
--

CREATE TABLE `profile_sekolahs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profile_sekolahs`
--

INSERT INTO `profile_sekolahs` (`id`, `title`, `content`, `image`, `created_at`, `updated_at`) VALUES
(1, 'SEKILAS TENTANG SMK PUTRA RIFARA', 'Membangun suatu generasi mendatang yang dapat menjawab tantangan jaman pada masa kini dan masa datang diperlukan sebuah pola fikir atau metode pendidikan yang sejalan dengan perkembangan IPTEK dan IMTAQ dewasa ini.Untuk itu kami SMK Putra Rifara hadir memnuhi kebutuhan akan pendidikan modern. Mudah-mudahan tekad kami kedepan diharapkan dapat memiliki peran strategis dalam membentuk, membina, mendidik, membangun manusia yang memiliki karakter dan kepribadian yang mampu memahami diri sendiri dan orang lain, terampil dalam hidup mandiri dan bertanggung jawab, mau dan mampu berperan aktif serta dapat bekerjasama dengan orang lain.', '1668946279_resize_smk.png', '2022-11-20 05:11:20', '2022-11-20 05:14:51');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2022-11-20 02:43:06', '2022-11-20 02:43:06'),
(2, 'Guru', 'web', '2022-11-20 02:43:06', '2022-11-20 02:43:06'),
(3, 'Staf', 'web', '2022-11-20 02:43:06', '2022-11-20 02:43:06'),
(4, 'Murid', 'web', '2022-11-20 02:43:06', '2022-11-20 02:43:06'),
(5, 'Orang Tua', 'web', '2022-11-20 02:43:06', '2022-11-20 02:43:06'),
(6, 'Alumni', 'web', '2022-11-20 02:43:06', '2022-11-20 02:43:06'),
(7, 'Guest', 'web', '2022-11-20 02:43:06', '2022-11-20 02:43:06'),
(8, 'Perpustakaan', 'web', '2022-11-20 02:43:06', '2022-11-20 02:43:06'),
(9, 'PPDB', 'web', '2022-11-20 02:43:06', '2022-11-20 02:43:06'),
(10, 'Bendahara', 'web', '2022-11-20 02:43:06', '2022-11-20 02:43:06');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `isEmail` tinyint(1) NOT NULL DEFAULT 0,
  `email` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `isEmail`, `email`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 1, '2022-11-20 02:43:06', '2022-11-20 02:43:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` enum('Admin','Guru','Staf','Murid','Orang Tua','Alumni','Guest','Perpustakaan','PPDB','Bendahara') DEFAULT NULL,
  `status` enum('Aktif','Tidak Aktif') NOT NULL,
  `foto_profile` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `role`, `status`, `foto_profile`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'admin@sch.id', 'Admin', 'Aktif', NULL, NULL, '$2y$10$.OeFUB3/4n8Q3QRQjBQf3.Z1rtQGvDwkAY36MPo4P2RVBbkIZTRSK', NULL, '2022-11-20 02:43:06', '2022-11-30 09:22:27'),
(3, 'hendriyansyah', 'hendriyansyah18', 'anadaendrik1505@mail.com', 'PPDB', 'Aktif', '1670033718_WhatsApp Image 2022-07-18 at 15.29.54.jpeg', NULL, '$2y$10$qLN0myKNdhpO0kdfKxJhMea9M71EALefoIhcamRIPdTkhYuVbcE9W', NULL, '2022-12-02 19:15:18', '2022-12-02 19:15:18'),
(4, '123', '12310', '123@gmail.com', 'PPDB', 'Aktif', '1670084912_Fcm5GbRaMAETSbX.jpg', NULL, '$2y$10$Ytn/B1pTxxcBGQ1D93162efIg8C0g6910FWits2oasl9noE73qPZq', NULL, '2022-12-02 19:28:10', '2022-12-03 09:28:32'),
(5, 'yahya', 'yahya', 'yahya123@gmai.com', 'Guest', 'Aktif', NULL, NULL, '$2y$10$YZCUnvliLueMVxI0d9sEA.nl7N4R24vTshIeGCrr2nJYVYf1XdtPW', NULL, '2022-12-02 19:31:45', '2022-12-02 19:31:45'),
(6, 'test', 'test', 'test@gmail.com', 'Guest', 'Aktif', NULL, NULL, '$2y$10$pAdX8j8tWo/XhCG53W4lru1Qji48cHEQYoMsXecIcMek.GsAuzlSi', NULL, '2022-12-06 00:05:26', '2022-12-06 00:05:26');

-- --------------------------------------------------------

--
-- Table structure for table `users_details`
--

CREATE TABLE `users_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` enum('Admin','Guru','Staf','Murid','Orang Tua','Alumni','Guest','Perpustakaan','PPDB','Bendahara') DEFAULT NULL,
  `mengajar` varchar(255) DEFAULT NULL,
  `nip` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `linkidln` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_details`
--

INSERT INTO `users_details` (`id`, `user_id`, `role`, `mengajar`, `nip`, `email`, `linkidln`, `instagram`, `twitter`, `facebook`, `youtube`, `website`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 3, 'PPDB', NULL, 0, 'anadaendrik1505@mail.com', NULL, '-', '-', '-', '-', '-', '0', '2022-12-02 19:15:18', '2022-12-02 19:15:18'),
(2, 4, 'PPDB', NULL, 1, '123@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2022-12-02 19:28:10', '2022-12-02 19:28:10');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `desc`, `url`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Video Promosi SMK Putra Rifara 2021', 'SMK Putra Rifara Membuka Pendaftaran Siswa/i Baru\r\nSegera Daftarkan Diri Anda Di SMK Putra Rifara', 'https://www.youtube.com/watch?v=ceah0FDzw4s', '0', '2022-11-20 05:34:45', '2022-11-20 05:38:13');

-- --------------------------------------------------------

--
-- Table structure for table `visimisis`
--

CREATE TABLE `visimisis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visi` text NOT NULL,
  `misi` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visimisis`
--

INSERT INTO `visimisis` (`id`, `visi`, `misi`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Menciptakan Lulusan yang memiliki Skill Profesionalisme yang dilandasi; Keimanan, Akhlak Mulia, Cerdas, Terampil, Mandiri, Berdaya Saing dan Gemar Belajar.', 'Menyiapkan lulusan menjadi tenaga profesional yang handal. \r\nMembekali siswa-siswi dengan ilmu pengetahuan dan Kecakapan Hidup.\r\nMembekali siswa-siswi menjadi tenaga kerja yang berwawasan Management.\r\nMembekali siswa-siswi menjadi tenaga yang beriman dan berakhlak mulia.\r\nMunumbuhkan dan mewujudkan lulusan yang berjiwa wirausaha, kompetitor, dan Gemar Belajar.', '1668945304_resize_smk.png', '2022-11-20 04:55:04', '2022-11-20 04:55:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beritas`
--
ALTER TABLE `beritas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `beritas_title_unique` (`title`);

--
-- Indexes for table `berkas_murids`
--
ALTER TABLE `berkas_murids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_jurusans`
--
ALTER TABLE `data_jurusans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_jurusans_jurusan_id_foreign` (`jurusan_id`);

--
-- Indexes for table `data_murids`
--
ALTER TABLE `data_murids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_orang_tuas`
--
ALTER TABLE `data_orang_tuas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `events_title_unique` (`title`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `footers`
--
ALTER TABLE `footers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_sliders`
--
ALTER TABLE `image_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jurusans`
--
ALTER TABLE `jurusans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jurusans_nama_unique` (`nama`),
  ADD UNIQUE KEY `jurusans_slug_unique` (`slug`),
  ADD UNIQUE KEY `jurusans_singkatan_unique` (`singkatan`);

--
-- Indexes for table `kategori_beritas`
--
ALTER TABLE `kategori_beritas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kategori_beritas_nama_unique` (`nama`);

--
-- Indexes for table `kegiatans`
--
ALTER TABLE `kegiatans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kegiatans_nama_unique` (`nama`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `profile_sekolahs`
--
ALTER TABLE `profile_sekolahs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settings_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users_details`
--
ALTER TABLE `users_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visimisis`
--
ALTER TABLE `visimisis`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `beritas`
--
ALTER TABLE `beritas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `berkas_murids`
--
ALTER TABLE `berkas_murids`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `data_jurusans`
--
ALTER TABLE `data_jurusans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `data_murids`
--
ALTER TABLE `data_murids`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `data_orang_tuas`
--
ALTER TABLE `data_orang_tuas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `footers`
--
ALTER TABLE `footers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `image_sliders`
--
ALTER TABLE `image_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jurusans`
--
ALTER TABLE `jurusans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `kategori_beritas`
--
ALTER TABLE `kategori_beritas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kegiatans`
--
ALTER TABLE `kegiatans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profile_sekolahs`
--
ALTER TABLE `profile_sekolahs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users_details`
--
ALTER TABLE `users_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visimisis`
--
ALTER TABLE `visimisis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_jurusans`
--
ALTER TABLE `data_jurusans`
  ADD CONSTRAINT `data_jurusans_jurusan_id_foreign` FOREIGN KEY (`jurusan_id`) REFERENCES `jurusans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `settings`
--
ALTER TABLE `settings`
  ADD CONSTRAINT `settings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
