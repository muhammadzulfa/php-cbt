<?php
// ambil id_kelas dari url
$id_kelas = $_GET['id_kelas'];
// ambil token dari url
$token = $_GET['token'];

// ambil data dari tabel tb_siswa yang id_kelas nya sama dengan yang diurl
$ambil = $koneksi->query("SELECT * FROM tb_siswa WHERE id_kelas = '$id_kelas'");
$siswa = $ambil->fetch_assoc();
?>

<div class="container-fluid">
  <div class="card shadow mb-4">
    <div class="card-header py-3">
      <div class="m-0">
        <a href="" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#tambahsiswaModal"><i class="fa fa-user-plus"></i> Tambah siswa</a>
      <!-- jika ada data siswa -->
      <?php if(isset($siswa)): ?>
        <!-- tampilkan link cetak kartu dan tombol hapus semua data -->
        <a href="cetak/kartu-ujian.php?id_kelas=<?= $id_kelas ?>" target="_blank" class="btn btn-primary btn-sm" title="Maksimal 20 siswa"><i class="fa fa-file-pdf"></i> Cetak semua kartu</a>
        <a href="" data-toggle="modal" data-target="#hapussemuasiswaModal" class="btn btn-danger btn-sm pull-right"><i class="fa fa-trash-alt"></i> Hapus semua</a>
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
                <th>Nama</th>
                <th>Username</th>
                <th>Password</th>
                <th>Aksi</th>
              </tr>
            </thead>
            <tbody>
              <?php
              // ambil data dari tabel tb_siswa
              $ambil = $koneksi->query("SELECT * FROM tb_siswa WHERE id_kelas = '$id_kelas' ORDER BY nama ASC");
              $nomor = 1;
              // memulai perulangan
              foreach($ambil as $siswa):
              ?>
              <tr>
                <td>
                  <div class="custom-control custom-checkbox small">
                    <input type="checkbox" name="id[]" value="<?= $siswa['id'] ?>" class="custom-control-input ceklist-satu" id="<?= $siswa['id'] ?>">
                    <label class="custom-control-label" for="<?= $siswa['id'] ?>"></label>
                  </div>
                </td>
                <td><?= $nomor++ ?></td>
                <td><?= $siswa['nama'] ?></td>
                <td><?= $siswa['username'] ?></td>
                <td><?= $siswa['password'] ?></td>
                <td>
                  <a href="m?page=edit-siswa&id_siswa=<?= $siswa['id'] ?>&id_kelas=<?= $id_kelas ?>&token=<?= $token ?>" class="btn btn-success btn-sm"><i class="fa fa-edit"></i></a>
                  <a onclick="return confirm('Anda ingin menghapus siswa')" href="hapus/hapus-siswa?id_siswa=<?= $siswa['id'] ?>&id_kelas=<?= $id_kelas ?>&token=<?= $token ?>" class="btn btn-danger btn-sm"><i class="fa fa-trash-alt"></i></a>
                  <a href="cetak/kartu-ujian-id?id=<?= $siswa['id'] ?>" target="_blank" class="btn btn-primary btn-sm"><i class="fa fa-file-pdf"></i> Cetak kartu</a>
                </td>
              </tr>
              <?php endforeach ?>
            </tbody>
          </table>
          <br>
          <?php if(isset($siswa)){ ?>
          <button onclick="return confirm('Anda yakin ingin menghapus data yang diceklist')" type="submit" class="btn btn-danger btn-sm" name="hapus_ceklist">Hapus yang diceklist</button>
          <?php } ?>
        </form>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="tambahsiswaModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Tambah siswa</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="" method="post">
                    <div class="form-grup mb-3">
                      <input type="text" name="nama" class="form-control" autofocus placeholder="Nama siswa" required>
                    </div>
            </div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Batal</button>
                    <button type="submit" class="btn btn-primary" name="tambah">
                        Tambah
                    </button>
                </form>
            </div>
        </div>
    </div>
</div>

<?php
// jika tombol tambah ditekan
if(isset($_POST['tambah'])){
    // buat varibel nama yang isi nya di input operator
    $nama = $_POST['nama'];
    // buat variabel username dan password yang isi nya hasil acakan sha256 yang jumlah huruf atau angkanya cuma 5
    $username = strtolower(substr(hash('sha256',time()),0,5));
    $password = strtolower(substr(hash('sha256',time()+time()),0,5));

    // insert ketabel tb_siswa
    $koneksi->query("INSERT INTO tb_siswa(id_kelas,nama,username,password,status) VALUES('$id_kelas','$nama','$username','$password','logout')");
    echo "<script>location='m?page=daftar-siswa&id_kelas=$id_kelas&token=$token';</script>";
}
?>

<?php
// ambil data dari tabel tb_kelas yang id nya sama dengan id_kelas yang di url
$ambil = $koneksi->query("SELECT * FROM tb_kelas WHERE id = '$id_kelas'");
$kelas = $ambil->fetch_assoc()
?>

<div class="modal fade" id="hapussemuasiswaModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Pemberitahuan</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">Anda yakin ingin menghapus semua siswa kelas <?= $kelas['kelas'].' '.$kelas['jurusan'] ?>.</div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Batal</button>
                <a href="hapus/hapus-semua-siswa?id_kelas=<?= $id_kelas ?>&token=<?= $token ?>" class="btn btn-danger">Hapus</a>
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
        $koneksi->query("DELETE FROM tb_siswa WHERE id IN(".implode(",",$id).")");
        echo "<script>location='m?page=daftar-siswa&id_kelas=$id_kelas&token=$token'</script>";
    } else {
      echo "<script>location='m?page=daftar-siswa&id_kelas=$id_kelas&token=$token&error=hapus-semua'</script>";
    }
}
?>