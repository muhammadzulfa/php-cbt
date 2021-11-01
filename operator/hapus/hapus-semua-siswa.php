<?php
require '../../koneksi.php';

$id_kelas = $_GET['id_kelas'];
$token = $_GET['token'];

$koneksi->query("DELETE FROM tb_siswa WHERE id_kelas = '$id_kelas'");
echo "<script>location='../m?page=daftar-siswa&id_kelas=$id_kelas&token=$token';</script>";
?>