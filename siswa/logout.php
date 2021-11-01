<?php
require '../koneksi.php';
$koneksi->query("UPDATE tb_siswa SET status = 'logout' WHERE id = '$_SESSION[siswa]'");
// session siswa aja yang dihapus, agar waktu tetap masih tersambung
unset($_SESSION['siswa']);
header("location: ../m?page=login&pesan=logout");
?>