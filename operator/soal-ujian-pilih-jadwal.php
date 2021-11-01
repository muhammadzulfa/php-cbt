<div class="container-fluid">
  <div class="card shadow mb-4">
    <div class="card-header py-3">
      <div class="m-0">
        <a href="m?page=buat-jadwal" class="btn btn-primary btn-sm"><i class="fa fa-file"></i> Buat jadwal baru</a>
      </div>
    </div>
    <div class="card-body">
      <div class="table-responsive">
        <table class="table table-hover" id="dataTable" width="100%" cellspacing="0">
          <thead>
            <tr>
              <th>No</th>
              <th>Kelas</th>
              <th>Mapel</th>
              <th>Tanggal</th>
              <th>Jam</th>
              <th>Soal</th>
              <th>Aksi</th>
            </tr>
          </thead>
          <tbody>
            <?php
            $ambil = $koneksi->query("SELECT * FROM tb_jadwal");
            $nomor = 1;
            foreach($ambil as $jadwal):
              $ambil = $koneksi->query("SELECT * FROM tb_soal WHERE id_jadwal = '$jadwal[id]'");
              $jumlah_soal = mysqli_num_rows($ambil)
            ?>
            <tr>
              <td><?= $nomor++ ?></td>
              <td><?= $jadwal['kelas'] ?></td>
              <td><?= $jadwal['mapel'] ?></td>
              <td><?= $jadwal['tanggal_ujian'] ?></td>
              <td><?= $jadwal['jam'] ?></td>
              <td>
                <a href="m?page=soal&token=<?= $jadwal['token'] ?>" class="btn btn-primary btn-sm">Lihat soal <?= $jumlah_soal ?></a>
              </td>
              <td>
                <a href="m?page=detjad&token=<?= $jadwal['token'] ?>" class="btn btn-info btn-sm"><i class="fa fa-hand-paper"></i></a>
                <a href="m?page=edit-jadwal&token=<?= $jadwal['token'] ?>" class="btn btn-success btn-sm"><i class="fa fa-edit"></i></a>
                <a onclick="return confirm('Anda ingin menghapus jadwal dan soal')" href="hapus/hapus-jadwal?token=<?= $jadwal['token'] ?>" class="btn btn-danger btn-sm"><i class="fa fa-trash-alt"></i></a>
              </td>
            </tr>
            <?php endforeach ?>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>