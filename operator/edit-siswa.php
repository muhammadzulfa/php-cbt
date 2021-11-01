<?php
// ambil id_siswa dar url
$id_siswa = $_GET['id_siswa'];

// ambil data dari tabel tb_siswa yang id nya sama dengan id di url
$ambil = $koneksi->query("SELECT * FROM tb_siswa WHERE id = '$id_siswa'");
$siswa = $ambil->fetch_assoc()
?>

<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <div class="card mb-4 shadow">
                <div class="card-body">
                    <form action="" method="post">
                        <div class="form-grup mb-3">
                            <label for="nama">Nama</label>
                            <input type="text" name="nama" id="nama" value="<?= $siswa['nama'] ?>" class="form-control" required>
                        </div>
                        <div class="form-grup mb-3">
                            <label for="username">Username</label>
                            <input type="text" name="username" id="username" value="<?= $siswa['username'] ?>" class="form-control" required>
                        </div>
                        <div class="form-grup mb-3">
                            <label for="password">Password</label>
                            <input type="text" name="password" id="password" value="<?= $siswa['password'] ?>" class="form-control" required>
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
    $nama = $_POST['nama'];
    $username = $_POST['username'];
    $password = $_POST['password'];

    $koneksi->query("UPDATE tb_siswa SET nama = '$nama', username = '$username', password = '$password' WHERE id = '$id_siswa'");

    $id_kelas = $_GET['id_kelas'];
    $token = $_GET['token'];
    echo "<script>location='m?page=daftar-siswa&id_kelas=$id_kelas&token=$token';</script>";
}
?>