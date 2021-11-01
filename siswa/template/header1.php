<?php
if(!isset($_SESSION['siswa'])){
    echo "<script>location='../m?page=login';</script>";
    $koneksi->query("UPDATE tb_siswa SET status = 'logout' WHERE id = '$_SESSION[siswa]'");
    exit;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../vendor/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="../vendor/main.css">
    