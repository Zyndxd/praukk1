-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3311
-- Generation Time: Feb 09, 2026 at 11:47 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prakukk`
--

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id_kendaraan` int NOT NULL,
  `plat_nomor` varchar(100) NOT NULL,
  `jenis_kendaraan` varchar(100) NOT NULL,
  `pemilik` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id_kendaraan`, `plat_nomor`, `jenis_kendaraan`, `pemilik`) VALUES
(4, 'B9999DD', 'Motor', 'Admin'),
(7, '234', 'Motor', 'edfs');

-- --------------------------------------------------------

--
-- Table structure for table `tiket`
--

CREATE TABLE `tiket` (
  `id_tiket` int NOT NULL,
  `plat_nomor` varchar(255) NOT NULL,
  `jenis_kendaraan` varchar(255) NOT NULL,
  `pemilik` varchar(255) NOT NULL,
  `jam_masuk` datetime NOT NULL,
  `jam_keluar` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tiket`
--

INSERT INTO `tiket` (`id_tiket`, `plat_nomor`, `jenis_kendaraan`, `pemilik`, `jam_masuk`, `jam_keluar`) VALUES
(1, 'B9999DD', 'Motor', 'Admin', '2026-02-07 07:07:52', '2026-02-07 07:46:25'),
(2, 'D9999ZZ', 'Mobil', 'Tamu', '2026-02-07 07:59:14', '2026-02-07 07:59:18'),
(3, 'ZZ6666ZZ', 'Sepeda', 'Tamu', '2026-02-08 02:55:36', '2026-02-09 03:51:23'),
(4, '45454', 'Motor', 'Tamu', '2026-02-09 03:53:13', '2026-02-09 05:47:14'),
(5, 'B8888ZS', 'Mobil', 'Tamu', '2026-02-09 05:46:46', '2026-02-09 05:47:19'),
(6, 'B9999XX', 'Motor', 'Tamu', '2026-02-09 05:50:33', '2026-02-09 05:50:41');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama_lengkap`, `username`, `password`, `role`) VALUES
(1, 'Fazar Ihsan', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(2, 'Fazar', 'pengelola', '3c7913bc17671596a43dcb4581992bdf', 'Pengelola'),
(7, 'Pengelola', 'Pengelola', '58eba11e59c8c29acef3a703d458326c', 'Pengelola');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id_kendaraan`);

--
-- Indexes for table `tiket`
--
ALTER TABLE `tiket`
  ADD PRIMARY KEY (`id_tiket`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id_kendaraan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tiket`
--
ALTER TABLE `tiket`
  MODIFY `id_tiket` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
