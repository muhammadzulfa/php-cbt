<?php
require '../../koneksi.php';
$id_siswa = $_GET['id_siswa'];
$token = $_GET['token'];

$koneksi->query("DELETE FROM tb_jawab WHERE id_siswa = '$id_siswa' && token = '$token'");
$koneksi->query("DELETE FROM tb_nilai WHERE id_siswa = '$id_siswa' && token = '$token'");

$id_kelas = $_GET['id_kelas'];
$redirect = $_GET['redirect'];
echo "<script>location='../m?page=nilai-ujian&id_kelas=$id_kelas&token=$redirect';</script>";
?>