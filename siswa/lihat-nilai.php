<?php   
// ambil kelas dari url
$kelas = $_GET['kelas'];
// ambil token dari url
$token = $_GET['token'];

// ambil data nilai dari tabel tb_nilai yang id_siswa sama dengan session siswa atau yang sedang login && token nya sama dengan token yang ada di url
$ambil = $koneksi->query("SELECT * FROM tb_nilai WHERE id_siswa = '$_SESSION[siswa]' && token = '$token'");
$nilai = $ambil->fetch_assoc();

// ambil data jadwal dari tabel tb_jadwal yang token nya sama dengan token di url
$ambil = $koneksi->query("SELECT * FROM tb_jadwal WHERE token = '$token'");
$jadwal = $ambil->fetch_assoc();

// ambil data settings dari tabel tb_settings
$ambil = $koneksi->query("SELECT * FROM tb_settings");
$settings = $ambil->fetch_assoc();

// jika tidak ada nilai, redirect ke halaman mapel
if(!isset($nilai['id_siswa']) == $_SESSION['siswa']){
    header("location: m?page=mapel&kelas=$kelas");
    exit;
}
?>

<div class="container">
    <div class="row">
        <div class="col-md-12">
        <?php
        // jika nilai kkm lebih besar dari nilai siswa barusan
        if($jadwal['nilai_kkm'] > $nilai['nilai']):
        ?>
            <!-- maka alert nya warna merah -->
            <div class="alert alert-danger">
            <h5><i class="fa fa-info-circle"></i> Pemberitahuan</h5>
                <hr>
                <h5>
                    Anda kurang beruntung, mendapat nilai <?= $nilai['nilai'] ?>
                </h5>
            </div>
        </div>
        <!-- sebaliknya -->
        <?php else: ?>
            <!-- maka alert nya warna hijau -->
            <div class="alert alert-success">
            <h5><i class="fa fa-info-circle"></i> Pemberitahuan</h5>
                <hr>
                <h5>
                    Anda beruntung, mendapat nilai <?= $nilai['nilai'] ?>
                </h5>
            </div>
        </div>
        <?php endif ?>
    </div>
</div>