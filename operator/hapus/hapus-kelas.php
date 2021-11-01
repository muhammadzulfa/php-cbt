<?php
require '../../koneksi.php';

$id = $_GET['id'];
$koneksi->query("DELETE FROM tb_kelas WHERE id = '$id'");
$koneksi->query("DELETE FROM tb_siswa WHERE id_kelas = '$id'");
echo "<script>location='../m?page=data-kelas';</script>";
?>