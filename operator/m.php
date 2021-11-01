<?php
require '../koneksi.php';

$ambil = $koneksi->query("SELECT * FROM tb_identitas");
$identitas = $ambil->fetch_assoc();

require 'template/header1.php';

if(isset($_GET['page'])){
    switch($_GET['page']){
        case 'beranda'; $title = 'Beranda - '.$identitas['nama_sekolah']; echo "<title>$title</title>"; break;
        case 'soal-ujian-pilih-jadwal'; $title = 'Soal ujian - '.$identitas['nama_sekolah']; echo "<title>$title</title>"; break;
        case 'data-kelas'; $title = 'Data kelas - '.$identitas['nama_sekolah']; echo "<title>$title</title>"; break;
        case 'daftar-siswa'; $title = 'Data kelas - '.$identitas['nama_sekolah']; echo "<title>$title</title>"; break;
        case 'buat-jadwal'; $title = 'Soal ujian - '.$identitas['nama_sekolah']; echo "<title>$title</title>"; break;
        case 'soal'; $title = 'Soal ujian - '.$identitas['nama_sekolah']; echo "<title>$title</title>"; break;
        case 'buat-soal'; $title = 'Soal ujian - '.$identitas['nama_sekolah']; echo "<title>$title</title>"; break;
        case 'status-ujian'; $title = 'Status ujian - '.$identitas['nama_sekolah']; echo "<title>$title</title>"; break;
        case 'update-status-ujian'; $title = 'Status ujian - '.$identitas['nama_sekolah']; echo "<title>$title</title>"; break;
        case 'status-siswa'; $title = 'Status siswa - '.$identitas['nama_sekolah']; echo "<title>$title</title>"; break;
        case 'lihat-status-siswa'; $title = 'Status siswa - '.$identitas['nama_sekolah']; echo "<title>$title</title>"; break;
        case 'settings'; $title = 'Settings - '.$identitas['nama_sekolah']; echo "<title>$title</title>"; break;
        case 'nilai-ujian'; $title = 'Nilai ujian siswa - '.$identitas['nama_sekolah']; echo "<title>$title</title>"; break;
        case 'nilai-ujian-pilih-kelas'; $title = 'Nilai ujian siswa - '.$identitas['nama_sekolah']; echo "<title>$title</title>"; break;
        case 'lihat-jawaban-dan-nilai'; $title = 'Lihat jawaban dan nilai - '.$identitas['nama_sekolah']; echo "<title>$title</title>"; break;
        case 'nilai-ujian-pilih-jadwal'; $title = 'Nilai ujian siswa - '.$identitas['nama_sekolah']; echo "<title>$title</title>"; break;
        case 'edit-kelas'; $title = 'Data kelas - '.$identitas['nama_sekolah']; echo "<title>$title</title>"; break;
        case 'edit-siswa'; $title = 'Data kelas - '.$identitas['nama_sekolah']; echo "<title>$title</title>"; break;
        case 'edit-jadwal'; $title = 'Soal ujian - '.$identitas['nama_sekolah']; echo "<title>$title</title>"; break;
        case 'edit-soal'; $title = 'Soal ujian - '.$identitas['nama_sekolah']; echo "<title>$title</title>"; break;
        case 'detjad'; $title = 'Soal ujian - '.$identitas['nama_sekolah']; echo "<title>$title</title>"; break;
        case 'identitas-sekolah'; $title = 'Identitas sekolah - '.$identitas['nama_sekolah']; echo "<title>$title</title>"; break;
        case 'edit-akun'; $title = 'Edit akun - '.$identitas['nama_sekolah']; echo "<title>$title</title>"; break;
    }
}

require 'template/header2.php';
require 'template/sidebar.php';
require 'template/topbar.php';

if(isset($_GET['page'])){
    switch($_GET['page']){
        case 'beranda'; require 'beranda.php'; break;
        case 'soal-ujian-pilih-jadwal'; require 'soal-ujian-pilih-jadwal.php'; break;
        case 'data-kelas'; require 'data-kelas.php'; break;
        case 'daftar-siswa'; require 'daftar-siswa.php'; break;
        case 'buat-jadwal'; require 'buat-jadwal.php'; break;
        case 'soal'; require 'soal.php'; break;
        case 'buat-soal'; require 'buat-soal.php'; break;
        case 'status-ujian'; require 'status-ujian.php'; break;
        case 'update-status-ujian'; require 'update-status-ujian.php'; break;
        case 'status-siswa'; require 'status-siswa.php'; break;
        case 'lihat-status-siswa'; require 'lihat-status-siswa.php'; break;
        case 'settings'; require 'settings.php'; break;
        case 'nilai-ujian'; require 'nilai-ujian.php'; break;
        case 'nilai-ujian-pilih-kelas'; require 'nilai-ujian-pilih-kelas.php'; break;
        case 'lihat-jawaban-dan-nilai'; require 'lihat-jawaban-dan-nilai.php'; break;
        case 'nilai-ujian-pilih-jadwal'; require 'nilai-ujian-pilih-jadwal.php'; break;
        case 'edit-kelas'; require 'edit-kelas.php'; break;
        case 'edit-siswa'; require 'edit-siswa.php'; break;
        case 'edit-jadwal'; require 'edit-jadwal.php'; break;
        case 'edit-soal'; require 'edit-soal.php'; break;
        case 'detjad'; require 'detjad.php'; break;
        case 'identitas-sekolah'; require 'identitas-sekolah.php'; break;
        case 'edit-akun'; require 'edit-akun.php'; break;
    }
}

require 'template/footer.php';
?>