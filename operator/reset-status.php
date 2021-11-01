<?php
require '../koneksi.php';
// ambil id_kelas dari url
$id_kelas = $_GET['id_kelas'];
// ambil id dari url
$id = $_GET['id'];

// update tb_siwa yang isi status nya logout yang id nya sama dengan id dari url
$koneksi->query("UPDATE tb_siswa SET status = 'logout' WHERE id = '$id'");
echo "<script>location='m?page=lihat-status-siswa&id_kelas=$id_kelas';</script>";
?>