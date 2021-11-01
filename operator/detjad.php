<?php
// ambil token dari url
$token = $_GET['token'];

// ambild data dari tabel tb_jadwal yang token nya sama dengan token di url
$ambil = $koneksi->query("SELECT * FROM tb_jadwal WHERE token = '$token'");
$jadwal = $ambil->fetch_assoc();
?>

<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <div class="card mb-4 shadow-hover">
                <div class="card-body">
                    <table class="table table-borderless">
                        <tr>
                            <th width="25%">Kelas</th>
                            <td><?= $jadwal['kelas'] ?></td>
                        </tr>
                        <tr>
                            <th>Mata pelajaran</th>
                            <td><?= $jadwal['mapel'] ?></td>
                        </tr>
                        <tr>
                            <th>Jam masuk - keluar</th>
                            <td><?= $jadwal['jam'] ?></td>
                        </tr>
                        <tr>
                            <th>Tanggal ujian</th>
                            <td><?= $jadwal['tanggal_ujian'] ?></td>
                        </tr>
                        <tr>
                            <th>Waktu</th>
                            <td><?= $jadwal['waktu_mengerjakan'] ?> menit</td>
                        </tr>
                        <tr>
                            <th>Jumlah soal</th>
                            <td><?= $jadwal['jmlh_soal'] ?> soal</td>
                        </tr>
                        <tr>
                            <th>Nilai KKM</th>
                            <td><?= $jadwal['nilai_kkm'] ?></td>
                        </tr>
                        <tr>
                            <th>Bobot nilai</th>
                            <td><?= $jadwal['bobot_nilai'] ?> poin</td>
                        </tr>
                        <tr>
                            <th>Soal diacak</th>
                            <td><?= $jadwal['acak_soal'] ?></td>
                        </tr>
                    </table>
                    <label class="ahref">
                        <a class="btn btn-secondary" onclick="history.back(-1)">Kembali</a>
                    </label>
                </div>
            </div>
        </div>
    </div>
</div>