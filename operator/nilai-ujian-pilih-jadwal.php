<?php
// ambil id_kelas dari url
$id_kelas = $_GET['id_kelas'];
// ambil token dari url
$token = $_GET['token'];
// ambil kelas dari url
$kelas = $_GET['kelas'];
?>

<div class="container-fluid">
  <div class="card shadow mb-4">
    <div class="card-body">
      <div class="table-responsive">
        <table class="table table-hover" id="dataTable" width="100%" cellspacing="0">
          <thead>
            <tr>
              <th>No</th>
              <th>Mata pelajaran</th>
              <th>Tanggal</th>
              <th>Nilai</th>
            </tr>
          </thead>
          <tbody>
            <?php
            // ambil data dari tabel tb_jadwal yang kelas nya sama dengan kelas dari url dan jurusan nya sama dengan jurusan yang ada di url
            $ambil = $koneksi->query("SELECT * FROM tb_jadwal WHERE kelas = '$kelas'");
            $nomor = 1;
            // memulai perualangan
            foreach($ambil as $jadwal):
              $ambil = $koneksi->query("SELECT * FROM tb_nilai WHERE id_jadwal = '$jadwal[id]'");
              $nilai = $ambil->fetch_assoc();
            ?>
            <tr>
              <td><?= $nomor++ ?></td>
              <td><?= $jadwal['mapel'] ?></td>
              <td><?= $jadwal['tanggal_ujian'] ?></td>
              <td>
              <?php if(isset($nilai['nilai'])): ?>
                <a href="m?page=nilai-ujian&id_kelas=<?= $id_kelas ?>&token=<?= $jadwal['token'] ?>" class="btn btn-primary btn-sm">Lihat nilai</a>
              <?php else: ?>
                <button class="btn btn-danger btn-sm disabled">tidak ada nilai</button>
              <?php endif ?>
              </td>
            </tr>
            <?php endforeach ?>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>