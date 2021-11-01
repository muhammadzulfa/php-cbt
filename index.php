<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Demo Ujian Nasional Berbasis Komputer</title>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="vendor/main.css">
</head>
<body id="wrapper">
    <?php
    // panggil koneksi kedabase
    require 'koneksi.php';
    // ambil data dari tabel tb_settings
    $ambil = $koneksi->query("SELECT * FROM tb_settings");
    $settings = $ambil->fetch_assoc();
    ?>
    <nav class="navbar navbar-expand-lg navbar-dark bg-<?= $settings['warna_topbar'] ?> fixed-top shadow">
        <div class="container">
            <div class="navbar-brand">
                <span>
                    <div class="row">
                        <div class="col-md-1">
                            <i class="fa fa-user"></i>
                        </div>
                        <div class="col-md-10 d-none d-md-inline">
                            UNBK Created by Muhammad Zulfa
                        </div>
                    </div>
                </span>
            </div>
            <div class="navbar-nav">
                <a href="m?page=login" class="nav-item nav-link">LIHAT DEMO</a>
            </div>
        </div>
    </nav>
    <br><br>
    <div class="container">
        <div class="text-center text">
            <hr>
            <h4>Aplikasi Ujian Nasional Berbasis Komputer (UNBK)</h4>
            <hr>
        </div>
        <div class="row">
            <div class="col-md-8">
                <div class="alert alert-info shadow-hover">
                    <ul>
                        <li>Aplikasi ringan dalam 1 kali ujian bersama bisa langsung 100 peserta atau lebih</li>
                        <li>Aplikasi dibuat dengan PHP versi 7 dan Source Code disusun dengan rapi</li>
                        <li>Aplikasi dibuat Full bahasa program PHP dan tambahan Javascript</li>
                        <li>Aplikasi dibuat dengan tampilan Bootstrap versi 4</li>
                        <li>Aplikasi terdapat 3 kelas yaitu kelas 10, 11 dan 12</li>
                        <li>Aplikasi terdapat 5 jurusan yaitu:</li>
                        <ul>
                            <li>Teknik Kendaraan Ringan (TKR)</li>
                            <li>Teknik Gambar Bangunan (TGB)</li>
                            <li>Teknik Konstruksi Batu dan Beton (TKBB)</li>
                            <li>Teknik Pengelasan (TP)</li>
                            <li>Teknik Komputer dan Jaringan (TKJ)</li>
                        </ul>
                        <li>Apabila siswa keluar pada browser atau komputer restart, waktu masih menyambung data terdahulu karena waktu disimpan didatabase</li>
                        <li>Source code dapat dipahami dan diberi komentar tiap perintah</li>
                        <li>Membuat ujian pengambilan nilai kognitif lebih mudah</li>
                        <li>Fitur soal bisa di acak atau tidak, sesuai pengguna</li>
                        <li>Jawaban siswa disimpan dan bisa dilihat dengan detail</li>
                        <li>Nilai keluar langsung jadi lebih mudah dan cepat</li>
                        <li>Kartu ujian untuk login bisa di export ke pdf dan bisa di print</li>
                        <li>Dan terakhir, nilai bisa dicetak dengan pdf per kelas nya</li>
                    </ul>
                </div>
            </div>
            <div class="col-md-4">
                <h3>
                    <strong>KONTAK SAYA</strong>
                </h3>
                <p>Bagi teman-teman yang ingin mendapatkan full source code nya bisa hubungi kontak dibawah!</p>
                <p>
                    <hr>
                    Facebook: Mhmmdzulfa <br>
                    <hr>
                    Email: zcasus648@gmail.com <br>
                    <hr>
                    WhatsApp: +62831-5987-6752 <br>
                    <hr>
                    Kandangan, Kalimantan Selatan, Indonesia
                    <hr>
                </p>
                <strong>Akun operator atau admin</strong>
                <ul>
                    <li>Email: operator@gmail.com</li>
                    <li>Password: 123</li>
                </ul>
                <hr>
            </div>
        </div>
        <br>
        <hr>
        <div class="text-center">
            <h3>
                <strong>PAGE OPERATOR / ADMIN</strong>
            </h3>
        </div>
        <hr>
        <br>
        <div class="row">
            <div class="col-md-3">
                <a href="media/operator/login operator.png"><img src="media/operator/login operator.png" class="img-thumbnail shadow-hover mb-4"></a>
            </div>
            <div class="col-md-3">
                <a href="media/operator/beranda.png"><img src="media/operator/beranda.png" class="img-thumbnail shadow-hover mb-4"></a>
            </div>
            <div class="col-md-3">
                <a href="media/operator/data kelas.png"><img src="media/operator/data kelas.png" class="img-thumbnail shadow-hover mb-4"></a>
            </div>
            <div class="col-md-3">
                <a href="media/operator/buat kelas baru.png"><img src="media/operator/buat kelas baru.png" class="img-thumbnail shadow-hover mb-4"></a>
            </div>
            <div class="col-md-3">
                <a href="media/operator/daftar siswa.png"><img src="media/operator/daftar siswa.png" class="img-thumbnail shadow-hover mb-4"></a>
            </div>
            <div class="col-md-3">
                <a href="media/operator/tambah siswa.png"><img src="media/operator/tambah siswa.png" class="img-thumbnail shadow-hover mb-4"></a>
            </div>
            <div class="col-md-3">
                <a href="media/operator/cetak kartu.png"><img src="media/operator/cetak kartu.png" class="img-thumbnail shadow-hover mb-4"></a>
            </div>
            <div class="col-md-3">
                <a href="media/operator/jadwal ujian.png"><img src="media/operator/jadwal ujian.png" class="img-thumbnail shadow-hover mb-4"></a>
            </div>
            <div class="col-md-3">
                <a href="media/operator/buat jadwal.png"><img src="media/operator/buat jadwal.png" class="img-thumbnail shadow-hover mb-4"></a>
            </div>
            <div class="col-md-3">
                <a href="media/operator/pengacakan soal.png"><img src="media/operator/pengacakan soal.png" class="img-thumbnail shadow-hover mb-4"></a>
            </div>
            <div class="col-md-3">
                <a href="media/operator/soal ujian.png"><img src="media/operator/soal ujian.png" class="img-thumbnail shadow-hover mb-4"></a>
            </div>
            <div class="col-md-3">
                <a href="media/operator/buat soal.png"><img src="media/operator/buat soal.png" class="img-thumbnail shadow-hover mb-4"></a>
            </div>
            <div class="col-md-3">
                <a href="media/operator/detail jadwal.png"><img src="media/operator/detail jadwal.png" class="img-thumbnail shadow-hover mb-4"></a>
            </div>
            <div class="col-md-3">
                <a href="media/operator/status ujian.png"><img src="media/operator/status ujian.png" class="img-thumbnail shadow-hover mb-4"></a>
            </div>
            <div class="col-md-3">
                <a href="media/operator/update status ujian.png"><img src="media/operator/update status ujian.png" class="img-thumbnail shadow-hover mb-4"></a>
            </div>
            <div class="col-md-3">
                <a href="media/operator/status siswa.png"><img src="media/operator/status siswa.png" class="img-thumbnail shadow-hover mb-4"></a>
            </div>
            <div class="col-md-3">
                <a href="media/operator/status siswa per kelas.png"><img src="media/operator/status siswa per kelas.png" class="img-thumbnail shadow-hover mb-4"></a>
            </div>
            <div class="col-md-3">
                <a href="media/operator/nilai ujian.png"><img src="media/operator/nilai ujian.png" class="img-thumbnail shadow-hover mb-4"></a>
            </div>
            <div class="col-md-3">
                <a href="media/operator/nilai ujian per mata pelajaran.png"><img src="media/operator/nilai ujian per mata pelajaran.png" class="img-thumbnail shadow-hover mb-4"></a>
            </div>
            <div class="col-md-3">
                <a href="media/operator/nilai ujian per kelas.png"><img src="media/operator/nilai ujian per kelas.png" class="img-thumbnail shadow-hover mb-4"></a>
            </div>
            <div class="col-md-3">
                <a href="media/operator/lihat jawaban siswa.png"><img src="media/operator/lihat jawaban siswa.png" class="img-thumbnail shadow-hover mb-4"></a>
            </div>
            <div class="col-md-3">
                <a href="media/operator/lihat nilai siswa.png"><img src="media/operator/lihat nilai siswa.png" class="img-thumbnail shadow-hover mb-4"></a>
            </div>
            <div class="col-md-3">
                <a href="media/operator/cetak nilai per kelas.png"><img src="media/operator/cetak nilai per kelas.png" class="img-thumbnail shadow-hover mb-4"></a>
            </div>
            <div class="col-md-3">
                <a href="media/operator/settings.png"><img src="media/operator/settings.png" class="img-thumbnail shadow-hover mb-4"></a>
            </div>
        </div>
        <br>
        <hr>
        <div class="text-center">
            <h3>
                <strong>PAGE SISWA</strong>
            </h3>
        </div>
        <hr>
        <br>
        <div class="row">
            <div class="col-md-3">
                <a href="media/siswa/login siswa.png"><img src="media/siswa/login siswa.png" class="img-thumbnail shadow-hover mb-4"></a>
            </div>
            <div class="col-md-3">
                <a href="media/siswa/belum ada ujian.png"><img src="media/siswa/belum ada ujian.png" class="img-thumbnail shadow-hover mb-4"></a>
            </div>
            <div class="col-md-3">
                <a href="media/siswa/daftar ujian.png"><img src="media/siswa/daftar ujian.png" class="img-thumbnail shadow-hover mb-4"></a>
            </div>
            <div class="col-md-3">
                <a href="media/siswa/info ujian.png"><img src="media/siswa/info ujian.png" class="img-thumbnail shadow-hover mb-4"></a>
            </div>
            <div class="col-md-3">
                <a href="media/siswa/detail mata pelajaran.png"><img src="media/siswa/detail mata pelajaran.png" class="img-thumbnail shadow-hover mb-4"></a>
            </div>
            <div class="col-md-3">
                <a href="media/siswa/modal mulai mengerjakan.png"><img src="media/siswa/modal mulai mengerjakan.png" class="img-thumbnail shadow-hover mb-4"></a>
            </div>
            <div class="col-md-3">
                <a href="media/siswa/jawab soal.png"><img src="media/siswa/jawab soal.png" class="img-thumbnail shadow-hover mb-4"></a>
            </div>
            <div class="col-md-3">
                <a href="media/siswa/waktu hampir habis.png"><img src="media/siswa/waktu hampir habis.png" class="img-thumbnail shadow-hover mb-4"></a>
            </div>
            <div class="col-md-3">
                <a href="media/siswa/selesai ujian.png"><img src="media/siswa/selesai ujian.png" class="img-thumbnail shadow-hover mb-4"></a>
            </div>
            <div class="col-md-3">
                <a href="media/siswa/keluar nilai.png"><img src="media/siswa/keluar nilai.png" class="img-thumbnail shadow-hover mb-4"></a>
            </div>
            <div class="col-md-3">
                <a href="media/siswa/daftar ujian sudah mengerjakan.png"><img src="media/siswa/daftar ujian sudah mengerjakan.png" class="img-thumbnail shadow-hover mb-4"></a>
            </div>
            <div class="col-md-3">
                <a href="media/siswa/detmap sudah mengerjakan.png"><img src="media/siswa/detmap sudah mengerjakan.png" class="img-thumbnail shadow-hover mb-4"></a>
            </div>
        </div>
    </div>
    <br>
        <hr>
        <div class="text-center">
            <h3>
                <strong>THANK'S</strong>
            </h3>
        </div>
        <hr>
        <br>
    <div class="card-footer  bg-light shadow-lg">
        <div class="text-center">
            <small>
                Ujian Nasional Berbasis Komputer
            </small>
        </div>
    </div>
</body>
</html>