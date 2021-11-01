<?php
require '../../koneksi.php';

$id = $_GET['id'];
$koneksi->query("DELETE FROM tb_soal WHERE id = '$id'");

$token = $_GET['token'];
echo "<script>location='../m?page=soal&token=$token';</script>";
?>