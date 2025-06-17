-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2023 at 01:26 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `farmasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `nip_id` int(11) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `j_kelamin` enum('laki-laki','perempuan') DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `status` enum('admin','petugas','dokter') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`nip_id`, `password`, `nama`, `j_kelamin`, `alamat`, `status`) VALUES
(1, 'asca1', 'Asca', 'laki-laki', 'Cikarang', 'admin'),
(2, 'fahmi2', 'Fahmi', 'laki-laki', 'Bekasi', 'dokter'),
(3, 'ilham3', 'Ilham', 'laki-laki', 'Bekasi', 'petugas'),
(4, 'wayis4', 'Wayis', 'laki-laki', 'Banten', 'petugas'),
(9, 'cek123', 'cektest', 'perempuan', 'rumah', 'admin'),
(318, '12', 'test', 'laki-laki', 'pb', 'admin'),
(345, '89', 'cek', 'laki-laki', 'ci', 'dokter');

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `obat_id` varchar(50) NOT NULL,
  `nama_obat` varchar(50) DEFAULT NULL,
  `jenis_obat` enum('Cair','Tablet','Kapsul','Oles','Tetes','Suntik','Lain-Lain') DEFAULT NULL,
  `klasifikasi_obat` enum('Analgesik','Antasida','Anticemas','Antiaritmia','Antibiotik','Antikoagulan','Antikonvulsan','Antidepresan','Antidiare','Antiemetik','Antijamur','Antihistamin','Antihipertensi','Anti-inflamasi','Antineoplastik','Antipsikotik','Antipretik','Antivirus','Beta-blocker','Bronkodilator','Kortikosteroid','Sitotoksik','Dekongestan','Ekspektoran','Obat tidur','Lain-Lain') DEFAULT NULL,
  `harga` int(11) NOT NULL,
  `stock` int(11) DEFAULT NULL,
  `supplier_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`obat_id`, `nama_obat`, `jenis_obat`, `klasifikasi_obat`, `harga`, `stock`, `supplier_id`) VALUES
('ACY01', 'Acyclovir', 'Cair', 'Anticemas', 2500, 75, 'UNI001'),
('ALU02', 'Allupurinol', 'Oles', 'Antibiotik', 3400, 6, 'MDC027'),
('AMB04', 'Ambroxol', 'Suntik', 'Antikonvulsan', 4000, 20, 'KLB001'),
('AMX07', 'Amoxicillin', 'Tetes', 'Ekspektoran', 12000, 85, 'DXM001'),
('as', 'pil', 'Tablet', 'Antibiotik', 5000, 2, 'BIO001'),
('DKZ02', 'Dekametazone', 'Kapsul', 'Antihistamin', 200, 1, 'DXM001'),
('ODN01', 'Ondansetron', 'Lain-Lain', 'Anti-inflamasi', 750, 65, 'KLB001'),
('PCML01', 'Paracetamol', 'Tablet', 'Lain-Lain', 1000, 20, 'UNI001'),
('PCML03', 'Parahcoy', 'Tablet', 'Antipretik', 1000, 200, 'UNI001'),
('VLS01', 'Valisanbe', 'Kapsul', 'Antijamur', 9000, 5, 'SNB001');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `penjualan_id` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `nama_pelanggan` varchar(50) DEFAULT NULL,
  `nip_id` int(11) DEFAULT NULL,
  `obat_id` varchar(50) DEFAULT NULL,
  `jml_obat` int(11) DEFAULT NULL,
  `total_bayar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`penjualan_id`, `tanggal`, `nama_pelanggan`, `nip_id`, `obat_id`, `jml_obat`, `total_bayar`) VALUES
(1, '2018-10-20', 'asep', 1, 'PCML01', 5, 8),
(2, '2022-12-22', 'ujang', 3, 'ALU02', 1, 3400),
(4, '2022-12-02', 'budi', 3, 'VLS01', 4, 36000),
(5, '2022-12-29', 'dani', 4, 'ACY01', 4, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` varchar(50) NOT NULL,
  `nama_supplier` varchar(100) DEFAULT NULL,
  `alamat` varchar(250) DEFAULT NULL,
  `supplier_no_telp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `nama_supplier`, `alamat`, `supplier_no_telp`) VALUES
('BIO001', 'Bio Farma', 'Jakarta', '09123'),
('DXM001', 'Dexa Medica', 'Banten', '0812830'),
('KLB001', 'Kalbe Farma', 'Jakarta', '01234'),
('MDC027', 'Medicineee', 'Bandung', '08982983'),
('SNB001', 'Sanbe Farma', 'Bandung', '090887'),
('UNI001', 'Uni Farma', 'Bekasi', '096565');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`nip_id`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`obat_id`),
  ADD KEY `fk_supplier_id` (`supplier_id`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`penjualan_id`),
  ADD KEY `fk_nip_id` (`nip_id`),
  ADD KEY `fk_obat_id` (`obat_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `penjualan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `obat`
--
ALTER TABLE `obat`
  ADD CONSTRAINT `fk_supplier_id` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`) ON UPDATE CASCADE;

--
-- Constraints for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `fk_nip_id` FOREIGN KEY (`nip_id`) REFERENCES `karyawan` (`nip_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_obat_id` FOREIGN KEY (`obat_id`) REFERENCES `obat` (`obat_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
