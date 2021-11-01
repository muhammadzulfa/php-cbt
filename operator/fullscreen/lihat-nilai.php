<?php
$id_siswa = $_GET['id_siswa'];
$token = $_GET['token'];

$ambil = $koneksi->query("SELECT * FROM tb_nilai WHERE id_siswa = '$id_siswa' && token = '$token'");
$nilai = $ambil->fetch_assoc();

$ambil = $koneksi->query("SELECT * FROM tb_siswa WHERE id = '$nilai[id_siswa]'");
$siswa = $ambil->fetch_assoc();

$ambil = $koneksi->query("SELECT * FROM tb_jadwal WHERE id = '$nilai[id_jadwal]' && token = '$token'");
$jadwal = $ambil->fetch_assoc();
?>

<div class="container">
    <div class="row">
        <div class="col-md-8">
          <div class="card shadow mb-4">
            <div class="card-body">
                <table class="table table-borderless">
                    <tr>
                        <th width="35%">NIS siswa</th>
                        <td><?= $siswa['username'] ?></td>
                    </tr>
                    <tr>
                        <th>Nama siswa</th>
                        <td><?= $siswa['nama'] ?></td>
                    </tr>
                    <tr>
                        <th>Kelas</th>
                        <td><?= $jadwal['kelas'] ?></td>
                    </tr>
                    <tr>
                        <th>Mata pelajaran</th>
                        <td><?= $jadwal['mapel'] ?></td>
                    </tr>
                    <tr>
                        <th>Jumlah soal</th>
                        <td><?= $nilai['jmlh_soal'] ?> soal</td>
                    </tr>
                    <tr>
                        <th>Soal dijawab</th>
                        <td><?= $nilai['dijawab'] ?> soal</td>
                    </tr>
                    <tr>
                        <th>Soal tidak dijawab</th>
                        <td><?= $nilai['tidak_dijawab'] ?> soal</td>
                    </tr>
                    <tr>
                        <th>Jawaban benar</th>
                        <td><?= $nilai['benar'] ?> soal</td>
                    </tr>
                    <tr>
                        <th>Jawaban salah</th>
                        <td><?= $nilai['salah'] ?> soal</td>
                    </tr>
                    <tr>
                        <th>Nilai KKM</th>
                        <td><?= $jadwal['nilai_kkm'] ?></td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <?php
            if($jadwal['nilai_kkm'] > $nilai['nilai']):
        ?>
            <div class="alert alert-danger">
        <?php else: ?>    
            <div class="alert alert-success">
        <?php endif ?>
                <h5>Pemberitahuan</h5>
                <hr>
                <h5>
                    <?= $nilai['benar'].' x '.$jadwal['bobot_nilai'].' = '.$nilai['nilai'] ?>
                </h5>
                <h5>
                    Siswa mendapat nilai <?= $nilai['nilai'] ?>
                </h5>
            </div>
        </div>
    </div>
</div>