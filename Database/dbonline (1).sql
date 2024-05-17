-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Bulan Mei 2024 pada 18.31
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbonline`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbdosen`
--

CREATE TABLE `tbdosen` (
  `nip` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `umur` varchar(10) NOT NULL,
  `no_hp` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbdosen`
--

INSERT INTO `tbdosen` (`nip`, `nama`, `alamat`, `email`, `jenis_kelamin`, `umur`, `no_hp`) VALUES
(1212, 'Yani', 'Kisaran', 'yani@gmail.com', 'Perempuan', '30', '08447675489'),
(2345, 'Rehan', 'Medan', 'rehan@gmail.com', 'Laki-laki', '32', '0853322');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbmhsw`
--

CREATE TABLE `tbmhsw` (
  `nim` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `prodi` varchar(30) NOT NULL,
  `umur` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbmhsw`
--

INSERT INTO `tbmhsw` (`nim`, `nama`, `alamat`, `prodi`, `umur`) VALUES
(22220125, 'Putri Alda', 'Batu Bara', 'Sistem Informasi', '19');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbdosen`
--
ALTER TABLE `tbdosen`
  ADD PRIMARY KEY (`nip`);

--
-- Indeks untuk tabel `tbmhsw`
--
ALTER TABLE `tbmhsw`
  ADD PRIMARY KEY (`nim`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbdosen`
--
ALTER TABLE `tbdosen`
  MODIFY `nip` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234567;

--
-- AUTO_INCREMENT untuk tabel `tbmhsw`
--
ALTER TABLE `tbmhsw`
  MODIFY `nim` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22220126;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
