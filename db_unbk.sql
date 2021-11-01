-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql210.epizy.com
-- Generation Time: Feb 10, 2020 at 03:35 AM
-- Server version: 5.6.45-86.1
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_23333364_db_unbk`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_identitas`
--

CREATE TABLE `tb_identitas` (
  `id` int(11) NOT NULL,
  `nama_sekolah` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_identitas`
--

INSERT INTO `tb_identitas` (`id`, `nama_sekolah`, `foto`) VALUES
(1, 'Ujian Nasional Berbasis Komputer', 'logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jadwal`
--

CREATE TABLE `tb_jadwal` (
  `id` int(11) NOT NULL,
  `kelas` varchar(50) NOT NULL,
  `mapel` varchar(100) NOT NULL,
  `jmlh_soal` int(11) NOT NULL,
  `jam` varchar(50) NOT NULL,
  `tanggal_ujian` varchar(50) NOT NULL,
  `waktu_mengerjakan` int(11) NOT NULL,
  `nilai_kkm` varchar(11) NOT NULL,
  `bobot_nilai` varchar(11) NOT NULL,
  `status` varchar(21) NOT NULL,
  `acak_soal` varchar(10) NOT NULL,
  `token` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_jadwal`
--

INSERT INTO `tb_jadwal` (`id`, `kelas`, `mapel`, `jmlh_soal`, `jam`, `tanggal_ujian`, `waktu_mengerjakan`, `nilai_kkm`, `bobot_nilai`, `status`, `acak_soal`, `token`) VALUES
(1, '11 TKJ', 'Administrasi Sistem Jaringan', 60, 'Sesi 1/ jam 07.45 - 08.20', 'Senin/ 2019-12-09', 120, '75', '1.7', 'kerjakan soal', 'ya', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2, '11 TKJ', 'Teknologi Layanan Jaringan', 60, 'Sesi 2/ jam 08.20 - 08.55', 'Senin/ 2019-12-09', 120, '75', '1.7', 'tidak aktif', 'ya', 'adffef7000fede9334ca13983e69edccad3c49a6');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jawab`
--

CREATE TABLE `tb_jawab` (
  `id` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_soal` int(11) NOT NULL,
  `soal_ke` int(11) NOT NULL,
  `soal` text NOT NULL,
  `pil_a` text NOT NULL,
  `pil_b` text NOT NULL,
  `pil_c` text NOT NULL,
  `pil_d` text NOT NULL,
  `pil_e` text NOT NULL,
  `kunci` text NOT NULL,
  `jawaban` text NOT NULL,
  `status` varchar(21) NOT NULL,
  `status2` varchar(21) NOT NULL,
  `status3` varchar(50) NOT NULL,
  `token` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_jawab`
--

INSERT INTO `tb_jawab` (`id`, `id_siswa`, `id_soal`, `soal_ke`, `soal`, `pil_a`, `pil_b`, `pil_c`, `pil_d`, `pil_e`, `kunci`, `jawaban`, `status`, `status2`, `status3`, `token`) VALUES
(601, 242, 57, 1, 'Salah satu elemen DHCP pada jawaban di bawah ini adalah\r\n', 'Dhcp server\r\n', 'DHCP client\r\n', 'DHCP Scope\r\n', 'DHCP Koneksi\r\n', 'DHCP Ruter\r\n', 'DHCP Scope\r\n', 'Dhcp server\r\n', 'dijawab', 'salah', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2519, 270, 32, 59, 'Protokol umum yang sering digunakan oleh mailserver adalah, kecualiâ€¦\r\n', 'SMTP\r\n', 'POP3\r\n', 'IMAP \r\n', 'TCP Atau IP\r\n', 'IPCONFIG\r\n', 'TCP Atau IP\r\n', 'TCP Atau IP\r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2520, 270, 49, 60, 'command menambahkan dvd baru adalah\r\n', 'Apt-cdrom add\r\n', 'Apt-get install\r\n', 'Apt-get add\r\n', 'Apt-dhcp\r\n', 'Apt-get install cdrom\r\n', 'Apt-cdrom add\r\n', 'Apt-cdrom add\r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2517, 270, 46, 57, 'lapisan yang berfungsi untuk mrngkonversi data yaitu..\r\n', 'physical\r\n', 'data link\r\n', 'session\r\n', 'presentation\r\n', 'application\r\n', 'presentation\r\n', 'presentation\r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2518, 270, 35, 58, 'Jika suatu komputer memiliki sebuah alamat ip yaitu 192.168.10.1, maka network nya adalahâ€¦\r\n', '192.168.10.1\r\n', '192.168.10.0\r\n', '255.255.255.0\r\n', '255.255.255.252\r\n', '192.168.10.2\r\n', '192.168.10.0\r\n', '192.168.10.0\r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2515, 270, 51, 55, 'sebuah layanan server yang berfungsi memberikan alamat ip secara otomatis ke client yang terhubung ke jaringan adalah..\r\n', 'proxy server\r\n', 'web server\r\n', 'dhcp server\r\n', 'dns server\r\n', 'database server\r\n', 'dhcp server\r\n', 'dhcp server\r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2516, 270, 34, 56, 'Sebuah program aplikasi yang bertugas untuk menerima permintaan paket dan memberinya balasan berupa paket yang di inginkan client disebut..\r\n', 'Client \r\n', 'Peer to peer \r\n', 'Client-server \r\n', 'Server \r\n', 'IPCONFIG\r\n', 'Server \r\n', 'Server \r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2512, 270, 15, 52, 'perintah init 6 digunakan untuk...\r\n', 'berpindah direktori\r\n', 'melihat isi direktori\r\n', 'restart\r\n', 'shut down\r\n', 'shutdown setelah 6 detik\r\n', 'restart\r\n', 'restart\r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2513, 270, 52, 53, 'untuk menginstall paket software di debian linux menggunakan perintah..\r\n', 'Apt-cdrom add\r\n', 'index cd\r\n', 'Apt-get update\r\n', 'Apt-get install\r\n', 'Apt-get uninstall\r\n', 'Apt-get install\r\n', 'Apt-get install\r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2511, 270, 40, 51, 'sebuah workstation komputer yang dijadikan pusat untuk mengatur semua printer yang terhubung melalui networking yaituâ€¦.\r\n', 'samba server\r\n', 'document IT\r\n', 'Printer server \r\n', 'file server\r\n', 'protocol NET BEUI\r\n', 'Printer server \r\n', 'Printer server \r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2507, 270, 30, 47, 'berikut perintah dasar linux, kecuali \r\n', 'CD\r\n', 'MV\r\n', 'enter\r\n', 'cat\r\n', 'CP\r\n', 'enter\r\n', 'enter\r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2508, 270, 8, 48, 'Salah satu aplikasi pengelolaan DNS pada debian adalah...', 'DNS3\r\n', 'Bind9\r\n', 'VSFTPD\r\n', 'Squid\r\n', 'Samba\r\n', 'Bind9\r\n', 'Bind9\r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2509, 270, 17, 49, 'printah yang digunakan untuk mengecek koneksi internet di linux adalahâ€¦\r\n', 'if config\r\n', 'ip\r\n', 'rc. local\r\n', 'dx diag\r\n', 'ping\r\n', 'ping\r\n', 'ping\r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2506, 270, 47, 46, 'Secara umum jaringan komputer terdiri dari dibawah ini kecualiâ€¦\r\n', 'Local area network\r\n', 'metropolitan area network\r\n', 'radio area network\r\n', 'wide area network\r\n', 'internet\r\n', 'radio area network\r\n', 'radio area network\r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2500, 270, 38, 40, 'Host ID untuk IP Adrress kelas C adalahâ€¦.\r\n', '12 bit terakhir\r\n', '18 bit terakhir\r\n', '8 bit terakhir\r\n', '24 bit terakhir\r\n', '4 bit terakhir\r\n', '8 bit terakhir\r\n', '8 bit terakhir\r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2505, 270, 12, 45, 'Contoh aplikasi FTP client antara lain...', 'SmartFtp\r\n', 'Wuftpd\r\n', 'Vsftpd\r\n', 'DNS\r\n', 'DHCP\r\n', 'SmartFtp\r\n', 'SmartFtp\r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2504, 270, 54, 44, 'FTP adalah singkatan dariâ€¦?\r\n', 'File Transfer Protokol\r\n', 'File Transfer pro/kontra\r\n', 'File Transfeeer Protokol\r\n', 'File Transfer poroporo\r\n', 'Semua jawaban benar\r\n', 'File Transfer Protokol\r\n', 'File Transfer Protokol\r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2503, 270, 48, 43, 'tugas mail server adalahâ€¦\r\n', 'melayani surat menyurat\r\n', 'melayani pengiriman barang\r\n', 'melayani pengiriman data\r\n', 'melayani pengiriman paket\r\n', 'melayani  pengiriman suara\r\n', 'melayani surat menyurat\r\n', 'melayani surat menyurat\r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2501, 270, 28, 41, 'Simbol prompt yang menandakan bahwa bahwa seseorang login sebagai user biasa pada Linux berbasis text adalahâ€¦\r\n', '%\r\n', '&\r\n', '$\r\n', '#\r\n', '@\r\n', '$\r\n', '$\r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2502, 270, 37, 42, 'DNS merupakan singkatan dari \r\n', 'Dynamic name service\r\n', 'domain name service\r\n', 'domain name system\r\n', 'dynamic name server\r\n', 'domain name static\r\n', 'domain name system\r\n', 'domain name service\r\n', 'dijawab', 'salah', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2498, 270, 5, 38, 'Digunakan untuk transfer file berupa download dan upload merupakan pengertian dariâ€¦\r\n', 'Samba\r\n', 'FTP\r\n', 'Mail\r\n', 'Squerrelmail\r\n', 'Roundcube\r\n', 'FTP\r\n', 'FTP\r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2499, 270, 23, 39, 'perintah yang digunakan untuk melihat direktori pada linux adalah\r\n', 'dir', 'mkdir', 'nano', 'ls', 'pico', 'ls', 'ls', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2496, 270, 59, 36, 'untuk mengupdate repository ke internet, kita mengkonfigurasi file', '/etc/network/interfaces', '/etc/network/repository', '/etc/apt/sources', '/etc/apt/sources.list', '/etc/apt/source', '/etc/apt/sources.list', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2497, 270, 43, 37, 'Pada pemasangan kabel straight, pin yang digunakan untuk menerima atau receiving data adalah\r\n', ' 1 dan 2\r\n', '6 dan 8\r\n', '4 dan 5\r\n', ' 3 dan 6\r\n', '3 dan 8\r\n', ' 3 dan 6\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2494, 270, 19, 34, 'Server yang bertugas melayani surat menyurat elektronik adalahâ€¦\r\n', 'Mail Server\r\n', 'DHCP Server\r\n', 'DNS Server\r\n', 'FTP Server\r\n', 'Proxy Server\r\n', 'Mail Server\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2489, 270, 24, 29, 'Clear digunakan untuk\r\n', 'membersihkan sampah\r\n', 'menghapuskan semua data\r\n', 'membersihkan tampilan\r\n', 'menghapus aplikasi\r\n', 'menyelesaikan misi\r\n', 'membersihkan tampilan\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2490, 270, 41, 30, 'Program bantu yang memberikan interface model web untuk mengandministrasi samba adalah..\r\n', 'smb client\r\n', 'smb passwd\r\n', 'smb status\r\n', '.smb tar\r\n', 'swat\r\n', 'swat\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2491, 270, 4, 31, 'Komputer yang meminta no IP disebut...\r\n', 'DHCP Server\r\n', 'DHCP Client\r\n', 'Statis\r\n', 'TCP\r\n', 'Server\r\n', 'DHCP Client\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2492, 270, 11, 32, 'Untuk bisa login ke Server FTP kita bisa menggunakan mode...\r\n', 'Trunk\r\n', 'Allowed Trunk\r\n', 'teks\r\n', 'Teks dan GUI\r\n', 'Teks Trunk\r\n', 'Teks dan GUI\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2493, 270, 53, 33, 'File yang berisi setting interface jaringan di debian text adalah\r\n', '/etc/init.d/networking\r\n', '/etc/bind/bind.conf\r\n', '/etc/network/eth0.conf\r\n', '/etc/network/interface\r\n', '/etc/network/interfaces\r\n', '/etc/network/interfaces\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2487, 270, 58, 27, 'DHCP yang berfungsi sebagai tambahan pengaturan alamat ip yaitu\r\n', 'DHCP Scope\r\n', 'DHCP client\r\n', 'DHCP option\r\n', 'DHCP Koneksi\r\n', 'DHCP router\r\n', 'DHCP option\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2488, 270, 6, 28, 'Aplikasi untuk sharing sumberdaya seperti file, folder, printer harddisk dan sebagainya merupakan pengertian dariâ€¦\r\n', 'Samba\r\n', 'FTP\r\n', 'Mail\r\n', 'Squerrelmail\r\n', 'Roundcube\r\n', 'Samba\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2482, 270, 25, 22, 'perintah yang digunakan untuk mengedit pada linux server adalah â€¦\r\n', ' Nano\r\n', ' /etc/\r\n', ' /networking/\r\n', 'restart\r\n', ' Server\r\n', ' Nano\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2483, 270, 60, 23, 'layanan web server menggunakan paket', 'web server', 'dns', 'apache2', 'postfix', 'courier', 'apache2', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2484, 270, 21, 24, 'server terdiri dari 2 komponen utama antara lainâ€¦\r\n', 'software dan brainware\r\n', 'software dan protocol\r\n', 'software dan hardware\r\n', 'software dan TCP\r\n', 'semua salah\r\n', 'software dan hardware\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2485, 270, 56, 25, 'yang termasuksistem operasi open source adalahâ€¦\r\n', 'Linux\r\n', 'Windows\r\n', 'DOS\r\n', 'Macintosh\r\n', 'Unix\r\n', 'Linux\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2486, 270, 18, 26, 'Dibawah ini yang merupakan perangkat wan adalah, kecuali\r\n', 'Hub\r\n', 'Modem\r\n', 'Repester\r\n', 'Router\r\n', 'Bridge\r\n', 'Bridge\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2479, 270, 26, 19, 'Perintah linux debian untuk masuk ke root ( super user ) adalah â€¦\r\n', ' Nano\r\n', 'su\r\n', ' rc.local\r\n', ' restart\r\n', ' sysctl\r\n', 'su\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2480, 270, 27, 20, 'Dua hal penting dalam FTP adalahâ€¦\r\n', 'DHCP Server & FTP Client\r\n', 'DHCP server & FTP Server\r\n', 'FTP Server & DHCP Client\r\n', 'FTP Server & DNS Client\r\n', 'FTP Server & FTP Client\r\n', 'FTP Server & FTP Client\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2481, 270, 45, 21, 'lapisan yang berfungsi untuk mengatur jalur pengiriman data adalahâ€¦\r\n', 'physical\r\n', 'data link\r\n', 'network\r\n', 'transport\r\n', 'session\r\n', 'network\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2475, 270, 33, 15, 'UDP (User Datagram Protokol ) adalah protokol sejenis dengan TCP yangâ€¦\r\n', 'Connectionless\r\n', 'Authorities\r\n', 'Oriented \r\n', 'Connectionpass\r\n', 'Dynamic Host \r\n', 'Connectionless\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2476, 270, 50, 16, 'perintah untuk menguji koneksi jaringan di linux adalah\r\n', 'Is\r\n', 'ping\r\n', 'trace\r\n', 'tes\r\n', 'ifconfig\r\n', 'ping\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2477, 270, 14, 17, 'Batas waktu penyewaan alamat IP yang diberikan kepada DHCP client oleh DHCP server disebutâ€¦\r\n', 'DHCP Server\r\n', 'DHCP scope\r\n', 'DHCP option\r\n', 'DHCP lease\r\n', 'DHCP client\r\n', 'DHCP lease\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2478, 270, 31, 18, 'Protokol TCP/IP berhubungan dengan pengguna aplikasi yang berguna untuk terminal maya jarak jauhâ€¦\r\n', 'HTTP\r\n', 'FTP\r\n', 'SMPTP\r\n', 'TELNET \r\n', 'UDP\r\n', 'TELNET \r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2473, 270, 7, 13, 'Layanan yang secara otomatis memberikan no IP kepada komputer yang memintanya adalah...\r\n', 'TCP\r\n', 'Server\r\n', 'Konfigurasi\r\n', 'Statis\r\n', 'DHCP\r\n', 'DHCP\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2472, 270, 44, 12, 'seperangkat aturan, atau suatu perjanjian yang mengatur/mendeterminasikan format dan transmisi data yang dilakukan disebut dengan..\r\n', 'protokol\r\n', 'ISO\r\n', 'OSI\r\n', 'TCP/IP\r\n', 'LAYER\r\n', 'protokol\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2470, 270, 2, 10, 'IP address 12.10.10.1 adalah ip kelas...\r\n', 'A\r\n', 'B\r\n', 'C\r\n', 'Private\r\n', 'Jawaban A dan E benar\r\n', 'A\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2471, 270, 1, 11, 'apa kepanjangan DHCP...\r\n', 'Dynamic Host Control Protocol\r\n', 'Domain Hert Control Protocol\r\n', 'Domain Hert Central Protocol\r\n', 'Domain Host Control Protocol\r\n', 'Dynamic hert Control Protocol\r\n', 'Dynamic Host Control Protocol\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2468, 270, 10, 8, 'DNS bisa digunakan pada aplikasi yang terhubung ke...', 'Internet\r\n', 'Domain\r\n', 'Host \r\n', 'Server\r\n', 'Login\r\n', 'Internet\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2469, 270, 20, 9, 'Aplikasi yang digunakan dalam mail server untuk mengirim surat adalah\r\n', 'Courier-Pop\r\n', 'Postfix\r\n', 'Courier-imap\r\n', 'Squirrelmail\r\n', 'FTP\r\n', 'Courier-imap\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2465, 270, 29, 5, 'fungsi swapoff ialahâ€¦.\r\n', 'enable swap\r\n', 'mendisable swap \r\n', 'melihat nama host \r\n', 'restart\r\n', 'power off \r\n', 'mendisable swap \r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2466, 270, 39, 6, 'Surat yg berbentuk elektronik dan dikirim dgn jaringan internet disebut...\r\n', 'E-mail\r\n', 'MIRC\r\n', 'Telnet\r\n', 'Chatting\r\n', 'Sending\r\n', 'E-mail\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2467, 270, 36, 7, '192.168.10.1 mempunyai sebuah netmask yaitu..\r\n', '255.255.255.0\r\n', '255.255.255.252\r\n', '192.168.10.0\r\n', '192.168.10.1\r\n', '192.168.10.2\r\n', '255.255.255.0\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2463, 270, 57, 3, 'Salah satu elemen DHCP pada jawaban di bawah ini adalah\r\n', 'Dhcp server\r\n', 'DHCP client\r\n', 'DHCP Scope\r\n', 'DHCP Koneksi\r\n', 'DHCP Ruter\r\n', 'DHCP Scope\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2464, 270, 22, 4, 'server adalahâ€¦\r\n', 'suatu perantara agar terhubung\r\n', 'suatu jenis os yang memungkinkan pengguna untuk pelajar\r\n', 'suatu perangkat jaringan yang memberikan layanan terhadap pengguna\r\n', 'suatu perangkat jaringan yang menjadikan perantara\r\n', 'sejenis sistem operasi jaringan\r\n', 'suatu perangkat jaringan yang memberikan layanan terhadap pengguna\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2461, 270, 13, 1, 'Alamat IP yang dapat disewakan kepada DHCP client di sebut...\r\n', 'DHCP Server\r\n', 'DHCP scope\r\n', 'DHCP option\r\n', 'DHCP lease\r\n', 'DHCP client\r\n', 'DHCP scope\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2462, 270, 9, 2, 'kekurangan DNS yaitu...', 'Berbayar \r\n', 'Fleksibel\r\n', 'Kompatibel \r\n', 'Mudah \r\n', 'Gratis\r\n', 'Berbayar \r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2404, 245, 66, 4, 'Prosses pengiriman dan penerimaan data atau informasi dari dua atau lebih alat di sebutâ€¦\r\n', 'A. Komunikasi Data\r\n', 'B. Komunikasi Video\r\n', 'C. Komunikasi Audio\r\n', 'D. Komunikasi Audio Video\r\n', 'E. Komunikasi Telepon\r\n', 'A. Komunikasi Data\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2401, 245, 97, 1, 'TCP/IP dibuat oleh \r\n', 'A.ARPA\r\n', 'B.OSI\r\n', 'C.ISO\r\n', 'D.Telkom \r\n', 'E.GPS\r\n', 'A.ARPA\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(602, 242, 47, 2, 'Secara umum jaringan komputer terdiri dari dibawah ini kecualiâ€¦\r\n', 'Local area network\r\n', 'metropolitan area network\r\n', 'radio area network\r\n', 'wide area network\r\n', 'internet\r\n', 'radio area network\r\n', 'radio area network\r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(603, 242, 51, 3, 'sebuah layanan server yang berfungsi memberikan alamat ip secara otomatis ke client yang terhubung ke jaringan adalah..\r\n', 'proxy server\r\n', 'web server\r\n', 'dhcp server\r\n', 'dns server\r\n', 'database server\r\n', 'dhcp server\r\n', 'dns server\r\n', 'dijawab', 'salah', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(604, 242, 42, 4, 'Menurut referensi OSI layer atau lapisan protokol berjumlah\r\n', '3\r\n', '4\r\n', '5\r\n', '7\r\n', '6', '7\r\n', '7\r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(605, 242, 52, 5, 'untuk menginstall paket software di debian linux menggunakan perintah..\r\n', 'Apt-cdrom add\r\n', 'index cd\r\n', 'Apt-get update\r\n', 'Apt-get install\r\n', 'Apt-get uninstall\r\n', 'Apt-get install\r\n', 'Apt-get install\r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(606, 242, 60, 6, 'layanan web server menggunakan paket', 'web server', 'dns', 'apache2', 'postfix', 'courier', 'apache2', 'web server', 'dijawab', 'salah', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(607, 242, 3, 7, 'DNS biasa digunakan pada aplikasi yang terhubung ke...', 'E-mail\r\n', 'Modem\r\n', 'Web server\r\n', 'Internet \r\n', 'Mail server\r\n', 'Internet \r\n', 'Internet \r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(608, 242, 22, 8, 'server adalahâ€¦\r\n', 'suatu perantara agar terhubung\r\n', 'suatu jenis os yang memungkinkan pengguna untuk pelajar\r\n', 'suatu perangkat jaringan yang memberikan layanan terhadap pengguna\r\n', 'suatu perangkat jaringan yang menjadikan perantara\r\n', 'sejenis sistem operasi jaringan\r\n', 'suatu perangkat jaringan yang memberikan layanan terhadap pengguna\r\n', 'suatu perangkat jaringan yang memberikan layanan terhadap pengguna\r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(609, 242, 53, 9, 'File yang berisi setting interface jaringan di debian text adalah\r\n', '/etc/init.d/networking\r\n', '/etc/bind/bind.conf\r\n', '/etc/network/eth0.conf\r\n', '/etc/network/interface\r\n', '/etc/network/interfaces\r\n', '/etc/network/interfaces\r\n', '/etc/network/eth0.conf\r\n', 'dijawab', 'salah', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(610, 242, 44, 10, 'seperangkat aturan, atau suatu perjanjian yang mengatur/mendeterminasikan format dan transmisi data yang dilakukan disebut dengan..\r\n', 'protokol\r\n', 'ISO\r\n', 'OSI\r\n', 'TCP/IP\r\n', 'LAYER\r\n', 'protokol\r\n', 'protokol\r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(611, 242, 2, 11, 'IP address 12.10.10.1 adalah ip kelas...\r\n', 'A\r\n', 'B\r\n', 'C\r\n', 'Private\r\n', 'Jawaban A dan E benar\r\n', 'A\r\n', 'B\r\n', 'dijawab', 'salah', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(612, 242, 30, 12, 'berikut perintah dasar linux, kecuali \r\n', 'CD\r\n', 'MV\r\n', 'enter\r\n', 'cat\r\n', 'CP\r\n', 'enter\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(613, 242, 18, 13, 'Dibawah ini yang merupakan perangkat wan adalah, kecuali\r\n', 'Hub\r\n', 'Modem\r\n', 'Repester\r\n', 'Router\r\n', 'Bridge\r\n', 'Bridge\r\n', 'Bridge\r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(614, 242, 14, 14, 'Batas waktu penyewaan alamat IP yang diberikan kepada DHCP client oleh DHCP server disebutâ€¦\r\n', 'DHCP Server\r\n', 'DHCP scope\r\n', 'DHCP option\r\n', 'DHCP lease\r\n', 'DHCP client\r\n', 'DHCP lease\r\n', 'DHCP lease\r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(615, 242, 19, 15, 'Server yang bertugas melayani surat menyurat elektronik adalahâ€¦\r\n', 'Mail Server\r\n', 'DHCP Server\r\n', 'DNS Server\r\n', 'FTP Server\r\n', 'Proxy Server\r\n', 'Mail Server\r\n', 'Mail Server\r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(616, 242, 8, 16, 'Salah satu aplikasi pengelolaan DNS pada debian adalah...', 'DNS3\r\n', 'Bind9\r\n', 'VSFTPD\r\n', 'Squid\r\n', 'Samba\r\n', 'Bind9\r\n', 'Bind9\r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(617, 242, 45, 17, 'lapisan yang berfungsi untuk mengatur jalur pengiriman data adalahâ€¦\r\n', 'physical\r\n', 'data link\r\n', 'network\r\n', 'transport\r\n', 'session\r\n', 'network\r\n', 'network\r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(618, 242, 9, 18, 'kekurangan DNS yaitu...', 'Berbayar \r\n', 'Fleksibel\r\n', 'Kompatibel \r\n', 'Mudah \r\n', 'Gratis\r\n', 'Berbayar \r\n', 'Berbayar \r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(619, 242, 36, 19, '192.168.10.1 mempunyai sebuah netmask yaitu..\r\n', '255.255.255.0\r\n', '255.255.255.252\r\n', '192.168.10.0\r\n', '192.168.10.1\r\n', '192.168.10.2\r\n', '255.255.255.0\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(620, 242, 37, 20, 'DNS merupakan singkatan dari \r\n', 'Dynamic name service\r\n', 'domain name service\r\n', 'domain name system\r\n', 'dynamic name server\r\n', 'domain name static\r\n', 'domain name system\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(621, 242, 16, 21, 'perintah killall digunakan untuk...\r\n', 'mematikan komputer\r\n', 'shutdown\r\n', 'mematikan aplikasi yang running\r\n', 'mematikan koneksi internet\r\n', 'membunuh semua virus\r\n', 'mematikan aplikasi yang running\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(622, 242, 54, 22, 'FTP adalah singkatan dariâ€¦?\r\n', 'File Transfer Protokol\r\n', 'File Transfer pro/kontra\r\n', 'File Transfeeer Protokol\r\n', 'File Transfer poroporo\r\n', 'Semua jawaban benar\r\n', 'File Transfer Protokol\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(623, 242, 25, 23, 'perintah yang digunakan untuk mengedit pada linux server adalah â€¦\r\n', ' Nano\r\n', ' /etc/\r\n', ' /networking/\r\n', 'restart\r\n', ' Server\r\n', ' Nano\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(624, 242, 23, 24, 'perintah yang digunakan untuk melihat direktori pada linux adalah\r\n', 'dir', 'mkdir', 'nano', 'ls', 'pico', 'ls', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(625, 242, 29, 25, 'fungsi swapoff ialahâ€¦.\r\n', 'enable swap\r\n', 'mendisable swap \r\n', 'melihat nama host \r\n', 'restart\r\n', 'power off \r\n', 'mendisable swap \r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(626, 242, 34, 26, 'Sebuah program aplikasi yang bertugas untuk menerima permintaan paket dan memberinya balasan berupa paket yang di inginkan client disebut..\r\n', 'Client \r\n', 'Peer to peer \r\n', 'Client-server \r\n', 'Server \r\n', 'IPCONFIG\r\n', 'Server \r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(627, 242, 20, 27, 'Aplikasi yang digunakan dalam mail server untuk mengirim surat adalah\r\n', 'Courier-Pop\r\n', 'Postfix\r\n', 'Courier-imap\r\n', 'Squirrelmail\r\n', 'FTP\r\n', 'Courier-imap\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(628, 242, 43, 28, 'Pada pemasangan kabel straight, pin yang digunakan untuk menerima atau receiving data adalah\r\n', ' 1 dan 2\r\n', '6 dan 8\r\n', '4 dan 5\r\n', ' 3 dan 6\r\n', '3 dan 8\r\n', ' 3 dan 6\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(629, 242, 31, 29, 'Protokol TCP/IP berhubungan dengan pengguna aplikasi yang berguna untuk terminal maya jarak jauhâ€¦\r\n', 'HTTP\r\n', 'FTP\r\n', 'SMPTP\r\n', 'TELNET \r\n', 'UDP\r\n', 'TELNET \r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(630, 242, 5, 30, 'Digunakan untuk transfer file berupa download dan upload merupakan pengertian dariâ€¦\r\n', 'Samba\r\n', 'FTP\r\n', 'Mail\r\n', 'Squerrelmail\r\n', 'Roundcube\r\n', 'FTP\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(631, 242, 6, 31, 'Aplikasi untuk sharing sumberdaya seperti file, folder, printer harddisk dan sebagainya merupakan pengertian dariâ€¦\r\n', 'Samba\r\n', 'FTP\r\n', 'Mail\r\n', 'Squerrelmail\r\n', 'Roundcube\r\n', 'Samba\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(632, 242, 12, 32, 'Contoh aplikasi FTP client antara lain...', 'SmartFtp\r\n', 'Wuftpd\r\n', 'Vsftpd\r\n', 'DNS\r\n', 'DHCP\r\n', 'SmartFtp\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(633, 242, 11, 33, 'Untuk bisa login ke Server FTP kita bisa menggunakan mode...\r\n', 'Trunk\r\n', 'Allowed Trunk\r\n', 'teks\r\n', 'Teks dan GUI\r\n', 'Teks Trunk\r\n', 'Teks dan GUI\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(634, 242, 40, 34, 'sebuah workstation komputer yang dijadikan pusat untuk mengatur semua printer yang terhubung melalui networking yaituâ€¦.\r\n', 'samba server\r\n', 'document IT\r\n', 'Printer server \r\n', 'file server\r\n', 'protocol NET BEUI\r\n', 'Printer server \r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(635, 242, 49, 35, 'command menambahkan dvd baru adalah\r\n', 'Apt-cdrom add\r\n', 'Apt-get install\r\n', 'Apt-get add\r\n', 'Apt-dhcp\r\n', 'Apt-get install cdrom\r\n', 'Apt-cdrom add\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(636, 242, 39, 36, 'Surat yg berbentuk elektronik dan dikirim dgn jaringan internet disebut...\r\n', 'E-mail\r\n', 'MIRC\r\n', 'Telnet\r\n', 'Chatting\r\n', 'Sending\r\n', 'E-mail\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(637, 242, 27, 37, 'Dua hal penting dalam FTP adalahâ€¦\r\n', 'DHCP Server & FTP Client\r\n', 'DHCP server & FTP Server\r\n', 'FTP Server & DHCP Client\r\n', 'FTP Server & DNS Client\r\n', 'FTP Server & FTP Client\r\n', 'FTP Server & FTP Client\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(638, 242, 55, 38, 'Radio siaran termasuk jenis komunikasiâ€¦\r\n', 'suara\r\n', 'Radio\r\n', 'telpon\r\n', 'data\r\n', 'audio\r\n', 'suara\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(639, 242, 28, 39, 'Simbol prompt yang menandakan bahwa bahwa seseorang login sebagai user biasa pada Linux berbasis text adalahâ€¦\r\n', '%\r\n', '&\r\n', '$\r\n', '#\r\n', '@\r\n', '$\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(640, 242, 10, 40, 'DNS bisa digunakan pada aplikasi yang terhubung ke...', 'Internet\r\n', 'Domain\r\n', 'Host \r\n', 'Server\r\n', 'Login\r\n', 'Internet\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(641, 242, 21, 41, 'server terdiri dari 2 komponen utama antara lainâ€¦\r\n', 'software dan brainware\r\n', 'software dan protocol\r\n', 'software dan hardware\r\n', 'software dan TCP\r\n', 'semua salah\r\n', 'software dan hardware\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(642, 242, 38, 42, 'Host ID untuk IP Adrress kelas C adalahâ€¦.\r\n', '12 bit terakhir\r\n', '18 bit terakhir\r\n', '8 bit terakhir\r\n', '24 bit terakhir\r\n', '4 bit terakhir\r\n', '8 bit terakhir\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(643, 242, 50, 43, 'perintah untuk menguji koneksi jaringan di linux adalah\r\n', 'Is\r\n', 'ping\r\n', 'trace\r\n', 'tes\r\n', 'ifconfig\r\n', 'ping\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(644, 242, 35, 44, 'Jika suatu komputer memiliki sebuah alamat ip yaitu 192.168.10.1, maka network nya adalahâ€¦\r\n', '192.168.10.1\r\n', '192.168.10.0\r\n', '255.255.255.0\r\n', '255.255.255.252\r\n', '192.168.10.2\r\n', '192.168.10.0\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(645, 242, 24, 45, 'Clear digunakan untuk\r\n', 'membersihkan sampah\r\n', 'menghapuskan semua data\r\n', 'membersihkan tampilan\r\n', 'menghapus aplikasi\r\n', 'menyelesaikan misi\r\n', 'membersihkan tampilan\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(646, 242, 46, 46, 'lapisan yang berfungsi untuk mrngkonversi data yaitu..\r\n', 'physical\r\n', 'data link\r\n', 'session\r\n', 'presentation\r\n', 'application\r\n', 'presentation\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(647, 242, 26, 47, 'Perintah linux debian untuk masuk ke root ( super user ) adalah â€¦\r\n', ' Nano\r\n', 'su\r\n', ' rc.local\r\n', ' restart\r\n', ' sysctl\r\n', 'su\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(648, 242, 56, 48, 'yang termasuksistem operasi open source adalahâ€¦\r\n', 'Linux\r\n', 'Windows\r\n', 'DOS\r\n', 'Macintosh\r\n', 'Unix\r\n', 'Linux\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(649, 242, 33, 49, 'UDP (User Datagram Protokol ) adalah protokol sejenis dengan TCP yangâ€¦\r\n', 'Connectionless\r\n', 'Authorities\r\n', 'Oriented \r\n', 'Connectionpass\r\n', 'Dynamic Host \r\n', 'Connectionless\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(650, 242, 58, 50, 'DHCP yang berfungsi sebagai tambahan pengaturan alamat ip yaitu\r\n', 'DHCP Scope\r\n', 'DHCP client\r\n', 'DHCP option\r\n', 'DHCP Koneksi\r\n', 'DHCP router\r\n', 'DHCP option\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(651, 242, 32, 51, 'Protokol umum yang sering digunakan oleh mailserver adalah, kecualiâ€¦\r\n', 'SMTP\r\n', 'POP3\r\n', 'IMAP \r\n', 'TCP Atau IP\r\n', 'IPCONFIG\r\n', 'TCP Atau IP\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(652, 242, 17, 52, 'printah yang digunakan untuk mengecek koneksi internet di linux adalahâ€¦\r\n', 'if config\r\n', 'ip\r\n', 'rc. local\r\n', 'dx diag\r\n', 'ping\r\n', 'ping\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(653, 242, 1, 53, 'apa kepanjangan DHCP...\r\n', 'Dynamic Host Control Protocol\r\n', 'Domain Hert Control Protocol\r\n', 'Domain Hert Central Protocol\r\n', 'Domain Host Control Protocol\r\n', 'Dynamic hert Control Protocol\r\n', 'Dynamic Host Control Protocol\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(654, 242, 59, 54, 'untuk mengupdate repository ke internet, kita mengkonfigurasi file', '/etc/network/interfaces', '/etc/network/repository', '/etc/apt/sources', '/etc/apt/sources.list', '/etc/apt/source', '/etc/apt/sources.list', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(655, 242, 41, 55, 'Program bantu yang memberikan interface model web untuk mengandministrasi samba adalah..\r\n', 'smb client\r\n', 'smb passwd\r\n', 'smb status\r\n', '.smb tar\r\n', 'swat\r\n', 'swat\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(656, 242, 48, 56, 'tugas mail server adalahâ€¦\r\n', 'melayani surat menyurat\r\n', 'melayani pengiriman barang\r\n', 'melayani pengiriman data\r\n', 'melayani pengiriman paket\r\n', 'melayani  pengiriman suara\r\n', 'melayani surat menyurat\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(657, 242, 7, 57, 'Layanan yang secara otomatis memberikan no IP kepada komputer yang memintanya adalah...\r\n', 'TCP\r\n', 'Server\r\n', 'Konfigurasi\r\n', 'Statis\r\n', 'DHCP\r\n', 'DHCP\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(658, 242, 13, 58, 'Alamat IP yang dapat disewakan kepada DHCP client di sebut...\r\n', 'DHCP Server\r\n', 'DHCP scope\r\n', 'DHCP option\r\n', 'DHCP lease\r\n', 'DHCP client\r\n', 'DHCP scope\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(659, 242, 4, 59, 'Komputer yang meminta no IP disebut...\r\n', 'DHCP Server\r\n', 'DHCP Client\r\n', 'Statis\r\n', 'TCP\r\n', 'Server\r\n', 'DHCP Client\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(660, 242, 15, 60, 'perintah init 6 digunakan untuk...\r\n', 'berpindah direktori\r\n', 'melihat isi direktori\r\n', 'restart\r\n', 'shut down\r\n', 'shutdown setelah 6 detik\r\n', 'restart\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(781, 241, 9, 1, 'kekurangan DNS yaitu...', 'Berbayar \r\n', 'Fleksibel\r\n', 'Kompatibel \r\n', 'Mudah \r\n', 'Gratis\r\n', 'Berbayar \r\n', 'Kompatibel \r\n', 'dijawab', 'salah', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(782, 241, 60, 2, 'layanan web server menggunakan paket', 'web server', 'dns', 'apache2', 'postfix', 'courier', 'apache2', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(783, 241, 53, 3, 'File yang berisi setting interface jaringan di debian text adalah\r\n', '/etc/init.d/networking\r\n', '/etc/bind/bind.conf\r\n', '/etc/network/eth0.conf\r\n', '/etc/network/interface\r\n', '/etc/network/interfaces\r\n', '/etc/network/interfaces\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(784, 241, 49, 4, 'command menambahkan dvd baru adalah\r\n', 'Apt-cdrom add\r\n', 'Apt-get install\r\n', 'Apt-get add\r\n', 'Apt-dhcp\r\n', 'Apt-get install cdrom\r\n', 'Apt-cdrom add\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(785, 241, 3, 5, 'DNS biasa digunakan pada aplikasi yang terhubung ke...', 'E-mail\r\n', 'Modem\r\n', 'Web server\r\n', 'Internet \r\n', 'Mail server\r\n', 'Internet \r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(786, 241, 57, 6, 'Salah satu elemen DHCP pada jawaban di bawah ini adalah\r\n', 'Dhcp server\r\n', 'DHCP client\r\n', 'DHCP Scope\r\n', 'DHCP Koneksi\r\n', 'DHCP Ruter\r\n', 'DHCP Scope\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(787, 241, 5, 7, 'Digunakan untuk transfer file berupa download dan upload merupakan pengertian dariâ€¦\r\n', 'Samba\r\n', 'FTP\r\n', 'Mail\r\n', 'Squerrelmail\r\n', 'Roundcube\r\n', 'FTP\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(788, 241, 22, 8, 'server adalahâ€¦\r\n', 'suatu perantara agar terhubung\r\n', 'suatu jenis os yang memungkinkan pengguna untuk pelajar\r\n', 'suatu perangkat jaringan yang memberikan layanan terhadap pengguna\r\n', 'suatu perangkat jaringan yang menjadikan perantara\r\n', 'sejenis sistem operasi jaringan\r\n', 'suatu perangkat jaringan yang memberikan layanan terhadap pengguna\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(789, 241, 39, 9, 'Surat yg berbentuk elektronik dan dikirim dgn jaringan internet disebut...\r\n', 'E-mail\r\n', 'MIRC\r\n', 'Telnet\r\n', 'Chatting\r\n', 'Sending\r\n', 'E-mail\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(790, 241, 42, 10, 'Menurut referensi OSI layer atau lapisan protokol berjumlah\r\n', '3\r\n', '4\r\n', '5\r\n', '7\r\n', '6', '7\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(791, 241, 36, 11, '192.168.10.1 mempunyai sebuah netmask yaitu..\r\n', '255.255.255.0\r\n', '255.255.255.252\r\n', '192.168.10.0\r\n', '192.168.10.1\r\n', '192.168.10.2\r\n', '255.255.255.0\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(792, 241, 34, 12, 'Sebuah program aplikasi yang bertugas untuk menerima permintaan paket dan memberinya balasan berupa paket yang di inginkan client disebut..\r\n', 'Client \r\n', 'Peer to peer \r\n', 'Client-server \r\n', 'Server \r\n', 'IPCONFIG\r\n', 'Server \r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(793, 241, 4, 13, 'Komputer yang meminta no IP disebut...\r\n', 'DHCP Server\r\n', 'DHCP Client\r\n', 'Statis\r\n', 'TCP\r\n', 'Server\r\n', 'DHCP Client\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(794, 241, 15, 14, 'perintah init 6 digunakan untuk...\r\n', 'berpindah direktori\r\n', 'melihat isi direktori\r\n', 'restart\r\n', 'shut down\r\n', 'shutdown setelah 6 detik\r\n', 'restart\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(795, 241, 26, 15, 'Perintah linux debian untuk masuk ke root ( super user ) adalah â€¦\r\n', ' Nano\r\n', 'su\r\n', ' rc.local\r\n', ' restart\r\n', ' sysctl\r\n', 'su\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(796, 241, 29, 16, 'fungsi swapoff ialahâ€¦.\r\n', 'enable swap\r\n', 'mendisable swap \r\n', 'melihat nama host \r\n', 'restart\r\n', 'power off \r\n', 'mendisable swap \r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(797, 241, 32, 17, 'Protokol umum yang sering digunakan oleh mailserver adalah, kecualiâ€¦\r\n', 'SMTP\r\n', 'POP3\r\n', 'IMAP \r\n', 'TCP Atau IP\r\n', 'IPCONFIG\r\n', 'TCP Atau IP\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(798, 241, 13, 18, 'Alamat IP yang dapat disewakan kepada DHCP client di sebut...\r\n', 'DHCP Server\r\n', 'DHCP scope\r\n', 'DHCP option\r\n', 'DHCP lease\r\n', 'DHCP client\r\n', 'DHCP scope\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(799, 241, 41, 19, 'Program bantu yang memberikan interface model web untuk mengandministrasi samba adalah..\r\n', 'smb client\r\n', 'smb passwd\r\n', 'smb status\r\n', '.smb tar\r\n', 'swat\r\n', 'swat\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(800, 241, 38, 20, 'Host ID untuk IP Adrress kelas C adalahâ€¦.\r\n', '12 bit terakhir\r\n', '18 bit terakhir\r\n', '8 bit terakhir\r\n', '24 bit terakhir\r\n', '4 bit terakhir\r\n', '8 bit terakhir\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(801, 241, 31, 21, 'Protokol TCP/IP berhubungan dengan pengguna aplikasi yang berguna untuk terminal maya jarak jauhâ€¦\r\n', 'HTTP\r\n', 'FTP\r\n', 'SMPTP\r\n', 'TELNET \r\n', 'UDP\r\n', 'TELNET \r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(802, 241, 20, 22, 'Aplikasi yang digunakan dalam mail server untuk mengirim surat adalah\r\n', 'Courier-Pop\r\n', 'Postfix\r\n', 'Courier-imap\r\n', 'Squirrelmail\r\n', 'FTP\r\n', 'Courier-imap\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(803, 241, 7, 23, 'Layanan yang secara otomatis memberikan no IP kepada komputer yang memintanya adalah...\r\n', 'TCP\r\n', 'Server\r\n', 'Konfigurasi\r\n', 'Statis\r\n', 'DHCP\r\n', 'DHCP\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(804, 241, 33, 24, 'UDP (User Datagram Protokol ) adalah protokol sejenis dengan TCP yangâ€¦\r\n', 'Connectionless\r\n', 'Authorities\r\n', 'Oriented \r\n', 'Connectionpass\r\n', 'Dynamic Host \r\n', 'Connectionless\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(805, 241, 27, 25, 'Dua hal penting dalam FTP adalahâ€¦\r\n', 'DHCP Server & FTP Client\r\n', 'DHCP server & FTP Server\r\n', 'FTP Server & DHCP Client\r\n', 'FTP Server & DNS Client\r\n', 'FTP Server & FTP Client\r\n', 'FTP Server & FTP Client\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(806, 241, 17, 26, 'printah yang digunakan untuk mengecek koneksi internet di linux adalahâ€¦\r\n', 'if config\r\n', 'ip\r\n', 'rc. local\r\n', 'dx diag\r\n', 'ping\r\n', 'ping\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(807, 241, 1, 27, 'apa kepanjangan DHCP...\r\n', 'Dynamic Host Control Protocol\r\n', 'Domain Hert Control Protocol\r\n', 'Domain Hert Central Protocol\r\n', 'Domain Host Control Protocol\r\n', 'Dynamic hert Control Protocol\r\n', 'Dynamic Host Control Protocol\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(808, 241, 46, 28, 'lapisan yang berfungsi untuk mrngkonversi data yaitu..\r\n', 'physical\r\n', 'data link\r\n', 'session\r\n', 'presentation\r\n', 'application\r\n', 'presentation\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(809, 241, 24, 29, 'Clear digunakan untuk\r\n', 'membersihkan sampah\r\n', 'menghapuskan semua data\r\n', 'membersihkan tampilan\r\n', 'menghapus aplikasi\r\n', 'menyelesaikan misi\r\n', 'membersihkan tampilan\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(810, 241, 28, 30, 'Simbol prompt yang menandakan bahwa bahwa seseorang login sebagai user biasa pada Linux berbasis text adalahâ€¦\r\n', '%\r\n', '&\r\n', '$\r\n', '#\r\n', '@\r\n', '$\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(811, 241, 56, 31, 'yang termasuksistem operasi open source adalahâ€¦\r\n', 'Linux\r\n', 'Windows\r\n', 'DOS\r\n', 'Macintosh\r\n', 'Unix\r\n', 'Linux\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(812, 241, 40, 32, 'sebuah workstation komputer yang dijadikan pusat untuk mengatur semua printer yang terhubung melalui networking yaituâ€¦.\r\n', 'samba server\r\n', 'document IT\r\n', 'Printer server \r\n', 'file server\r\n', 'protocol NET BEUI\r\n', 'Printer server \r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(813, 241, 55, 33, 'Radio siaran termasuk jenis komunikasiâ€¦\r\n', 'suara\r\n', 'Radio\r\n', 'telpon\r\n', 'data\r\n', 'audio\r\n', 'suara\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(814, 241, 37, 34, 'DNS merupakan singkatan dari \r\n', 'Dynamic name service\r\n', 'domain name service\r\n', 'domain name system\r\n', 'dynamic name server\r\n', 'domain name static\r\n', 'domain name system\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(815, 241, 23, 35, 'perintah yang digunakan untuk melihat direktori pada linux adalah\r\n', 'dir', 'mkdir', 'nano', 'ls', 'pico', 'ls', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(816, 241, 50, 36, 'perintah untuk menguji koneksi jaringan di linux adalah\r\n', 'Is\r\n', 'ping\r\n', 'trace\r\n', 'tes\r\n', 'ifconfig\r\n', 'ping\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(817, 241, 12, 37, 'Contoh aplikasi FTP client antara lain...', 'SmartFtp\r\n', 'Wuftpd\r\n', 'Vsftpd\r\n', 'DNS\r\n', 'DHCP\r\n', 'SmartFtp\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(818, 241, 10, 38, 'DNS bisa digunakan pada aplikasi yang terhubung ke...', 'Internet\r\n', 'Domain\r\n', 'Host \r\n', 'Server\r\n', 'Login\r\n', 'Internet\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(819, 241, 48, 39, 'tugas mail server adalahâ€¦\r\n', 'melayani surat menyurat\r\n', 'melayani pengiriman barang\r\n', 'melayani pengiriman data\r\n', 'melayani pengiriman paket\r\n', 'melayani  pengiriman suara\r\n', 'melayani surat menyurat\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(820, 241, 47, 40, 'Secara umum jaringan komputer terdiri dari dibawah ini kecualiâ€¦\r\n', 'Local area network\r\n', 'metropolitan area network\r\n', 'radio area network\r\n', 'wide area network\r\n', 'internet\r\n', 'radio area network\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(821, 241, 21, 41, 'server terdiri dari 2 komponen utama antara lainâ€¦\r\n', 'software dan brainware\r\n', 'software dan protocol\r\n', 'software dan hardware\r\n', 'software dan TCP\r\n', 'semua salah\r\n', 'software dan hardware\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(822, 241, 45, 42, 'lapisan yang berfungsi untuk mengatur jalur pengiriman data adalahâ€¦\r\n', 'physical\r\n', 'data link\r\n', 'network\r\n', 'transport\r\n', 'session\r\n', 'network\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(823, 241, 43, 43, 'Pada pemasangan kabel straight, pin yang digunakan untuk menerima atau receiving data adalah\r\n', ' 1 dan 2\r\n', '6 dan 8\r\n', '4 dan 5\r\n', ' 3 dan 6\r\n', '3 dan 8\r\n', ' 3 dan 6\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(824, 241, 59, 44, 'untuk mengupdate repository ke internet, kita mengkonfigurasi file', '/etc/network/interfaces', '/etc/network/repository', '/etc/apt/sources', '/etc/apt/sources.list', '/etc/apt/source', '/etc/apt/sources.list', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(825, 241, 2, 45, 'IP address 12.10.10.1 adalah ip kelas...\r\n', 'A\r\n', 'B\r\n', 'C\r\n', 'Private\r\n', 'Jawaban A dan E benar\r\n', 'A\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(826, 241, 51, 46, 'sebuah layanan server yang berfungsi memberikan alamat ip secara otomatis ke client yang terhubung ke jaringan adalah..\r\n', 'proxy server\r\n', 'web server\r\n', 'dhcp server\r\n', 'dns server\r\n', 'database server\r\n', 'dhcp server\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(827, 241, 54, 47, 'FTP adalah singkatan dariâ€¦?\r\n', 'File Transfer Protokol\r\n', 'File Transfer pro/kontra\r\n', 'File Transfeeer Protokol\r\n', 'File Transfer poroporo\r\n', 'Semua jawaban benar\r\n', 'File Transfer Protokol\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(828, 241, 6, 48, 'Aplikasi untuk sharing sumberdaya seperti file, folder, printer harddisk dan sebagainya merupakan pengertian dariâ€¦\r\n', 'Samba\r\n', 'FTP\r\n', 'Mail\r\n', 'Squerrelmail\r\n', 'Roundcube\r\n', 'Samba\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(829, 241, 35, 49, 'Jika suatu komputer memiliki sebuah alamat ip yaitu 192.168.10.1, maka network nya adalahâ€¦\r\n', '192.168.10.1\r\n', '192.168.10.0\r\n', '255.255.255.0\r\n', '255.255.255.252\r\n', '192.168.10.2\r\n', '192.168.10.0\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(830, 241, 58, 50, 'DHCP yang berfungsi sebagai tambahan pengaturan alamat ip yaitu\r\n', 'DHCP Scope\r\n', 'DHCP client\r\n', 'DHCP option\r\n', 'DHCP Koneksi\r\n', 'DHCP router\r\n', 'DHCP option\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(831, 241, 19, 51, 'Server yang bertugas melayani surat menyurat elektronik adalahâ€¦\r\n', 'Mail Server\r\n', 'DHCP Server\r\n', 'DNS Server\r\n', 'FTP Server\r\n', 'Proxy Server\r\n', 'Mail Server\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(832, 241, 52, 52, 'untuk menginstall paket software di debian linux menggunakan perintah..\r\n', 'Apt-cdrom add\r\n', 'index cd\r\n', 'Apt-get update\r\n', 'Apt-get install\r\n', 'Apt-get uninstall\r\n', 'Apt-get install\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(833, 241, 14, 53, 'Batas waktu penyewaan alamat IP yang diberikan kepada DHCP client oleh DHCP server disebutâ€¦\r\n', 'DHCP Server\r\n', 'DHCP scope\r\n', 'DHCP option\r\n', 'DHCP lease\r\n', 'DHCP client\r\n', 'DHCP lease\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67');
INSERT INTO `tb_jawab` (`id`, `id_siswa`, `id_soal`, `soal_ke`, `soal`, `pil_a`, `pil_b`, `pil_c`, `pil_d`, `pil_e`, `kunci`, `jawaban`, `status`, `status2`, `status3`, `token`) VALUES
(834, 241, 18, 54, 'Dibawah ini yang merupakan perangkat wan adalah, kecuali\r\n', 'Hub\r\n', 'Modem\r\n', 'Repester\r\n', 'Router\r\n', 'Bridge\r\n', 'Bridge\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(835, 241, 30, 55, 'berikut perintah dasar linux, kecuali \r\n', 'CD\r\n', 'MV\r\n', 'enter\r\n', 'cat\r\n', 'CP\r\n', 'enter\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(836, 241, 8, 56, 'Salah satu aplikasi pengelolaan DNS pada debian adalah...', 'DNS3\r\n', 'Bind9\r\n', 'VSFTPD\r\n', 'Squid\r\n', 'Samba\r\n', 'Bind9\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(837, 241, 16, 57, 'perintah killall digunakan untuk...\r\n', 'mematikan komputer\r\n', 'shutdown\r\n', 'mematikan aplikasi yang running\r\n', 'mematikan koneksi internet\r\n', 'membunuh semua virus\r\n', 'mematikan aplikasi yang running\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(838, 241, 11, 58, 'Untuk bisa login ke Server FTP kita bisa menggunakan mode...\r\n', 'Trunk\r\n', 'Allowed Trunk\r\n', 'teks\r\n', 'Teks dan GUI\r\n', 'Teks Trunk\r\n', 'Teks dan GUI\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(839, 241, 44, 59, 'seperangkat aturan, atau suatu perjanjian yang mengatur/mendeterminasikan format dan transmisi data yang dilakukan disebut dengan..\r\n', 'protokol\r\n', 'ISO\r\n', 'OSI\r\n', 'TCP/IP\r\n', 'LAYER\r\n', 'protokol\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(840, 241, 25, 60, 'perintah yang digunakan untuk mengedit pada linux server adalah â€¦\r\n', ' Nano\r\n', ' /etc/\r\n', ' /networking/\r\n', 'restart\r\n', ' Server\r\n', ' Nano\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(841, 262, 2, 1, 'IP address 12.10.10.1 adalah ip kelas...\r\n', 'A\r\n', 'B\r\n', 'C\r\n', 'Private\r\n', 'Jawaban A dan E benar\r\n', 'A\r\n', 'A\r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(842, 262, 29, 2, 'fungsi swapoff ialahâ€¦.\r\n', 'enable swap\r\n', 'mendisable swap \r\n', 'melihat nama host \r\n', 'restart\r\n', 'power off \r\n', 'mendisable swap \r\n', 'enable swap\r\n', 'dijawab', 'salah', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(843, 262, 6, 3, 'Aplikasi untuk sharing sumberdaya seperti file, folder, printer harddisk dan sebagainya merupakan pengertian dariâ€¦\r\n', 'Samba\r\n', 'FTP\r\n', 'Mail\r\n', 'Squerrelmail\r\n', 'Roundcube\r\n', 'Samba\r\n', 'Samba\r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(844, 262, 58, 4, 'DHCP yang berfungsi sebagai tambahan pengaturan alamat ip yaitu\r\n', 'DHCP Scope\r\n', 'DHCP client\r\n', 'DHCP option\r\n', 'DHCP Koneksi\r\n', 'DHCP router\r\n', 'DHCP option\r\n', 'DHCP Scope\r\n', 'dijawab', 'salah', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(845, 262, 45, 5, 'lapisan yang berfungsi untuk mengatur jalur pengiriman data adalahâ€¦\r\n', 'physical\r\n', 'data link\r\n', 'network\r\n', 'transport\r\n', 'session\r\n', 'network\r\n', 'physical\r\n', 'dijawab', 'salah', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(846, 262, 9, 6, 'kekurangan DNS yaitu...', 'Berbayar \r\n', 'Fleksibel\r\n', 'Kompatibel \r\n', 'Mudah \r\n', 'Gratis\r\n', 'Berbayar \r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(847, 262, 19, 7, 'Server yang bertugas melayani surat menyurat elektronik adalahâ€¦\r\n', 'Mail Server\r\n', 'DHCP Server\r\n', 'DNS Server\r\n', 'FTP Server\r\n', 'Proxy Server\r\n', 'Mail Server\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(848, 262, 57, 8, 'Salah satu elemen DHCP pada jawaban di bawah ini adalah\r\n', 'Dhcp server\r\n', 'DHCP client\r\n', 'DHCP Scope\r\n', 'DHCP Koneksi\r\n', 'DHCP Ruter\r\n', 'DHCP Scope\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(849, 262, 56, 9, 'yang termasuksistem operasi open source adalahâ€¦\r\n', 'Linux\r\n', 'Windows\r\n', 'DOS\r\n', 'Macintosh\r\n', 'Unix\r\n', 'Linux\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(850, 262, 43, 10, 'Pada pemasangan kabel straight, pin yang digunakan untuk menerima atau receiving data adalah\r\n', ' 1 dan 2\r\n', '6 dan 8\r\n', '4 dan 5\r\n', ' 3 dan 6\r\n', '3 dan 8\r\n', ' 3 dan 6\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(851, 262, 41, 11, 'Program bantu yang memberikan interface model web untuk mengandministrasi samba adalah..\r\n', 'smb client\r\n', 'smb passwd\r\n', 'smb status\r\n', '.smb tar\r\n', 'swat\r\n', 'swat\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(852, 262, 36, 12, '192.168.10.1 mempunyai sebuah netmask yaitu..\r\n', '255.255.255.0\r\n', '255.255.255.252\r\n', '192.168.10.0\r\n', '192.168.10.1\r\n', '192.168.10.2\r\n', '255.255.255.0\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(853, 262, 55, 13, 'Radio siaran termasuk jenis komunikasiâ€¦\r\n', 'suara\r\n', 'Radio\r\n', 'telpon\r\n', 'data\r\n', 'audio\r\n', 'suara\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(854, 262, 27, 14, 'Dua hal penting dalam FTP adalahâ€¦\r\n', 'DHCP Server & FTP Client\r\n', 'DHCP server & FTP Server\r\n', 'FTP Server & DHCP Client\r\n', 'FTP Server & DNS Client\r\n', 'FTP Server & FTP Client\r\n', 'FTP Server & FTP Client\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(855, 262, 5, 15, 'Digunakan untuk transfer file berupa download dan upload merupakan pengertian dariâ€¦\r\n', 'Samba\r\n', 'FTP\r\n', 'Mail\r\n', 'Squerrelmail\r\n', 'Roundcube\r\n', 'FTP\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(856, 262, 20, 16, 'Aplikasi yang digunakan dalam mail server untuk mengirim surat adalah\r\n', 'Courier-Pop\r\n', 'Postfix\r\n', 'Courier-imap\r\n', 'Squirrelmail\r\n', 'FTP\r\n', 'Courier-imap\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(857, 262, 3, 17, 'DNS biasa digunakan pada aplikasi yang terhubung ke...', 'E-mail\r\n', 'Modem\r\n', 'Web server\r\n', 'Internet \r\n', 'Mail server\r\n', 'Internet \r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(858, 262, 16, 18, 'perintah killall digunakan untuk...\r\n', 'mematikan komputer\r\n', 'shutdown\r\n', 'mematikan aplikasi yang running\r\n', 'mematikan koneksi internet\r\n', 'membunuh semua virus\r\n', 'mematikan aplikasi yang running\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(859, 262, 54, 19, 'FTP adalah singkatan dariâ€¦?\r\n', 'File Transfer Protokol\r\n', 'File Transfer pro/kontra\r\n', 'File Transfeeer Protokol\r\n', 'File Transfer poroporo\r\n', 'Semua jawaban benar\r\n', 'File Transfer Protokol\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(860, 262, 32, 20, 'Protokol umum yang sering digunakan oleh mailserver adalah, kecualiâ€¦\r\n', 'SMTP\r\n', 'POP3\r\n', 'IMAP \r\n', 'TCP Atau IP\r\n', 'IPCONFIG\r\n', 'TCP Atau IP\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(861, 262, 25, 21, 'perintah yang digunakan untuk mengedit pada linux server adalah â€¦\r\n', ' Nano\r\n', ' /etc/\r\n', ' /networking/\r\n', 'restart\r\n', ' Server\r\n', ' Nano\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(862, 262, 10, 22, 'DNS bisa digunakan pada aplikasi yang terhubung ke...', 'Internet\r\n', 'Domain\r\n', 'Host \r\n', 'Server\r\n', 'Login\r\n', 'Internet\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(863, 262, 49, 23, 'command menambahkan dvd baru adalah\r\n', 'Apt-cdrom add\r\n', 'Apt-get install\r\n', 'Apt-get add\r\n', 'Apt-dhcp\r\n', 'Apt-get install cdrom\r\n', 'Apt-cdrom add\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(864, 262, 53, 24, 'File yang berisi setting interface jaringan di debian text adalah\r\n', '/etc/init.d/networking\r\n', '/etc/bind/bind.conf\r\n', '/etc/network/eth0.conf\r\n', '/etc/network/interface\r\n', '/etc/network/interfaces\r\n', '/etc/network/interfaces\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(865, 262, 11, 25, 'Untuk bisa login ke Server FTP kita bisa menggunakan mode...\r\n', 'Trunk\r\n', 'Allowed Trunk\r\n', 'teks\r\n', 'Teks dan GUI\r\n', 'Teks Trunk\r\n', 'Teks dan GUI\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(866, 262, 18, 26, 'Dibawah ini yang merupakan perangkat wan adalah, kecuali\r\n', 'Hub\r\n', 'Modem\r\n', 'Repester\r\n', 'Router\r\n', 'Bridge\r\n', 'Bridge\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(867, 262, 14, 27, 'Batas waktu penyewaan alamat IP yang diberikan kepada DHCP client oleh DHCP server disebutâ€¦\r\n', 'DHCP Server\r\n', 'DHCP scope\r\n', 'DHCP option\r\n', 'DHCP lease\r\n', 'DHCP client\r\n', 'DHCP lease\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(868, 262, 26, 28, 'Perintah linux debian untuk masuk ke root ( super user ) adalah â€¦\r\n', ' Nano\r\n', 'su\r\n', ' rc.local\r\n', ' restart\r\n', ' sysctl\r\n', 'su\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(869, 262, 52, 29, 'untuk menginstall paket software di debian linux menggunakan perintah..\r\n', 'Apt-cdrom add\r\n', 'index cd\r\n', 'Apt-get update\r\n', 'Apt-get install\r\n', 'Apt-get uninstall\r\n', 'Apt-get install\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(870, 262, 37, 30, 'DNS merupakan singkatan dari \r\n', 'Dynamic name service\r\n', 'domain name service\r\n', 'domain name system\r\n', 'dynamic name server\r\n', 'domain name static\r\n', 'domain name system\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(871, 262, 22, 31, 'server adalahâ€¦\r\n', 'suatu perantara agar terhubung\r\n', 'suatu jenis os yang memungkinkan pengguna untuk pelajar\r\n', 'suatu perangkat jaringan yang memberikan layanan terhadap pengguna\r\n', 'suatu perangkat jaringan yang menjadikan perantara\r\n', 'sejenis sistem operasi jaringan\r\n', 'suatu perangkat jaringan yang memberikan layanan terhadap pengguna\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(872, 262, 15, 32, 'perintah init 6 digunakan untuk...\r\n', 'berpindah direktori\r\n', 'melihat isi direktori\r\n', 'restart\r\n', 'shut down\r\n', 'shutdown setelah 6 detik\r\n', 'restart\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(873, 262, 44, 33, 'seperangkat aturan, atau suatu perjanjian yang mengatur/mendeterminasikan format dan transmisi data yang dilakukan disebut dengan..\r\n', 'protokol\r\n', 'ISO\r\n', 'OSI\r\n', 'TCP/IP\r\n', 'LAYER\r\n', 'protokol\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(874, 262, 13, 34, 'Alamat IP yang dapat disewakan kepada DHCP client di sebut...\r\n', 'DHCP Server\r\n', 'DHCP scope\r\n', 'DHCP option\r\n', 'DHCP lease\r\n', 'DHCP client\r\n', 'DHCP scope\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(875, 262, 48, 35, 'tugas mail server adalahâ€¦\r\n', 'melayani surat menyurat\r\n', 'melayani pengiriman barang\r\n', 'melayani pengiriman data\r\n', 'melayani pengiriman paket\r\n', 'melayani  pengiriman suara\r\n', 'melayani surat menyurat\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(876, 262, 34, 36, 'Sebuah program aplikasi yang bertugas untuk menerima permintaan paket dan memberinya balasan berupa paket yang di inginkan client disebut..\r\n', 'Client \r\n', 'Peer to peer \r\n', 'Client-server \r\n', 'Server \r\n', 'IPCONFIG\r\n', 'Server \r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(877, 262, 17, 37, 'printah yang digunakan untuk mengecek koneksi internet di linux adalahâ€¦\r\n', 'if config\r\n', 'ip\r\n', 'rc. local\r\n', 'dx diag\r\n', 'ping\r\n', 'ping\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(878, 262, 7, 38, 'Layanan yang secara otomatis memberikan no IP kepada komputer yang memintanya adalah...\r\n', 'TCP\r\n', 'Server\r\n', 'Konfigurasi\r\n', 'Statis\r\n', 'DHCP\r\n', 'DHCP\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(879, 262, 51, 39, 'sebuah layanan server yang berfungsi memberikan alamat ip secara otomatis ke client yang terhubung ke jaringan adalah..\r\n', 'proxy server\r\n', 'web server\r\n', 'dhcp server\r\n', 'dns server\r\n', 'database server\r\n', 'dhcp server\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(880, 262, 33, 40, 'UDP (User Datagram Protokol ) adalah protokol sejenis dengan TCP yangâ€¦\r\n', 'Connectionless\r\n', 'Authorities\r\n', 'Oriented \r\n', 'Connectionpass\r\n', 'Dynamic Host \r\n', 'Connectionless\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(881, 262, 12, 41, 'Contoh aplikasi FTP client antara lain...', 'SmartFtp\r\n', 'Wuftpd\r\n', 'Vsftpd\r\n', 'DNS\r\n', 'DHCP\r\n', 'SmartFtp\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(882, 262, 42, 42, 'Menurut referensi OSI layer atau lapisan protokol berjumlah\r\n', '3\r\n', '4\r\n', '5\r\n', '7\r\n', '6', '7\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(883, 262, 28, 43, 'Simbol prompt yang menandakan bahwa bahwa seseorang login sebagai user biasa pada Linux berbasis text adalahâ€¦\r\n', '%\r\n', '&\r\n', '$\r\n', '#\r\n', '@\r\n', '$\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(884, 262, 35, 44, 'Jika suatu komputer memiliki sebuah alamat ip yaitu 192.168.10.1, maka network nya adalahâ€¦\r\n', '192.168.10.1\r\n', '192.168.10.0\r\n', '255.255.255.0\r\n', '255.255.255.252\r\n', '192.168.10.2\r\n', '192.168.10.0\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(885, 262, 47, 45, 'Secara umum jaringan komputer terdiri dari dibawah ini kecualiâ€¦\r\n', 'Local area network\r\n', 'metropolitan area network\r\n', 'radio area network\r\n', 'wide area network\r\n', 'internet\r\n', 'radio area network\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(886, 262, 46, 46, 'lapisan yang berfungsi untuk mrngkonversi data yaitu..\r\n', 'physical\r\n', 'data link\r\n', 'session\r\n', 'presentation\r\n', 'application\r\n', 'presentation\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(887, 262, 60, 47, 'layanan web server menggunakan paket', 'web server', 'dns', 'apache2', 'postfix', 'courier', 'apache2', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(888, 262, 21, 48, 'server terdiri dari 2 komponen utama antara lainâ€¦\r\n', 'software dan brainware\r\n', 'software dan protocol\r\n', 'software dan hardware\r\n', 'software dan TCP\r\n', 'semua salah\r\n', 'software dan hardware\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(889, 262, 31, 49, 'Protokol TCP/IP berhubungan dengan pengguna aplikasi yang berguna untuk terminal maya jarak jauhâ€¦\r\n', 'HTTP\r\n', 'FTP\r\n', 'SMPTP\r\n', 'TELNET \r\n', 'UDP\r\n', 'TELNET \r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(890, 262, 38, 50, 'Host ID untuk IP Adrress kelas C adalahâ€¦.\r\n', '12 bit terakhir\r\n', '18 bit terakhir\r\n', '8 bit terakhir\r\n', '24 bit terakhir\r\n', '4 bit terakhir\r\n', '8 bit terakhir\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(891, 262, 23, 51, 'perintah yang digunakan untuk melihat direktori pada linux adalah\r\n', 'dir', 'mkdir', 'nano', 'ls', 'pico', 'ls', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(892, 262, 50, 52, 'perintah untuk menguji koneksi jaringan di linux adalah\r\n', 'Is\r\n', 'ping\r\n', 'trace\r\n', 'tes\r\n', 'ifconfig\r\n', 'ping\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(893, 262, 39, 53, 'Surat yg berbentuk elektronik dan dikirim dgn jaringan internet disebut...\r\n', 'E-mail\r\n', 'MIRC\r\n', 'Telnet\r\n', 'Chatting\r\n', 'Sending\r\n', 'E-mail\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(894, 262, 4, 54, 'Komputer yang meminta no IP disebut...\r\n', 'DHCP Server\r\n', 'DHCP Client\r\n', 'Statis\r\n', 'TCP\r\n', 'Server\r\n', 'DHCP Client\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(895, 262, 1, 55, 'apa kepanjangan DHCP...\r\n', 'Dynamic Host Control Protocol\r\n', 'Domain Hert Control Protocol\r\n', 'Domain Hert Central Protocol\r\n', 'Domain Host Control Protocol\r\n', 'Dynamic hert Control Protocol\r\n', 'Dynamic Host Control Protocol\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(896, 262, 40, 56, 'sebuah workstation komputer yang dijadikan pusat untuk mengatur semua printer yang terhubung melalui networking yaituâ€¦.\r\n', 'samba server\r\n', 'document IT\r\n', 'Printer server \r\n', 'file server\r\n', 'protocol NET BEUI\r\n', 'Printer server \r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(897, 262, 24, 57, 'Clear digunakan untuk\r\n', 'membersihkan sampah\r\n', 'menghapuskan semua data\r\n', 'membersihkan tampilan\r\n', 'menghapus aplikasi\r\n', 'menyelesaikan misi\r\n', 'membersihkan tampilan\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(898, 262, 8, 58, 'Salah satu aplikasi pengelolaan DNS pada debian adalah...', 'DNS3\r\n', 'Bind9\r\n', 'VSFTPD\r\n', 'Squid\r\n', 'Samba\r\n', 'Bind9\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(899, 262, 59, 59, 'untuk mengupdate repository ke internet, kita mengkonfigurasi file', '/etc/network/interfaces', '/etc/network/repository', '/etc/apt/sources', '/etc/apt/sources.list', '/etc/apt/source', '/etc/apt/sources.list', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(900, 262, 30, 60, 'berikut perintah dasar linux, kecuali \r\n', 'CD\r\n', 'MV\r\n', 'enter\r\n', 'cat\r\n', 'CP\r\n', 'enter\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1261, 244, 44, 1, 'seperangkat aturan, atau suatu perjanjian yang mengatur/mendeterminasikan format dan transmisi data yang dilakukan disebut dengan..\r\n', 'protokol\r\n', 'ISO\r\n', 'OSI\r\n', 'TCP/IP\r\n', 'LAYER\r\n', 'protokol\r\n', 'protokol\r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1262, 244, 55, 2, 'Radio siaran termasuk jenis komunikasiâ€¦\r\n', 'suara\r\n', 'Radio\r\n', 'telpon\r\n', 'data\r\n', 'audio\r\n', 'suara\r\n', 'audio\r\n', 'dijawab', 'salah', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1263, 244, 26, 3, 'Perintah linux debian untuk masuk ke root ( super user ) adalah â€¦\r\n', ' Nano\r\n', 'su\r\n', ' rc.local\r\n', ' restart\r\n', ' sysctl\r\n', 'su\r\n', 'su\r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1264, 244, 45, 4, 'lapisan yang berfungsi untuk mengatur jalur pengiriman data adalahâ€¦\r\n', 'physical\r\n', 'data link\r\n', 'network\r\n', 'transport\r\n', 'session\r\n', 'network\r\n', 'data link\r\n', 'dijawab', 'salah', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1265, 244, 20, 5, 'Aplikasi yang digunakan dalam mail server untuk mengirim surat adalah\r\n', 'Courier-Pop\r\n', 'Postfix\r\n', 'Courier-imap\r\n', 'Squirrelmail\r\n', 'FTP\r\n', 'Courier-imap\r\n', 'Courier-Pop\r\n', 'dijawab', 'salah', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1266, 244, 37, 6, 'DNS merupakan singkatan dari \r\n', 'Dynamic name service\r\n', 'domain name service\r\n', 'domain name system\r\n', 'dynamic name server\r\n', 'domain name static\r\n', 'domain name system\r\n', 'domain name system\r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1267, 244, 29, 7, 'fungsi swapoff ialahâ€¦.\r\n', 'enable swap\r\n', 'mendisable swap \r\n', 'melihat nama host \r\n', 'restart\r\n', 'power off \r\n', 'mendisable swap \r\n', 'mendisable swap \r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1268, 244, 40, 8, 'sebuah workstation komputer yang dijadikan pusat untuk mengatur semua printer yang terhubung melalui networking yaituâ€¦.\r\n', 'samba server\r\n', 'document IT\r\n', 'Printer server \r\n', 'file server\r\n', 'protocol NET BEUI\r\n', 'Printer server \r\n', 'samba server\r\n', 'dijawab', 'salah', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1269, 244, 33, 9, 'UDP (User Datagram Protokol ) adalah protokol sejenis dengan TCP yangâ€¦\r\n', 'Connectionless\r\n', 'Authorities\r\n', 'Oriented \r\n', 'Connectionpass\r\n', 'Dynamic Host \r\n', 'Connectionless\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1270, 244, 25, 10, 'perintah yang digunakan untuk mengedit pada linux server adalah â€¦\r\n', ' Nano\r\n', ' /etc/\r\n', ' /networking/\r\n', 'restart\r\n', ' Server\r\n', ' Nano\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1271, 244, 39, 11, 'Surat yg berbentuk elektronik dan dikirim dgn jaringan internet disebut...\r\n', 'E-mail\r\n', 'MIRC\r\n', 'Telnet\r\n', 'Chatting\r\n', 'Sending\r\n', 'E-mail\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1272, 244, 41, 12, 'Program bantu yang memberikan interface model web untuk mengandministrasi samba adalah..\r\n', 'smb client\r\n', 'smb passwd\r\n', 'smb status\r\n', '.smb tar\r\n', 'swat\r\n', 'swat\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1273, 244, 57, 13, 'Salah satu elemen DHCP pada jawaban di bawah ini adalah\r\n', 'Dhcp server\r\n', 'DHCP client\r\n', 'DHCP Scope\r\n', 'DHCP Koneksi\r\n', 'DHCP Ruter\r\n', 'DHCP Scope\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1274, 244, 54, 14, 'FTP adalah singkatan dariâ€¦?\r\n', 'File Transfer Protokol\r\n', 'File Transfer pro/kontra\r\n', 'File Transfeeer Protokol\r\n', 'File Transfer poroporo\r\n', 'Semua jawaban benar\r\n', 'File Transfer Protokol\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1275, 244, 24, 15, 'Clear digunakan untuk\r\n', 'membersihkan sampah\r\n', 'menghapuskan semua data\r\n', 'membersihkan tampilan\r\n', 'menghapus aplikasi\r\n', 'menyelesaikan misi\r\n', 'membersihkan tampilan\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1276, 244, 32, 16, 'Protokol umum yang sering digunakan oleh mailserver adalah, kecualiâ€¦\r\n', 'SMTP\r\n', 'POP3\r\n', 'IMAP \r\n', 'TCP Atau IP\r\n', 'IPCONFIG\r\n', 'TCP Atau IP\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1277, 244, 17, 17, 'printah yang digunakan untuk mengecek koneksi internet di linux adalahâ€¦\r\n', 'if config\r\n', 'ip\r\n', 'rc. local\r\n', 'dx diag\r\n', 'ping\r\n', 'ping\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1278, 244, 19, 18, 'Server yang bertugas melayani surat menyurat elektronik adalahâ€¦\r\n', 'Mail Server\r\n', 'DHCP Server\r\n', 'DNS Server\r\n', 'FTP Server\r\n', 'Proxy Server\r\n', 'Mail Server\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1279, 244, 60, 19, 'layanan web server menggunakan paket', 'web server', 'dns', 'apache2', 'postfix', 'courier', 'apache2', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1280, 244, 23, 20, 'perintah yang digunakan untuk melihat direktori pada linux adalah\r\n', 'dir', 'mkdir', 'nano', 'ls', 'pico', 'ls', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1281, 244, 46, 21, 'lapisan yang berfungsi untuk mrngkonversi data yaitu..\r\n', 'physical\r\n', 'data link\r\n', 'session\r\n', 'presentation\r\n', 'application\r\n', 'presentation\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1282, 244, 50, 22, 'perintah untuk menguji koneksi jaringan di linux adalah\r\n', 'Is\r\n', 'ping\r\n', 'trace\r\n', 'tes\r\n', 'ifconfig\r\n', 'ping\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1283, 244, 8, 23, 'Salah satu aplikasi pengelolaan DNS pada debian adalah...', 'DNS3\r\n', 'Bind9\r\n', 'VSFTPD\r\n', 'Squid\r\n', 'Samba\r\n', 'Bind9\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1284, 244, 31, 24, 'Protokol TCP/IP berhubungan dengan pengguna aplikasi yang berguna untuk terminal maya jarak jauhâ€¦\r\n', 'HTTP\r\n', 'FTP\r\n', 'SMPTP\r\n', 'TELNET \r\n', 'UDP\r\n', 'TELNET \r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1285, 244, 18, 25, 'Dibawah ini yang merupakan perangkat wan adalah, kecuali\r\n', 'Hub\r\n', 'Modem\r\n', 'Repester\r\n', 'Router\r\n', 'Bridge\r\n', 'Bridge\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1286, 244, 59, 26, 'untuk mengupdate repository ke internet, kita mengkonfigurasi file', '/etc/network/interfaces', '/etc/network/repository', '/etc/apt/sources', '/etc/apt/sources.list', '/etc/apt/source', '/etc/apt/sources.list', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1287, 244, 5, 27, 'Digunakan untuk transfer file berupa download dan upload merupakan pengertian dariâ€¦\r\n', 'Samba\r\n', 'FTP\r\n', 'Mail\r\n', 'Squerrelmail\r\n', 'Roundcube\r\n', 'FTP\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1288, 244, 42, 28, 'Menurut referensi OSI layer atau lapisan protokol berjumlah\r\n', '3\r\n', '4\r\n', '5\r\n', '7\r\n', '6', '7\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1289, 244, 49, 29, 'command menambahkan dvd baru adalah\r\n', 'Apt-cdrom add\r\n', 'Apt-get install\r\n', 'Apt-get add\r\n', 'Apt-dhcp\r\n', 'Apt-get install cdrom\r\n', 'Apt-cdrom add\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1290, 244, 52, 30, 'untuk menginstall paket software di debian linux menggunakan perintah..\r\n', 'Apt-cdrom add\r\n', 'index cd\r\n', 'Apt-get update\r\n', 'Apt-get install\r\n', 'Apt-get uninstall\r\n', 'Apt-get install\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1291, 244, 56, 31, 'yang termasuksistem operasi open source adalahâ€¦\r\n', 'Linux\r\n', 'Windows\r\n', 'DOS\r\n', 'Macintosh\r\n', 'Unix\r\n', 'Linux\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1292, 244, 3, 32, 'DNS biasa digunakan pada aplikasi yang terhubung ke...', 'E-mail\r\n', 'Modem\r\n', 'Web server\r\n', 'Internet \r\n', 'Mail server\r\n', 'Internet \r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1293, 244, 35, 33, 'Jika suatu komputer memiliki sebuah alamat ip yaitu 192.168.10.1, maka network nya adalahâ€¦\r\n', '192.168.10.1\r\n', '192.168.10.0\r\n', '255.255.255.0\r\n', '255.255.255.252\r\n', '192.168.10.2\r\n', '192.168.10.0\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1294, 244, 51, 34, 'sebuah layanan server yang berfungsi memberikan alamat ip secara otomatis ke client yang terhubung ke jaringan adalah..\r\n', 'proxy server\r\n', 'web server\r\n', 'dhcp server\r\n', 'dns server\r\n', 'database server\r\n', 'dhcp server\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1295, 244, 36, 35, '192.168.10.1 mempunyai sebuah netmask yaitu..\r\n', '255.255.255.0\r\n', '255.255.255.252\r\n', '192.168.10.0\r\n', '192.168.10.1\r\n', '192.168.10.2\r\n', '255.255.255.0\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1296, 244, 15, 36, 'perintah init 6 digunakan untuk...\r\n', 'berpindah direktori\r\n', 'melihat isi direktori\r\n', 'restart\r\n', 'shut down\r\n', 'shutdown setelah 6 detik\r\n', 'restart\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1297, 244, 2, 37, 'IP address 12.10.10.1 adalah ip kelas...\r\n', 'A\r\n', 'B\r\n', 'C\r\n', 'Private\r\n', 'Jawaban A dan E benar\r\n', 'A\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1298, 244, 47, 38, 'Secara umum jaringan komputer terdiri dari dibawah ini kecualiâ€¦\r\n', 'Local area network\r\n', 'metropolitan area network\r\n', 'radio area network\r\n', 'wide area network\r\n', 'internet\r\n', 'radio area network\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1299, 244, 30, 39, 'berikut perintah dasar linux, kecuali \r\n', 'CD\r\n', 'MV\r\n', 'enter\r\n', 'cat\r\n', 'CP\r\n', 'enter\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1300, 244, 58, 40, 'DHCP yang berfungsi sebagai tambahan pengaturan alamat ip yaitu\r\n', 'DHCP Scope\r\n', 'DHCP client\r\n', 'DHCP option\r\n', 'DHCP Koneksi\r\n', 'DHCP router\r\n', 'DHCP option\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1301, 244, 48, 41, 'tugas mail server adalahâ€¦\r\n', 'melayani surat menyurat\r\n', 'melayani pengiriman barang\r\n', 'melayani pengiriman data\r\n', 'melayani pengiriman paket\r\n', 'melayani  pengiriman suara\r\n', 'melayani surat menyurat\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1302, 244, 21, 42, 'server terdiri dari 2 komponen utama antara lainâ€¦\r\n', 'software dan brainware\r\n', 'software dan protocol\r\n', 'software dan hardware\r\n', 'software dan TCP\r\n', 'semua salah\r\n', 'software dan hardware\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1303, 244, 9, 43, 'kekurangan DNS yaitu...', 'Berbayar \r\n', 'Fleksibel\r\n', 'Kompatibel \r\n', 'Mudah \r\n', 'Gratis\r\n', 'Berbayar \r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1304, 244, 43, 44, 'Pada pemasangan kabel straight, pin yang digunakan untuk menerima atau receiving data adalah\r\n', ' 1 dan 2\r\n', '6 dan 8\r\n', '4 dan 5\r\n', ' 3 dan 6\r\n', '3 dan 8\r\n', ' 3 dan 6\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1305, 244, 28, 45, 'Simbol prompt yang menandakan bahwa bahwa seseorang login sebagai user biasa pada Linux berbasis text adalahâ€¦\r\n', '%\r\n', '&\r\n', '$\r\n', '#\r\n', '@\r\n', '$\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1306, 244, 53, 46, 'File yang berisi setting interface jaringan di debian text adalah\r\n', '/etc/init.d/networking\r\n', '/etc/bind/bind.conf\r\n', '/etc/network/eth0.conf\r\n', '/etc/network/interface\r\n', '/etc/network/interfaces\r\n', '/etc/network/interfaces\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1307, 244, 1, 47, 'apa kepanjangan DHCP...\r\n', 'Dynamic Host Control Protocol\r\n', 'Domain Hert Control Protocol\r\n', 'Domain Hert Central Protocol\r\n', 'Domain Host Control Protocol\r\n', 'Dynamic hert Control Protocol\r\n', 'Dynamic Host Control Protocol\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1308, 244, 7, 48, 'Layanan yang secara otomatis memberikan no IP kepada komputer yang memintanya adalah...\r\n', 'TCP\r\n', 'Server\r\n', 'Konfigurasi\r\n', 'Statis\r\n', 'DHCP\r\n', 'DHCP\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1309, 244, 27, 49, 'Dua hal penting dalam FTP adalahâ€¦\r\n', 'DHCP Server & FTP Client\r\n', 'DHCP server & FTP Server\r\n', 'FTP Server & DHCP Client\r\n', 'FTP Server & DNS Client\r\n', 'FTP Server & FTP Client\r\n', 'FTP Server & FTP Client\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1310, 244, 4, 50, 'Komputer yang meminta no IP disebut...\r\n', 'DHCP Server\r\n', 'DHCP Client\r\n', 'Statis\r\n', 'TCP\r\n', 'Server\r\n', 'DHCP Client\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1311, 244, 6, 51, 'Aplikasi untuk sharing sumberdaya seperti file, folder, printer harddisk dan sebagainya merupakan pengertian dariâ€¦\r\n', 'Samba\r\n', 'FTP\r\n', 'Mail\r\n', 'Squerrelmail\r\n', 'Roundcube\r\n', 'Samba\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1312, 244, 22, 52, 'server adalahâ€¦\r\n', 'suatu perantara agar terhubung\r\n', 'suatu jenis os yang memungkinkan pengguna untuk pelajar\r\n', 'suatu perangkat jaringan yang memberikan layanan terhadap pengguna\r\n', 'suatu perangkat jaringan yang menjadikan perantara\r\n', 'sejenis sistem operasi jaringan\r\n', 'suatu perangkat jaringan yang memberikan layanan terhadap pengguna\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1313, 244, 38, 53, 'Host ID untuk IP Adrress kelas C adalahâ€¦.\r\n', '12 bit terakhir\r\n', '18 bit terakhir\r\n', '8 bit terakhir\r\n', '24 bit terakhir\r\n', '4 bit terakhir\r\n', '8 bit terakhir\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1314, 244, 14, 54, 'Batas waktu penyewaan alamat IP yang diberikan kepada DHCP client oleh DHCP server disebutâ€¦\r\n', 'DHCP Server\r\n', 'DHCP scope\r\n', 'DHCP option\r\n', 'DHCP lease\r\n', 'DHCP client\r\n', 'DHCP lease\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1315, 244, 13, 55, 'Alamat IP yang dapat disewakan kepada DHCP client di sebut...\r\n', 'DHCP Server\r\n', 'DHCP scope\r\n', 'DHCP option\r\n', 'DHCP lease\r\n', 'DHCP client\r\n', 'DHCP scope\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1316, 244, 16, 56, 'perintah killall digunakan untuk...\r\n', 'mematikan komputer\r\n', 'shutdown\r\n', 'mematikan aplikasi yang running\r\n', 'mematikan koneksi internet\r\n', 'membunuh semua virus\r\n', 'mematikan aplikasi yang running\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1317, 244, 10, 57, 'DNS bisa digunakan pada aplikasi yang terhubung ke...', 'Internet\r\n', 'Domain\r\n', 'Host \r\n', 'Server\r\n', 'Login\r\n', 'Internet\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1318, 244, 11, 58, 'Untuk bisa login ke Server FTP kita bisa menggunakan mode...\r\n', 'Trunk\r\n', 'Allowed Trunk\r\n', 'teks\r\n', 'Teks dan GUI\r\n', 'Teks Trunk\r\n', 'Teks dan GUI\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1319, 244, 12, 59, 'Contoh aplikasi FTP client antara lain...', 'SmartFtp\r\n', 'Wuftpd\r\n', 'Vsftpd\r\n', 'DNS\r\n', 'DHCP\r\n', 'SmartFtp\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1320, 244, 34, 60, 'Sebuah program aplikasi yang bertugas untuk menerima permintaan paket dan memberinya balasan berupa paket yang di inginkan client disebut..\r\n', 'Client \r\n', 'Peer to peer \r\n', 'Client-server \r\n', 'Server \r\n', 'IPCONFIG\r\n', 'Server \r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1381, 258, 41, 1, 'Program bantu yang memberikan interface model web untuk mengandministrasi samba adalah..\r\n', 'smb client\r\n', 'smb passwd\r\n', 'smb status\r\n', '.smb tar\r\n', 'swat\r\n', 'swat\r\n', 'smb status\r\n', 'dijawab', 'salah', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1382, 258, 44, 2, 'seperangkat aturan, atau suatu perjanjian yang mengatur/mendeterminasikan format dan transmisi data yang dilakukan disebut dengan..\r\n', 'protokol\r\n', 'ISO\r\n', 'OSI\r\n', 'TCP/IP\r\n', 'LAYER\r\n', 'protokol\r\n', 'protokol\r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1383, 258, 14, 3, 'Batas waktu penyewaan alamat IP yang diberikan kepada DHCP client oleh DHCP server disebutâ€¦\r\n', 'DHCP Server\r\n', 'DHCP scope\r\n', 'DHCP option\r\n', 'DHCP lease\r\n', 'DHCP client\r\n', 'DHCP lease\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1384, 258, 58, 4, 'DHCP yang berfungsi sebagai tambahan pengaturan alamat ip yaitu\r\n', 'DHCP Scope\r\n', 'DHCP client\r\n', 'DHCP option\r\n', 'DHCP Koneksi\r\n', 'DHCP router\r\n', 'DHCP option\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1385, 258, 36, 5, '192.168.10.1 mempunyai sebuah netmask yaitu..\r\n', '255.255.255.0\r\n', '255.255.255.252\r\n', '192.168.10.0\r\n', '192.168.10.1\r\n', '192.168.10.2\r\n', '255.255.255.0\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1386, 258, 31, 6, 'Protokol TCP/IP berhubungan dengan pengguna aplikasi yang berguna untuk terminal maya jarak jauhâ€¦\r\n', 'HTTP\r\n', 'FTP\r\n', 'SMPTP\r\n', 'TELNET \r\n', 'UDP\r\n', 'TELNET \r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1387, 258, 22, 7, 'server adalahâ€¦\r\n', 'suatu perantara agar terhubung\r\n', 'suatu jenis os yang memungkinkan pengguna untuk pelajar\r\n', 'suatu perangkat jaringan yang memberikan layanan terhadap pengguna\r\n', 'suatu perangkat jaringan yang menjadikan perantara\r\n', 'sejenis sistem operasi jaringan\r\n', 'suatu perangkat jaringan yang memberikan layanan terhadap pengguna\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1388, 258, 43, 8, 'Pada pemasangan kabel straight, pin yang digunakan untuk menerima atau receiving data adalah\r\n', ' 1 dan 2\r\n', '6 dan 8\r\n', '4 dan 5\r\n', ' 3 dan 6\r\n', '3 dan 8\r\n', ' 3 dan 6\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1389, 258, 60, 9, 'layanan web server menggunakan paket', 'web server', 'dns', 'apache2', 'postfix', 'courier', 'apache2', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1390, 258, 1, 10, 'apa kepanjangan DHCP...\r\n', 'Dynamic Host Control Protocol\r\n', 'Domain Hert Control Protocol\r\n', 'Domain Hert Central Protocol\r\n', 'Domain Host Control Protocol\r\n', 'Dynamic hert Control Protocol\r\n', 'Dynamic Host Control Protocol\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1391, 258, 23, 11, 'perintah yang digunakan untuk melihat direktori pada linux adalah\r\n', 'dir', 'mkdir', 'nano', 'ls', 'pico', 'ls', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1392, 258, 2, 12, 'IP address 12.10.10.1 adalah ip kelas...\r\n', 'A\r\n', 'B\r\n', 'C\r\n', 'Private\r\n', 'Jawaban A dan E benar\r\n', 'A\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1393, 258, 34, 13, 'Sebuah program aplikasi yang bertugas untuk menerima permintaan paket dan memberinya balasan berupa paket yang di inginkan client disebut..\r\n', 'Client \r\n', 'Peer to peer \r\n', 'Client-server \r\n', 'Server \r\n', 'IPCONFIG\r\n', 'Server \r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1394, 258, 30, 14, 'berikut perintah dasar linux, kecuali \r\n', 'CD\r\n', 'MV\r\n', 'enter\r\n', 'cat\r\n', 'CP\r\n', 'enter\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1395, 258, 7, 15, 'Layanan yang secara otomatis memberikan no IP kepada komputer yang memintanya adalah...\r\n', 'TCP\r\n', 'Server\r\n', 'Konfigurasi\r\n', 'Statis\r\n', 'DHCP\r\n', 'DHCP\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1396, 258, 49, 16, 'command menambahkan dvd baru adalah\r\n', 'Apt-cdrom add\r\n', 'Apt-get install\r\n', 'Apt-get add\r\n', 'Apt-dhcp\r\n', 'Apt-get install cdrom\r\n', 'Apt-cdrom add\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1397, 258, 37, 17, 'DNS merupakan singkatan dari \r\n', 'Dynamic name service\r\n', 'domain name service\r\n', 'domain name system\r\n', 'dynamic name server\r\n', 'domain name static\r\n', 'domain name system\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1398, 258, 9, 18, 'kekurangan DNS yaitu...', 'Berbayar \r\n', 'Fleksibel\r\n', 'Kompatibel \r\n', 'Mudah \r\n', 'Gratis\r\n', 'Berbayar \r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1399, 258, 42, 19, 'Menurut referensi OSI layer atau lapisan protokol berjumlah\r\n', '3\r\n', '4\r\n', '5\r\n', '7\r\n', '6', '7\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1400, 258, 59, 20, 'untuk mengupdate repository ke internet, kita mengkonfigurasi file', '/etc/network/interfaces', '/etc/network/repository', '/etc/apt/sources', '/etc/apt/sources.list', '/etc/apt/source', '/etc/apt/sources.list', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1401, 258, 40, 21, 'sebuah workstation komputer yang dijadikan pusat untuk mengatur semua printer yang terhubung melalui networking yaituâ€¦.\r\n', 'samba server\r\n', 'document IT\r\n', 'Printer server \r\n', 'file server\r\n', 'protocol NET BEUI\r\n', 'Printer server \r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1402, 258, 53, 22, 'File yang berisi setting interface jaringan di debian text adalah\r\n', '/etc/init.d/networking\r\n', '/etc/bind/bind.conf\r\n', '/etc/network/eth0.conf\r\n', '/etc/network/interface\r\n', '/etc/network/interfaces\r\n', '/etc/network/interfaces\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1403, 258, 17, 23, 'printah yang digunakan untuk mengecek koneksi internet di linux adalahâ€¦\r\n', 'if config\r\n', 'ip\r\n', 'rc. local\r\n', 'dx diag\r\n', 'ping\r\n', 'ping\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1404, 258, 46, 24, 'lapisan yang berfungsi untuk mrngkonversi data yaitu..\r\n', 'physical\r\n', 'data link\r\n', 'session\r\n', 'presentation\r\n', 'application\r\n', 'presentation\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1405, 258, 57, 25, 'Salah satu elemen DHCP pada jawaban di bawah ini adalah\r\n', 'Dhcp server\r\n', 'DHCP client\r\n', 'DHCP Scope\r\n', 'DHCP Koneksi\r\n', 'DHCP Ruter\r\n', 'DHCP Scope\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1406, 258, 33, 26, 'UDP (User Datagram Protokol ) adalah protokol sejenis dengan TCP yangâ€¦\r\n', 'Connectionless\r\n', 'Authorities\r\n', 'Oriented \r\n', 'Connectionpass\r\n', 'Dynamic Host \r\n', 'Connectionless\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1407, 258, 3, 27, 'DNS biasa digunakan pada aplikasi yang terhubung ke...', 'E-mail\r\n', 'Modem\r\n', 'Web server\r\n', 'Internet \r\n', 'Mail server\r\n', 'Internet \r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1408, 258, 5, 28, 'Digunakan untuk transfer file berupa download dan upload merupakan pengertian dariâ€¦\r\n', 'Samba\r\n', 'FTP\r\n', 'Mail\r\n', 'Squerrelmail\r\n', 'Roundcube\r\n', 'FTP\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1409, 258, 15, 29, 'perintah init 6 digunakan untuk...\r\n', 'berpindah direktori\r\n', 'melihat isi direktori\r\n', 'restart\r\n', 'shut down\r\n', 'shutdown setelah 6 detik\r\n', 'restart\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1410, 258, 50, 30, 'perintah untuk menguji koneksi jaringan di linux adalah\r\n', 'Is\r\n', 'ping\r\n', 'trace\r\n', 'tes\r\n', 'ifconfig\r\n', 'ping\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1411, 258, 10, 31, 'DNS bisa digunakan pada aplikasi yang terhubung ke...', 'Internet\r\n', 'Domain\r\n', 'Host \r\n', 'Server\r\n', 'Login\r\n', 'Internet\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1412, 258, 24, 32, 'Clear digunakan untuk\r\n', 'membersihkan sampah\r\n', 'menghapuskan semua data\r\n', 'membersihkan tampilan\r\n', 'menghapus aplikasi\r\n', 'menyelesaikan misi\r\n', 'membersihkan tampilan\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1413, 258, 47, 33, 'Secara umum jaringan komputer terdiri dari dibawah ini kecualiâ€¦\r\n', 'Local area network\r\n', 'metropolitan area network\r\n', 'radio area network\r\n', 'wide area network\r\n', 'internet\r\n', 'radio area network\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1414, 258, 21, 34, 'server terdiri dari 2 komponen utama antara lainâ€¦\r\n', 'software dan brainware\r\n', 'software dan protocol\r\n', 'software dan hardware\r\n', 'software dan TCP\r\n', 'semua salah\r\n', 'software dan hardware\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1415, 258, 6, 35, 'Aplikasi untuk sharing sumberdaya seperti file, folder, printer harddisk dan sebagainya merupakan pengertian dariâ€¦\r\n', 'Samba\r\n', 'FTP\r\n', 'Mail\r\n', 'Squerrelmail\r\n', 'Roundcube\r\n', 'Samba\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1416, 258, 4, 36, 'Komputer yang meminta no IP disebut...\r\n', 'DHCP Server\r\n', 'DHCP Client\r\n', 'Statis\r\n', 'TCP\r\n', 'Server\r\n', 'DHCP Client\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1417, 258, 48, 37, 'tugas mail server adalahâ€¦\r\n', 'melayani surat menyurat\r\n', 'melayani pengiriman barang\r\n', 'melayani pengiriman data\r\n', 'melayani pengiriman paket\r\n', 'melayani  pengiriman suara\r\n', 'melayani surat menyurat\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1418, 258, 8, 38, 'Salah satu aplikasi pengelolaan DNS pada debian adalah...', 'DNS3\r\n', 'Bind9\r\n', 'VSFTPD\r\n', 'Squid\r\n', 'Samba\r\n', 'Bind9\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1419, 258, 11, 39, 'Untuk bisa login ke Server FTP kita bisa menggunakan mode...\r\n', 'Trunk\r\n', 'Allowed Trunk\r\n', 'teks\r\n', 'Teks dan GUI\r\n', 'Teks Trunk\r\n', 'Teks dan GUI\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1420, 258, 29, 40, 'fungsi swapoff ialahâ€¦.\r\n', 'enable swap\r\n', 'mendisable swap \r\n', 'melihat nama host \r\n', 'restart\r\n', 'power off \r\n', 'mendisable swap \r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1421, 258, 13, 41, 'Alamat IP yang dapat disewakan kepada DHCP client di sebut...\r\n', 'DHCP Server\r\n', 'DHCP scope\r\n', 'DHCP option\r\n', 'DHCP lease\r\n', 'DHCP client\r\n', 'DHCP scope\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1422, 258, 51, 42, 'sebuah layanan server yang berfungsi memberikan alamat ip secara otomatis ke client yang terhubung ke jaringan adalah..\r\n', 'proxy server\r\n', 'web server\r\n', 'dhcp server\r\n', 'dns server\r\n', 'database server\r\n', 'dhcp server\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1423, 258, 28, 43, 'Simbol prompt yang menandakan bahwa bahwa seseorang login sebagai user biasa pada Linux berbasis text adalahâ€¦\r\n', '%\r\n', '&\r\n', '$\r\n', '#\r\n', '@\r\n', '$\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1424, 258, 45, 44, 'lapisan yang berfungsi untuk mengatur jalur pengiriman data adalahâ€¦\r\n', 'physical\r\n', 'data link\r\n', 'network\r\n', 'transport\r\n', 'session\r\n', 'network\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1425, 258, 12, 45, 'Contoh aplikasi FTP client antara lain...', 'SmartFtp\r\n', 'Wuftpd\r\n', 'Vsftpd\r\n', 'DNS\r\n', 'DHCP\r\n', 'SmartFtp\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1426, 258, 35, 46, 'Jika suatu komputer memiliki sebuah alamat ip yaitu 192.168.10.1, maka network nya adalahâ€¦\r\n', '192.168.10.1\r\n', '192.168.10.0\r\n', '255.255.255.0\r\n', '255.255.255.252\r\n', '192.168.10.2\r\n', '192.168.10.0\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67');
INSERT INTO `tb_jawab` (`id`, `id_siswa`, `id_soal`, `soal_ke`, `soal`, `pil_a`, `pil_b`, `pil_c`, `pil_d`, `pil_e`, `kunci`, `jawaban`, `status`, `status2`, `status3`, `token`) VALUES
(1427, 258, 18, 47, 'Dibawah ini yang merupakan perangkat wan adalah, kecuali\r\n', 'Hub\r\n', 'Modem\r\n', 'Repester\r\n', 'Router\r\n', 'Bridge\r\n', 'Bridge\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1428, 258, 55, 48, 'Radio siaran termasuk jenis komunikasiâ€¦\r\n', 'suara\r\n', 'Radio\r\n', 'telpon\r\n', 'data\r\n', 'audio\r\n', 'suara\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1429, 258, 20, 49, 'Aplikasi yang digunakan dalam mail server untuk mengirim surat adalah\r\n', 'Courier-Pop\r\n', 'Postfix\r\n', 'Courier-imap\r\n', 'Squirrelmail\r\n', 'FTP\r\n', 'Courier-imap\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1430, 258, 39, 50, 'Surat yg berbentuk elektronik dan dikirim dgn jaringan internet disebut...\r\n', 'E-mail\r\n', 'MIRC\r\n', 'Telnet\r\n', 'Chatting\r\n', 'Sending\r\n', 'E-mail\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1431, 258, 19, 51, 'Server yang bertugas melayani surat menyurat elektronik adalahâ€¦\r\n', 'Mail Server\r\n', 'DHCP Server\r\n', 'DNS Server\r\n', 'FTP Server\r\n', 'Proxy Server\r\n', 'Mail Server\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1432, 258, 52, 52, 'untuk menginstall paket software di debian linux menggunakan perintah..\r\n', 'Apt-cdrom add\r\n', 'index cd\r\n', 'Apt-get update\r\n', 'Apt-get install\r\n', 'Apt-get uninstall\r\n', 'Apt-get install\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1433, 258, 27, 53, 'Dua hal penting dalam FTP adalahâ€¦\r\n', 'DHCP Server & FTP Client\r\n', 'DHCP server & FTP Server\r\n', 'FTP Server & DHCP Client\r\n', 'FTP Server & DNS Client\r\n', 'FTP Server & FTP Client\r\n', 'FTP Server & FTP Client\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1434, 258, 25, 54, 'perintah yang digunakan untuk mengedit pada linux server adalah â€¦\r\n', ' Nano\r\n', ' /etc/\r\n', ' /networking/\r\n', 'restart\r\n', ' Server\r\n', ' Nano\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1435, 258, 26, 55, 'Perintah linux debian untuk masuk ke root ( super user ) adalah â€¦\r\n', ' Nano\r\n', 'su\r\n', ' rc.local\r\n', ' restart\r\n', ' sysctl\r\n', 'su\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1436, 258, 38, 56, 'Host ID untuk IP Adrress kelas C adalahâ€¦.\r\n', '12 bit terakhir\r\n', '18 bit terakhir\r\n', '8 bit terakhir\r\n', '24 bit terakhir\r\n', '4 bit terakhir\r\n', '8 bit terakhir\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1437, 258, 16, 57, 'perintah killall digunakan untuk...\r\n', 'mematikan komputer\r\n', 'shutdown\r\n', 'mematikan aplikasi yang running\r\n', 'mematikan koneksi internet\r\n', 'membunuh semua virus\r\n', 'mematikan aplikasi yang running\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1438, 258, 56, 58, 'yang termasuksistem operasi open source adalahâ€¦\r\n', 'Linux\r\n', 'Windows\r\n', 'DOS\r\n', 'Macintosh\r\n', 'Unix\r\n', 'Linux\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1439, 258, 54, 59, 'FTP adalah singkatan dariâ€¦?\r\n', 'File Transfer Protokol\r\n', 'File Transfer pro/kontra\r\n', 'File Transfeeer Protokol\r\n', 'File Transfer poroporo\r\n', 'Semua jawaban benar\r\n', 'File Transfer Protokol\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1440, 258, 32, 60, 'Protokol umum yang sering digunakan oleh mailserver adalah, kecualiâ€¦\r\n', 'SMTP\r\n', 'POP3\r\n', 'IMAP \r\n', 'TCP Atau IP\r\n', 'IPCONFIG\r\n', 'TCP Atau IP\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1561, 239, 46, 1, 'lapisan yang berfungsi untuk mrngkonversi data yaitu..\r\n', 'physical\r\n', 'data link\r\n', 'session\r\n', 'presentation\r\n', 'application\r\n', 'presentation\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1562, 239, 4, 2, 'Komputer yang meminta no IP disebut...\r\n', 'DHCP Server\r\n', 'DHCP Client\r\n', 'Statis\r\n', 'TCP\r\n', 'Server\r\n', 'DHCP Client\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1563, 239, 50, 3, 'perintah untuk menguji koneksi jaringan di linux adalah\r\n', 'Is\r\n', 'ping\r\n', 'trace\r\n', 'tes\r\n', 'ifconfig\r\n', 'ping\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1564, 239, 28, 4, 'Simbol prompt yang menandakan bahwa bahwa seseorang login sebagai user biasa pada Linux berbasis text adalahâ€¦\r\n', '%\r\n', '&\r\n', '$\r\n', '#\r\n', '@\r\n', '$\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1565, 239, 53, 5, 'File yang berisi setting interface jaringan di debian text adalah\r\n', '/etc/init.d/networking\r\n', '/etc/bind/bind.conf\r\n', '/etc/network/eth0.conf\r\n', '/etc/network/interface\r\n', '/etc/network/interfaces\r\n', '/etc/network/interfaces\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1566, 239, 42, 6, 'Menurut referensi OSI layer atau lapisan protokol berjumlah\r\n', '3\r\n', '4\r\n', '5\r\n', '7\r\n', '6', '7\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1567, 239, 9, 7, 'kekurangan DNS yaitu...', 'Berbayar \r\n', 'Fleksibel\r\n', 'Kompatibel \r\n', 'Mudah \r\n', 'Gratis\r\n', 'Berbayar \r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1568, 239, 52, 8, 'untuk menginstall paket software di debian linux menggunakan perintah..\r\n', 'Apt-cdrom add\r\n', 'index cd\r\n', 'Apt-get update\r\n', 'Apt-get install\r\n', 'Apt-get uninstall\r\n', 'Apt-get install\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1569, 239, 49, 9, 'command menambahkan dvd baru adalah\r\n', 'Apt-cdrom add\r\n', 'Apt-get install\r\n', 'Apt-get add\r\n', 'Apt-dhcp\r\n', 'Apt-get install cdrom\r\n', 'Apt-cdrom add\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1570, 239, 38, 10, 'Host ID untuk IP Adrress kelas C adalahâ€¦.\r\n', '12 bit terakhir\r\n', '18 bit terakhir\r\n', '8 bit terakhir\r\n', '24 bit terakhir\r\n', '4 bit terakhir\r\n', '8 bit terakhir\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1571, 239, 60, 11, 'layanan web server menggunakan paket', 'web server', 'dns', 'apache2', 'postfix', 'courier', 'apache2', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1572, 239, 39, 12, 'Surat yg berbentuk elektronik dan dikirim dgn jaringan internet disebut...\r\n', 'E-mail\r\n', 'MIRC\r\n', 'Telnet\r\n', 'Chatting\r\n', 'Sending\r\n', 'E-mail\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1573, 239, 45, 13, 'lapisan yang berfungsi untuk mengatur jalur pengiriman data adalahâ€¦\r\n', 'physical\r\n', 'data link\r\n', 'network\r\n', 'transport\r\n', 'session\r\n', 'network\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1574, 239, 34, 14, 'Sebuah program aplikasi yang bertugas untuk menerima permintaan paket dan memberinya balasan berupa paket yang di inginkan client disebut..\r\n', 'Client \r\n', 'Peer to peer \r\n', 'Client-server \r\n', 'Server \r\n', 'IPCONFIG\r\n', 'Server \r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1575, 239, 30, 15, 'berikut perintah dasar linux, kecuali \r\n', 'CD\r\n', 'MV\r\n', 'enter\r\n', 'cat\r\n', 'CP\r\n', 'enter\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1576, 239, 41, 16, 'Program bantu yang memberikan interface model web untuk mengandministrasi samba adalah..\r\n', 'smb client\r\n', 'smb passwd\r\n', 'smb status\r\n', '.smb tar\r\n', 'swat\r\n', 'swat\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1577, 239, 6, 17, 'Aplikasi untuk sharing sumberdaya seperti file, folder, printer harddisk dan sebagainya merupakan pengertian dariâ€¦\r\n', 'Samba\r\n', 'FTP\r\n', 'Mail\r\n', 'Squerrelmail\r\n', 'Roundcube\r\n', 'Samba\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1578, 239, 27, 18, 'Dua hal penting dalam FTP adalahâ€¦\r\n', 'DHCP Server & FTP Client\r\n', 'DHCP server & FTP Server\r\n', 'FTP Server & DHCP Client\r\n', 'FTP Server & DNS Client\r\n', 'FTP Server & FTP Client\r\n', 'FTP Server & FTP Client\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1579, 239, 35, 19, 'Jika suatu komputer memiliki sebuah alamat ip yaitu 192.168.10.1, maka network nya adalahâ€¦\r\n', '192.168.10.1\r\n', '192.168.10.0\r\n', '255.255.255.0\r\n', '255.255.255.252\r\n', '192.168.10.2\r\n', '192.168.10.0\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1580, 239, 59, 20, 'untuk mengupdate repository ke internet, kita mengkonfigurasi file', '/etc/network/interfaces', '/etc/network/repository', '/etc/apt/sources', '/etc/apt/sources.list', '/etc/apt/source', '/etc/apt/sources.list', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1581, 239, 55, 21, 'Radio siaran termasuk jenis komunikasiâ€¦\r\n', 'suara\r\n', 'Radio\r\n', 'telpon\r\n', 'data\r\n', 'audio\r\n', 'suara\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1582, 239, 40, 22, 'sebuah workstation komputer yang dijadikan pusat untuk mengatur semua printer yang terhubung melalui networking yaituâ€¦.\r\n', 'samba server\r\n', 'document IT\r\n', 'Printer server \r\n', 'file server\r\n', 'protocol NET BEUI\r\n', 'Printer server \r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1583, 239, 17, 23, 'printah yang digunakan untuk mengecek koneksi internet di linux adalahâ€¦\r\n', 'if config\r\n', 'ip\r\n', 'rc. local\r\n', 'dx diag\r\n', 'ping\r\n', 'ping\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1584, 239, 16, 24, 'perintah killall digunakan untuk...\r\n', 'mematikan komputer\r\n', 'shutdown\r\n', 'mematikan aplikasi yang running\r\n', 'mematikan koneksi internet\r\n', 'membunuh semua virus\r\n', 'mematikan aplikasi yang running\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1585, 239, 12, 25, 'Contoh aplikasi FTP client antara lain...', 'SmartFtp\r\n', 'Wuftpd\r\n', 'Vsftpd\r\n', 'DNS\r\n', 'DHCP\r\n', 'SmartFtp\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1586, 239, 58, 26, 'DHCP yang berfungsi sebagai tambahan pengaturan alamat ip yaitu\r\n', 'DHCP Scope\r\n', 'DHCP client\r\n', 'DHCP option\r\n', 'DHCP Koneksi\r\n', 'DHCP router\r\n', 'DHCP option\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1587, 239, 11, 27, 'Untuk bisa login ke Server FTP kita bisa menggunakan mode...\r\n', 'Trunk\r\n', 'Allowed Trunk\r\n', 'teks\r\n', 'Teks dan GUI\r\n', 'Teks Trunk\r\n', 'Teks dan GUI\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1588, 239, 5, 28, 'Digunakan untuk transfer file berupa download dan upload merupakan pengertian dariâ€¦\r\n', 'Samba\r\n', 'FTP\r\n', 'Mail\r\n', 'Squerrelmail\r\n', 'Roundcube\r\n', 'FTP\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1589, 239, 29, 29, 'fungsi swapoff ialahâ€¦.\r\n', 'enable swap\r\n', 'mendisable swap \r\n', 'melihat nama host \r\n', 'restart\r\n', 'power off \r\n', 'mendisable swap \r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1590, 239, 47, 30, 'Secara umum jaringan komputer terdiri dari dibawah ini kecualiâ€¦\r\n', 'Local area network\r\n', 'metropolitan area network\r\n', 'radio area network\r\n', 'wide area network\r\n', 'internet\r\n', 'radio area network\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1591, 239, 48, 31, 'tugas mail server adalahâ€¦\r\n', 'melayani surat menyurat\r\n', 'melayani pengiriman barang\r\n', 'melayani pengiriman data\r\n', 'melayani pengiriman paket\r\n', 'melayani  pengiriman suara\r\n', 'melayani surat menyurat\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1592, 239, 8, 32, 'Salah satu aplikasi pengelolaan DNS pada debian adalah...', 'DNS3\r\n', 'Bind9\r\n', 'VSFTPD\r\n', 'Squid\r\n', 'Samba\r\n', 'Bind9\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1593, 239, 13, 33, 'Alamat IP yang dapat disewakan kepada DHCP client di sebut...\r\n', 'DHCP Server\r\n', 'DHCP scope\r\n', 'DHCP option\r\n', 'DHCP lease\r\n', 'DHCP client\r\n', 'DHCP scope\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1594, 239, 57, 34, 'Salah satu elemen DHCP pada jawaban di bawah ini adalah\r\n', 'Dhcp server\r\n', 'DHCP client\r\n', 'DHCP Scope\r\n', 'DHCP Koneksi\r\n', 'DHCP Ruter\r\n', 'DHCP Scope\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1595, 239, 19, 35, 'Server yang bertugas melayani surat menyurat elektronik adalahâ€¦\r\n', 'Mail Server\r\n', 'DHCP Server\r\n', 'DNS Server\r\n', 'FTP Server\r\n', 'Proxy Server\r\n', 'Mail Server\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1596, 239, 1, 36, 'apa kepanjangan DHCP...\r\n', 'Dynamic Host Control Protocol\r\n', 'Domain Hert Control Protocol\r\n', 'Domain Hert Central Protocol\r\n', 'Domain Host Control Protocol\r\n', 'Dynamic hert Control Protocol\r\n', 'Dynamic Host Control Protocol\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1597, 239, 31, 37, 'Protokol TCP/IP berhubungan dengan pengguna aplikasi yang berguna untuk terminal maya jarak jauhâ€¦\r\n', 'HTTP\r\n', 'FTP\r\n', 'SMPTP\r\n', 'TELNET \r\n', 'UDP\r\n', 'TELNET \r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1598, 239, 23, 38, 'perintah yang digunakan untuk melihat direktori pada linux adalah\r\n', 'dir', 'mkdir', 'nano', 'ls', 'pico', 'ls', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1599, 239, 36, 39, '192.168.10.1 mempunyai sebuah netmask yaitu..\r\n', '255.255.255.0\r\n', '255.255.255.252\r\n', '192.168.10.0\r\n', '192.168.10.1\r\n', '192.168.10.2\r\n', '255.255.255.0\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1600, 239, 26, 40, 'Perintah linux debian untuk masuk ke root ( super user ) adalah â€¦\r\n', ' Nano\r\n', 'su\r\n', ' rc.local\r\n', ' restart\r\n', ' sysctl\r\n', 'su\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1601, 239, 18, 41, 'Dibawah ini yang merupakan perangkat wan adalah, kecuali\r\n', 'Hub\r\n', 'Modem\r\n', 'Repester\r\n', 'Router\r\n', 'Bridge\r\n', 'Bridge\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1602, 239, 2, 42, 'IP address 12.10.10.1 adalah ip kelas...\r\n', 'A\r\n', 'B\r\n', 'C\r\n', 'Private\r\n', 'Jawaban A dan E benar\r\n', 'A\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1603, 239, 24, 43, 'Clear digunakan untuk\r\n', 'membersihkan sampah\r\n', 'menghapuskan semua data\r\n', 'membersihkan tampilan\r\n', 'menghapus aplikasi\r\n', 'menyelesaikan misi\r\n', 'membersihkan tampilan\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1604, 239, 32, 44, 'Protokol umum yang sering digunakan oleh mailserver adalah, kecualiâ€¦\r\n', 'SMTP\r\n', 'POP3\r\n', 'IMAP \r\n', 'TCP Atau IP\r\n', 'IPCONFIG\r\n', 'TCP Atau IP\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1605, 239, 25, 45, 'perintah yang digunakan untuk mengedit pada linux server adalah â€¦\r\n', ' Nano\r\n', ' /etc/\r\n', ' /networking/\r\n', 'restart\r\n', ' Server\r\n', ' Nano\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1606, 239, 15, 46, 'perintah init 6 digunakan untuk...\r\n', 'berpindah direktori\r\n', 'melihat isi direktori\r\n', 'restart\r\n', 'shut down\r\n', 'shutdown setelah 6 detik\r\n', 'restart\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1607, 239, 51, 47, 'sebuah layanan server yang berfungsi memberikan alamat ip secara otomatis ke client yang terhubung ke jaringan adalah..\r\n', 'proxy server\r\n', 'web server\r\n', 'dhcp server\r\n', 'dns server\r\n', 'database server\r\n', 'dhcp server\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1608, 239, 43, 48, 'Pada pemasangan kabel straight, pin yang digunakan untuk menerima atau receiving data adalah\r\n', ' 1 dan 2\r\n', '6 dan 8\r\n', '4 dan 5\r\n', ' 3 dan 6\r\n', '3 dan 8\r\n', ' 3 dan 6\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1609, 239, 7, 49, 'Layanan yang secara otomatis memberikan no IP kepada komputer yang memintanya adalah...\r\n', 'TCP\r\n', 'Server\r\n', 'Konfigurasi\r\n', 'Statis\r\n', 'DHCP\r\n', 'DHCP\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1610, 239, 37, 50, 'DNS merupakan singkatan dari \r\n', 'Dynamic name service\r\n', 'domain name service\r\n', 'domain name system\r\n', 'dynamic name server\r\n', 'domain name static\r\n', 'domain name system\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1611, 239, 3, 51, 'DNS biasa digunakan pada aplikasi yang terhubung ke...', 'E-mail\r\n', 'Modem\r\n', 'Web server\r\n', 'Internet \r\n', 'Mail server\r\n', 'Internet \r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1612, 239, 54, 52, 'FTP adalah singkatan dariâ€¦?\r\n', 'File Transfer Protokol\r\n', 'File Transfer pro/kontra\r\n', 'File Transfeeer Protokol\r\n', 'File Transfer poroporo\r\n', 'Semua jawaban benar\r\n', 'File Transfer Protokol\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1613, 239, 56, 53, 'yang termasuksistem operasi open source adalahâ€¦\r\n', 'Linux\r\n', 'Windows\r\n', 'DOS\r\n', 'Macintosh\r\n', 'Unix\r\n', 'Linux\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1614, 239, 33, 54, 'UDP (User Datagram Protokol ) adalah protokol sejenis dengan TCP yangâ€¦\r\n', 'Connectionless\r\n', 'Authorities\r\n', 'Oriented \r\n', 'Connectionpass\r\n', 'Dynamic Host \r\n', 'Connectionless\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1615, 239, 22, 55, 'server adalahâ€¦\r\n', 'suatu perantara agar terhubung\r\n', 'suatu jenis os yang memungkinkan pengguna untuk pelajar\r\n', 'suatu perangkat jaringan yang memberikan layanan terhadap pengguna\r\n', 'suatu perangkat jaringan yang menjadikan perantara\r\n', 'sejenis sistem operasi jaringan\r\n', 'suatu perangkat jaringan yang memberikan layanan terhadap pengguna\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1616, 239, 44, 56, 'seperangkat aturan, atau suatu perjanjian yang mengatur/mendeterminasikan format dan transmisi data yang dilakukan disebut dengan..\r\n', 'protokol\r\n', 'ISO\r\n', 'OSI\r\n', 'TCP/IP\r\n', 'LAYER\r\n', 'protokol\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1617, 239, 14, 57, 'Batas waktu penyewaan alamat IP yang diberikan kepada DHCP client oleh DHCP server disebutâ€¦\r\n', 'DHCP Server\r\n', 'DHCP scope\r\n', 'DHCP option\r\n', 'DHCP lease\r\n', 'DHCP client\r\n', 'DHCP lease\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1618, 239, 10, 58, 'DNS bisa digunakan pada aplikasi yang terhubung ke...', 'Internet\r\n', 'Domain\r\n', 'Host \r\n', 'Server\r\n', 'Login\r\n', 'Internet\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1619, 239, 21, 59, 'server terdiri dari 2 komponen utama antara lainâ€¦\r\n', 'software dan brainware\r\n', 'software dan protocol\r\n', 'software dan hardware\r\n', 'software dan TCP\r\n', 'semua salah\r\n', 'software dan hardware\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(1620, 239, 20, 60, 'Aplikasi yang digunakan dalam mail server untuk mengirim surat adalah\r\n', 'Courier-Pop\r\n', 'Postfix\r\n', 'Courier-imap\r\n', 'Squirrelmail\r\n', 'FTP\r\n', 'Courier-imap\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2453, 245, 111, 53, 'Kepanjangan dari IBMC\r\n', 'A.Indonesian Beach ManiaC\r\n', 'B.Indonesia Bandung-Makassar Campus\r\n', 'C.International Bussines Machines Corporation\r\n', 'D. International Biografi Machines Corp\r\n', 'E.Ikatan Bawang Mendunia Cringe\r\n', 'C.International Bussines Machines Corporation\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2452, 245, 90, 52, 'Pada tahun-tahun terakhir aplikasi komunikasi data menjadi umum termasuk diantaranya pengecekan kartu kredit secara online, pemindahan dana dari satu bank ke bank lainnya secara elektronik dengan memanfaatkan protocolerâ€¦â€¦\r\n', 'A. X.30\r\n', 'B. X.25\r\n', 'C. X.27\r\n', 'D. X.32\r\n', 'E. X.16\r\n', 'B. X.25\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2451, 245, 94, 51, 'dibawah ini yang bukan termasuik sharing file adalah\r\n', ' A . Sharing video\r\n', 'B.Sharing Gambar\r\n', 'C.Sharing musik\r\n', 'D.Sharing Program\r\n', 'E.Sharing Harddisk\r\n', 'D.Sharing Program\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2450, 245, 77, 50, 'Karekteristik dasar komunikasiâ€¦data \r\n', 'A.2\r\n', 'B. 3\r\n', 'C. 4\r\n', 'D. 5\r\n', 'E. 6\r\n', 'C. 4\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2449, 245, 93, 49, 'Kelemahan jika kita menggunakan VoIP, kecuali\r\n', 'A. Penggunaan Bandwith minim\r\n', 'B. Kualitas suara kurang jernih\r\n', 'C. Ada jeda ketika komunikasi\r\n', 'D. Pembatasan jaringan\r\n', 'E. Peralatan mahal\r\n', 'A. Penggunaan Bandwith minim\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2448, 245, 95, 48, 'Pegembangan dari email untuk membuat grup tertentu dengan menggabungkan alamat email orang yang akan bergabung ialah\r\n', 'A.SMS\r\n', 'B.WAP\r\n', 'C.VOIP\r\n', 'D.Tele\r\n', 'E Mailing list\r\n', 'D.Tele\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2447, 245, 114, 47, 'sebuah sistem yang terdiri dari 1 atau lebih telepon SIP... \r\n', 'A.IP\r\n', 'B.IP Address\r\n', 'C.IP PBX\r\n', 'D.IPE\r\n', 'E.AIPI\r\n', 'C.IP PBX\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2446, 245, 84, 46, 'Apa singkatan dari VoIPâ€¦\r\n', 'A.Voice Over internet Protocol\r\n', 'B.Voice Over Internal Protocol\r\n', 'C.Voice Offered internet Protocol\r\n', 'D. Voice Over Internal Protocol\r\n', 'E.Voice Over Internsl Problem\r\n', 'A.Voice Over internet Protocol\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2445, 245, 110, 45, 'Sistem transmisi yang menggunakan 4 buah medium transmisi, pilihan yang benar adalah...\r\n', 'A.kabel LAN\r\n', 'B.Kabel coasial\r\n', 'C.kabel topologi\r\n', 'D.kabel tembaga\r\n', 'E.semua salah\r\n', 'D.kabel tembaga\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2443, 245, 102, 43, 'Yang mendukung Audio dan Video melalui ipv4 dan input adalah\r\n', 'A.voip\r\n', 'B. diagram\r\n', 'C. AGE Phone\r\n', 'D. gradi\r\n', 'E. semuanya benar\r\n', 'A.voip\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2444, 245, 69, 44, 'radio adalah contoh dari komunikasi dataâ€¦\r\n', 'A.Simplex\r\n', 'B.half simplex\r\n', 'C.Duplex\r\n', 'D.Half Duplex\r\n', 'E.Full Duplex\r\n', 'A.Simplex\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2442, 245, 81, 42, 'Transmisi data maksimum yang dimiliki oleh kabel serat optik (fiber optik)adalahâ€¦\r\n', 'A. 250 Mbps\r\n', 'B. 200 Mbps\r\n', 'C. 150 Mbps\r\n', 'D. 100 Mbps\r\n', 'E. 50 Mbps\r\n', 'D. 100 Mbps\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2441, 245, 99, 41, 'ITU Terbagi menjadi\r\n', 'A.1\r\n', 'B.2\r\n', 'C.3\r\n', 'D.4\r\n', 'E.5\r\n', 'C.3\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2440, 245, 115, 40, 'berikut fungsi X-lite yang benar adalahâ€¦..\r\n', 'A.memanggil atau menerima \r\n', 'B.mentransmisikan data \r\n', 'C.Memeriksa data\r\n', 'D.menghancurkan data \r\n', 'E.semua salah \r\n', 'A.memanggil atau menerima \r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2439, 245, 76, 39, 'Contoh Komunikasi video adalahâ€¦\r\n', 'A. Cctv\r\n', 'B. Tv\r\n', 'C. Radio\r\n', 'D. Tape recorder\r\n', 'E. Semua benar\r\n', 'A. Cctv\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2438, 245, 86, 38, 'Ada dua cara dalam melakukan teknik transmisi, yaitu\r\n', 'A. Ashyncronous dan Shyncronous\r\n', 'B. Sinkron dan transmisi\r\n', 'C. Transfer dan transmisi\r\n', 'D. Transmisi dan shyncronous\r\n', 'E. Transfer dan ashyncronous\r\n', 'A. Ashyncronous dan Shyncronous\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2437, 245, 65, 37, 'Ada berapa channel transmisi\r\n', 'A. 5\r\n', '\r\nB. 6\r\n', 'C. 3', '\r\nD. 2\r\n', 'E. 1', 'C. 3', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2436, 245, 71, 36, 'Salah satu jenis kabel yang digunakan untuk media transmisi adalah\r\n', 'A. Kabel tembaga\r\n', 'B. Kabel data\r\n', 'C. Kabel UTP\r\n', 'D. Kabel SATA\r\n', 'E. Kabel LAN\r\n', 'A. Kabel tembaga\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2434, 245, 119, 34, 'Beberapa contoh orientasi bisnis perangkat lunak softphone, kecuali...\r\n', 'A. 3CX\r\n', 'B. Arrow Phone\r\n', 'C. Age Phone\r\n', 'D. I-phone\r\n', 'E. E-phone\r\n', 'D. I-phone\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2433, 245, 63, 33, 'Ada berapa jenis model komunikasi data\r\n', 'A. 1\r\n', 'B. 2\r\n', 'C. 3\r\n', 'D. 4\r\n', 'E. 5\r\n', 'C. 3\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2432, 245, 104, 32, 'PBX kepanjangan dari!\r\n', 'A.Past Branch eXecute\r\n', 'B.Private Band eXecure\r\n', 'C.Pust Batch Xstream\r\n', 'D.Pristine Bandwitch eXtensi\r\n', 'E.Private Branch eXchange\r\n', 'D.Pristine Bandwitch eXtensi\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2431, 245, 101, 31, 'Kepanjangan dari MPEG\r\n ', 'A. Motion Picture expert Group\r\n', 'B. Motion Pics Expert Ground\r\n', 'C. Moonton Pro Endoor Grup\r\n', 'D. Man Picture Expert Group\r\n', 'E. Motion Picture Enternal Ground\r\n', 'A. Motion Picture expert Group\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2430, 245, 91, 30, 'Protokol digunakan untuk menentukan jenis layanan yang akan digunakan untuk menentukan jenis layanan yang akan dilakukan pada internet. Standar protokol yang terpopuler saat ini adalah â€¦â€¦ yang telah ditentukan oleh ISO (International Standard Organization).\r\n', 'A. ISOP (Internet System Open Protokol)\r\n', 'B. COIC (Cloud Open Interconnecting)\r\n', 'C. FSI (Forward Sysyem Interconnecting)\r\n', 'D. OSI (Open Sysyem Interconnecting)\r\n', 'E. OFSI (Open Firewall System Interconnecting)\r\n', 'C. FSI (Forward Sysyem Interconnecting)\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2429, 245, 106, 29, 'Penyedia layanan telpon yang membayari pertukaran telpon denga pesat\r\n', 'A.PTSN\r\n', 'B.PBX\r\n', 'C.SIP Comonicator\r\n', 'D.Voip\r\n', 'E.Ip Phone\r\n ', 'B.PBX\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2427, 245, 75, 27, 'Komunikasi data simplex adalah...\r\n', 'A. Satu arah\r\n', 'B. Dua arah secara bergantian\r\n', 'C. Dua arah secara bersamaan\r\n', 'D. A dan B benar\r\n', 'E. Semua benar\r\n', 'A. Satu arah\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2428, 245, 117, 28, 'jenis perangkat dalam telekomunikasi kecualiâ€¦.\r\n', 'A.NIC\r\n', 'B.PC\r\n', 'C.Router\r\n', 'D.Switch\r\n', 'E.Keyboard\r\n', 'E.Keyboard\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2425, 245, 83, 25, 'Berikut media pengiriman data, kecualiâ€¦\r\n', 'A. Twisted pair\r\n', 'B. Coaxial\r\n', 'C. BNC\r\n', 'D. Fiber optik\r\n', 'E. Wireless\r\n', 'C. BNC\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2423, 245, 85, 23, 'Kepanjangan dari WWW adalah \r\n', 'A.Wib Wide World\r\n', 'B.Web World Web\r\n', 'C.World Wide Web\r\n', 'D.Wede Web World\r\n', 'E.Wede Website World\r\n', 'C.World Wide Web\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2422, 245, 70, 22, 'Salah satu contoh dari Standar International Telecommunication Uniun Of Telecomunucation, kecuali\r\n', 'A. JPEG\r\n', 'B. MPEG\r\n', 'C. H323\r\n', 'D. CR.709\r\n', 'E. MP4\r\n', 'E. MP4\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2421, 245, 120, 21, 'Apa itu komunikasi video?\r\n', 'A. Suatu alat komunikasi yang dapat ditangkap melalui alat pernafasan\r\n', 'B. Suatu alat komunikasi yang dapat ditangkap melalui alat pendengaran\r\n', 'C. Suatu alat komunikasi yang dapat ditangkap melalui alat penglihatan\r\n', 'D. Suatu alat komunikasi yang dapat ditangkap melalui alat penglihatan dan pendengaran\r\n', 'E. Suatu komunikasi yang dilakukan secara 2 arah\r\n', 'C. Suatu alat komunikasi yang dapat ditangkap melalui alat penglihatan\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2420, 245, 98, 20, 'kepanjangan dari ITU adalah\r\n', 'A.International Telecomminication Unifrom\r\n', 'B.International Telecommunication Uniun\r\n', 'C.Intianati Test Union\r\n', 'D.International Telepon Unifrom\r\n', 'E.In The USA\r\n', 'B.International Telecommunication Uniun\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2419, 245, 100, 19, 'Kepanjangan dari JPEG\r\n', 'A. Joint Photographic Expert Group\r\n', 'B. Join Photo Exspert Grup\r\n', 'C. Joint Photographic Expert graoun\r\n', 'D. Join Photo Expert Grafik\r\n', 'D. Joint Photo Enternal Grapik\r\n', 'A. Joint Photographic Expert Group\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2418, 245, 62, 18, 'contoh komunikasi data simplex adalah â€¦.\r\n', 'A. Telepon\r\n', 'B. Video call\r\n', 'C. Radio\r\n', 'D. Orari\r\n', 'E. Setrika\r\n', 'C. Radio\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2417, 245, 74, 17, 'Jenis-jenis perangkat, kecuali...\r\n', 'A. Pc\r\n', 'B. Modem\r\n', 'C. Router\r\n', 'D. Nic\r\n', 'E. Lan\r\n', 'E. Lan\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2416, 245, 96, 16, 'Net id pada jaringan denagn ip 192.168.12 adalah \r\n', 'A.192.168.8.12\r\n', 'B.192.168.8\r\n', 'C.192.168\r\n', 'D.8.12\r\n', 'E.12\r\n', 'B.192.168.8\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2415, 245, 67, 15, 'Dibawah ini yang bukan jenis ragam komunikasi adalahâ€¦ \r\n', 'A. Komunikasi Data\r\n', 'B. Komunikasi Video\r\n', 'C. Komunikasi Audio\r\n', 'D. Komunikasi Audio Video\r\n', '', 'A. Komunikasi Data\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2414, 245, 118, 14, 'Apa kepanjangan VoIP\r\n', 'A. Visual over Internet Protocol\r\n', 'B. Voice over Internet Protocol\r\n', 'C. Verbal over Internet Protocol\r\n', 'D. Voice open Internet Protocol\r\n', 'E. Voice on Internet Protocol\r\n', 'B. Voice over Internet Protocol\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2413, 245, 72, 13, 'Teknologi yang mampu mengirimkan data suara, video dan data yang berbentuk paket adalah pengertian dariâ€¦\r\n', 'A. PBX\r\n', 'B. Arrow Phone\r\n', 'C. Age Phone\r\n', 'D. Voip\r\n', 'E. Sip Communicator\r\n', 'D. Voip\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2412, 245, 87, 12, 'Dalam suatu jaringan telekomunikasi, sistem transmisi digunakan untuk saling menghubungkan?\r\n', 'A. Simplex \r\n', 'B. Central (router)\r\n', 'C. PC\r\n', 'D. Protocol\r\n', 'E. Switch\r\n', 'B. Central (router)\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2411, 245, 112, 11, 'berikut ini salah satu perangkat softphone yang menggunakan micro SIP stack dan berjalan tidak hanya pada windows adalah..\r\n', 'A.Age phone\r\n', 'B.E-phone\r\n', 'C.Firza Phone\r\n', 'D.Arrow Phone\r\n', 'E.Ace Phone\r\n', 'A.Age phone\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2410, 245, 116, 10, 'fungsi IP phone dalam perangkat VOIP adalahâ€¦.\r\n', 'A.sebagai operating system VOIP\r\n', 'B.sebagai handphone untuk memanggil atau menerima telepon \r\n', 'C.sebagai Softphone untuk memanggil dan menerima \r\n', 'D.sebagai koneksi \r\n', 'E.sebagai pengangkat \r\n', 'B.sebagai handphone untuk memanggil atau menerima telepon \r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2409, 245, 78, 9, 'Berikut ini merupakan contoh ITU ( Internatonal Telecommunication Union),kecuali\r\n', 'A.JPEG\r\n', 'B.PNG\r\n', 'C.MPEG\r\n', 'D.H.323\r\n', 'E.G.709\r\n', 'B.PNG\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2408, 245, 68, 8, 'Aturan-aturan yang harus di sepakati adalahâ€¦\r\n', 'A.Switching\r\n', 'B.protocol\r\n', 'C.trasmisi\r\n', 'D.Signaling\r\n', 'E.Asynchronos\r\n', 'B.protocol\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2407, 245, 64, 7, 'yang dimaksud dengan komunikasi data adalah\r\n', 'A. Proses pengiriman dan penerimaan data\r\n', 'B. Proses pengiriman dan penerimaan kouta\r\n', 'C. Proses pengiriman dan penerimaan Audio\r\n', 'D. Proses pengiriman dan penerimaan Video\r\n', 'E. Proses pengiriman dan penerimaan pesan\r\n', 'A. Proses pengiriman dan penerimaan data\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2406, 245, 92, 6, 'Kelebihan jika kita menggunakan VoIP, kecuali\r\n', 'A. Biaya murah\r\n', 'B. Instalasi mudah\r\n', 'C. Kualitas suara jernih\r\n', 'D. Penggunaan Bandwith minim\r\n', 'E. Penggunaan alat mudah\r\n', 'C. Kualitas suara jernih\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2405, 245, 79, 5, 'Berikut ini contoh orientasi bisnis perangkat lunak softphone yang tepat adalah\r\n', 'A. 3CX\r\n', 'B.Microsoft Windows\r\n', 'C.Microsoft Office\r\n', 'D.Whatsapp\r\n', 'E.Instagram\r\n', 'A. 3CX\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2403, 245, 105, 3, 'Fungsi PBX IP server mirip dengan cara kerja\r\n', 'A.Extensi\r\n', 'B.Arrow Phone\r\n', 'C.Proxy Server\r\n', 'D.AGE Phone\r\n', 'E. 3CX Voip Phone for Windows\r\n', 'C.Proxy Server\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2402, 245, 113, 2, 'Softphone untuk windows yang mendukung Audio dan Video melalui IPv4 adalahâ€¦.\r\n', 'A.Age phone\r\n', 'B.E-phone\r\n', 'C.Firza Phone\r\n', 'D.Arrow Phone\r\n', 'E. Iphone\r\n', 'B.E-phone\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2435, 245, 108, 35, 'Analisis kebutuhan perangkat dalam komunikasi kecuaili\r\n', 'A.Kabel fiber optik\r\n', 'B.kabel coasial\r\n', 'C.Twisted pair\r\n', 'D.Serat optik\r\n', 'E.urghicled twisted pair\r\n', 'A.Kabel fiber optik\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2426, 245, 82, 26, 'Yang tidak termasuk dalam sistem transmisi adalah â€¦\r\n', 'A. Simplex \r\n', 'B. Full-duflex \r\n', 'C. Satu arah\r\n', 'D. Half-duflex\r\n', 'E. Duplex\r\n', 'D. Half-duflex\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2424, 245, 107, 24, 'Berbasis Java Open soure client voip yang mendukung Audio dan Video melalui IpV4 dna Ipv6\r\n', 'A.Sip Comunicator\r\n', 'B.Gizmo Free\r\n', 'C.E-Phone\r\n', 'D.Arrow Phone\r\n', 'E.3CX\r\n', 'A.Sip Comunicator\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2460, 245, 73, 60, 'Contoh komunikasi dua arah bersamaan\r\n', 'A. Orari\r\n', 'B. Televisi\r\n', 'C. Telepon \r\n', 'D. Radio \r\n', 'E. Komputer\r\n', 'C. Telepon \r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2459, 245, 80, 59, 'Apa yang dimaksud dengan trasnmitionâ€¦\r\n', 'A. Alat untuk menerima sinyal\r\n', 'B. Alat untuk memindahkan dan menyaring informasi\r\n', 'C. Jalur yang menghubungkan sumber transmisi dengan destination\r\n', 'D. Tujuan pengiriman data\r\n', 'E. Asal pengiriman data\r\n', 'C. Jalur yang menghubungkan sumber transmisi dengan destination\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2457, 245, 109, 57, 'Standar pengkodean pelayanan video disebutâ€¦\r\n', 'A.PNG\r\n', 'B.JPEG\r\n', 'C.MPEG\r\n', 'D.H323\r\n', 'E.g709\r\n', 'C.MPEG\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2458, 245, 121, 58, 'Komunikasi data yang dapat dilakukan dua arah secara bergantian adalahâ€¦\r\n', 'A. Simplex \r\n', 'B.Full Duplex\r\n', 'C. Semi Duplex\r\n', 'D.Dpuble Duplex\r\n', 'E. Half Duplex\r\n', 'E. Half Duplex\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2455, 245, 89, 55, 'Contoh perangkat yang menngunakan sistem transmisi Full-duplex..\r\n', 'A.Pager \r\n', 'B.Radio \r\n', 'C. HT(Handy Talking)\r\n', 'D.Telepon\r\n', 'E.Kamera \r\n', 'D.Telepon\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2456, 245, 103, 56, 'Menggunakan micro sip stack dan berjalan tidak hanya pada windows tapi juga pada\r\n', 'A. E/packet pc dan windows mobile\r\n', 'B. komputer\r\n', 'C. IP address\r\n', 'D. diangram operasi\r\n', 'E. semuanya benar\r\n', 'A. E/packet pc dan windows mobile\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2454, 245, 88, 54, 'Salah satu jalur yang digunakan untuk berkomunikasi data adalah \r\n', 'A. Bus \r\n', 'B.Satelit \r\n', 'C.Bandwidth \r\n', 'D. Throughput \r\n', 'E.Topologi\r\n', 'B.Satelit \r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2514, 270, 55, 54, 'Radio siaran termasuk jenis komunikasiâ€¦\r\n', 'suara\r\n', 'Radio\r\n', 'telpon\r\n', 'data\r\n', 'audio\r\n', 'suara\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2510, 270, 42, 50, 'Menurut referensi OSI layer atau lapisan protokol berjumlah\r\n', '3\r\n', '4\r\n', '5\r\n', '7\r\n', '6', '7\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2495, 270, 16, 35, 'perintah killall digunakan untuk...\r\n', 'mematikan komputer\r\n', 'shutdown\r\n', 'mematikan aplikasi yang running\r\n', 'mematikan koneksi internet\r\n', 'membunuh semua virus\r\n', 'mematikan aplikasi yang running\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2474, 270, 3, 14, 'DNS biasa digunakan pada aplikasi yang terhubung ke...', 'E-mail\r\n', 'Modem\r\n', 'Web server\r\n', 'Internet \r\n', 'Mail server\r\n', 'Internet \r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2701, 253, 44, 1, 'seperangkat aturan, atau suatu perjanjian yang mengatur/mendeterminasikan format dan transmisi data yang dilakukan disebut dengan..\r\n', 'protokol\r\n', 'ISO\r\n', 'OSI\r\n', 'TCP/IP\r\n', 'LAYER\r\n', 'protokol\r\n', 'protokol\r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2702, 253, 17, 2, 'printah yang digunakan untuk mengecek koneksi internet di linux adalahâ€¦\r\n', 'if config\r\n', 'ip\r\n', 'rc. local\r\n', 'dx diag\r\n', 'ping\r\n', 'ping\r\n', 'if config\r\n', 'dijawab', 'salah', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2703, 253, 20, 3, 'Aplikasi yang digunakan dalam mail server untuk mengirim surat adalah\r\n', 'Courier-Pop\r\n', 'Postfix\r\n', 'Courier-imap\r\n', 'Squirrelmail\r\n', 'FTP\r\n', 'Courier-imap\r\n', 'Squirrelmail\r\n', 'dijawab', 'salah', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2704, 253, 27, 4, 'Dua hal penting dalam FTP adalahâ€¦\r\n', 'DHCP Server & FTP Client\r\n', 'DHCP server & FTP Server\r\n', 'FTP Server & DHCP Client\r\n', 'FTP Server & DNS Client\r\n', 'FTP Server & FTP Client\r\n', 'FTP Server & FTP Client\r\n', 'DHCP server & FTP Server\r\n', 'dijawab', 'salah', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2705, 253, 21, 5, 'server terdiri dari 2 komponen utama antara lainâ€¦\r\n', 'software dan brainware\r\n', 'software dan protocol\r\n', 'software dan hardware\r\n', 'software dan TCP\r\n', 'semua salah\r\n', 'software dan hardware\r\n', 'software dan protocol\r\n', 'dijawab', 'salah', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2706, 253, 57, 6, 'Salah satu elemen DHCP pada jawaban di bawah ini adalah\r\n', 'Dhcp server\r\n', 'DHCP client\r\n', 'DHCP Scope\r\n', 'DHCP Koneksi\r\n', 'DHCP Ruter\r\n', 'DHCP Scope\r\n', 'Dhcp server\r\n', 'dijawab', 'salah', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2707, 253, 26, 7, 'Perintah linux debian untuk masuk ke root ( super user ) adalah â€¦\r\n', ' Nano\r\n', 'su\r\n', ' rc.local\r\n', ' restart\r\n', ' sysctl\r\n', 'su\r\n', 'su\r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2708, 253, 12, 8, 'Contoh aplikasi FTP client antara lain...', 'SmartFtp\r\n', 'Wuftpd\r\n', 'Vsftpd\r\n', 'DNS\r\n', 'DHCP\r\n', 'SmartFtp\r\n', 'Vsftpd\r\n', 'dijawab', 'salah', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2709, 253, 9, 9, 'kekurangan DNS yaitu...', 'Berbayar \r\n', 'Fleksibel\r\n', 'Kompatibel \r\n', 'Mudah \r\n', 'Gratis\r\n', 'Berbayar \r\n', 'Berbayar \r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2710, 253, 25, 10, 'perintah yang digunakan untuk mengedit pada linux server adalah â€¦\r\n', ' Nano\r\n', ' /etc/\r\n', ' /networking/\r\n', 'restart\r\n', ' Server\r\n', ' Nano\r\n', ' Nano\r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2711, 253, 31, 11, 'Protokol TCP/IP berhubungan dengan pengguna aplikasi yang berguna untuk terminal maya jarak jauhâ€¦\r\n', 'HTTP\r\n', 'FTP\r\n', 'SMPTP\r\n', 'TELNET \r\n', 'UDP\r\n', 'TELNET \r\n', 'HTTP\r\n', 'dijawab', 'salah', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2712, 253, 47, 12, 'Secara umum jaringan komputer terdiri dari dibawah ini kecualiâ€¦\r\n', 'Local area network\r\n', 'metropolitan area network\r\n', 'radio area network\r\n', 'wide area network\r\n', 'internet\r\n', 'radio area network\r\n', 'metropolitan area network\r\n', 'dijawab', 'salah', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2713, 253, 18, 13, 'Dibawah ini yang merupakan perangkat wan adalah, kecuali\r\n', 'Hub\r\n', 'Modem\r\n', 'Repester\r\n', 'Router\r\n', 'Bridge\r\n', 'Bridge\r\n', 'Repester\r\n', 'dijawab', 'salah', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2714, 253, 10, 14, 'DNS bisa digunakan pada aplikasi yang terhubung ke...', 'Internet\r\n', 'Domain\r\n', 'Host \r\n', 'Server\r\n', 'Login\r\n', 'Internet\r\n', 'Internet\r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2715, 253, 29, 15, 'fungsi swapoff ialahâ€¦.\r\n', 'enable swap\r\n', 'mendisable swap \r\n', 'melihat nama host \r\n', 'restart\r\n', 'power off \r\n', 'mendisable swap \r\n', 'enable swap\r\n', 'dijawab', 'salah', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2716, 253, 46, 16, 'lapisan yang berfungsi untuk mrngkonversi data yaitu..\r\n', 'physical\r\n', 'data link\r\n', 'session\r\n', 'presentation\r\n', 'application\r\n', 'presentation\r\n', 'physical\r\n', 'dijawab', 'salah', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2717, 253, 49, 17, 'command menambahkan dvd baru adalah\r\n', 'Apt-cdrom add\r\n', 'Apt-get install\r\n', 'Apt-get add\r\n', 'Apt-dhcp\r\n', 'Apt-get install cdrom\r\n', 'Apt-cdrom add\r\n', 'Apt-cdrom add\r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2718, 253, 19, 18, 'Server yang bertugas melayani surat menyurat elektronik adalahâ€¦\r\n', 'Mail Server\r\n', 'DHCP Server\r\n', 'DNS Server\r\n', 'FTP Server\r\n', 'Proxy Server\r\n', 'Mail Server\r\n', 'Mail Server\r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2719, 253, 40, 19, 'sebuah workstation komputer yang dijadikan pusat untuk mengatur semua printer yang terhubung melalui networking yaituâ€¦.\r\n', 'samba server\r\n', 'document IT\r\n', 'Printer server \r\n', 'file server\r\n', 'protocol NET BEUI\r\n', 'Printer server \r\n', 'samba server\r\n', 'dijawab', 'salah', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2720, 253, 22, 20, 'server adalahâ€¦\r\n', 'suatu perantara agar terhubung\r\n', 'suatu jenis os yang memungkinkan pengguna untuk pelajar\r\n', 'suatu perangkat jaringan yang memberikan layanan terhadap pengguna\r\n', 'suatu perangkat jaringan yang menjadikan perantara\r\n', 'sejenis sistem operasi jaringan\r\n', 'suatu perangkat jaringan yang memberikan layanan terhadap pengguna\r\n', 'suatu perangkat jaringan yang memberikan layanan terhadap pengguna\r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2721, 253, 55, 21, 'Radio siaran termasuk jenis komunikasiâ€¦\r\n', 'suara\r\n', 'Radio\r\n', 'telpon\r\n', 'data\r\n', 'audio\r\n', 'suara\r\n', 'suara\r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2722, 253, 36, 22, '192.168.10.1 mempunyai sebuah netmask yaitu..\r\n', '255.255.255.0\r\n', '255.255.255.252\r\n', '192.168.10.0\r\n', '192.168.10.1\r\n', '192.168.10.2\r\n', '255.255.255.0\r\n', '255.255.255.0\r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2723, 253, 48, 23, 'tugas mail server adalahâ€¦\r\n', 'melayani surat menyurat\r\n', 'melayani pengiriman barang\r\n', 'melayani pengiriman data\r\n', 'melayani pengiriman paket\r\n', 'melayani  pengiriman suara\r\n', 'melayani surat menyurat\r\n', 'melayani surat menyurat\r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2724, 253, 45, 24, 'lapisan yang berfungsi untuk mengatur jalur pengiriman data adalahâ€¦\r\n', 'physical\r\n', 'data link\r\n', 'network\r\n', 'transport\r\n', 'session\r\n', 'network\r\n', 'data link\r\n', 'dijawab', 'salah', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2725, 253, 1, 25, 'apa kepanjangan DHCP...\r\n', 'Dynamic Host Control Protocol\r\n', 'Domain Hert Control Protocol\r\n', 'Domain Hert Central Protocol\r\n', 'Domain Host Control Protocol\r\n', 'Dynamic hert Control Protocol\r\n', 'Dynamic Host Control Protocol\r\n', 'Dynamic Host Control Protocol\r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2726, 253, 43, 26, 'Pada pemasangan kabel straight, pin yang digunakan untuk menerima atau receiving data adalah\r\n', ' 1 dan 2\r\n', '6 dan 8\r\n', '4 dan 5\r\n', ' 3 dan 6\r\n', '3 dan 8\r\n', ' 3 dan 6\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2727, 253, 38, 27, 'Host ID untuk IP Adrress kelas C adalahâ€¦.\r\n', '12 bit terakhir\r\n', '18 bit terakhir\r\n', '8 bit terakhir\r\n', '24 bit terakhir\r\n', '4 bit terakhir\r\n', '8 bit terakhir\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2728, 253, 50, 28, 'perintah untuk menguji koneksi jaringan di linux adalah\r\n', 'Is\r\n', 'ping\r\n', 'trace\r\n', 'tes\r\n', 'ifconfig\r\n', 'ping\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2729, 253, 52, 29, 'untuk menginstall paket software di debian linux menggunakan perintah..\r\n', 'Apt-cdrom add\r\n', 'index cd\r\n', 'Apt-get update\r\n', 'Apt-get install\r\n', 'Apt-get uninstall\r\n', 'Apt-get install\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67');
INSERT INTO `tb_jawab` (`id`, `id_siswa`, `id_soal`, `soal_ke`, `soal`, `pil_a`, `pil_b`, `pil_c`, `pil_d`, `pil_e`, `kunci`, `jawaban`, `status`, `status2`, `status3`, `token`) VALUES
(2730, 253, 14, 30, 'Batas waktu penyewaan alamat IP yang diberikan kepada DHCP client oleh DHCP server disebutâ€¦\r\n', 'DHCP Server\r\n', 'DHCP scope\r\n', 'DHCP option\r\n', 'DHCP lease\r\n', 'DHCP client\r\n', 'DHCP lease\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2731, 253, 41, 31, 'Program bantu yang memberikan interface model web untuk mengandministrasi samba adalah..\r\n', 'smb client\r\n', 'smb passwd\r\n', 'smb status\r\n', '.smb tar\r\n', 'swat\r\n', 'swat\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2732, 253, 51, 32, 'sebuah layanan server yang berfungsi memberikan alamat ip secara otomatis ke client yang terhubung ke jaringan adalah..\r\n', 'proxy server\r\n', 'web server\r\n', 'dhcp server\r\n', 'dns server\r\n', 'database server\r\n', 'dhcp server\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2733, 253, 13, 33, 'Alamat IP yang dapat disewakan kepada DHCP client di sebut...\r\n', 'DHCP Server\r\n', 'DHCP scope\r\n', 'DHCP option\r\n', 'DHCP lease\r\n', 'DHCP client\r\n', 'DHCP scope\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2734, 253, 58, 34, 'DHCP yang berfungsi sebagai tambahan pengaturan alamat ip yaitu\r\n', 'DHCP Scope\r\n', 'DHCP client\r\n', 'DHCP option\r\n', 'DHCP Koneksi\r\n', 'DHCP router\r\n', 'DHCP option\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2735, 253, 56, 35, 'yang termasuksistem operasi open source adalahâ€¦\r\n', 'Linux\r\n', 'Windows\r\n', 'DOS\r\n', 'Macintosh\r\n', 'Unix\r\n', 'Linux\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2736, 253, 33, 36, 'UDP (User Datagram Protokol ) adalah protokol sejenis dengan TCP yangâ€¦\r\n', 'Connectionless\r\n', 'Authorities\r\n', 'Oriented \r\n', 'Connectionpass\r\n', 'Dynamic Host \r\n', 'Connectionless\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2737, 253, 3, 37, 'DNS biasa digunakan pada aplikasi yang terhubung ke...', 'E-mail\r\n', 'Modem\r\n', 'Web server\r\n', 'Internet \r\n', 'Mail server\r\n', 'Internet \r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2738, 253, 24, 38, 'Clear digunakan untuk\r\n', 'membersihkan sampah\r\n', 'menghapuskan semua data\r\n', 'membersihkan tampilan\r\n', 'menghapus aplikasi\r\n', 'menyelesaikan misi\r\n', 'membersihkan tampilan\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2739, 253, 5, 39, 'Digunakan untuk transfer file berupa download dan upload merupakan pengertian dariâ€¦\r\n', 'Samba\r\n', 'FTP\r\n', 'Mail\r\n', 'Squerrelmail\r\n', 'Roundcube\r\n', 'FTP\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2740, 253, 35, 40, 'Jika suatu komputer memiliki sebuah alamat ip yaitu 192.168.10.1, maka network nya adalahâ€¦\r\n', '192.168.10.1\r\n', '192.168.10.0\r\n', '255.255.255.0\r\n', '255.255.255.252\r\n', '192.168.10.2\r\n', '192.168.10.0\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2741, 253, 34, 41, 'Sebuah program aplikasi yang bertugas untuk menerima permintaan paket dan memberinya balasan berupa paket yang di inginkan client disebut..\r\n', 'Client \r\n', 'Peer to peer \r\n', 'Client-server \r\n', 'Server \r\n', 'IPCONFIG\r\n', 'Server \r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2742, 253, 60, 42, 'layanan web server menggunakan paket', 'web server', 'dns', 'apache2', 'postfix', 'courier', 'apache2', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2743, 253, 23, 43, 'perintah yang digunakan untuk melihat direktori pada linux adalah\r\n', 'dir', 'mkdir', 'nano', 'ls', 'pico', 'ls', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2744, 253, 39, 44, 'Surat yg berbentuk elektronik dan dikirim dgn jaringan internet disebut...\r\n', 'E-mail\r\n', 'MIRC\r\n', 'Telnet\r\n', 'Chatting\r\n', 'Sending\r\n', 'E-mail\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2745, 253, 6, 45, 'Aplikasi untuk sharing sumberdaya seperti file, folder, printer harddisk dan sebagainya merupakan pengertian dariâ€¦\r\n', 'Samba\r\n', 'FTP\r\n', 'Mail\r\n', 'Squerrelmail\r\n', 'Roundcube\r\n', 'Samba\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2746, 253, 54, 46, 'FTP adalah singkatan dariâ€¦?\r\n', 'File Transfer Protokol\r\n', 'File Transfer pro/kontra\r\n', 'File Transfeeer Protokol\r\n', 'File Transfer poroporo\r\n', 'Semua jawaban benar\r\n', 'File Transfer Protokol\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2747, 253, 11, 47, 'Untuk bisa login ke Server FTP kita bisa menggunakan mode...\r\n', 'Trunk\r\n', 'Allowed Trunk\r\n', 'teks\r\n', 'Teks dan GUI\r\n', 'Teks Trunk\r\n', 'Teks dan GUI\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2748, 253, 30, 48, 'berikut perintah dasar linux, kecuali \r\n', 'CD\r\n', 'MV\r\n', 'enter\r\n', 'cat\r\n', 'CP\r\n', 'enter\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2749, 253, 2, 49, 'IP address 12.10.10.1 adalah ip kelas...\r\n', 'A\r\n', 'B\r\n', 'C\r\n', 'Private\r\n', 'Jawaban A dan E benar\r\n', 'A\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2750, 253, 42, 50, 'Menurut referensi OSI layer atau lapisan protokol berjumlah\r\n', '3\r\n', '4\r\n', '5\r\n', '7\r\n', '6', '7\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2751, 253, 7, 51, 'Layanan yang secara otomatis memberikan no IP kepada komputer yang memintanya adalah...\r\n', 'TCP\r\n', 'Server\r\n', 'Konfigurasi\r\n', 'Statis\r\n', 'DHCP\r\n', 'DHCP\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2752, 253, 53, 52, 'File yang berisi setting interface jaringan di debian text adalah\r\n', '/etc/init.d/networking\r\n', '/etc/bind/bind.conf\r\n', '/etc/network/eth0.conf\r\n', '/etc/network/interface\r\n', '/etc/network/interfaces\r\n', '/etc/network/interfaces\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2753, 253, 32, 53, 'Protokol umum yang sering digunakan oleh mailserver adalah, kecualiâ€¦\r\n', 'SMTP\r\n', 'POP3\r\n', 'IMAP \r\n', 'TCP Atau IP\r\n', 'IPCONFIG\r\n', 'TCP Atau IP\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2754, 253, 28, 54, 'Simbol prompt yang menandakan bahwa bahwa seseorang login sebagai user biasa pada Linux berbasis text adalahâ€¦\r\n', '%\r\n', '&\r\n', '$\r\n', '#\r\n', '@\r\n', '$\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2755, 253, 15, 55, 'perintah init 6 digunakan untuk...\r\n', 'berpindah direktori\r\n', 'melihat isi direktori\r\n', 'restart\r\n', 'shut down\r\n', 'shutdown setelah 6 detik\r\n', 'restart\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2756, 253, 59, 56, 'untuk mengupdate repository ke internet, kita mengkonfigurasi file', '/etc/network/interfaces', '/etc/network/repository', '/etc/apt/sources', '/etc/apt/sources.list', '/etc/apt/source', '/etc/apt/sources.list', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2757, 253, 4, 57, 'Komputer yang meminta no IP disebut...\r\n', 'DHCP Server\r\n', 'DHCP Client\r\n', 'Statis\r\n', 'TCP\r\n', 'Server\r\n', 'DHCP Client\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2758, 253, 16, 58, 'perintah killall digunakan untuk...\r\n', 'mematikan komputer\r\n', 'shutdown\r\n', 'mematikan aplikasi yang running\r\n', 'mematikan koneksi internet\r\n', 'membunuh semua virus\r\n', 'mematikan aplikasi yang running\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2759, 253, 37, 59, 'DNS merupakan singkatan dari \r\n', 'Dynamic name service\r\n', 'domain name service\r\n', 'domain name system\r\n', 'dynamic name server\r\n', 'domain name static\r\n', 'domain name system\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2760, 253, 8, 60, 'Salah satu aplikasi pengelolaan DNS pada debian adalah...', 'DNS3\r\n', 'Bind9\r\n', 'VSFTPD\r\n', 'Squid\r\n', 'Samba\r\n', 'Bind9\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2761, 240, 44, 1, 'seperangkat aturan, atau suatu perjanjian yang mengatur/mendeterminasikan format dan transmisi data yang dilakukan disebut dengan..\r\n', 'protokol\r\n', 'ISO\r\n', 'OSI\r\n', 'TCP/IP\r\n', 'LAYER\r\n', 'protokol\r\n', 'protokol\r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2762, 240, 50, 2, 'perintah untuk menguji koneksi jaringan di linux adalah\r\n', 'Is\r\n', 'ping\r\n', 'trace\r\n', 'tes\r\n', 'ifconfig\r\n', 'ping\r\n', 'ping\r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2763, 240, 25, 3, 'perintah yang digunakan untuk mengedit pada linux server adalah â€¦\r\n', ' Nano\r\n', ' /etc/\r\n', ' /networking/\r\n', 'restart\r\n', ' Server\r\n', ' Nano\r\n', ' Nano\r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2764, 240, 3, 4, 'DNS biasa digunakan pada aplikasi yang terhubung ke...', 'E-mail\r\n', 'Modem\r\n', 'Web server\r\n', 'Internet \r\n', 'Mail server\r\n', 'Internet \r\n', 'Internet \r\n', 'dijawab', 'benar', 'ragu-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2765, 240, 21, 5, 'server terdiri dari 2 komponen utama antara lainâ€¦\r\n', 'software dan brainware\r\n', 'software dan protocol\r\n', 'software dan hardware\r\n', 'software dan TCP\r\n', 'semua salah\r\n', 'software dan hardware\r\n', 'software dan hardware\r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2766, 240, 59, 6, 'untuk mengupdate repository ke internet, kita mengkonfigurasi file', '/etc/network/interfaces', '/etc/network/repository', '/etc/apt/sources', '/etc/apt/sources.list', '/etc/apt/source', '/etc/apt/sources.list', '/etc/network/interfaces', 'dijawab', 'salah', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2767, 240, 57, 7, 'Salah satu elemen DHCP pada jawaban di bawah ini adalah\r\n', 'Dhcp server\r\n', 'DHCP client\r\n', 'DHCP Scope\r\n', 'DHCP Koneksi\r\n', 'DHCP Ruter\r\n', 'DHCP Scope\r\n', 'Dhcp server\r\n', 'dijawab', 'salah', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2768, 240, 53, 8, 'File yang berisi setting interface jaringan di debian text adalah\r\n', '/etc/init.d/networking\r\n', '/etc/bind/bind.conf\r\n', '/etc/network/eth0.conf\r\n', '/etc/network/interface\r\n', '/etc/network/interfaces\r\n', '/etc/network/interfaces\r\n', '/etc/network/interface\r\n', 'dijawab', 'salah', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2769, 240, 2, 9, 'IP address 12.10.10.1 adalah ip kelas...\r\n', 'A\r\n', 'B\r\n', 'C\r\n', 'Private\r\n', 'Jawaban A dan E benar\r\n', 'A\r\n', 'A\r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2770, 240, 16, 10, 'perintah killall digunakan untuk...\r\n', 'mematikan komputer\r\n', 'shutdown\r\n', 'mematikan aplikasi yang running\r\n', 'mematikan koneksi internet\r\n', 'membunuh semua virus\r\n', 'mematikan aplikasi yang running\r\n', 'mematikan aplikasi yang running\r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2771, 240, 17, 11, 'printah yang digunakan untuk mengecek koneksi internet di linux adalahâ€¦\r\n', 'if config\r\n', 'ip\r\n', 'rc. local\r\n', 'dx diag\r\n', 'ping\r\n', 'ping\r\n', 'ping\r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2772, 240, 39, 12, 'Surat yg berbentuk elektronik dan dikirim dgn jaringan internet disebut...\r\n', 'E-mail\r\n', 'MIRC\r\n', 'Telnet\r\n', 'Chatting\r\n', 'Sending\r\n', 'E-mail\r\n', 'E-mail\r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2773, 240, 29, 13, 'fungsi swapoff ialahâ€¦.\r\n', 'enable swap\r\n', 'mendisable swap \r\n', 'melihat nama host \r\n', 'restart\r\n', 'power off \r\n', 'mendisable swap \r\n', 'mendisable swap \r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2774, 240, 38, 14, 'Host ID untuk IP Adrress kelas C adalahâ€¦.\r\n', '12 bit terakhir\r\n', '18 bit terakhir\r\n', '8 bit terakhir\r\n', '24 bit terakhir\r\n', '4 bit terakhir\r\n', '8 bit terakhir\r\n', '8 bit terakhir\r\n', 'dijawab', 'benar', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2775, 240, 35, 15, 'Jika suatu komputer memiliki sebuah alamat ip yaitu 192.168.10.1, maka network nya adalahâ€¦\r\n', '192.168.10.1\r\n', '192.168.10.0\r\n', '255.255.255.0\r\n', '255.255.255.252\r\n', '192.168.10.2\r\n', '192.168.10.0\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2776, 240, 28, 16, 'Simbol prompt yang menandakan bahwa bahwa seseorang login sebagai user biasa pada Linux berbasis text adalahâ€¦\r\n', '%\r\n', '&\r\n', '$\r\n', '#\r\n', '@\r\n', '$\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2777, 240, 20, 17, 'Aplikasi yang digunakan dalam mail server untuk mengirim surat adalah\r\n', 'Courier-Pop\r\n', 'Postfix\r\n', 'Courier-imap\r\n', 'Squirrelmail\r\n', 'FTP\r\n', 'Courier-imap\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2778, 240, 30, 18, 'berikut perintah dasar linux, kecuali \r\n', 'CD\r\n', 'MV\r\n', 'enter\r\n', 'cat\r\n', 'CP\r\n', 'enter\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2779, 240, 1, 19, 'apa kepanjangan DHCP...\r\n', 'Dynamic Host Control Protocol\r\n', 'Domain Hert Control Protocol\r\n', 'Domain Hert Central Protocol\r\n', 'Domain Host Control Protocol\r\n', 'Dynamic hert Control Protocol\r\n', 'Dynamic Host Control Protocol\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2780, 240, 37, 20, 'DNS merupakan singkatan dari \r\n', 'Dynamic name service\r\n', 'domain name service\r\n', 'domain name system\r\n', 'dynamic name server\r\n', 'domain name static\r\n', 'domain name system\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2781, 240, 43, 21, 'Pada pemasangan kabel straight, pin yang digunakan untuk menerima atau receiving data adalah\r\n', ' 1 dan 2\r\n', '6 dan 8\r\n', '4 dan 5\r\n', ' 3 dan 6\r\n', '3 dan 8\r\n', ' 3 dan 6\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2782, 240, 8, 22, 'Salah satu aplikasi pengelolaan DNS pada debian adalah...', 'DNS3\r\n', 'Bind9\r\n', 'VSFTPD\r\n', 'Squid\r\n', 'Samba\r\n', 'Bind9\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2783, 240, 24, 23, 'Clear digunakan untuk\r\n', 'membersihkan sampah\r\n', 'menghapuskan semua data\r\n', 'membersihkan tampilan\r\n', 'menghapus aplikasi\r\n', 'menyelesaikan misi\r\n', 'membersihkan tampilan\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2784, 240, 7, 24, 'Layanan yang secara otomatis memberikan no IP kepada komputer yang memintanya adalah...\r\n', 'TCP\r\n', 'Server\r\n', 'Konfigurasi\r\n', 'Statis\r\n', 'DHCP\r\n', 'DHCP\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2785, 240, 41, 25, 'Program bantu yang memberikan interface model web untuk mengandministrasi samba adalah..\r\n', 'smb client\r\n', 'smb passwd\r\n', 'smb status\r\n', '.smb tar\r\n', 'swat\r\n', 'swat\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2786, 240, 13, 26, 'Alamat IP yang dapat disewakan kepada DHCP client di sebut...\r\n', 'DHCP Server\r\n', 'DHCP scope\r\n', 'DHCP option\r\n', 'DHCP lease\r\n', 'DHCP client\r\n', 'DHCP scope\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2787, 240, 26, 27, 'Perintah linux debian untuk masuk ke root ( super user ) adalah â€¦\r\n', ' Nano\r\n', 'su\r\n', ' rc.local\r\n', ' restart\r\n', ' sysctl\r\n', 'su\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2788, 240, 36, 28, '192.168.10.1 mempunyai sebuah netmask yaitu..\r\n', '255.255.255.0\r\n', '255.255.255.252\r\n', '192.168.10.0\r\n', '192.168.10.1\r\n', '192.168.10.2\r\n', '255.255.255.0\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2789, 240, 40, 29, 'sebuah workstation komputer yang dijadikan pusat untuk mengatur semua printer yang terhubung melalui networking yaituâ€¦.\r\n', 'samba server\r\n', 'document IT\r\n', 'Printer server \r\n', 'file server\r\n', 'protocol NET BEUI\r\n', 'Printer server \r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2790, 240, 45, 30, 'lapisan yang berfungsi untuk mengatur jalur pengiriman data adalahâ€¦\r\n', 'physical\r\n', 'data link\r\n', 'network\r\n', 'transport\r\n', 'session\r\n', 'network\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2791, 240, 33, 31, 'UDP (User Datagram Protokol ) adalah protokol sejenis dengan TCP yangâ€¦\r\n', 'Connectionless\r\n', 'Authorities\r\n', 'Oriented \r\n', 'Connectionpass\r\n', 'Dynamic Host \r\n', 'Connectionless\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2792, 240, 10, 32, 'DNS bisa digunakan pada aplikasi yang terhubung ke...', 'Internet\r\n', 'Domain\r\n', 'Host \r\n', 'Server\r\n', 'Login\r\n', 'Internet\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2793, 240, 42, 33, 'Menurut referensi OSI layer atau lapisan protokol berjumlah\r\n', '3\r\n', '4\r\n', '5\r\n', '7\r\n', '6', '7\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2794, 240, 9, 34, 'kekurangan DNS yaitu...', 'Berbayar \r\n', 'Fleksibel\r\n', 'Kompatibel \r\n', 'Mudah \r\n', 'Gratis\r\n', 'Berbayar \r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2795, 240, 18, 35, 'Dibawah ini yang merupakan perangkat wan adalah, kecuali\r\n', 'Hub\r\n', 'Modem\r\n', 'Repester\r\n', 'Router\r\n', 'Bridge\r\n', 'Bridge\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2796, 240, 60, 36, 'layanan web server menggunakan paket', 'web server', 'dns', 'apache2', 'postfix', 'courier', 'apache2', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2797, 240, 49, 37, 'command menambahkan dvd baru adalah\r\n', 'Apt-cdrom add\r\n', 'Apt-get install\r\n', 'Apt-get add\r\n', 'Apt-dhcp\r\n', 'Apt-get install cdrom\r\n', 'Apt-cdrom add\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2798, 240, 14, 38, 'Batas waktu penyewaan alamat IP yang diberikan kepada DHCP client oleh DHCP server disebutâ€¦\r\n', 'DHCP Server\r\n', 'DHCP scope\r\n', 'DHCP option\r\n', 'DHCP lease\r\n', 'DHCP client\r\n', 'DHCP lease\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2799, 240, 15, 39, 'perintah init 6 digunakan untuk...\r\n', 'berpindah direktori\r\n', 'melihat isi direktori\r\n', 'restart\r\n', 'shut down\r\n', 'shutdown setelah 6 detik\r\n', 'restart\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2800, 240, 22, 40, 'server adalahâ€¦\r\n', 'suatu perantara agar terhubung\r\n', 'suatu jenis os yang memungkinkan pengguna untuk pelajar\r\n', 'suatu perangkat jaringan yang memberikan layanan terhadap pengguna\r\n', 'suatu perangkat jaringan yang menjadikan perantara\r\n', 'sejenis sistem operasi jaringan\r\n', 'suatu perangkat jaringan yang memberikan layanan terhadap pengguna\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2801, 240, 54, 41, 'FTP adalah singkatan dariâ€¦?\r\n', 'File Transfer Protokol\r\n', 'File Transfer pro/kontra\r\n', 'File Transfeeer Protokol\r\n', 'File Transfer poroporo\r\n', 'Semua jawaban benar\r\n', 'File Transfer Protokol\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2802, 240, 56, 42, 'yang termasuksistem operasi open source adalahâ€¦\r\n', 'Linux\r\n', 'Windows\r\n', 'DOS\r\n', 'Macintosh\r\n', 'Unix\r\n', 'Linux\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2803, 240, 27, 43, 'Dua hal penting dalam FTP adalahâ€¦\r\n', 'DHCP Server & FTP Client\r\n', 'DHCP server & FTP Server\r\n', 'FTP Server & DHCP Client\r\n', 'FTP Server & DNS Client\r\n', 'FTP Server & FTP Client\r\n', 'FTP Server & FTP Client\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2804, 240, 52, 44, 'untuk menginstall paket software di debian linux menggunakan perintah..\r\n', 'Apt-cdrom add\r\n', 'index cd\r\n', 'Apt-get update\r\n', 'Apt-get install\r\n', 'Apt-get uninstall\r\n', 'Apt-get install\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2805, 240, 31, 45, 'Protokol TCP/IP berhubungan dengan pengguna aplikasi yang berguna untuk terminal maya jarak jauhâ€¦\r\n', 'HTTP\r\n', 'FTP\r\n', 'SMPTP\r\n', 'TELNET \r\n', 'UDP\r\n', 'TELNET \r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2806, 240, 32, 46, 'Protokol umum yang sering digunakan oleh mailserver adalah, kecualiâ€¦\r\n', 'SMTP\r\n', 'POP3\r\n', 'IMAP \r\n', 'TCP Atau IP\r\n', 'IPCONFIG\r\n', 'TCP Atau IP\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2807, 240, 58, 47, 'DHCP yang berfungsi sebagai tambahan pengaturan alamat ip yaitu\r\n', 'DHCP Scope\r\n', 'DHCP client\r\n', 'DHCP option\r\n', 'DHCP Koneksi\r\n', 'DHCP router\r\n', 'DHCP option\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2808, 240, 55, 48, 'Radio siaran termasuk jenis komunikasiâ€¦\r\n', 'suara\r\n', 'Radio\r\n', 'telpon\r\n', 'data\r\n', 'audio\r\n', 'suara\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2809, 240, 19, 49, 'Server yang bertugas melayani surat menyurat elektronik adalahâ€¦\r\n', 'Mail Server\r\n', 'DHCP Server\r\n', 'DNS Server\r\n', 'FTP Server\r\n', 'Proxy Server\r\n', 'Mail Server\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2810, 240, 12, 50, 'Contoh aplikasi FTP client antara lain...', 'SmartFtp\r\n', 'Wuftpd\r\n', 'Vsftpd\r\n', 'DNS\r\n', 'DHCP\r\n', 'SmartFtp\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2811, 240, 6, 51, 'Aplikasi untuk sharing sumberdaya seperti file, folder, printer harddisk dan sebagainya merupakan pengertian dariâ€¦\r\n', 'Samba\r\n', 'FTP\r\n', 'Mail\r\n', 'Squerrelmail\r\n', 'Roundcube\r\n', 'Samba\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2812, 240, 51, 52, 'sebuah layanan server yang berfungsi memberikan alamat ip secara otomatis ke client yang terhubung ke jaringan adalah..\r\n', 'proxy server\r\n', 'web server\r\n', 'dhcp server\r\n', 'dns server\r\n', 'database server\r\n', 'dhcp server\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2813, 240, 46, 53, 'lapisan yang berfungsi untuk mrngkonversi data yaitu..\r\n', 'physical\r\n', 'data link\r\n', 'session\r\n', 'presentation\r\n', 'application\r\n', 'presentation\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2814, 240, 48, 54, 'tugas mail server adalahâ€¦\r\n', 'melayani surat menyurat\r\n', 'melayani pengiriman barang\r\n', 'melayani pengiriman data\r\n', 'melayani pengiriman paket\r\n', 'melayani  pengiriman suara\r\n', 'melayani surat menyurat\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2815, 240, 4, 55, 'Komputer yang meminta no IP disebut...\r\n', 'DHCP Server\r\n', 'DHCP Client\r\n', 'Statis\r\n', 'TCP\r\n', 'Server\r\n', 'DHCP Client\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2816, 240, 11, 56, 'Untuk bisa login ke Server FTP kita bisa menggunakan mode...\r\n', 'Trunk\r\n', 'Allowed Trunk\r\n', 'teks\r\n', 'Teks dan GUI\r\n', 'Teks Trunk\r\n', 'Teks dan GUI\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2817, 240, 23, 57, 'perintah yang digunakan untuk melihat direktori pada linux adalah\r\n', 'dir', 'mkdir', 'nano', 'ls', 'pico', 'ls', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2818, 240, 5, 58, 'Digunakan untuk transfer file berupa download dan upload merupakan pengertian dariâ€¦\r\n', 'Samba\r\n', 'FTP\r\n', 'Mail\r\n', 'Squerrelmail\r\n', 'Roundcube\r\n', 'FTP\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2819, 240, 47, 59, 'Secara umum jaringan komputer terdiri dari dibawah ini kecualiâ€¦\r\n', 'Local area network\r\n', 'metropolitan area network\r\n', 'radio area network\r\n', 'wide area network\r\n', 'internet\r\n', 'radio area network\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2820, 240, 34, 60, 'Sebuah program aplikasi yang bertugas untuk menerima permintaan paket dan memberinya balasan berupa paket yang di inginkan client disebut..\r\n', 'Client \r\n', 'Peer to peer \r\n', 'Client-server \r\n', 'Server \r\n', 'IPCONFIG\r\n', 'Server \r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2821, 237, 91, 1, 'Protokol digunakan untuk menentukan jenis layanan yang akan digunakan untuk menentukan jenis layanan yang akan dilakukan pada internet. Standar protokol yang terpopuler saat ini adalah â€¦â€¦ yang telah ditentukan oleh ISO (International Standard Organization).\r\n', 'A. ISOP (Internet System Open Protokol)\r\n', 'B. COIC (Cloud Open Interconnecting)\r\n', 'C. FSI (Forward Sysyem Interconnecting)\r\n', 'D. OSI (Open Sysyem Interconnecting)\r\n', 'E. OFSI (Open Firewall System Interconnecting)\r\n', 'C. FSI (Forward Sysyem Interconnecting)\r\n', 'C. FSI (Forward Sysyem Interconnecting)\r\n', 'dijawab', 'benar', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2822, 237, 79, 2, 'Berikut ini contoh orientasi bisnis perangkat lunak softphone yang tepat adalah\r\n', 'A. 3CX\r\n', 'B.Microsoft Windows\r\n', 'C.Microsoft Office\r\n', 'D.Whatsapp\r\n', 'E.Instagram\r\n', 'A. 3CX\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2823, 237, 85, 3, 'Kepanjangan dari WWW adalah \r\n', 'A.Wib Wide World\r\n', 'B.Web World Web\r\n', 'C.World Wide Web\r\n', 'D.Wede Web World\r\n', 'E.Wede Website World\r\n', 'C.World Wide Web\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2824, 237, 68, 4, 'Aturan-aturan yang harus di sepakati adalahâ€¦\r\n', 'A.Switching\r\n', 'B.protocol\r\n', 'C.trasmisi\r\n', 'D.Signaling\r\n', 'E.Asynchronos\r\n', 'B.protocol\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2825, 237, 73, 5, 'Contoh komunikasi dua arah bersamaan\r\n', 'A. Orari\r\n', 'B. Televisi\r\n', 'C. Telepon \r\n', 'D. Radio \r\n', 'E. Komputer\r\n', 'C. Telepon \r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2826, 237, 80, 6, 'Apa yang dimaksud dengan trasnmitionâ€¦\r\n', 'A. Alat untuk menerima sinyal\r\n', 'B. Alat untuk memindahkan dan menyaring informasi\r\n', 'C. Jalur yang menghubungkan sumber transmisi dengan destination\r\n', 'D. Tujuan pengiriman data\r\n', 'E. Asal pengiriman data\r\n', 'C. Jalur yang menghubungkan sumber transmisi dengan destination\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2827, 237, 90, 7, 'Pada tahun-tahun terakhir aplikasi komunikasi data menjadi umum termasuk diantaranya pengecekan kartu kredit secara online, pemindahan dana dari satu bank ke bank lainnya secara elektronik dengan memanfaatkan protocolerâ€¦â€¦\r\n', 'A. X.30\r\n', 'B. X.25\r\n', 'C. X.27\r\n', 'D. X.32\r\n', 'E. X.16\r\n', 'B. X.25\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2828, 237, 110, 8, 'Sistem transmisi yang menggunakan 4 buah medium transmisi, pilihan yang benar adalah...\r\n', 'A.kabel LAN\r\n', 'B.Kabel coasial\r\n', 'C.kabel topologi\r\n', 'D.kabel tembaga\r\n', 'E.semua salah\r\n', 'D.kabel tembaga\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2829, 237, 63, 9, 'Ada berapa jenis model komunikasi data\r\n', 'A. 1\r\n', 'B. 2\r\n', 'C. 3\r\n', 'D. 4\r\n', 'E. 5\r\n', 'C. 3\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2830, 237, 87, 10, 'Dalam suatu jaringan telekomunikasi, sistem transmisi digunakan untuk saling menghubungkan?\r\n', 'A. Simplex \r\n', 'B. Central (router)\r\n', 'C. PC\r\n', 'D. Protocol\r\n', 'E. Switch\r\n', 'B. Central (router)\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2831, 237, 113, 11, 'Softphone untuk windows yang mendukung Audio dan Video melalui IPv4 adalahâ€¦.\r\n', 'A.Age phone\r\n', 'B.E-phone\r\n', 'C.Firza Phone\r\n', 'D.Arrow Phone\r\n', 'E. Iphone\r\n', 'B.E-phone\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2832, 237, 84, 12, 'Apa singkatan dari VoIPâ€¦\r\n', 'A.Voice Over internet Protocol\r\n', 'B.Voice Over Internal Protocol\r\n', 'C.Voice Offered internet Protocol\r\n', 'D. Voice Over Internal Protocol\r\n', 'E.Voice Over Internsl Problem\r\n', 'A.Voice Over internet Protocol\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2833, 237, 81, 13, 'Transmisi data maksimum yang dimiliki oleh kabel serat optik (fiber optik)adalahâ€¦\r\n', 'A. 250 Mbps\r\n', 'B. 200 Mbps\r\n', 'C. 150 Mbps\r\n', 'D. 100 Mbps\r\n', 'E. 50 Mbps\r\n', 'D. 100 Mbps\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2834, 237, 93, 14, 'Kelemahan jika kita menggunakan VoIP, kecuali\r\n', 'A. Penggunaan Bandwith minim\r\n', 'B. Kualitas suara kurang jernih\r\n', 'C. Ada jeda ketika komunikasi\r\n', 'D. Pembatasan jaringan\r\n', 'E. Peralatan mahal\r\n', 'A. Penggunaan Bandwith minim\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2835, 237, 62, 15, 'contoh komunikasi data simplex adalah â€¦.\r\n', 'A. Telepon\r\n', 'B. Video call\r\n', 'C. Radio\r\n', 'D. Orari\r\n', 'E. Setrika\r\n', 'C. Radio\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2836, 237, 71, 16, 'Salah satu jenis kabel yang digunakan untuk media transmisi adalah\r\n', 'A. Kabel tembaga\r\n', 'B. Kabel data\r\n', 'C. Kabel UTP\r\n', 'D. Kabel SATA\r\n', 'E. Kabel LAN\r\n', 'A. Kabel tembaga\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2837, 237, 83, 17, 'Berikut media pengiriman data, kecualiâ€¦\r\n', 'A. Twisted pair\r\n', 'B. Coaxial\r\n', 'C. BNC\r\n', 'D. Fiber optik\r\n', 'E. Wireless\r\n', 'C. BNC\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2838, 237, 74, 18, 'Jenis-jenis perangkat, kecuali...\r\n', 'A. Pc\r\n', 'B. Modem\r\n', 'C. Router\r\n', 'D. Nic\r\n', 'E. Lan\r\n', 'E. Lan\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2839, 237, 111, 19, 'Kepanjangan dari IBMC\r\n', 'A.Indonesian Beach ManiaC\r\n', 'B.Indonesia Bandung-Makassar Campus\r\n', 'C.International Bussines Machines Corporation\r\n', 'D. International Biografi Machines Corp\r\n', 'E.Ikatan Bawang Mendunia Cringe\r\n', 'C.International Bussines Machines Corporation\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2840, 237, 105, 20, 'Fungsi PBX IP server mirip dengan cara kerja\r\n', 'A.Extensi\r\n', 'B.Arrow Phone\r\n', 'C.Proxy Server\r\n', 'D.AGE Phone\r\n', 'E. 3CX Voip Phone for Windows\r\n', 'C.Proxy Server\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2841, 237, 94, 21, 'dibawah ini yang bukan termasuik sharing file adalah\r\n', ' A . Sharing video\r\n', 'B.Sharing Gambar\r\n', 'C.Sharing musik\r\n', 'D.Sharing Program\r\n', 'E.Sharing Harddisk\r\n', 'D.Sharing Program\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2842, 237, 112, 22, 'berikut ini salah satu perangkat softphone yang menggunakan micro SIP stack dan berjalan tidak hanya pada windows adalah..\r\n', 'A.Age phone\r\n', 'B.E-phone\r\n', 'C.Firza Phone\r\n', 'D.Arrow Phone\r\n', 'E.Ace Phone\r\n', 'A.Age phone\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2843, 237, 114, 23, 'sebuah sistem yang terdiri dari 1 atau lebih telepon SIP... \r\n', 'A.IP\r\n', 'B.IP Address\r\n', 'C.IP PBX\r\n', 'D.IPE\r\n', 'E.AIPI\r\n', 'C.IP PBX\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2844, 237, 96, 24, 'Net id pada jaringan denagn ip 192.168.12 adalah \r\n', 'A.192.168.8.12\r\n', 'B.192.168.8\r\n', 'C.192.168\r\n', 'D.8.12\r\n', 'E.12\r\n', 'B.192.168.8\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2845, 237, 89, 25, 'Contoh perangkat yang menngunakan sistem transmisi Full-duplex..\r\n', 'A.Pager \r\n', 'B.Radio \r\n', 'C. HT(Handy Talking)\r\n', 'D.Telepon\r\n', 'E.Kamera \r\n', 'D.Telepon\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2846, 237, 70, 26, 'Salah satu contoh dari Standar International Telecommunication Uniun Of Telecomunucation, kecuali\r\n', 'A. JPEG\r\n', 'B. MPEG\r\n', 'C. H323\r\n', 'D. CR.709\r\n', 'E. MP4\r\n', 'E. MP4\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2847, 237, 77, 27, 'Karekteristik dasar komunikasiâ€¦data \r\n', 'A.2\r\n', 'B. 3\r\n', 'C. 4\r\n', 'D. 5\r\n', 'E. 6\r\n', 'C. 4\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2848, 237, 101, 28, 'Kepanjangan dari MPEG\r\n ', 'A. Motion Picture expert Group\r\n', 'B. Motion Pics Expert Ground\r\n', 'C. Moonton Pro Endoor Grup\r\n', 'D. Man Picture Expert Group\r\n', 'E. Motion Picture Enternal Ground\r\n', 'A. Motion Picture expert Group\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2849, 237, 67, 29, 'Dibawah ini yang bukan jenis ragam komunikasi adalahâ€¦ \r\n', 'A. Komunikasi Data\r\n', 'B. Komunikasi Video\r\n', 'C. Komunikasi Audio\r\n', 'D. Komunikasi Audio Video\r\n', '', 'A. Komunikasi Data\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2850, 237, 75, 30, 'Komunikasi data simplex adalah...\r\n', 'A. Satu arah\r\n', 'B. Dua arah secara bergantian\r\n', 'C. Dua arah secara bersamaan\r\n', 'D. A dan B benar\r\n', 'E. Semua benar\r\n', 'A. Satu arah\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2851, 237, 95, 31, 'Pegembangan dari email untuk membuat grup tertentu dengan menggabungkan alamat email orang yang akan bergabung ialah\r\n', 'A.SMS\r\n', 'B.WAP\r\n', 'C.VOIP\r\n', 'D.Tele\r\n', 'E Mailing list\r\n', 'D.Tele\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2852, 237, 119, 32, 'Beberapa contoh orientasi bisnis perangkat lunak softphone, kecuali...\r\n', 'A. 3CX\r\n', 'B. Arrow Phone\r\n', 'C. Age Phone\r\n', 'D. I-phone\r\n', 'E. E-phone\r\n', 'D. I-phone\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2853, 237, 65, 33, 'Ada berapa channel transmisi\r\n', 'A. 5\r\n', '\r\nB. 6\r\n', 'C. 3', '\r\nD. 2\r\n', 'E. 1', 'C. 3', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2854, 237, 108, 34, 'Analisis kebutuhan perangkat dalam komunikasi kecuaili\r\n', 'A.Kabel fiber optik\r\n', 'B.kabel coasial\r\n', 'C.Twisted pair\r\n', 'D.Serat optik\r\n', 'E.urghicled twisted pair\r\n', 'A.Kabel fiber optik\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2855, 237, 121, 35, 'Komunikasi data yang dapat dilakukan dua arah secara bergantian adalahâ€¦\r\n', 'A. Simplex \r\n', 'B.Full Duplex\r\n', 'C. Semi Duplex\r\n', 'D.Dpuble Duplex\r\n', 'E. Half Duplex\r\n', 'E. Half Duplex\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2856, 237, 76, 36, 'Contoh Komunikasi video adalahâ€¦\r\n', 'A. Cctv\r\n', 'B. Tv\r\n', 'C. Radio\r\n', 'D. Tape recorder\r\n', 'E. Semua benar\r\n', 'A. Cctv\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2857, 237, 116, 37, 'fungsi IP phone dalam perangkat VOIP adalahâ€¦.\r\n', 'A.sebagai operating system VOIP\r\n', 'B.sebagai handphone untuk memanggil atau menerima telepon \r\n', 'C.sebagai Softphone untuk memanggil dan menerima \r\n', 'D.sebagai koneksi \r\n', 'E.sebagai pengangkat \r\n', 'B.sebagai handphone untuk memanggil atau menerima telepon \r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2858, 237, 104, 38, 'PBX kepanjangan dari!\r\n', 'A.Past Branch eXecute\r\n', 'B.Private Band eXecure\r\n', 'C.Pust Batch Xstream\r\n', 'D.Pristine Bandwitch eXtensi\r\n', 'E.Private Branch eXchange\r\n', 'D.Pristine Bandwitch eXtensi\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2859, 237, 86, 39, 'Ada dua cara dalam melakukan teknik transmisi, yaitu\r\n', 'A. Ashyncronous dan Shyncronous\r\n', 'B. Sinkron dan transmisi\r\n', 'C. Transfer dan transmisi\r\n', 'D. Transmisi dan shyncronous\r\n', 'E. Transfer dan ashyncronous\r\n', 'A. Ashyncronous dan Shyncronous\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2860, 237, 97, 40, 'TCP/IP dibuat oleh \r\n', 'A.ARPA\r\n', 'B.OSI\r\n', 'C.ISO\r\n', 'D.Telkom \r\n', 'E.GPS\r\n', 'A.ARPA\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2861, 237, 107, 41, 'Berbasis Java Open soure client voip yang mendukung Audio dan Video melalui IpV4 dna Ipv6\r\n', 'A.Sip Comunicator\r\n', 'B.Gizmo Free\r\n', 'C.E-Phone\r\n', 'D.Arrow Phone\r\n', 'E.3CX\r\n', 'A.Sip Comunicator\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2862, 237, 102, 42, 'Yang mendukung Audio dan Video melalui ipv4 dan input adalah\r\n', 'A.voip\r\n', 'B. diagram\r\n', 'C. AGE Phone\r\n', 'D. gradi\r\n', 'E. semuanya benar\r\n', 'A.voip\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2863, 237, 78, 43, 'Berikut ini merupakan contoh ITU ( Internatonal Telecommunication Union),kecuali\r\n', 'A.JPEG\r\n', 'B.PNG\r\n', 'C.MPEG\r\n', 'D.H.323\r\n', 'E.G.709\r\n', 'B.PNG\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2864, 237, 69, 44, 'radio adalah contoh dari komunikasi dataâ€¦\r\n', 'A.Simplex\r\n', 'B.half simplex\r\n', 'C.Duplex\r\n', 'D.Half Duplex\r\n', 'E.Full Duplex\r\n', 'A.Simplex\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2865, 237, 99, 45, 'ITU Terbagi menjadi\r\n', 'A.1\r\n', 'B.2\r\n', 'C.3\r\n', 'D.4\r\n', 'E.5\r\n', 'C.3\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2866, 237, 109, 46, 'Standar pengkodean pelayanan video disebutâ€¦\r\n', 'A.PNG\r\n', 'B.JPEG\r\n', 'C.MPEG\r\n', 'D.H323\r\n', 'E.g709\r\n', 'C.MPEG\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2867, 237, 82, 47, 'Yang tidak termasuk dalam sistem transmisi adalah â€¦\r\n', 'A. Simplex \r\n', 'B. Full-duflex \r\n', 'C. Satu arah\r\n', 'D. Half-duflex\r\n', 'E. Duplex\r\n', 'D. Half-duflex\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2868, 237, 117, 48, 'jenis perangkat dalam telekomunikasi kecualiâ€¦.\r\n', 'A.NIC\r\n', 'B.PC\r\n', 'C.Router\r\n', 'D.Switch\r\n', 'E.Keyboard\r\n', 'E.Keyboard\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2869, 237, 88, 49, 'Salah satu jalur yang digunakan untuk berkomunikasi data adalah \r\n', 'A. Bus \r\n', 'B.Satelit \r\n', 'C.Bandwidth \r\n', 'D. Throughput \r\n', 'E.Topologi\r\n', 'B.Satelit \r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2870, 237, 115, 50, 'berikut fungsi X-lite yang benar adalahâ€¦..\r\n', 'A.memanggil atau menerima \r\n', 'B.mentransmisikan data \r\n', 'C.Memeriksa data\r\n', 'D.menghancurkan data \r\n', 'E.semua salah \r\n', 'A.memanggil atau menerima \r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2871, 237, 66, 51, 'Prosses pengiriman dan penerimaan data atau informasi dari dua atau lebih alat di sebutâ€¦\r\n', 'A. Komunikasi Data\r\n', 'B. Komunikasi Video\r\n', 'C. Komunikasi Audio\r\n', 'D. Komunikasi Audio Video\r\n', 'E. Komunikasi Telepon\r\n', 'A. Komunikasi Data\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2872, 237, 120, 52, 'Apa itu komunikasi video?\r\n', 'A. Suatu alat komunikasi yang dapat ditangkap melalui alat pernafasan\r\n', 'B. Suatu alat komunikasi yang dapat ditangkap melalui alat pendengaran\r\n', 'C. Suatu alat komunikasi yang dapat ditangkap melalui alat penglihatan\r\n', 'D. Suatu alat komunikasi yang dapat ditangkap melalui alat penglihatan dan pendengaran\r\n', 'E. Suatu komunikasi yang dilakukan secara 2 arah\r\n', 'C. Suatu alat komunikasi yang dapat ditangkap melalui alat penglihatan\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2873, 237, 92, 53, 'Kelebihan jika kita menggunakan VoIP, kecuali\r\n', 'A. Biaya murah\r\n', 'B. Instalasi mudah\r\n', 'C. Kualitas suara jernih\r\n', 'D. Penggunaan Bandwith minim\r\n', 'E. Penggunaan alat mudah\r\n', 'C. Kualitas suara jernih\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2874, 237, 103, 54, 'Menggunakan micro sip stack dan berjalan tidak hanya pada windows tapi juga pada\r\n', 'A. E/packet pc dan windows mobile\r\n', 'B. komputer\r\n', 'C. IP address\r\n', 'D. diangram operasi\r\n', 'E. semuanya benar\r\n', 'A. E/packet pc dan windows mobile\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2875, 237, 98, 55, 'kepanjangan dari ITU adalah\r\n', 'A.International Telecomminication Unifrom\r\n', 'B.International Telecommunication Uniun\r\n', 'C.Intianati Test Union\r\n', 'D.International Telepon Unifrom\r\n', 'E.In The USA\r\n', 'B.International Telecommunication Uniun\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2876, 237, 100, 56, 'Kepanjangan dari JPEG\r\n', 'A. Joint Photographic Expert Group\r\n', 'B. Join Photo Exspert Grup\r\n', 'C. Joint Photographic Expert graoun\r\n', 'D. Join Photo Expert Grafik\r\n', 'D. Joint Photo Enternal Grapik\r\n', 'A. Joint Photographic Expert Group\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2877, 237, 106, 57, 'Penyedia layanan telpon yang membayari pertukaran telpon denga pesat\r\n', 'A.PTSN\r\n', 'B.PBX\r\n', 'C.SIP Comonicator\r\n', 'D.Voip\r\n', 'E.Ip Phone\r\n ', 'B.PBX\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2878, 237, 118, 58, 'Apa kepanjangan VoIP\r\n', 'A. Visual over Internet Protocol\r\n', 'B. Voice over Internet Protocol\r\n', 'C. Verbal over Internet Protocol\r\n', 'D. Voice open Internet Protocol\r\n', 'E. Voice on Internet Protocol\r\n', 'B. Voice over Internet Protocol\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2879, 237, 72, 59, 'Teknologi yang mampu mengirimkan data suara, video dan data yang berbentuk paket adalah pengertian dariâ€¦\r\n', 'A. PBX\r\n', 'B. Arrow Phone\r\n', 'C. Age Phone\r\n', 'D. Voip\r\n', 'E. Sip Communicator\r\n', 'D. Voip\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(2880, 237, 64, 60, 'yang dimaksud dengan komunikasi data adalah\r\n', 'A. Proses pengiriman dan penerimaan data\r\n', 'B. Proses pengiriman dan penerimaan kouta\r\n', 'C. Proses pengiriman dan penerimaan Audio\r\n', 'D. Proses pengiriman dan penerimaan Video\r\n', 'E. Proses pengiriman dan penerimaan pesan\r\n', 'A. Proses pengiriman dan penerimaan data\r\n', '-', 'tidak dijawab', '-', 'tidak-ragu', 'adffef7000fede9334ca13983e69edccad3c49a6');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `id` int(11) NOT NULL,
  `kelas` int(11) NOT NULL,
  `jurusan` varchar(100) NOT NULL,
  `token` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kelas`
--

INSERT INTO `tb_kelas` (`id`, `kelas`, `jurusan`, `token`) VALUES
(81, 11, 'TKJ ', 'bf4794b4362c2a18bf19dc6e67696560ac58dba9');

-- --------------------------------------------------------

--
-- Table structure for table `tb_nilai`
--

CREATE TABLE `tb_nilai` (
  `id` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_jadwal` int(11) NOT NULL,
  `jmlh_soal` int(11) NOT NULL,
  `benar` int(11) NOT NULL,
  `salah` int(11) NOT NULL,
  `tidak_dijawab` int(11) NOT NULL,
  `dijawab` int(11) NOT NULL,
  `nilai` varchar(11) NOT NULL,
  `token` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_operator`
--

CREATE TABLE `tb_operator` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_operator`
--

INSERT INTO `tb_operator` (`id`, `nama`, `email`, `password`) VALUES
(1, 'Operator', 'operator@gmail.com', 'P@ssw0rd');

-- --------------------------------------------------------

--
-- Table structure for table `tb_settings`
--

CREATE TABLE `tb_settings` (
  `id` int(11) NOT NULL,
  `selesai_redirect` varchar(100) NOT NULL,
  `warna_topbar` varchar(100) NOT NULL,
  `warna_sidebar` varchar(50) NOT NULL,
  `nomor_hover` varchar(100) NOT NULL,
  `text_footer` varchar(256) NOT NULL,
  `card` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_settings`
--

INSERT INTO `tb_settings` (`id`, `selesai_redirect`, `warna_topbar`, `warna_sidebar`, `nomor_hover`, `text_footer`, `card`) VALUES
(1, 'lihat-nilai', 'dark', 'gradient-primary', 'rotate-0deg border-dark', 'Â© Copyright UNBK by Muhammad Zulfa', 'shadow-hover');

-- --------------------------------------------------------

--
-- Table structure for table `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `id` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(5) NOT NULL,
  `password` varchar(5) NOT NULL,
  `status` varchar(21) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_siswa`
--

INSERT INTO `tb_siswa` (`id`, `id_kelas`, `nama`, `username`, `password`, `status`) VALUES
(235, 81, 'Muhammad Zulfa', 'f8779', '94cfc', 'logout'),
(236, 81, 'Muhammad Taufiqurrahman', '720e8', '012ec', 'logout'),
(237, 81, 'Ridwan Donny Muziburrahman', 'c9255', 'f38f3', 'logout'),
(238, 81, 'Rama', 'a6729', '68c32', 'logout'),
(239, 81, 'Siti', '7a1ef', '25a8c', 'logout'),
(240, 81, 'Rini', 'be905', 'cc9b8', 'logout'),
(241, 81, 'Wahyu', 'f471d', '670c9', 'logout'),
(242, 81, 'Najmi', 'c1f47', '1eed5', 'logout'),
(244, 81, 'Baihaki', 'fad9f', 'fa7fa', 'logout'),
(245, 81, 'Rio', 'd46df', '2f479', 'logout'),
(246, 81, 'Yasir', 'd3b8d', 'd8ac5', 'logout'),
(247, 81, 'Ridani', 'a3e3a', '9ad07', 'logout'),
(248, 81, 'Firza', 'ba9d4', 'd8ebd', 'logout'),
(249, 81, 'Anwar', 'd9d7a', 'c9bba', 'logout'),
(250, 81, 'Ofal', '7ad9d', '1fb69', 'logout'),
(251, 81, 'Meta', '529a0', '60279', 'logout'),
(252, 81, 'Alaw', '0119f', 'f018b', 'logout'),
(253, 81, 'Fia', '72b18', 'ba8f0', 'logout'),
(254, 81, 'Muly', '3ee80', 'dd75b', 'logout'),
(255, 81, 'Aulia', 'c5c92', '3b1fb', 'logout'),
(256, 81, 'Aldonny', '5e1f0', 'd2cf4', 'logout'),
(257, 81, 'Daus', 'c7d5a', '8cc82', 'logout'),
(258, 81, 'Rafli', '98168', '95cdc', 'logout'),
(259, 81, 'Misbah', '12a5a', '5bbd7', 'logout'),
(260, 81, 'Rizky', '64524', '15cd2', 'logout'),
(261, 81, 'Arma', 'e3d98', 'cfa39', 'logout'),
(262, 81, 'Ucuk', '150ca', '37199', 'logout'),
(263, 81, 'Rizka', '62fa0', '2da01', 'logout'),
(264, 81, 'Mayada', '83920', 'eb8ad', 'logout'),
(265, 81, 'Bima', '7c314', '00e2f', 'logout'),
(266, 81, 'Hadi', 'ccf5f', '47b8c', 'logout'),
(267, 81, 'Jin', '4a397', 'dcfe2', 'logout'),
(268, 81, 'Sandi', '5e7e8', '4774e', 'logout'),
(269, 81, 'Miftah', '00b5b', 'ca9f9', 'logout'),
(270, 81, 'Dandy', '22a39', 'c9403', 'logout');

-- --------------------------------------------------------

--
-- Table structure for table `tb_soal`
--

CREATE TABLE `tb_soal` (
  `id` int(11) NOT NULL,
  `id_jadwal` int(11) NOT NULL,
  `soal` text NOT NULL,
  `pil_a` text NOT NULL,
  `pil_b` text NOT NULL,
  `pil_c` text NOT NULL,
  `pil_d` text NOT NULL,
  `pil_e` text NOT NULL,
  `kunci` text NOT NULL,
  `token` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_soal`
--

INSERT INTO `tb_soal` (`id`, `id_jadwal`, `soal`, `pil_a`, `pil_b`, `pil_c`, `pil_d`, `pil_e`, `kunci`, `token`) VALUES
(1, 1, 'apa kepanjangan DHCP...\r\n', 'Dynamic Host Control Protocol\r\n', 'Domain Hert Control Protocol\r\n', 'Domain Hert Central Protocol\r\n', 'Domain Host Control Protocol\r\n', 'Dynamic hert Control Protocol\r\n', 'Dynamic Host Control Protocol\r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(2, 1, 'IP address 12.10.10.1 adalah ip kelas...\r\n', 'A\r\n', 'B\r\n', 'C\r\n', 'Private\r\n', 'Jawaban A dan E benar\r\n', 'A\r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(3, 1, 'DNS biasa digunakan pada aplikasi yang terhubung ke...', 'E-mail\r\n', 'Modem\r\n', 'Web server\r\n', 'Internet \r\n', 'Mail server\r\n', 'Internet \r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(4, 1, 'Komputer yang meminta no IP disebut...\r\n', 'DHCP Server\r\n', 'DHCP Client\r\n', 'Statis\r\n', 'TCP\r\n', 'Server\r\n', 'DHCP Client\r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(5, 1, 'Digunakan untuk transfer file berupa download dan upload merupakan pengertian dariâ€¦\r\n', 'Samba\r\n', 'FTP\r\n', 'Mail\r\n', 'Squerrelmail\r\n', 'Roundcube\r\n', 'FTP\r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(6, 1, 'Aplikasi untuk sharing sumberdaya seperti file, folder, printer harddisk dan sebagainya merupakan pengertian dariâ€¦\r\n', 'Samba\r\n', 'FTP\r\n', 'Mail\r\n', 'Squerrelmail\r\n', 'Roundcube\r\n', 'Samba\r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(7, 1, 'Layanan yang secara otomatis memberikan no IP kepada komputer yang memintanya adalah...\r\n', 'TCP\r\n', 'Server\r\n', 'Konfigurasi\r\n', 'Statis\r\n', 'DHCP\r\n', 'DHCP\r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(8, 1, 'Salah satu aplikasi pengelolaan DNS pada debian adalah...', 'DNS3\r\n', 'Bind9\r\n', 'VSFTPD\r\n', 'Squid\r\n', 'Samba\r\n', 'Bind9\r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(9, 1, 'kekurangan DNS yaitu...', 'Berbayar \r\n', 'Fleksibel\r\n', 'Kompatibel \r\n', 'Mudah \r\n', 'Gratis\r\n', 'Berbayar \r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(10, 1, 'DNS bisa digunakan pada aplikasi yang terhubung ke...', 'Internet\r\n', 'Domain\r\n', 'Host \r\n', 'Server\r\n', 'Login\r\n', 'Internet\r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(11, 1, 'Untuk bisa login ke Server FTP kita bisa menggunakan mode...\r\n', 'Trunk\r\n', 'Allowed Trunk\r\n', 'teks\r\n', 'Teks dan GUI\r\n', 'Teks Trunk\r\n', 'Teks dan GUI\r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(12, 1, 'Contoh aplikasi FTP client antara lain...', 'SmartFtp\r\n', 'Wuftpd\r\n', 'Vsftpd\r\n', 'DNS\r\n', 'DHCP\r\n', 'SmartFtp\r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(13, 1, 'Alamat IP yang dapat disewakan kepada DHCP client di sebut...\r\n', 'DHCP Server\r\n', 'DHCP scope\r\n', 'DHCP option\r\n', 'DHCP lease\r\n', 'DHCP client\r\n', 'DHCP scope\r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(14, 1, 'Batas waktu penyewaan alamat IP yang diberikan kepada DHCP client oleh DHCP server disebutâ€¦\r\n', 'DHCP Server\r\n', 'DHCP scope\r\n', 'DHCP option\r\n', 'DHCP lease\r\n', 'DHCP client\r\n', 'DHCP lease\r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(15, 1, 'perintah init 6 digunakan untuk...\r\n', 'berpindah direktori\r\n', 'melihat isi direktori\r\n', 'restart\r\n', 'shut down\r\n', 'shutdown setelah 6 detik\r\n', 'restart\r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(16, 1, 'perintah killall digunakan untuk...\r\n', 'mematikan komputer\r\n', 'shutdown\r\n', 'mematikan aplikasi yang running\r\n', 'mematikan koneksi internet\r\n', 'membunuh semua virus\r\n', 'mematikan aplikasi yang running\r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(17, 1, 'printah yang digunakan untuk mengecek koneksi internet di linux adalahâ€¦\r\n', 'if config\r\n', 'ip\r\n', 'rc. local\r\n', 'dx diag\r\n', 'ping\r\n', 'ping\r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(18, 1, 'Dibawah ini yang merupakan perangkat wan adalah, kecuali\r\n', 'Hub\r\n', 'Modem\r\n', 'Repester\r\n', 'Router\r\n', 'Bridge\r\n', 'Bridge\r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(19, 1, 'Server yang bertugas melayani surat menyurat elektronik adalahâ€¦\r\n', 'Mail Server\r\n', 'DHCP Server\r\n', 'DNS Server\r\n', 'FTP Server\r\n', 'Proxy Server\r\n', 'Mail Server\r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(20, 1, 'Aplikasi yang digunakan dalam mail server untuk mengirim surat adalah\r\n', 'Courier-Pop\r\n', 'Postfix\r\n', 'Courier-imap\r\n', 'Squirrelmail\r\n', 'FTP\r\n', 'Courier-imap\r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(21, 1, 'server terdiri dari 2 komponen utama antara lainâ€¦\r\n', 'software dan brainware\r\n', 'software dan protocol\r\n', 'software dan hardware\r\n', 'software dan TCP\r\n', 'semua salah\r\n', 'software dan hardware\r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(22, 1, 'server adalahâ€¦\r\n', 'suatu perantara agar terhubung\r\n', 'suatu jenis os yang memungkinkan pengguna untuk pelajar\r\n', 'suatu perangkat jaringan yang memberikan layanan terhadap pengguna\r\n', 'suatu perangkat jaringan yang menjadikan perantara\r\n', 'sejenis sistem operasi jaringan\r\n', 'suatu perangkat jaringan yang memberikan layanan terhadap pengguna\r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(23, 1, 'perintah yang digunakan untuk melihat direktori pada linux adalah\r\n', 'dir', 'mkdir', 'nano', 'ls', 'pico', 'ls', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(24, 1, 'Clear digunakan untuk\r\n', 'membersihkan sampah\r\n', 'menghapuskan semua data\r\n', 'membersihkan tampilan\r\n', 'menghapus aplikasi\r\n', 'menyelesaikan misi\r\n', 'membersihkan tampilan\r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(25, 1, 'perintah yang digunakan untuk mengedit pada linux server adalah â€¦\r\n', ' Nano\r\n', ' /etc/\r\n', ' /networking/\r\n', 'restart\r\n', ' Server\r\n', ' Nano\r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(26, 1, 'Perintah linux debian untuk masuk ke root ( super user ) adalah â€¦\r\n', ' Nano\r\n', 'su\r\n', ' rc.local\r\n', ' restart\r\n', ' sysctl\r\n', 'su\r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(27, 1, 'Dua hal penting dalam FTP adalahâ€¦\r\n', 'DHCP Server & FTP Client\r\n', 'DHCP server & FTP Server\r\n', 'FTP Server & DHCP Client\r\n', 'FTP Server & DNS Client\r\n', 'FTP Server & FTP Client\r\n', 'FTP Server & FTP Client\r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(28, 1, 'Simbol prompt yang menandakan bahwa bahwa seseorang login sebagai user biasa pada Linux berbasis text adalahâ€¦\r\n', '%\r\n', '&\r\n', '$\r\n', '#\r\n', '@\r\n', '$\r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(29, 1, 'fungsi swapoff ialahâ€¦.\r\n', 'enable swap\r\n', 'mendisable swap \r\n', 'melihat nama host \r\n', 'restart\r\n', 'power off \r\n', 'mendisable swap \r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(30, 1, 'berikut perintah dasar linux, kecuali \r\n', 'CD\r\n', 'MV\r\n', 'enter\r\n', 'cat\r\n', 'CP\r\n', 'enter\r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(31, 1, 'Protokol TCP/IP berhubungan dengan pengguna aplikasi yang berguna untuk terminal maya jarak jauhâ€¦\r\n', 'HTTP\r\n', 'FTP\r\n', 'SMPTP\r\n', 'TELNET \r\n', 'UDP\r\n', 'TELNET \r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(32, 1, 'Protokol umum yang sering digunakan oleh mailserver adalah, kecualiâ€¦\r\n', 'SMTP\r\n', 'POP3\r\n', 'IMAP \r\n', 'TCP Atau IP\r\n', 'IPCONFIG\r\n', 'TCP Atau IP\r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(33, 1, 'UDP (User Datagram Protokol ) adalah protokol sejenis dengan TCP yangâ€¦\r\n', 'Connectionless\r\n', 'Authorities\r\n', 'Oriented \r\n', 'Connectionpass\r\n', 'Dynamic Host \r\n', 'Connectionless\r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(34, 1, 'Sebuah program aplikasi yang bertugas untuk menerima permintaan paket dan memberinya balasan berupa paket yang di inginkan client disebut..\r\n', 'Client \r\n', 'Peer to peer \r\n', 'Client-server \r\n', 'Server \r\n', 'IPCONFIG\r\n', 'Server \r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(35, 1, 'Jika suatu komputer memiliki sebuah alamat ip yaitu 192.168.10.1, maka network nya adalahâ€¦\r\n', '192.168.10.1\r\n', '192.168.10.0\r\n', '255.255.255.0\r\n', '255.255.255.252\r\n', '192.168.10.2\r\n', '192.168.10.0\r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(36, 1, '192.168.10.1 mempunyai sebuah netmask yaitu..\r\n', '255.255.255.0\r\n', '255.255.255.252\r\n', '192.168.10.0\r\n', '192.168.10.1\r\n', '192.168.10.2\r\n', '255.255.255.0\r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(37, 1, 'DNS merupakan singkatan dari \r\n', 'Dynamic name service\r\n', 'domain name service\r\n', 'domain name system\r\n', 'dynamic name server\r\n', 'domain name static\r\n', 'domain name system\r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(38, 1, 'Host ID untuk IP Adrress kelas C adalahâ€¦.\r\n', '12 bit terakhir\r\n', '18 bit terakhir\r\n', '8 bit terakhir\r\n', '24 bit terakhir\r\n', '4 bit terakhir\r\n', '8 bit terakhir\r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(39, 1, 'Surat yg berbentuk elektronik dan dikirim dgn jaringan internet disebut...\r\n', 'E-mail\r\n', 'MIRC\r\n', 'Telnet\r\n', 'Chatting\r\n', 'Sending\r\n', 'E-mail\r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(40, 1, 'sebuah workstation komputer yang dijadikan pusat untuk mengatur semua printer yang terhubung melalui networking yaituâ€¦.\r\n', 'samba server\r\n', 'document IT\r\n', 'Printer server \r\n', 'file server\r\n', 'protocol NET BEUI\r\n', 'Printer server \r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(41, 1, 'Program bantu yang memberikan interface model web untuk mengandministrasi samba adalah..\r\n', 'smb client\r\n', 'smb passwd\r\n', 'smb status\r\n', '.smb tar\r\n', 'swat\r\n', 'swat\r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(42, 1, 'Menurut referensi OSI layer atau lapisan protokol berjumlah\r\n', '3\r\n', '4\r\n', '5\r\n', '7\r\n', '6', '7\r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(43, 1, 'Pada pemasangan kabel straight, pin yang digunakan untuk menerima atau receiving data adalah\r\n', ' 1 dan 2\r\n', '6 dan 8\r\n', '4 dan 5\r\n', ' 3 dan 6\r\n', '3 dan 8\r\n', ' 3 dan 6\r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(44, 1, 'seperangkat aturan, atau suatu perjanjian yang mengatur/mendeterminasikan format dan transmisi data yang dilakukan disebut dengan..\r\n', 'protokol\r\n', 'ISO\r\n', 'OSI\r\n', 'TCP/IP\r\n', 'LAYER\r\n', 'protokol\r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(45, 1, 'lapisan yang berfungsi untuk mengatur jalur pengiriman data adalahâ€¦\r\n', 'physical\r\n', 'data link\r\n', 'network\r\n', 'transport\r\n', 'session\r\n', 'network\r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(46, 1, 'lapisan yang berfungsi untuk mrngkonversi data yaitu..\r\n', 'physical\r\n', 'data link\r\n', 'session\r\n', 'presentation\r\n', 'application\r\n', 'presentation\r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(47, 1, 'Secara umum jaringan komputer terdiri dari dibawah ini kecualiâ€¦\r\n', 'Local area network\r\n', 'metropolitan area network\r\n', 'radio area network\r\n', 'wide area network\r\n', 'internet\r\n', 'radio area network\r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(48, 1, 'tugas mail server adalahâ€¦\r\n', 'melayani surat menyurat\r\n', 'melayani pengiriman barang\r\n', 'melayani pengiriman data\r\n', 'melayani pengiriman paket\r\n', 'melayani  pengiriman suara\r\n', 'melayani surat menyurat\r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(49, 1, 'command menambahkan dvd baru adalah\r\n', 'Apt-cdrom add\r\n', 'Apt-get install\r\n', 'Apt-get add\r\n', 'Apt-dhcp\r\n', 'Apt-get install cdrom\r\n', 'Apt-cdrom add\r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(50, 1, 'perintah untuk menguji koneksi jaringan di linux adalah\r\n', 'Is\r\n', 'ping\r\n', 'trace\r\n', 'tes\r\n', 'ifconfig\r\n', 'ping\r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(51, 1, 'sebuah layanan server yang berfungsi memberikan alamat ip secara otomatis ke client yang terhubung ke jaringan adalah..\r\n', 'proxy server\r\n', 'web server\r\n', 'dhcp server\r\n', 'dns server\r\n', 'database server\r\n', 'dhcp server\r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(52, 1, 'untuk menginstall paket software di debian linux menggunakan perintah..\r\n', 'Apt-cdrom add\r\n', 'index cd\r\n', 'Apt-get update\r\n', 'Apt-get install\r\n', 'Apt-get uninstall\r\n', 'Apt-get install\r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(53, 1, 'File yang berisi setting interface jaringan di debian text adalah\r\n', '/etc/init.d/networking\r\n', '/etc/bind/bind.conf\r\n', '/etc/network/eth0.conf\r\n', '/etc/network/interface\r\n', '/etc/network/interfaces\r\n', '/etc/network/interfaces\r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(54, 1, 'FTP adalah singkatan dariâ€¦?\r\n', 'File Transfer Protokol\r\n', 'File Transfer pro/kontra\r\n', 'File Transfeeer Protokol\r\n', 'File Transfer poroporo\r\n', 'Semua jawaban benar\r\n', 'File Transfer Protokol\r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(55, 1, 'Radio siaran termasuk jenis komunikasiâ€¦\r\n', 'suara\r\n', 'Radio\r\n', 'telpon\r\n', 'data\r\n', 'audio\r\n', 'suara\r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(56, 1, 'yang termasuksistem operasi open source adalahâ€¦\r\n', 'Linux\r\n', 'Windows\r\n', 'DOS\r\n', 'Macintosh\r\n', 'Unix\r\n', 'Linux\r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(57, 1, 'Salah satu elemen DHCP pada jawaban di bawah ini adalah\r\n', 'Dhcp server\r\n', 'DHCP client\r\n', 'DHCP Scope\r\n', 'DHCP Koneksi\r\n', 'DHCP Ruter\r\n', 'DHCP Scope\r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(58, 1, 'DHCP yang berfungsi sebagai tambahan pengaturan alamat ip yaitu\r\n', 'DHCP Scope\r\n', 'DHCP client\r\n', 'DHCP option\r\n', 'DHCP Koneksi\r\n', 'DHCP router\r\n', 'DHCP option\r\n', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(59, 1, 'untuk mengupdate repository ke internet, kita mengkonfigurasi file', '/etc/network/interfaces', '/etc/network/repository', '/etc/apt/sources', '/etc/apt/sources.list', '/etc/apt/source', '/etc/apt/sources.list', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(60, 1, 'layanan web server menggunakan paket', 'web server', 'dns', 'apache2', 'postfix', 'courier', 'apache2', '4ceba07f96e204391af8c82d508a5bd4e7342e67'),
(62, 2, 'contoh komunikasi data simplex adalah â€¦.\r\n', 'A. Telepon\r\n', 'B. Video call\r\n', 'C. Radio\r\n', 'D. Orari\r\n', 'E. Setrika\r\n', 'C. Radio\r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(63, 2, 'Ada berapa jenis model komunikasi data\r\n', 'A. 1\r\n', 'B. 2\r\n', 'C. 3\r\n', 'D. 4\r\n', 'E. 5\r\n', 'C. 3\r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(64, 2, 'yang dimaksud dengan komunikasi data adalah\r\n', 'A. Proses pengiriman dan penerimaan data\r\n', 'B. Proses pengiriman dan penerimaan kouta\r\n', 'C. Proses pengiriman dan penerimaan Audio\r\n', 'D. Proses pengiriman dan penerimaan Video\r\n', 'E. Proses pengiriman dan penerimaan pesan\r\n', 'A. Proses pengiriman dan penerimaan data\r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(65, 2, 'Ada berapa channel transmisi\r\n', 'A. 5\r\n', '\r\nB. 6\r\n', 'C. 3', '\r\nD. 2\r\n', 'E. 1', 'C. 3', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(66, 2, 'Prosses pengiriman dan penerimaan data atau informasi dari dua atau lebih alat di sebutâ€¦\r\n', 'A. Komunikasi Data\r\n', 'B. Komunikasi Video\r\n', 'C. Komunikasi Audio\r\n', 'D. Komunikasi Audio Video\r\n', 'E. Komunikasi Telepon\r\n', 'A. Komunikasi Data\r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(67, 2, 'Dibawah ini yang bukan jenis ragam komunikasi adalahâ€¦ \r\n', 'A. Komunikasi Data\r\n', 'B. Komunikasi Video\r\n', 'C. Komunikasi Audio\r\n', 'D. Komunikasi Audio Video\r\n', '', 'A. Komunikasi Data\r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(68, 2, 'Aturan-aturan yang harus di sepakati adalahâ€¦\r\n', 'A.Switching\r\n', 'B.protocol\r\n', 'C.trasmisi\r\n', 'D.Signaling\r\n', 'E.Asynchronos\r\n', 'B.protocol\r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(69, 2, 'radio adalah contoh dari komunikasi dataâ€¦\r\n', 'A.Simplex\r\n', 'B.half simplex\r\n', 'C.Duplex\r\n', 'D.Half Duplex\r\n', 'E.Full Duplex\r\n', 'A.Simplex\r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(70, 2, 'Salah satu contoh dari Standar International Telecommunication Uniun Of Telecomunucation, kecuali\r\n', 'A. JPEG\r\n', 'B. MPEG\r\n', 'C. H323\r\n', 'D. CR.709\r\n', 'E. MP4\r\n', 'E. MP4\r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(71, 2, 'Salah satu jenis kabel yang digunakan untuk media transmisi adalah\r\n', 'A. Kabel tembaga\r\n', 'B. Kabel data\r\n', 'C. Kabel UTP\r\n', 'D. Kabel SATA\r\n', 'E. Kabel LAN\r\n', 'A. Kabel tembaga\r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(72, 2, 'Teknologi yang mampu mengirimkan data suara, video dan data yang berbentuk paket adalah pengertian dariâ€¦\r\n', 'A. PBX\r\n', 'B. Arrow Phone\r\n', 'C. Age Phone\r\n', 'D. Voip\r\n', 'E. Sip Communicator\r\n', 'D. Voip\r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(73, 2, 'Contoh komunikasi dua arah bersamaan\r\n', 'A. Orari\r\n', 'B. Televisi\r\n', 'C. Telepon \r\n', 'D. Radio \r\n', 'E. Komputer\r\n', 'C. Telepon \r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(74, 2, 'Jenis-jenis perangkat, kecuali...\r\n', 'A. Pc\r\n', 'B. Modem\r\n', 'C. Router\r\n', 'D. Nic\r\n', 'E. Lan\r\n', 'E. Lan\r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(75, 2, 'Komunikasi data simplex adalah...\r\n', 'A. Satu arah\r\n', 'B. Dua arah secara bergantian\r\n', 'C. Dua arah secara bersamaan\r\n', 'D. A dan B benar\r\n', 'E. Semua benar\r\n', 'A. Satu arah\r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(76, 2, 'Contoh Komunikasi video adalahâ€¦\r\n', 'A. Cctv\r\n', 'B. Tv\r\n', 'C. Radio\r\n', 'D. Tape recorder\r\n', 'E. Semua benar\r\n', 'A. Cctv\r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(77, 2, 'Karekteristik dasar komunikasiâ€¦data \r\n', 'A.2\r\n', 'B. 3\r\n', 'C. 4\r\n', 'D. 5\r\n', 'E. 6\r\n', 'C. 4\r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(78, 2, 'Berikut ini merupakan contoh ITU ( Internatonal Telecommunication Union),kecuali\r\n', 'A.JPEG\r\n', 'B.PNG\r\n', 'C.MPEG\r\n', 'D.H.323\r\n', 'E.G.709\r\n', 'B.PNG\r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(79, 2, 'Berikut ini contoh orientasi bisnis perangkat lunak softphone yang tepat adalah\r\n', 'A. 3CX\r\n', 'B.Microsoft Windows\r\n', 'C.Microsoft Office\r\n', 'D.Whatsapp\r\n', 'E.Instagram\r\n', 'A. 3CX\r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(80, 2, 'Apa yang dimaksud dengan trasnmitionâ€¦\r\n', 'A. Alat untuk menerima sinyal\r\n', 'B. Alat untuk memindahkan dan menyaring informasi\r\n', 'C. Jalur yang menghubungkan sumber transmisi dengan destination\r\n', 'D. Tujuan pengiriman data\r\n', 'E. Asal pengiriman data\r\n', 'C. Jalur yang menghubungkan sumber transmisi dengan destination\r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(81, 2, 'Transmisi data maksimum yang dimiliki oleh kabel serat optik (fiber optik)adalahâ€¦\r\n', 'A. 250 Mbps\r\n', 'B. 200 Mbps\r\n', 'C. 150 Mbps\r\n', 'D. 100 Mbps\r\n', 'E. 50 Mbps\r\n', 'D. 100 Mbps\r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(82, 2, 'Yang tidak termasuk dalam sistem transmisi adalah â€¦\r\n', 'A. Simplex \r\n', 'B. Full-duflex \r\n', 'C. Satu arah\r\n', 'D. Half-duflex\r\n', 'E. Duplex\r\n', 'D. Half-duflex\r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(83, 2, 'Berikut media pengiriman data, kecualiâ€¦\r\n', 'A. Twisted pair\r\n', 'B. Coaxial\r\n', 'C. BNC\r\n', 'D. Fiber optik\r\n', 'E. Wireless\r\n', 'C. BNC\r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(84, 2, 'Apa singkatan dari VoIPâ€¦\r\n', 'A.Voice Over internet Protocol\r\n', 'B.Voice Over Internal Protocol\r\n', 'C.Voice Offered internet Protocol\r\n', 'D. Voice Over Internal Protocol\r\n', 'E.Voice Over Internsl Problem\r\n', 'A.Voice Over internet Protocol\r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(85, 2, 'Kepanjangan dari WWW adalah \r\n', 'A.Wib Wide World\r\n', 'B.Web World Web\r\n', 'C.World Wide Web\r\n', 'D.Wede Web World\r\n', 'E.Wede Website World\r\n', 'C.World Wide Web\r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(86, 2, 'Ada dua cara dalam melakukan teknik transmisi, yaitu\r\n', 'A. Ashyncronous dan Shyncronous\r\n', 'B. Sinkron dan transmisi\r\n', 'C. Transfer dan transmisi\r\n', 'D. Transmisi dan shyncronous\r\n', 'E. Transfer dan ashyncronous\r\n', 'A. Ashyncronous dan Shyncronous\r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(87, 2, 'Dalam suatu jaringan telekomunikasi, sistem transmisi digunakan untuk saling menghubungkan?\r\n', 'A. Simplex \r\n', 'B. Central (router)\r\n', 'C. PC\r\n', 'D. Protocol\r\n', 'E. Switch\r\n', 'B. Central (router)\r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(88, 2, 'Salah satu jalur yang digunakan untuk berkomunikasi data adalah \r\n', 'A. Bus \r\n', 'B.Satelit \r\n', 'C.Bandwidth \r\n', 'D. Throughput \r\n', 'E.Topologi\r\n', 'B.Satelit \r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(89, 2, 'Contoh perangkat yang menngunakan sistem transmisi Full-duplex..\r\n', 'A.Pager \r\n', 'B.Radio \r\n', 'C. HT(Handy Talking)\r\n', 'D.Telepon\r\n', 'E.Kamera \r\n', 'D.Telepon\r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(90, 2, 'Pada tahun-tahun terakhir aplikasi komunikasi data menjadi umum termasuk diantaranya pengecekan kartu kredit secara online, pemindahan dana dari satu bank ke bank lainnya secara elektronik dengan memanfaatkan protocolerâ€¦â€¦\r\n', 'A. X.30\r\n', 'B. X.25\r\n', 'C. X.27\r\n', 'D. X.32\r\n', 'E. X.16\r\n', 'B. X.25\r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(91, 2, 'Protokol digunakan untuk menentukan jenis layanan yang akan digunakan untuk menentukan jenis layanan yang akan dilakukan pada internet. Standar protokol yang terpopuler saat ini adalah â€¦â€¦ yang telah ditentukan oleh ISO (International Standard Organization).\r\n', 'A. ISOP (Internet System Open Protokol)\r\n', 'B. COIC (Cloud Open Interconnecting)\r\n', 'C. FSI (Forward Sysyem Interconnecting)\r\n', 'D. OSI (Open Sysyem Interconnecting)\r\n', 'E. OFSI (Open Firewall System Interconnecting)\r\n', 'C. FSI (Forward Sysyem Interconnecting)\r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(92, 2, 'Kelebihan jika kita menggunakan VoIP, kecuali\r\n', 'A. Biaya murah\r\n', 'B. Instalasi mudah\r\n', 'C. Kualitas suara jernih\r\n', 'D. Penggunaan Bandwith minim\r\n', 'E. Penggunaan alat mudah\r\n', 'C. Kualitas suara jernih\r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(93, 2, 'Kelemahan jika kita menggunakan VoIP, kecuali\r\n', 'A. Penggunaan Bandwith minim\r\n', 'B. Kualitas suara kurang jernih\r\n', 'C. Ada jeda ketika komunikasi\r\n', 'D. Pembatasan jaringan\r\n', 'E. Peralatan mahal\r\n', 'A. Penggunaan Bandwith minim\r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(94, 2, 'dibawah ini yang bukan termasuik sharing file adalah\r\n', ' A . Sharing video\r\n', 'B.Sharing Gambar\r\n', 'C.Sharing musik\r\n', 'D.Sharing Program\r\n', 'E.Sharing Harddisk\r\n', 'D.Sharing Program\r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(95, 2, 'Pegembangan dari email untuk membuat grup tertentu dengan menggabungkan alamat email orang yang akan bergabung ialah\r\n', 'A.SMS\r\n', 'B.WAP\r\n', 'C.VOIP\r\n', 'D.Tele\r\n', 'E Mailing list\r\n', 'D.Tele\r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(96, 2, 'Net id pada jaringan denagn ip 192.168.12 adalah \r\n', 'A.192.168.8.12\r\n', 'B.192.168.8\r\n', 'C.192.168\r\n', 'D.8.12\r\n', 'E.12\r\n', 'B.192.168.8\r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(97, 2, 'TCP/IP dibuat oleh \r\n', 'A.ARPA\r\n', 'B.OSI\r\n', 'C.ISO\r\n', 'D.Telkom \r\n', 'E.GPS\r\n', 'A.ARPA\r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(98, 2, 'kepanjangan dari ITU adalah\r\n', 'A.International Telecomminication Unifrom\r\n', 'B.International Telecommunication Uniun\r\n', 'C.Intianati Test Union\r\n', 'D.International Telepon Unifrom\r\n', 'E.In The USA\r\n', 'B.International Telecommunication Uniun\r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(99, 2, 'ITU Terbagi menjadi\r\n', 'A.1\r\n', 'B.2\r\n', 'C.3\r\n', 'D.4\r\n', 'E.5\r\n', 'C.3\r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(100, 2, 'Kepanjangan dari JPEG\r\n', 'A. Joint Photographic Expert Group\r\n', 'B. Join Photo Exspert Grup\r\n', 'C. Joint Photographic Expert graoun\r\n', 'D. Join Photo Expert Grafik\r\n', 'D. Joint Photo Enternal Grapik\r\n', 'A. Joint Photographic Expert Group\r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(101, 2, 'Kepanjangan dari MPEG\r\n ', 'A. Motion Picture expert Group\r\n', 'B. Motion Pics Expert Ground\r\n', 'C. Moonton Pro Endoor Grup\r\n', 'D. Man Picture Expert Group\r\n', 'E. Motion Picture Enternal Ground\r\n', 'A. Motion Picture expert Group\r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(102, 2, 'Yang mendukung Audio dan Video melalui ipv4 dan input adalah\r\n', 'A.voip\r\n', 'B. diagram\r\n', 'C. AGE Phone\r\n', 'D. gradi\r\n', 'E. semuanya benar\r\n', 'A.voip\r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(103, 2, 'Menggunakan micro sip stack dan berjalan tidak hanya pada windows tapi juga pada\r\n', 'A. E/packet pc dan windows mobile\r\n', 'B. komputer\r\n', 'C. IP address\r\n', 'D. diangram operasi\r\n', 'E. semuanya benar\r\n', 'A. E/packet pc dan windows mobile\r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(104, 2, 'PBX kepanjangan dari!\r\n', 'A.Past Branch eXecute\r\n', 'B.Private Band eXecure\r\n', 'C.Pust Batch Xstream\r\n', 'D.Pristine Bandwitch eXtensi\r\n', 'E.Private Branch eXchange\r\n', 'D.Pristine Bandwitch eXtensi\r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(105, 2, 'Fungsi PBX IP server mirip dengan cara kerja\r\n', 'A.Extensi\r\n', 'B.Arrow Phone\r\n', 'C.Proxy Server\r\n', 'D.AGE Phone\r\n', 'E. 3CX Voip Phone for Windows\r\n', 'C.Proxy Server\r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(106, 2, 'Penyedia layanan telpon yang membayari pertukaran telpon denga pesat\r\n', 'A.PTSN\r\n', 'B.PBX\r\n', 'C.SIP Comonicator\r\n', 'D.Voip\r\n', 'E.Ip Phone\r\n ', 'B.PBX\r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(107, 2, 'Berbasis Java Open soure client voip yang mendukung Audio dan Video melalui IpV4 dna Ipv6\r\n', 'A.Sip Comunicator\r\n', 'B.Gizmo Free\r\n', 'C.E-Phone\r\n', 'D.Arrow Phone\r\n', 'E.3CX\r\n', 'A.Sip Comunicator\r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(108, 2, 'Analisis kebutuhan perangkat dalam komunikasi kecuaili\r\n', 'A.Kabel fiber optik\r\n', 'B.kabel coasial\r\n', 'C.Twisted pair\r\n', 'D.Serat optik\r\n', 'E.urghicled twisted pair\r\n', 'A.Kabel fiber optik\r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(109, 2, 'Standar pengkodean pelayanan video disebutâ€¦\r\n', 'A.PNG\r\n', 'B.JPEG\r\n', 'C.MPEG\r\n', 'D.H323\r\n', 'E.g709\r\n', 'C.MPEG\r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(110, 2, 'Sistem transmisi yang menggunakan 4 buah medium transmisi, pilihan yang benar adalah...\r\n', 'A.kabel LAN\r\n', 'B.Kabel coasial\r\n', 'C.kabel topologi\r\n', 'D.kabel tembaga\r\n', 'E.semua salah\r\n', 'D.kabel tembaga\r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(111, 2, 'Kepanjangan dari IBMC\r\n', 'A.Indonesian Beach ManiaC\r\n', 'B.Indonesia Bandung-Makassar Campus\r\n', 'C.International Bussines Machines Corporation\r\n', 'D. International Biografi Machines Corp\r\n', 'E.Ikatan Bawang Mendunia Cringe\r\n', 'C.International Bussines Machines Corporation\r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(112, 2, 'berikut ini salah satu perangkat softphone yang menggunakan micro SIP stack dan berjalan tidak hanya pada windows adalah..\r\n', 'A.Age phone\r\n', 'B.E-phone\r\n', 'C.Firza Phone\r\n', 'D.Arrow Phone\r\n', 'E.Ace Phone\r\n', 'A.Age phone\r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(113, 2, 'Softphone untuk windows yang mendukung Audio dan Video melalui IPv4 adalahâ€¦.\r\n', 'A.Age phone\r\n', 'B.E-phone\r\n', 'C.Firza Phone\r\n', 'D.Arrow Phone\r\n', 'E. Iphone\r\n', 'B.E-phone\r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(114, 2, 'sebuah sistem yang terdiri dari 1 atau lebih telepon SIP... \r\n', 'A.IP\r\n', 'B.IP Address\r\n', 'C.IP PBX\r\n', 'D.IPE\r\n', 'E.AIPI\r\n', 'C.IP PBX\r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(115, 2, 'berikut fungsi X-lite yang benar adalahâ€¦..\r\n', 'A.memanggil atau menerima \r\n', 'B.mentransmisikan data \r\n', 'C.Memeriksa data\r\n', 'D.menghancurkan data \r\n', 'E.semua salah \r\n', 'A.memanggil atau menerima \r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(116, 2, 'fungsi IP phone dalam perangkat VOIP adalahâ€¦.\r\n', 'A.sebagai operating system VOIP\r\n', 'B.sebagai handphone untuk memanggil atau menerima telepon \r\n', 'C.sebagai Softphone untuk memanggil dan menerima \r\n', 'D.sebagai koneksi \r\n', 'E.sebagai pengangkat \r\n', 'B.sebagai handphone untuk memanggil atau menerima telepon \r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(117, 2, 'jenis perangkat dalam telekomunikasi kecualiâ€¦.\r\n', 'A.NIC\r\n', 'B.PC\r\n', 'C.Router\r\n', 'D.Switch\r\n', 'E.Keyboard\r\n', 'E.Keyboard\r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(118, 2, 'Apa kepanjangan VoIP\r\n', 'A. Visual over Internet Protocol\r\n', 'B. Voice over Internet Protocol\r\n', 'C. Verbal over Internet Protocol\r\n', 'D. Voice open Internet Protocol\r\n', 'E. Voice on Internet Protocol\r\n', 'B. Voice over Internet Protocol\r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(119, 2, 'Beberapa contoh orientasi bisnis perangkat lunak softphone, kecuali...\r\n', 'A. 3CX\r\n', 'B. Arrow Phone\r\n', 'C. Age Phone\r\n', 'D. I-phone\r\n', 'E. E-phone\r\n', 'D. I-phone\r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(120, 2, 'Apa itu komunikasi video?\r\n', 'A. Suatu alat komunikasi yang dapat ditangkap melalui alat pernafasan\r\n', 'B. Suatu alat komunikasi yang dapat ditangkap melalui alat pendengaran\r\n', 'C. Suatu alat komunikasi yang dapat ditangkap melalui alat penglihatan\r\n', 'D. Suatu alat komunikasi yang dapat ditangkap melalui alat penglihatan dan pendengaran\r\n', 'E. Suatu komunikasi yang dilakukan secara 2 arah\r\n', 'C. Suatu alat komunikasi yang dapat ditangkap melalui alat penglihatan\r\n', 'adffef7000fede9334ca13983e69edccad3c49a6'),
(121, 2, 'Komunikasi data yang dapat dilakukan dua arah secara bergantian adalahâ€¦\r\n', 'A. Simplex \r\n', 'B.Full Duplex\r\n', 'C. Semi Duplex\r\n', 'D.Dpuble Duplex\r\n', 'E. Half Duplex\r\n', 'E. Half Duplex\r\n', 'adffef7000fede9334ca13983e69edccad3c49a6');

-- --------------------------------------------------------

--
-- Table structure for table `tb_timer`
--

CREATE TABLE `tb_timer` (
  `id` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_jadwal` int(11) NOT NULL,
  `timer` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_timer`
--

INSERT INTO `tb_timer` (`id`, `id_siswa`, `id_jadwal`, `timer`) VALUES
(46, 240, 1, 1575847811),
(26, 239, 1, 1575809103),
(10, 242, 1, 1575805417),
(45, 253, 1, 1575847654),
(23, 258, 1, 1575807826),
(13, 241, 1, 1575805544),
(14, 262, 1, 1575805560),
(47, 237, 2, 1575847994),
(40, 245, 2, 1575819320),
(21, 244, 1, 1575806818),
(41, 270, 1, 1575819483);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_identitas`
--
ALTER TABLE `tb_identitas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_jadwal`
--
ALTER TABLE `tb_jadwal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_jawab`
--
ALTER TABLE `tb_jawab`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_nilai`
--
ALTER TABLE `tb_nilai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_operator`
--
ALTER TABLE `tb_operator`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_settings`
--
ALTER TABLE `tb_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_soal`
--
ALTER TABLE `tb_soal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_timer`
--
ALTER TABLE `tb_timer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_identitas`
--
ALTER TABLE `tb_identitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_jadwal`
--
ALTER TABLE `tb_jadwal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_jawab`
--
ALTER TABLE `tb_jawab`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2881;

--
-- AUTO_INCREMENT for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `tb_nilai`
--
ALTER TABLE `tb_nilai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tb_operator`
--
ALTER TABLE `tb_operator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_settings`
--
ALTER TABLE `tb_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

--
-- AUTO_INCREMENT for table `tb_soal`
--
ALTER TABLE `tb_soal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `tb_timer`
--
ALTER TABLE `tb_timer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
