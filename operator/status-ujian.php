<div class="container-fluid">
  <div class="card shadow mb-4">
    <div class="card-body">
      <div class="table-responsive">
        <table class="table table-hover" id="dataTable" width="100%" cellspacing="0">
          <thead>
            <tr>
              <th>No</th>
              <th>Kelas</th>
              <th>Mapel</th>
              <th>Status</th>
              <th>Update status</th>
            </tr>
          </thead>
          <tbody>
            <?php
            $ambil = $koneksi->query("SELECT * FROM tb_jadwal");
            $nomor = 1;
            foreach($ambil as $jadwal):
            ?>
            <tr>
              <td><?= $nomor++ ?></td>
              <td><?= $jadwal['kelas'] ?></td>
              <td><?= $jadwal['mapel'] ?></td>
              <td>
                <?php if($jadwal['status'] == 'kerjakan soal'): ?>
                  <div class="badge badge-success"><?= $jadwal['status'] ?></div>
                <?php elseif($jadwal['status'] == 'tidak aktif'): ?>
                  <div class="badge badge-danger"><?= $jadwal['status'] ?></div>
                <?php elseif($jadwal['status'] == 'sudah mengerjakan'): ?>
                  <div class="badge badge-warning"><?= $jadwal['status'] ?></div>
                <?php elseif($jadwal['status'] == 'lihat nilai'): ?>
                  <div class="badge badge-info"><?= $jadwal['status'] ?></div>
                <?php endif ?>
              </td>
              <td>
                <a href="m?page=update-status-ujian&token=<?= $jadwal['token'] ?>" class="btn btn-primary btn-sm">Update</a>
              </td>
            </tr>
            <?php endforeach ?>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>