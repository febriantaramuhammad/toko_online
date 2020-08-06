-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2020 at 01:55 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(120) NOT NULL,
  `keterangan` varchar(225) NOT NULL,
  `kategori` varchar(60) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(4) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id_brg`, `nama_brg`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(1, 'Converse All Star high-black', 'converse all star warna hitam', 'pakaian pria', 350000, 8, 'all star.jpg'),
(3, 'canon eos 700d', 'The EOS 700D offers a full and solid basic performance that is clearly one of the best in any entry level DSLR with its high image quality, various functions of Live View AF and movie shooting. ', 'elektronik', 5500000, 9, 'kamera.jpg'),
(4, 'samsung galaxy a20', 'smartphone kelas memengah dari samsung dengan harga terjangkau', 'Elektronik', 3500000, 28, 'hp.jpg'),
(5, 'Asus X441M', 'laptop ram 8gb', 'elektronik', 4700000, 38, 'laptop.jpg'),
(7, 'SKMEI 1142', 'Jam tangan import dari amerika, cocok untuk pria dan wanita', 'pakaian pria', 50000, 30, 'skmei4.jpg'),
(9, 'Kemeja Pria Lengan Panjang', 'Bahan katun street, Lengan panjang, Lingkar dada kurang lebih 104 cm, pjg 70 cm', 'pakaian pria', 120000, 10, 'kemeja1.jpg'),
(11, 'Smok RPM 40 Pod Smok RPM40 Starterkit Authentic RPM 40 PODS Vape', 'SMOK RPM40 Pod Mod Kit consists of SMOK RPM40 Device and SMOK RPM Pods.', 'elektronik', 309000, 30, 'smok_40.jpg'),
(12, 'Smok RPM 40 RPM40 Fetch 0.4 ohm Mesh Coil Replacement', 'Coil Smok RPM  Untuk Seluruh Catridge RPM, Smok RPM 40/80, Smok Fetch  0.4 ohm Mesh Coil  Harga untuk 1 Pcs', 'elektronik', 150000, 12, 'coil.jpg'),
(13, 'hoodie jumper outerwear pria wanita high quality 1821j', 'Feel the comfort, oxprey t- shirt terbuat dari bahan Premium combed kualitas terbaik yang sejuk dan lembut. nyaman dipakai pria dan wanita, design Exclusive, Simple & Fashionable.', 'pakaian pria', 119000, 10, 'hoodie_kupluk.jpg'),
(14, 'Headset Gaming Divipard H550 Headphone Gamers HD Sound + Microphone', 'Earpad yang Nyaman Divipard H550 didesain nyaman dan sangat pas saat digunakan di telinga. Earpad tersebut terbuat dari bahan PU leather yang sangat lembut sehingga sangat nyaman dipakai. Busa earpad ini juga tebal dan empuk,', 'elektronik', 179000, 10, 'headphone_gaming.jpg'),
(15, 'kaos programmer (CodeIgniter)', 'Bahan katun street, Lengan pendek, Lingkar dada kurang lebih 104 cm, pjg 70 cm', 'pakaian pria', 120000, 12, 'codeigniter.jpg'),
(16, 'Hoodie programmer (Front End)', 'Hoodie Lengan panjang, Lingkar dada kurang lebih 104 cm, pjg 70 cm', 'pakaian pria', 120000, 10, 'frontend.jpg'),
(17, 'Kaos Baju Distro Skyzo BabyGang Combed 30s Pria Wanita Pakaian Premium', 'Tshirt/Kaos Detail Produk : - Ketebalan 30S - 100% Cotton combed 30S - Bahan Katun Lemes Lembut - Bisa Digunakan Untuk Pria Dan Wanita', 'Pakaian Wanita', 50000, 10, 'kaos_cewek.jpg'),
(18, 'Turtle Neck Long Sleeve Wanita Warna Hitam - ELLIPSES.INC', 'Ukuran : ALL SIZE FIT TO L LD (lingkar dada): 90 cm P (panjang): 60 cm Tinggi leher : 6 cm Bahan: Cotton Monalisa', 'Pakaian Wanita', 350000, 11, 'turtle_neck.jpg'),
(19, 'WIMIU BH You Have BH Bra Pakaian Dalam Wanita B1425 - Putih, 32', 'WIMIIU B1425 Bra Pakaian Dalam Wanita Bahan : Katun Poliester Spandex', 'Pakaian Wanita', 259000, 30, 'bh_item.jpg'),
(20, 'Kemben Bagus Poliester Putih KMB 14', 'Warna : Putih Bahan : Poliester Ukuran : free size', 'Pakaian Wanita', 13000, 5, 'kemben_putih.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(56) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_invoice`
--

