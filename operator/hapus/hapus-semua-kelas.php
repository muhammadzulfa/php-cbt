<?php
require '../../koneksi.php';

$koneksi->query("DELETE FROM tb_kelas");
$koneksi->query("DELETE FROM tb_siswa");
echo "<script>location='../m?page=data-kelas';</script>";
?>