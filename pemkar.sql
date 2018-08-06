-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 06 Agu 2018 pada 05.56
-- Versi Server: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pemkar`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `no` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`no`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `android`
--

CREATE TABLE `android` (
  `no` int(11) NOT NULL,
  `lokasi` varchar(20) NOT NULL,
  `latitude` varchar(20) NOT NULL,
  `longitude` varchar(20) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tindakan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `android`
--

INSERT INTO `android` (`no`, `lokasi`, `latitude`, `longitude`, `tanggal`, `tindakan`) VALUES
(1, 'Polinema', '-7.946321', '112.615559', '2018-04-23 15:46:25', ''),
(2, 'Masjid Sabilillah', '-7.941883', '112.641299', '2018-04-23 15:46:25', ''),
(3, 'kebakaran test', '-7.9467803', '112.6232986,14', '2018-04-23 15:46:25', ''),
(6, 'Polinema 2', '-7.9467803', '112.6232986,14', '2018-04-23 15:46:25', ''),
(11, 'Informasi tambahan (', '-7.9467803', '112.6232986,14', '2018-04-25 04:40:48', ''),
(15, 'tes', 'gddhh', 'fguuf577', '2018-04-25 07:51:29', ''),
(16, 'Jl. Tangkuban Perahu', '-7.9759729', '112.6244307', '2018-05-03 03:57:37', ''),
(17, 'Jl. Tangkuban Perahu', '-7.9759729', '112.6244307', '2018-05-03 04:28:14', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `arduino`
--

CREATE TABLE `arduino` (
  `no` int(11) NOT NULL,
  `lokasi` varchar(20) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lantai` varchar(20) NOT NULL,
  `latitude` varchar(20) NOT NULL,
  `longitude` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `arduino`
--

INSERT INTO `arduino` (`no`, `lokasi`, `tanggal`, `lantai`, `latitude`, `longitude`) VALUES
(1, 'Gedung AH', '2018-04-24 04:20:53', '2', '-7.947138', '112.615371');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `android`
--
ALTER TABLE `android`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `arduino`
--
ALTER TABLE `arduino`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `android`
--
ALTER TABLE `android`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `arduino`
--
ALTER TABLE `arduino`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
