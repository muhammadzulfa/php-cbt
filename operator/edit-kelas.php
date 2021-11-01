<?php
// ambil token dari url
$token = $_GET['token'];

// ambil data dari tabel tb_kelas yang token nya sama dengan token di url
$ambil = $koneksi->query("SELECT * FROM tb_kelas WHERE token = '$token'");
$kelas = $ambil->fetch_assoc()
?>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <div class="card mb-4 shadow">
                <div class="card-body">
                    <?php
                        // jika ada pesan, maka tampilkan pesan
                        if(isset($_GET['error']) && $_GET['error'] == 'kelas-jurusan'){
                        echo "<div class='alert alert-danger'>Maaf, kelas $_GET[kelas] dan jurusan $_GET[jurusan] sudah ada didatabase</div>";
                        }
                    ?>
                    <form action="" method="post">
                        <div class="form-grup mb-3">
                            <label for="kelas">Kelas</label>
                            <select name="kelas" id="kelas" class="custom-select" required>
                                <?php
                                    if($kelas['kelas'] == '10'){
                                        echo '<option>10</option>';
                                        echo '<option>11</option>';
                                        echo '<option>12</option>';
                                    } elseif($kelas['kelas'] == '11'){
                                        echo '<option>11</option>';
                                        echo '<option>10</option>';
                                        echo '<option>12</option>';
                                    } elseif($kelas['kelas'] == '12'){
                                        echo '<option>12</option>';
                                        echo '<option>10</option>';
                                        echo '<option>11</option>';
                                    }
                                ?>
                            </select>
                        </div>
                        <div class="form-grup mb-3">
                            <label for="jurusan">Jurusan</label>
                            <input type="text" name="jurusan" id="jurusan" value="<?= $kelas['jurusan'] ?>" required class="form-control">
                        </div>
                        <div class="form-grup">
                            <label class="ahref">
                                <a class="btn btn-secondary" onclick="history.back(-1)">Batal</a>
                            </label>
                            <label>
                                <button type="submit" name="edit" class="btn btn-primary">Edit</button>
                            </label>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<?php
// jika tombol edit ditekan
if(isset($_POST['edit'])){
    // buat varibel yang isi nya hasil inputan operator
    $kelas = $_POST['kelas'];
    $jurusan = $_POST['jurusan'];

    // ambil data kelas dan jurusan
	$ambil = $koneksi->query("SELECT kelas && jurusan FROM tb_kelas WHERE kelas = '$kelas' && jurusan = '$jurusan'");

    // jika kelas dan jurusan sudah ada ditabel tb_kelas
      if(mysqli_fetch_assoc($ambil))
      {
      // maka tampilkan pesan error
      echo "<script>location='m?page=edit-kelas&token=$token&kelas=$kelas&jurusan=$jurusan&error=kelas-jurusan';</script>";
      // program berhenti sampai disini
          return false;
      }

    // update ke tabel tb_kelas
    $koneksi->query("UPDATE tb_kelas SET kelas = '$kelas', jurusan = '$jurusan' WHERE token = '$token'");
    echo "<script>location='m?page=data-kelas';</script>";
}
?>