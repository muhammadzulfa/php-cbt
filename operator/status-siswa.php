<div class="container-fluid">
  <div class="card shadow mb-4">
    <div class="card-body">
      <div class="table-responsive">
        <table class="table table-hover" id="dataTable" width="100%" cellspacing="0">
          <thead>
            <tr>
              <th>No</th>
              <th>Kelas</th>
              <th>Aksi</th>
            </tr>
          </thead>
          <tbody>
            <?php
            $ambil = $koneksi->query("SELECT * FROM tb_kelas");
            $nomor = 1;
            foreach($ambil as $kelas):
            ?>
            <tr>
              <td><?= $nomor++ ?></td>
              <td><?= $kelas['kelas'].' '.$kelas['jurusan'] ?></td>
              <td>
                <a href="m?page=lihat-status-siswa&id_kelas=<?= $kelas['id'] ?>" class="btn btn-primary btn-sm">Lihat status</a>
              </td>
            </tr>
            <?php endforeach ?>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>