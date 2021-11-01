<?php
// ambil id_kelas dari url
$id_kelas = $_GET['id_kelas'];
?>

<div class="container-fluid">
  <div class="card shadow mb-4">
    <div class="card-header py-3">
      <div class="m-0">
        <a href="m?page=lihat-status-siswa&id_kelas=<?= $id_kelas ?>" class="btn btn-primary btn-sm pull-right">Refresh</a>
      </div>
    </div>
    <div class="card-body">
      <div class="table-responsive">
        <table class="table table-hover" id="dataTable" width="100%" cellspacing="0">
          <thead>
            <tr>
              <th>No</th>
              <th>Kelas</th>
              <th>Status</th>
              <th>Reset</th>
            </tr>
          </thead>
          <tbody>
            <?php
            // ambil data dari tabel tb_siswa yang id_kelas nya sama dengan id_kelas dari url, yang diurutkan nama nya A samapai Z
            $ambil = $koneksi->query("SELECT * FROM tb_siswa WHERE id_kelas = '$id_kelas' ORDER BY nama ASC");
            $nomor = 1;
            // memulai perulangan
            foreach($ambil as $siswa):
            ?>
            <tr>
              <td><?= $nomor++ ?></td>
              <td><?= $siswa['nama'] ?></td>
              <td>
                <?php
                    if($siswa['status'] == 'login'){
                        echo "<div class='badge badge-success'>$siswa[status]</div>";
                    } elseif($siswa['status'] == 'logout'){
                        echo "<div class='badge badge-danger'>$siswa[status]</div>";
                    }
                ?>
              </td>
              <td>
                <a href="reset-status?id_kelas=<?= $id_kelas ?>&id=<?= $siswa['id'] ?>" name="reset" class="btn btn-warning btn-sm"><i class="fa fa-history"></i> Reset</a>   
              </td>
            </tr>
            <?php endforeach ?>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>