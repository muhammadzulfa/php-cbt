<div class="container-fluid">
  <div class="card shadow mb-4">
    <div class="card-body">
      <div class="table-responsive">
        <table class="table table-hover" id="dataTable" width="100%" cellspacing="0">
          <thead>
            <tr>
              <th>No</th>
              <th>Kelas</th>
              <th>Siswa</th>
            </tr>
          </thead>
          <tbody>
            <?php
            // ambil data dari tabel tb_kelas
            $ambil = $koneksi->query("SELECT * FROM tb_kelas ORDER BY kelas ASC");
            $nomor = 1;
            // memulai perulangan
            foreach($ambil as $kelas):
            ?>
            <tr>
              <td><?= $nomor++ ?></td>
              <td><?= $kelas['kelas'].' '.$kelas['jurusan'] ?></td>
              <td>
                <a href="m?page=nilai-ujian-pilih-jadwal&id_kelas=<?= $kelas['id'] ?>&token=<?= $kelas['token'] ?>&kelas=<?= $kelas['kelas'].' '.$kelas['jurusan']  ?>" class="btn btn-primary btn-sm">Lihat nilai</a>
              </td>
            </tr>
            <?php endforeach ?>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>