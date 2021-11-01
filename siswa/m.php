<?php
require '../koneksi.php';

$ambil = $koneksi->query("SELECT * FROM tb_identitas");
$identitas = $ambil->fetch_assoc();

require 'template/header1.php';

if(isset($_GET['page'])){
    switch($_GET['page']){
        case 'info'; echo '<title>'.$identitas['nama_sekolah'].'</title>'; break;
        case 'daftar-ujian'; echo '<title>'.$identitas['nama_sekolah'].'</title>'; break;
        case 'detmap'; echo '<title>'.$identitas['nama_sekolah'].'</title>'; break;
        case 'soal'; echo '<title>'.$identitas['nama_sekolah'].'</title>'; break;
        case 'lihat-nilai'; echo '<title>'.$identitas['nama_sekolah'].'</title>'; break;
    }
}

require 'template/header2.php';
require 'template/topbar.php';

if(isset($_GET['page'])){
    switch($_GET['page']){
        case 'info'; require 'info.php'; break;
        case 'daftar-ujian'; require 'daftar-ujian.php'; break;
        case 'detmap'; require 'detmap.php'; break;
        case 'soal'; require 'soal.php'; break;
        case 'lihat-nilai'; require 'lihat-nilai.php'; break;
    }
}

require 'template/footer.php';
?>