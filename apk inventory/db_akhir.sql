-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2025 at 08:56 AM
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
-- Database: `db_akhir`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_bahan_baku`
--

CREATE TABLE `t_bahan_baku` (
  `id_bahanBaku` int(11) NOT NULL,
  `nama_bahan` varchar(100) DEFAULT NULL,
  `satuan` varchar(20) DEFAULT NULL,
  `stok` decimal(10,2) DEFAULT NULL,
  `harga_satuan` decimal(12,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_bahan_baku`
--

INSERT INTO `t_bahan_baku` (`id_bahanBaku`, `nama_bahan`, `satuan`, `stok`, `harga_satuan`) VALUES
(4, 'Daun Jeruk', 'kg', 50.00, 30000.00),
(5, 'Cabe Kering/Cengek', 'kg', 180.00, 65000.00),
(6, 'Bawang Bodas', 'kg', 30.00, 42000.00),
(7, 'Pecin', 'pcs', 120.00, 10000.00),
(8, 'Royko', 'pcs', 120.00, 5000.00),
(9, 'Garam', 'pcs', 120.00, 2500.00),
(10, 'Sehati', 'pcs', 180.00, 37000.00),
(11, 'Atom Bawang 250gr', 'gram', 360.00, 10000.00),
(12, 'Atom Balado 250gr', 'gram', 360.00, 10500.00);

-- --------------------------------------------------------

--
-- Table structure for table `t_biaya_tambahan`
--

