<?php
require '../../koneksi.php';

$token = $_GET['token'];
$koneksi->query("DELETE FROM tb_jadwal WHERE token = '$token'");
$koneksi->query("DELETE FROM tb_soal WHERE token = '$token'");
echo "<script>location='../m?page=soal-ujian-pilih-jadwal';</script>";
?>