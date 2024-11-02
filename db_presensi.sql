-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Nov 2024 pada 12.24
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_presensi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan`
--

CREATE TABLE `jabatan` (
  `id` int(11) UNSIGNED NOT NULL,
  `jabatan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jabatan`
--

INSERT INTO `jabatan` (`id`, `jabatan`) VALUES
(13, 'IT Support'),
(16, 'Admin'),
(17, 'Office Boy');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ketidakhadiran`
--

CREATE TABLE `ketidakhadiran` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_pegawai` int(11) UNSIGNED NOT NULL,
  `keterangan` varchar(225) NOT NULL,
  `tanggal` date NOT NULL,
  `deskripsi` varchar(225) NOT NULL,
  `file` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lokasi_presensi`
--

CREATE TABLE `lokasi_presensi` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama_lokasi` varchar(225) NOT NULL,
  `alamat_lokasi` varchar(225) NOT NULL,
  `tipe_lokasi` varchar(10) NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `longitude` varchar(50) NOT NULL,
  `radius` int(50) NOT NULL,
  `zona_waktu` varchar(4) NOT NULL,
  `jam_masuk` time NOT NULL,
  `jam_pulang` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `lokasi_presensi`
--

INSERT INTO `lokasi_presensi` (`id`, `nama_lokasi`, `alamat_lokasi`, `tipe_lokasi`, `latitude`, `longitude`, `radius`, `zona_waktu`, `jam_masuk`, `jam_pulang`) VALUES
(2, 'Kantor Pusat', 'Jl. H. R. Rasuna Said No.5, RT.6/RW.7, Kuningan, Karet Kuningan, Kecamatan Setiabudi, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12940', 'Kantor Pus', '-6.218268308094204', '106.83069515201517', 10, 'WIB', '08:10:00', '17:12:00'),
(3, 'Kantor Pusat', 'Jl. H. R. Rasuna Said No.5, RT.6/RW.7, Kuningan, Karet Kuningan, Kecamatan Setiabudi, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12940', 'Kantor Pus', '-6.218268308094204', '106.83069515201517', 10, 'WIB', '08:10:00', '17:12:00'),
(4, 'Kantor Pusat', 'Menara Kuningan Lantai 7, JL HR. Rasuna Said, Block X-7 Kavling 5, Kuningan, Jakarta, DKI Jakarta, 12940, Indonesia', 'Kantor Pus', '-6.218268308094204', '106.83069515201517', 100, 'WIB', '08:19:00', '17:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2024-09-29-030143', 'App\\Database\\Migrations\\Pegawai', 'default', 'App', 1727581646, 1),
(2, '2024-09-29-030416', 'App\\Database\\Migrations\\Users', 'default', 'App', 1727581647, 1),
(3, '2024-09-29-030440', 'App\\Database\\Migrations\\LokasiPresensi', 'default', 'App', 1727581647, 1),
(4, '2024-09-29-030517', 'App\\Database\\Migrations\\Ketidakhadiran', 'default', 'App', 1727581647, 1),
(5, '2024-09-29-030614', 'App\\Database\\Migrations\\Jabatan', 'default', 'App', 1727581647, 1),
(6, '2024-09-29-030714', 'App\\Database\\Migrations\\Presensi', 'default', 'App', 1727581647, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(11) UNSIGNED NOT NULL,
  `nip` varchar(50) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `no_handphone` varchar(20) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `lokasi_presensi` varchar(50) NOT NULL,
  `foto` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id`, `nip`, `nama`, `jenis_kelamin`, `alamat`, `no_handphone`, `jabatan`, `lokasi_presensi`, `foto`) VALUES
(1, '07052018', 'SYARIF HIDAYATULLAH, S.H, MH.', 'Laki-Laki', 'Jl. Sudirman No. 45, Jakarta Pusat, DKI Jakarta', '085718200364', 'Senior Lawyer', 'Jl.H.R Rasuna Said Blok X.7 Kav.5 Jakarta Selatan', 'SYARIF HIDAYATULLAH.jpg'),
(2, '11062018', 'RAHMAD SANTOSO S.H, MH', 'Laki-Laki', 'Jl. Tebet Raya No. 12, Jakarta Selatan, DKI Jakarta', '08217683999', 'Senior Lawyer', 'Jl.H.R Rasuna Said Blok X.7 Kav.5 Jakarta Selatan', 'RAHMAD SANTOSO.jpg'),
(3, '20102022', 'RINA MAHARANI, S.Psi', 'Perempuan', 'Jl. Serpong No. 99, Tangerang Selatan, Banten', '087856772331', 'HR Manager', 'Jl.H.R Rasuna Said Blok X.7 Kav.5 Jakarta Selatan', 'RINA MAHARANI.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `presensi`
--

CREATE TABLE `presensi` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_pegawai` int(11) UNSIGNED NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `jam_masuk` time NOT NULL,
  `foto_masuk` varchar(225) NOT NULL,
  `tanggal_keluar` date NOT NULL,
  `jam_keluar` time NOT NULL,
  `foto_keluar` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_pegawai` int(11) UNSIGNED NOT NULL,
  `username` varchar(225) NOT NULL,
  `password` varchar(250) NOT NULL,
  `status` varchar(20) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `id_pegawai`, `username`, `password`, `status`, `role`) VALUES
(1, 1, 'syarif', '$2y$10$vFP38pEZLHItmpE91TvkAeLVEbmnzNcO8pAD/R95jEgViMMKw5STm', 'Aktif', 'Pegawai'),
(2, 3, 'rina', '$2y$10$vFP38pEZLHItmpE91TvkAeLVEbmnzNcO8pAD/R95jEgViMMKw5STm', 'Aktif', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ketidakhadiran`
--
ALTER TABLE `ketidakhadiran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ketidakhadiran_id_pegawai_foreign` (`id_pegawai`);

--
-- Indeks untuk tabel `lokasi_presensi`
--
ALTER TABLE `lokasi_presensi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `presensi`
--
ALTER TABLE `presensi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `presensi_id_pegawai_foreign` (`id_pegawai`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_id_pegawai_foreign` (`id_pegawai`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `ketidakhadiran`
--
ALTER TABLE `ketidakhadiran`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `lokasi_presensi`
--
ALTER TABLE `lokasi_presensi`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `presensi`
--
ALTER TABLE `presensi`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `ketidakhadiran`
--
ALTER TABLE `ketidakhadiran`
  ADD CONSTRAINT `ketidakhadiran_id_pegawai_foreign` FOREIGN KEY (`id_pegawai`) REFERENCES `ketidakhadiran` (`id`);

--
-- Ketidakleluasaan untuk tabel `presensi`
--
ALTER TABLE `presensi`
  ADD CONSTRAINT `presensi_id_pegawai_foreign` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id`);

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_id_pegawai_foreign` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