CREATE TABLE `t_biaya_tambahan` (
  `id` int(11) NOT NULL,
  `id_produksi` int(11) DEFAULT NULL,
  `nama_biaya` varchar(100) DEFAULT NULL,
  `jumlah` double DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_biaya_tambahan`
--

INSERT INTO `t_biaya_tambahan` (`id`, `id_produksi`, `nama_biaya`, `jumlah`, `tanggal`) VALUES
(1, 14, NULL, 20000, '2025-06-20 05:44:38'),
(2, 11, NULL, 10000, '2025-06-20 05:45:19'),
(3, 12, NULL, 5000, '2025-06-20 05:54:12'),
(4, 14, NULL, 1000, '2025-06-20 05:57:32'),
(5, 15, NULL, 2000, '2025-06-20 05:59:06');

-- --------------------------------------------------------

--
-- Table structure for table `t_detail_bahan_terpakai`
--

CREATE TABLE `t_detail_bahan_terpakai` (
  `id` int(11) NOT NULL COMMENT 'Primary Key: ID Unik Detail Bahan Terpakai',
  `id_produksi` int(11) NOT NULL COMMENT 'Foreign Key ke `t_produksi`',
  `id_bahanBaku` int(11) NOT NULL COMMENT 'Foreign Key ke `t_bahan_baku`',
  `jumlah_terpakai` decimal(12,4) NOT NULL COMMENT 'Jumlah aktual bahan baku yang terpakai untuk detail produksi ini'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Tabel Detail Penggunaan Bahan Baku dalam Produksi';

-- --------------------------------------------------------

--
-- Table structure for table `t_detail_produksi`
--

CREATE TABLE `t_detail_produksi` (
  `id` int(11) NOT NULL,
  `id_produksi` int(11) NOT NULL,
  `id_bahanBaku` int(11) NOT NULL,
  `jumlah` decimal(10,2) NOT NULL,
  `subtotal` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_komposisi_produk`
--

CREATE TABLE `t_komposisi_produk` (
  `id` int(11) NOT NULL COMMENT 'Primary Key: ID Unik Komposisi',
  `id_produk` int(11) NOT NULL COMMENT 'Foreign Key ke `t_produk`',
  `id_bahanBaku` int(11) NOT NULL COMMENT 'Foreign Key ke `t_bahan_baku`',
  `takaran` decimal(12,4) NOT NULL COMMENT 'Jumlah bahan baku yang dibutuhkan per unit produk (misal: 0.5 kg)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Tabel Relasi Komposisi Produk';

--
-- Dumping data for table `t_komposisi_produk`
--

INSERT INTO `t_komposisi_produk` (`id`, `id_produk`, `id_bahanBaku`, `takaran`) VALUES
(6, 7, 4, 10.0000);

-- --------------------------------------------------------

--
-- Table structure for table `t_margin_produk`
--

CREATE TABLE `t_margin_produk` (
  `id` int(11) NOT NULL COMMENT 'Primary Key: ID Unik Margin Produk',
  `id_produk` int(11) NOT NULL COMMENT 'Foreign Key ke `t_produk`, harus unik per produk',
  `persen_margin` decimal(5,2) NOT NULL COMMENT 'Persentase margin keuntungan (misal: 20.50 untuk 20.5%)',
  `created_at` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Timestamp saat record dibuat',
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Timestamp saat record terakhir diperbarui'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Tabel Referensi Margin Keuntungan Produk';

-- --------------------------------------------------------

--
-- Table structure for table `t_pembelian_bahan`
--

CREATE TABLE `t_pembelian_bahan` (
  `id` int(11) NOT NULL COMMENT 'Primary Key: ID Unik Pembelian Bahan',
  `tanggal_pembelian` date NOT NULL COMMENT 'Tanggal transaksi pembelian bahan baku',
  `id_bahanBaku` int(11) NOT NULL COMMENT 'Foreign Key ke `t_bahan_baku` (Bahan baku yang dibeli)',
  `jumlah_beli` int(11) NOT NULL COMMENT 'Kuantitas bahan baku yang dibeli',
  `harga_total` decimal(14,2) NOT NULL COMMENT 'Total harga pembelian untuk item bahan baku ini',
  `supplier` varchar(100) DEFAULT NULL COMMENT 'Nama pemasok bahan baku (opsional)',
  `keterangan` text DEFAULT NULL COMMENT 'Catatan tambahan terkait pembelian',
  `created_at` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Timestamp saat record dibuat'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Tabel Transaksi Pembelian Bahan Baku';

-- --------------------------------------------------------

--
-- Table structure for table `t_produk`
--

CREATE TABLE `t_produk` (
  `id` int(11) NOT NULL COMMENT 'Primary Key: ID Unik Produk',
  `nama_produk` varchar(100) NOT NULL COMMENT 'Nama unik dari produk jadi',
  `kategori` varchar(50) DEFAULT NULL COMMENT 'Kategori produk (opsional, misal: Makanan, Minuman)',
  `satuan` varchar(20) NOT NULL DEFAULT 'pcs' COMMENT 'Satuan unit produk (misal: pcs, pack, botol)',
  `harga_jual` decimal(12,2) NOT NULL DEFAULT 0.00 COMMENT 'Harga jual produk per satuan unit',
  `stok` int(11) NOT NULL DEFAULT 0 COMMENT 'Jumlah stok produk jadi yang tersedia'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Tabel Master Produk Jadi';

--
-- Dumping data for table `t_produk`
--

INSERT INTO `t_produk` (`id`, `nama_produk`, `kategori`, `satuan`, `harga_jual`, `stok`) VALUES
(4, 'Seblak beton', NULL, 'pcs', 21111.00, 540),
(5, 'Basreng', NULL, 'pcs', 12000.00, 3000),
(6, 'Makaroni', NULL, 'pcs', 17000.00, 30),
(7, 'pangsit', NULL, 'pcs', 10.00, 10);

-- --------------------------------------------------------

--
-- Table structure for table `t_produksi`
--

CREATE TABLE `t_produksi` (
  `id` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total_hpp` decimal(12,2) NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_produksi`
--

INSERT INTO `t_produksi` (`id`, `id_produk`, `jumlah`, `total_hpp`, `tanggal`) VALUES
(11, 1, 1, 12030.00, '2025-06-19 23:06:04'),
(12, 1, 2, 9060.00, '2025-06-19 23:15:47'),
(13, 1, 1, 2030.00, '2025-06-19 23:18:13'),
(14, 1, 1, 23030.00, '2025-06-19 23:21:07'),
(15, 4, 3, 21500.00, '2025-06-19 23:58:24');

-- --------------------------------------------------------

--
-- Table structure for table `t_user`
--

CREATE TABLE `t_user` (
  `id` int(11) NOT NULL COMMENT 'Primary Key: ID Unik Pengguna',
  `user_name` varchar(100) NOT NULL COMMENT 'Nama Lengkap Pengguna',
  `email` varchar(100) NOT NULL COMMENT 'Alamat Email Pengguna, unik dan digunakan untuk login',
  `password` varchar(255) NOT NULL COMMENT 'Hash Password Pengguna (disimpan dalam bentuk terenkripsi)',
  `role` enum('Admin','Produksi','Gudang') NOT NULL DEFAULT 'Gudang' COMMENT 'Peran pengguna dalam sistem (Admin, Produksi, Gudang)',
  `created_at` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Timestamp saat record dibuat',
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Timestamp saat record terakhir diperbarui'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Tabel Master Pengguna Sistem';

--
-- Dumping data for table `t_user`
--

INSERT INTO `t_user` (`id`, `user_name`, `email`, `password`, `role`, `created_at`, `updated_at`) VALUES
(3, 'Admin13', 'admin13@gmail.com', '$2y$10$0eQ1DoLsb6ROkpvE4KjPB.wC8Z4lM3I3x3LbRUSyaVIdhggu/.qPm', 'Gudang', '2025-06-19 16:02:49', '2025-06-20 03:44:44'),
(4, 'Super Admin', 'admin@inventory.com', '$2y$10$0eQ1DoLsb6ROkpvE4KjPB.wC8Z4lM3I3x3LbRUSyaVIdhggu/.qPm', 'Admin', '2025-06-20 03:24:40', '2025-06-20 03:24:40'),
(5, 'Afifah', 'afifah@gmail.com', '$2y$10$JIcAXiYb0RDhZ4DGtY.ZnO0EChvI8dkKvZHVm.UfSCpWxO67BSoNW', 'Admin', '2025-06-20 03:49:24', '2025-06-20 05:52:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_bahan_baku`
--
ALTER TABLE `t_bahan_baku`
  ADD PRIMARY KEY (`id_bahanBaku`);

--
-- Indexes for table `t_biaya_tambahan`
--
ALTER TABLE `t_biaya_tambahan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_detail_bahan_terpakai`
--
ALTER TABLE `t_detail_bahan_terpakai`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_detail_terpakai` (`id_produksi`,`id_bahanBaku`) COMMENT 'Mencegah duplikasi detail bahan yang sama untuk satu produksi',
  ADD KEY `fk_detail_bahan_terpakai_bahan_baku_idx` (`id_bahanBaku`);

--
-- Indexes for table `t_detail_produksi`
--
ALTER TABLE `t_detail_produksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_produksi` (`id_produksi`),
  ADD KEY `id_bahanBaku` (`id_bahanBaku`);

--
-- Indexes for table `t_komposisi_produk`
--
ALTER TABLE `t_komposisi_produk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_komposisi` (`id_produk`,`id_bahanBaku`) COMMENT 'Mencegah duplikasi komposisi untuk produk yang sama',
  ADD KEY `fk_komposisi_produk_bahan_baku_idx` (`id_bahanBaku`);

--
-- Indexes for table `t_margin_produk`
--
ALTER TABLE `t_margin_produk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_produk` (`id_produk`),
  ADD KEY `fk_margin_produk_produk_idx` (`id_produk`);

--
-- Indexes for table `t_pembelian_bahan`
--
ALTER TABLE `t_pembelian_bahan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pembelian_bahan_bahan_baku_idx` (`id_bahanBaku`);

--
-- Indexes for table `t_produk`
--
ALTER TABLE `t_produk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama_produk` (`nama_produk`),
  ADD KEY `idx_nama_produk` (`nama_produk`);

--
-- Indexes for table `t_produksi`
--
ALTER TABLE `t_produksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_user`
--
ALTER TABLE `t_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_bahan_baku`
--
ALTER TABLE `t_bahan_baku`
  MODIFY `id_bahanBaku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `t_biaya_tambahan`
--
ALTER TABLE `t_biaya_tambahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `t_detail_bahan_terpakai`
--
ALTER TABLE `t_detail_bahan_terpakai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key: ID Unik Detail Bahan Terpakai';

--
-- AUTO_INCREMENT for table `t_detail_produksi`
--
ALTER TABLE `t_detail_produksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `t_komposisi_produk`
--
ALTER TABLE `t_komposisi_produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key: ID Unik Komposisi', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `t_margin_produk`
--
ALTER TABLE `t_margin_produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key: ID Unik Margin Produk';

--
-- AUTO_INCREMENT for table `t_pembelian_bahan`
--
ALTER TABLE `t_pembelian_bahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key: ID Unik Pembelian Bahan', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `t_produk`
--
ALTER TABLE `t_produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key: ID Unik Produk', AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `t_produksi`
--
ALTER TABLE `t_produksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `t_user`
--
ALTER TABLE `t_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key: ID Unik Pengguna', AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `t_detail_bahan_terpakai`
--
ALTER TABLE `t_detail_bahan_terpakai`
  ADD CONSTRAINT `fk_detail_bahan_terpakai_bahan_baku` FOREIGN KEY (`id_bahanBaku`) REFERENCES `t_bahan_baku` (`id_bahanBaku`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_detail_bahan_terpakai_produksi` FOREIGN KEY (`id_produksi`) REFERENCES `t_produksi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `t_detail_produksi`
--
ALTER TABLE `t_detail_produksi`
  ADD CONSTRAINT `t_detail_produksi_ibfk_1` FOREIGN KEY (`id_produksi`) REFERENCES `t_produksi` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `t_detail_produksi_ibfk_2` FOREIGN KEY (`id_bahanBaku`) REFERENCES `t_bahan_baku` (`id_bahanBaku`) ON DELETE CASCADE;

--
-- Constraints for table `t_komposisi_produk`
--
ALTER TABLE `t_komposisi_produk`
  ADD CONSTRAINT `fk_komposisi_produk_bahan_baku` FOREIGN KEY (`id_bahanBaku`) REFERENCES `t_bahan_baku` (`id_bahanBaku`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_komposisi_produk_produk` FOREIGN KEY (`id_produk`) REFERENCES `t_produk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `t_margin_produk`
--
ALTER TABLE `t_margin_produk`
  ADD CONSTRAINT `fk_margin_produk_produk` FOREIGN KEY (`id_produk`) REFERENCES `t_produk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `t_pembelian_bahan`
--
ALTER TABLE `t_pembelian_bahan`
  ADD CONSTRAINT `fk_pembelian_bahan_bahan_baku` FOREIGN KEY (`id_bahanBaku`) REFERENCES `t_bahan_baku` (`id_bahanBaku`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
