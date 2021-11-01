<?php
$id = $_SESSION['siswa'];
$ambil = $koneksi->query("SELECT * FROM tb_siswa WHERE id = '$id'");
$siswa = $ambil->fetch_assoc();

$ambil = $koneksi->query("SELECT * FROM tb_settings");
$settings = $ambil->fetch_assoc();
?>

<nav class="navbar navbar-expand-lg navbar-dark bg-<?= $settings['warna_topbar'] ?> fixed-top shadow text-uppercase">
    <div class="container">
        <div class="navbar-brand d-none d-md-inline">
            <span>
                <div class="row">
                    <div class="col-md-1 col-6 d-none d-md-inline">
                        <i class="fa fa-user"></i>
                    </div>
                    <div class="col-md-10 col-6">
                        <?= $siswa['username'].': '.$siswa['nama'] ?>
                    </div>
                </div>
            </span>
        </div>
        <div class="navbar-nav">
            <a href="" data-toggle="modal" data-target="#logoutModal" class="nav-item nav-link"><i class="fa fa-sign-out-alt"></i> logout</a>
        </div>
	</div>
</nav>
<br>
<br>
<br>

<div class="mb-2"></div>
