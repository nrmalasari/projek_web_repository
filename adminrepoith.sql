-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Jun 24, 2024 at 12:41 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adminrepoith`
--

-- --------------------------------------------------------

--
-- Table structure for table `jenis_dokumen`
--

CREATE TABLE `jenis_dokumen` (
  `id_dokumen` int(11) NOT NULL,
  `nama_dokumen` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jenis_dokumen`
--

INSERT INTO `jenis_dokumen` (`id_dokumen`, `nama_dokumen`) VALUES
(1, 'SKRIPSI'),
(2, 'TESIS'),
(5, 'JURNAL'),
(6, 'PROCEEDING');

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `id_prodi` int(11) NOT NULL,
  `nama_prodi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`id_prodi`, `nama_prodi`) VALUES
(10, 'Ilmu Komputer'),
(11, 'Matematika'),
(12, 'Sisitem Informasi');

-- --------------------------------------------------------

--
-- Table structure for table `publikasi`
--

CREATE TABLE `publikasi` (
  `id` int(11) NOT NULL,
  `nama_penulis` varchar(100) NOT NULL,
  `judul_terbitan` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL,
  `id_dokumen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subjek`
--

CREATE TABLE `subjek` (
  `id_subjek` int(11) NOT NULL,
  `nama_subjek` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjek`
--

INSERT INTO `subjek` (`id_subjek`, `nama_subjek`) VALUES
(6, 'IOT (Internet of Things)'),
(8, 'AI (Artificial Intelligence)'),
(9, 'Machine learning');

-- --------------------------------------------------------

--
-- Table structure for table `tabel`
--