INSERT INTO `tb_invoice` (`id`, `nama`, `alamat`, `tgl_pesan`, `batas_bayar`) VALUES
(1, 'Febriantara Muhammad', 'Jl. Pulo asem timur v no. 4, kelurahan jati, kecamatan pulogadung, rawamangun', '2020-07-25 02:21:32', '2020-07-26 02:21:32'),
(2, 'aditya ridwan nugraha', 'jl. pakuan indah 1, curug, bogor', '2020-07-25 02:27:57', '2020-07-26 02:27:57'),
(3, 'Febriantara Muhammad', 'Jl. Pulo asem timur v no. 4, kelurahan jati, kecamatan pulogadung, rawamangun', '2020-07-25 02:40:26', '2020-07-26 02:40:26'),
(4, 'deden saripudin', 'Jl. Pulo asem timur v no. 4, kelurahan jati, kecamatan pulogadung, rawamangun', '2020-07-25 02:50:25', '2020-07-26 02:50:25'),
(5, 'santoso', 'Jl. Pulo asem timur v no. 4, kelurahan jati, kecamatan pulogadung, rawamangun', '2020-07-27 16:46:00', '2020-07-28 16:46:00'),
(6, 'Febriantara Muhammad', 'Jl. Pulo asem timur v no. 4, kelurahan jati, kecamatan pulogadung, rawamangun', '2020-07-27 16:47:31', '2020-07-28 16:47:31'),
(7, 'Febriantara Muhammad', 'Jl. Pulo asem timur v no. 4, kelurahan jati, kecamatan pulogadung, rawamangun', '2020-07-27 16:59:05', '2020-07-28 16:59:05'),
(8, 'Febriantara Muhammad', 'Jl. Pulo asem timur v no. 4, kelurahan jati, kecamatan pulogadung, rawamangun', '2020-07-28 14:37:16', '2020-07-29 14:37:16'),
(9, 'aldi taher', 'Jl. Pulo asem timur v no. 4, kelurahan jati, kecamatan pulogadung, rawamangun', '2020-07-28 14:46:55', '2020-07-29 14:46:55'),
(10, 'jejen jereng', 'Jl. Pulo asem timur v no. 4, kelurahan jati, kecamatan pulogadung, rawamangun', '2020-07-28 15:55:22', '2020-07-29 15:55:22'),
(11, 'jejen jereng', 'Jl. Pulo asem timur v no. 4, kelurahan jati, kecamatan pulogadung, rawamangun', '2020-07-28 15:55:22', '2020-07-29 15:55:22'),
(12, 'Febriantara Muhammad', 'Jl. Pulo asem timur v no. 4, kelurahan jati, kecamatan pulogadung, rawamangun', '2020-07-28 16:11:49', '2020-07-29 16:11:49'),
(13, 'santoso', 'Jl. Pulo asem timur v no. 4, kelurahan jati, kecamatan pulogadung, rawamangun', '2020-07-28 16:55:55', '2020-07-29 16:55:55'),
(14, 'sfasvddcaasda', 'sdvscaCZscCsavsdVX', '2020-07-28 20:13:11', '2020-07-29 20:13:11'),
(15, '', '', '2020-07-30 01:53:59', '2020-07-31 01:53:59'),
(16, '', '', '2020-07-30 01:55:34', '2020-07-31 01:55:34'),
(17, 'Febriantara Muhammad', 'Jl. Pulo asem timur v no. 4, kelurahan jati, kecamatan pulogadung, rawamangun', '2020-07-30 01:58:22', '2020-07-31 01:58:22'),
(18, 'Dewa Brata', 'jl. pakuan indah 1, curug, bogor', '2020-07-30 02:07:26', '2020-07-31 02:07:26'),
(19, '', '', '2020-08-04 17:38:04', '2020-08-05 17:38:04');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(10) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id`, `id_invoice`, `id_brg`, `nama_brg`, `jumlah`, `harga`, `pilihan`) VALUES
(1, 1, 1, 'Converse All Star high-black', 1, 350000, ''),
(2, 1, 3, 'canon eos 700d', 1, 5500000, ''),
(3, 1, 4, 'samsung galaxy a20', 1, 3500000, ''),
(4, 1, 7, 'SKMEI 1142', 1, 50000, ''),
(5, 2, 5, 'Asus X441M', 1, 4700000, ''),
(6, 3, 11, 'Smok RPM 40 Pod Smok RPM40 Starterkit Authentic RP', 1, 309000, ''),
(7, 3, 12, 'Smok RPM 40 RPM40 Fetch 0.4 ohm Mesh Coil Replacem', 1, 150000, ''),
(8, 4, 7, 'SKMEI 1142', 1, 50000, ''),
(9, 4, 12, 'Smok RPM 40 RPM40 Fetch 0.4 ohm Mesh Coil Replacem', 1, 150000, ''),
(10, 5, 13, 'hoodie jumper outerwear pria wanita high quality 1', 1, 119000, ''),
(11, 5, 4, 'samsung galaxy a20', 1, 3500000, ''),
(12, 5, 3, 'canon eos 700d', 1, 5500000, ''),
(13, 6, 13, 'hoodie jumper outerwear pria wanita high quality 1', 2, 119000, ''),
(14, 7, 12, 'Smok RPM 40 RPM40 Fetch 0.4 ohm Mesh Coil Replacem', 1, 150000, ''),
(15, 8, 4, 'samsung galaxy a20', 1, 3500000, ''),
(16, 9, 11, 'Smok RPM 40 Pod Smok RPM40 Starterkit Authentic RP', 1, 309000, ''),
(17, 9, 12, 'Smok RPM 40 RPM40 Fetch 0.4 ohm Mesh Coil Replacem', 1, 150000, ''),
(18, 9, 5, 'Asus X441M', 1, 4700000, ''),
(19, 10, 5, 'Asus X441M', 1, 4700000, ''),
(20, 12, 5, 'Asus X441M', 1, 4700000, ''),
(21, 13, 4, 'samsung galaxy a20', 1, 3500000, ''),
(22, 14, 1, 'Converse All Star high-black', 1, 350000, ''),
(23, 15, 18, 'Turtle Neck Long Sleeve Wanita Warna Hitam - ELLIP', 1, 350000, ''),
(24, 16, 4, 'samsung galaxy a20', 2, 3500000, ''),
(25, 17, 1, 'Converse All Star high-black', 1, 350000, ''),
(26, 18, 5, 'Asus X441M', 2, 4700000, ''),
(27, 19, 1, 'Converse All Star high-black', 1, 350000, '');

--
-- Triggers `tb_pesanan`
--
DELIMITER $$
CREATE TRIGGER `pesanan_penjualan` AFTER INSERT ON `tb_pesanan` FOR EACH ROW BEGIN
	UPDATE tb_barang SET stok = stok-NEW.jumlah
    WHERE id_brg = NEW.id_brg;
END
$$
DELIMITER ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `role_id`) VALUES
(1, 'admin', 'admin', '123', 1),
(3, 'user', 'user', '123', 2),
(4, 'Febriantara Muhammad', 'febriantaramuhammad', '123', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indexes for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
