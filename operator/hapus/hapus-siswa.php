<?php
require '../../koneksi.php';

$id_siswa = $_GET['id_siswa'];

$koneksi->query("DELETE FROM tb_siswa WHERE id = '$id_siswa'");
$koneksi->query("DELETE FROM tb_jawab WHERE id_siswa = '$id_siswa'");
$koneksi->query("DELETE FROM tb_nilai WHERE id_siswa = '$id_siswa'");
$id_kelas = $_GET['id_kelas'];
$token = $_GET['token'];
echo "<script>location='../m?page=daftar-siswa&id_kelas=$id_kelas&token=$token';</script>";
?>