CREATE TABLE `tabel` (
  `id` int(11) NOT NULL,
  `judul` varchar(150) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `penulis` varchar(75) NOT NULL,
  `abstrak` text NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `file` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel`
--

INSERT INTO `tabel` (`id`, `judul`, `jenis`, `penulis`, `abstrak`, `keyword`, `jurusan`, `file`, `status`) VALUES
(55, ' ANALISIS PERBANDINGAN PERFORMANSI WEBSITE BERBASIS REACT JS DAN JAVASCRIPT UNTUK MENAMPILKAN GAMBAR BERFORMAT WEBP DENGAN JPG OPTIMIZE DAN PNG OPTIMI', 'Skripsi', 'Aldi alfatih', 'Salah satu faktor yang mempengaruhi kenyamanan pengguna dalam mengunjungi website adalah performa saat membuka website. Website yang memiliki ukuran file gambar yang besar akan menurunkan performa website dan waktu untuk menampilkan website menjadi lebih lama. Oleh sebab itu, dibutuhkan cara mengoptimalisasi gambar agar mendapatkan ukuran yang lebih kecil. Salah satu cara untuk mengoptimalisasi gambar yaitu dengan mengubah format gambar menjadi format WebP. WebP merupakan format gambar yang dapat membuat ukuran gambar yang lebih kecil tanpa mengurangi kualitas gambar sehingga web menjadi lebih cepat. Adapun tujuan penelitian ini untuk mengetahui performansi dan kualitas format gambar WebP, JPG dan PNG pada website berbasis ReactJS dan Javascript. Proses analisis penelitian ini, akan membandingkan format gambar JPG dan PNG dengan format gambar WebP dengan web berbasis ReactJS dan Javascript. Analisis yang dilakukan menggunakan web dev-tools di google chrome dan package Javascript untuk menghasilkan format gambar webp dan script python untuk menghitung nilai PSNR format gambar. Hasil penelitian menunjukkan bahwa format webp menghasilkan ukuran file yang lebih rendah dibandingkan dengan format gambar sebelumnya yaitu JPG dan PNG, memiliki kualitas gambar yang tidak terlalu berbeda dan load time yang lebih rendah. Namun Jika format webp dibandingkan dengan format JPG yang sudah di optimize dan disamakan ukurannya dengan format gambar WebP, load time kedua format gambar sama. Tetapi untuk kualitas gambar, format webp jauh lebih baik dibandingkan dengan JPG dan PNG yang sudah di optimize. ', 'webp, kualitas gambar, load time, ReactJS, Javascript', 'Ilmu Komputer', '637ecfc696b353bd872a3a9dc9fcbf44.pdf', ''),
(56, 'SISTEM DETEKSI LOKASI IDEAL PENANAMAN RUMPUT LAUT BERBASIS IOT', 'Skripsi', 'Arif Hidayat', 'Salah satu sumber daya hayati bawah laut yang sangat banyak di perairan Indonesia adalah rumput laut, yang juga dikenal sebagai seaweed. Rumput laut terkenal di Indonesia dengan kualitas yang tinggi dan memiliki peminatan yang banyak karena mengandung jumlah keragian, agar-agar, dan alginat yang cukup tinggi, sehingga cocok digunakan sebagai bahan baku industri makanan, pelembut rasa, pencegah kristalisasi es krim, dan sebagai bahan untuk obat-obatan. Salah satu tantangan dalam budidaya rumput laut adalah faktor kegagalan rumput laut seperti pertumbuhan yang berjalan lambat karena kondisi lingkungan yang tidak mendukung pada waktu atau musim tertentu. Faktor lain adalah penyakit atau hama yang menyerang rumput laut. Penyakit yang menyerang rumput laut dikenal dengan sebutan penyakit ice-ice, gangguan penyakit ini berasal dari bakteri pseudoaiteromonas gracilis, adapun penyebabnya ialah adanya tekanan lingkungan oleh fluktuasi parameter, akibat kualitas pada air menjadi tinggi seperti kadar garam, intensitas cahaya matahari dan yang lainnya. Tujuan penelitian ini adalah mencegah terjadinya kegagalan rumput laut menggunakan teknologi Internet of Things dengan merancang sebuah sistem deteksi lokasi ideal penanaman rumput laut. Alat ini menggunakan mikrokontroler NodeMCU ESP8266 dengan bantuan sensor yaitu sensor ultrasonic JSN-SR04T untuk kedalaman air, sensor suhu DS18B20, sensor waterflow YF-S201 untuk arus air, sensor pH 4502C dan sensor GPS Ublox Neo-M8N. Hasil penelitian menunjukkan bahwa sistem ini bekerja sesuai harapan karena mampu monitoring data sensor pada dashboard blynk secara realtime dan mampu menggambarkan lokasi yang ideal untuk penanaman rumput laut pada peta. Dengan bantuan alat ini, petani rumput laut dapat menentukan lokasi yang tepat untuk penanaman rumput laut sehingga dapat mencegah terjadinya gagal panen.', 'Rumput Laut, Internet of Things, NodeMCU ESP8266, Sensor', 'Ilmu Komputer', 'c8c27439c14960cf0a42dd181f84b2e0.pdf', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `role_id`) VALUES
(1, 'admin', 'admin', '123', 1),
(2, 'mala', 'user', '12345', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tesis`
--

CREATE TABLE `tesis` (
  `id` int(11) NOT NULL,
  `id_publikasi` int(11) NOT NULL,
  `nim` varchar(20) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `institusi` varchar(100) NOT NULL,
  `fakultas` varchar(100) NOT NULL,
  `tipe` varchar(100) NOT NULL,
  `pembimbing` varchar(100) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jenis_dokumen`
--
ALTER TABLE `jenis_dokumen`
  ADD PRIMARY KEY (`id_dokumen`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id_prodi`);

--
-- Indexes for table `publikasi`
--
ALTER TABLE `publikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjek`
--
ALTER TABLE `subjek`
  ADD PRIMARY KEY (`id_subjek`);

--
-- Indexes for table `tabel`
--
ALTER TABLE `tabel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tesis`
--
ALTER TABLE `tesis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_publikasi` (`id_publikasi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jenis_dokumen`
--
ALTER TABLE `jenis_dokumen`
  MODIFY `id_dokumen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id_prodi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `publikasi`
--
ALTER TABLE `publikasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subjek`
--
ALTER TABLE `subjek`
  MODIFY `id_subjek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tabel`
--
ALTER TABLE `tabel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tesis`
--
ALTER TABLE `tesis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tesis`
--
ALTER TABLE `tesis`
  ADD CONSTRAINT `tesis_ibfk_1` FOREIGN KEY (`id_publikasi`) REFERENCES `publikasi` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
