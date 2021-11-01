<?php
// ambil id_kelas dari url
$id_kelas = $_GET['id_kelas'];
// ambil token dari url
$token = $_GET['token'];

// ambil data dari tabel tb_nilai yang token nya sama dengan token di url
$ambil = $koneksi->query("SELECT * FROM tb_nilai WHERE token = '$token'");
$nilai = $ambil->fetch_assoc();
?>

<div class="container-fluid">
  <div class="card shadow mb-4">
    <!-- jika ada nilai -->
    <?php if(isset($nilai['token'])): ?>
      <div class="card-header">
        <!-- maka tampilkan link cetak nilai -->
        <a href="cetak/nilai.php?token=<?= $token ?>" target="_BLANK" class="btn btn-primary btn-sm"><i class="fa fa-file-pdf"></i> Cetak semua nilai</a>
      </div>
    <?php endif ?>
    <div class="card-body">
      <div class="table-responsive">
        <table class="table table-hover" id="dataTable" width="100%" cellspacing="0">
          <thead>
            <tr>
              <th>No</th>
              <th>Nama</th>
              <th>Aksi</th>
            </tr>
          </thead>
          <tbody>
            <?php
            // ambil data dari tabel tb_siswa yang id_kelas nya sama dengan id_kelas dari url, yang di urutkan nama nya mulai A sampai Z
            $ambil = $koneksi->query("SELECT * FROM tb_siswa WHERE id_kelas = '$id_kelas' ORDER BY nama ASC");
            $nomor = 1;
            // memulai perulangan
            foreach($ambil as $siswa):
              // ambil data dari tabel tb_nilai yang id_siswa nya sama sama dengan id siswa yang baru saja di ambil dan token nya sama dengan token dari url
              $ambil = $koneksi->query("SELECT * FROM tb_nilai WHERE id_siswa = '$siswa[id]' && token = '$token'");
              $nilai = $ambil->fetch_assoc();

              // ambil data dari tb_jawab yang id_siswa nya sama sama dengan id siswa yang baru saja di ambil dan token nya sama dengan token dari url
              $ambil = $koneksi->query("SELECT * FROM tb_jawab WHERE id_siswa = '$siswa[id]' && token = '$token'");
              $jawab = $ambil->fetch_assoc();
            ?>
            <tr>
              <td><?= $nomor++ ?></td>
              <td><?= $siswa['nama'] ?></td>
              <td>
                <!-- jika ada nilai -->
                <?php if(isset($nilai['nilai'])): ?>
                  <!-- maka tampilkan link dibawah -->
                  <a href="fullscreen/m?page=lihat-jawaban&id_siswa=<?= $siswa['id'] ?>&token=<?= $token ?>" class="btn btn-success btn-sm">lihat jawaban</a>
                  <a href="fullscreen/m?page=lihat-nilai&id_siswa=<?= $siswa['id'] ?>&token=<?= $token ?>" class="btn btn-info btn-sm">lihat nilai <?= $nilai['nilai'] ?><a>
                  <a onclick="return confirm('Anda ingin menghapus nilai ujian')" href="hapus/hapus-jawaban-dan-nilai?id_siswa=<?= $siswa['id'] ?>&token=<?= $nilai['token'] ?>&id_kelas=<?= $id_kelas ?>&redirect=<?= $token ?>" class="btn btn-danger btn-sm"><i class="fa fa-trash-alt"></i> Hapus nilai</a>
                <!-- jika ada data dari tabel tb_jawab -->
                <?php elseif(isset($jawab['id_siswa'])): ?>
                  <!-- maka status mengerjakan -->
                  <div class="badge badge-primary">mengerjakan</div>
                <!-- jika tidak ada apa apa -->
                <?php else: ?>
                  <!-- maka status nya belum mengerjakan -->
                  <div class="badge badge-warning">belum mengerjakan</div>
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