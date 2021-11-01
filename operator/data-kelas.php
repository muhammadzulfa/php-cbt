<?php
// ambil data dari tabel tb_kelas
$ambil = $koneksi->query("SELECT * FROM tb_kelas");
$kelas = $ambil->fetch_assoc();
?>


<div class="container-fluid">
  <?php
    // jika ada pesan, maka tampilkan pesan
    if(isset($_GET['error']) && $_GET['error'] == 'kelas-jurusan'){
      echo "<div class='alert alert-danger'>Maaf, kelas $_GET[kelas] dan jurusan $_GET[jurusan] sudah ada didatabase</div>";
    }
  ?>
  <div class="card shadow mb-4">
    <div class="card-header py-3">
      <div class="m-0">
        <a href="" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#buatkelasModal"><i class="fa fa-users"></i> Buat kelas baru</a>
      <!-- jika ada data kelas -->
      <?php if(isset($kelas)): ?>
        <!-- maka tampilkan tombol dibawah -->
        <a href="" data-toggle="modal" data-target="#hapussemuadatakelasModal" class="btn btn-danger btn-sm pull-right"><i class="fa fa-trash-alt"></i> Hapus semua</a>
      <?php endif ?>
      </div>
    </div>
    <div class="card-body">
      <div class="table-responsive">
        <?php require '../pesan.php' ?>
        <form action="" method="post">
          <table class="table table-hover" id="dataTable" width="100%" cellspacing="0">
            <thead>
              <tr>
                <th>
                  <div class="custom-control custom-checkbox small">
                    <input type="checkbox" class="custom-control-input" id="ceklist-semua">
                    <label class="custom-control-label" for="ceklist-semua"></label>
                  </div>
                </th>
                <th>No</th>
                <th>Kelas</th>
                <th>Siswa</th>
                <th>Aksi</th>
              </tr>
            </thead>
            <tbody>
              <?php
              // ambil data dari tabel tb_kelas berurut dari kelas 10, 11 dan 12
              $ambil = $koneksi->query("SELECT * FROM tb_kelas ORDER BY kelas ASC");
              $nomor = 1;
              // memulai perulangan
              foreach($ambil as $kelas):
                $ambil = $koneksi->query("SELECT * FROM tb_siswa WHERE id_kelas = '$kelas[id]'");
                $jmlh_siswa = mysqli_num_rows($ambil);
              ?>
              <tr>
                <td>
                  <div class="custom-control custom-checkbox small">
                    <input type="checkbox" name="id[]" value="<?= $kelas['id'] ?>" class="custom-control-input ceklist-satu" id="<?= $kelas['id'] ?>">
                    <label class="custom-control-label" for="<?= $kelas['id'] ?>"></label>
                  </div>  
                </td>
                <td><?= $nomor++ ?></td>
                <td><?= $kelas['kelas'].' '.$kelas['jurusan'] ?></td>
                <td>
                  <a href="m?page=daftar-siswa&id_kelas=<?= $kelas['id'] ?>&token=<?= $kelas['token'] ?>" class="btn btn-primary btn-sm">Jumlah siswa <?= $jmlh_siswa ?></a>
                </td>
                <td>
                  <a href="m?page=edit-kelas&token=<?= $kelas['token'] ?>" class="btn btn-success btn-sm"><i class="fa fa-edit"></i></a>
                  <a onclick="return confirm('Anda ingin menghapus kelas dan siswa')" href="hapus/hapus-kelas?id=<?= $kelas['id'] ?>" class="btn btn-danger btn-sm"><i class="fa fa-trash-alt"></i></a>
                </td>
              </tr>
              <?php endforeach ?>
            </tbody>
          </table>
          <br>
          <?php if(isset($kelas)){ ?>
          <button onclick="return confirm('Anda yakin ingin menghapus data yang diceklist')" type="submit" class="btn btn-danger btn-sm" name="hapus_ceklist">Hapus yang diceklist</button>
          <?php } ?>
        </form>
      </div>
    </div>
  </div>
</div>

<!-- modal buat kelas baru -->
<div class="modal fade" id="buatkelasModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Buat kelas baru</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="" method="post">
                    <div class="form-grup mb-3">
                      <select name="kelas" id="kelas" class="custom-select" required>
                        <option value="">Kelas</option>
                        <option>10</option>
                        <option>11</option>
                        <option>12</option>
                      </select>
                    </div>
                    <div class="form-grup mb-3">
                      <select name="jurusan" id="jurusan" class="custom-select" required>
                        <option value="">Jurusan</option>
                        <option>TKR</option>
                        <option>TGB</option>
                        <option>TKBB</option>
                        <option>TP</option>
                        <option>TKJ</option>
                      </select>
                    </div>
                    <div class="form-grup mb-3">
                      <input type="number" class="form-control" name="jurusan_ke" id="jurusan_ke" placeholder="Jurusan ke">
                      <small class="text-danger pl-2">bidang ini boleh kosong</small>
                    </div>
            </div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Batal</button>
                    <button type="submit" class="btn btn-primary" name="buat">
                        Buat
                    </button>
                </form>
            </div>
        </div>
    </div>
</div>

<?php
// jika tombol buat ditekan
if(isset($_POST['buat'])){
  // buat varibel yang isi nya hasil inputan operator
  $kelas = $_POST['kelas'];
  $jurusan = $_POST['jurusan'].' '.$_POST['jurusan_ke'];
  // buat token baru
  $token = hash('sha1',time());
  
  // ambil data kelas dan jurusan
	$ambil = $koneksi->query("SELECT kelas && jurusan FROM tb_kelas WHERE kelas = '$kelas' && jurusan = '$jurusan'");

  // jika kelas dan jurusan sudah ada ditabel tb_kelas
	if(mysqli_fetch_assoc($ambil))
	{
    // maka tampilkan pesan error
    echo "<script>location='m?page=data-kelas&kelas=$kelas&jurusan=$jurusan&error=kelas-jurusan';</script>";
    // program berhenti sampai disini
		return false;
	}

  // baru insert kedatabse
  $koneksi->query("INSERT INTO tb_kelas(kelas,jurusan,token) VALUES('$kelas','$jurusan','$token')");
  echo "<script>location='m?page=data-kelas';</script>";
}
?>

<div class="modal fade" id="hapussemuadatakelasModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Pemberitahuan</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">Anda yakin ingin menghapus semua kelas.</div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Batal</button>
                <a href="hapus/hapus-semua-kelas" class="btn btn-danger">Hapus</a>
            </div>
        </div>
    </div>
</div>

<script>
$(document).ready(function(){
    $("#ceklist-semua").click(function(){
        if($(this).is(":checked"))
        $(".ceklist-satu").prop("checked",true);
        else
        $(".ceklist-satu").prop("checked",false);
    });
});
</script>

<?php
if(isset($_POST['hapus_ceklist'])){
    if(isset($_POST['id'])){
        $id = $_POST['id'];
        $koneksi->query("DELETE FROM tb_kelas WHERE id IN(".implode(",",$id).")");
        $koneksi->query("DELETE FROM tb_siswa WHERE id_kelas IN(".implode(",",$id).")");
        echo "<script>location='m?page=data-kelas'</script>";
    } else {
      echo "<script>location='m?page=data-kelas&error=hapus-semua'</script>";
    }
}
?>