<?php
// ambil data dari tabel tb_siswa
$ambil = $koneksi->query("SELECT * FROM tb_siswa");
// hitung semua data siswa
$jmlh_siswa = mysqli_num_rows($ambil);

// ambil data dari tabel tb_kelas
$ambil = $koneksi->query("SELECT * FROM tb_kelas");
// hitung semua data kelas
$jmlh_kelas = mysqli_num_rows($ambil);

// ambil data dari tabel tb_jadwal
$ambil = $koneksi->query("SELECT * FROM tb_jadwal");
// hitung semua data jadwal
$jmlh_jadwal = mysqli_num_rows($ambil);
?>

<div class="container-fluid">
	<h3>Beranda</h3>
	<div class="row">
		<div class="col-xl-3 col-md-6 mb-4">
			<div class="card border-left-primary shadow h-100 py-2">
				<div class="card-body">
					<div class="row no-gutters align-items-center">
						<div class="col mr-2">
							<div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Jumlah siswa</div>
							<div class="h5 mb-0 font-weight-bold text-gray-800"><?= $jmlh_siswa ?> siswa</div>
						</div>
						<div class="col-auto">
							<i class="fas fa-users fa-2x text-gray-300"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-xl-3 col-md-6 mb-4">
			<div class="card border-left-primary shadow h-100 py-2">
				<div class="card-body">
					<div class="row no-gutters align-items-center">
						<div class="col mr-2">
							<div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Jumlah kelas</div>
							<div class="h5 mb-0 font-weight-bold text-gray-800"><?= $jmlh_kelas ?> kelas</div>
						</div>
						<div class="col-auto">
							<i class="fas fa-users fa-2x text-gray-300"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-xl-3 col-md-6 mb-4">
			<div class="card border-left-primary shadow h-100 py-2">
				<div class="card-body">
					<div class="row no-gutters align-items-center">
						<div class="col mr-2">
							<div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Jumlah jadwal ujian</div>
							<div class="h5 mb-0 font-weight-bold text-gray-800"><?= $jmlh_jadwal ?> jadwal</div>
						</div>
						<div class="col-auto">
							<i class="fas fa-users fa-2x text-gray-300"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>