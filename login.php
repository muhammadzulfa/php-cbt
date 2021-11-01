<?php
// ambil data dari tabel tb_settings
$ambil = $koneksi->query("SELECT * FROM tb_settings");
$settings = $ambil->fetch_assoc();

// ambil data dari tabel tb_jadwal
$ambil = $koneksi->query("SELECT * FROM tb_jadwal ORDER BY kelas ASC");
while($pecah = mysqli_fetch_assoc($ambil))
{
    $kelas[] = $pecah;
}
?>

<div class="container-fluid">
    <div class="row">
        <div class="col-md-9 d-none d-md-inline">
            <div class="card mb-4 shadow-hover">
                <div class="card-body">
                    <table class="table table-borderless table-striped" width="100%">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Tanggal</th>
                                <th>Kelas</th>
                                <th>Jam</th>
                                <th>Mapel</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $nomor = 1;
                            // memulai perulangan
                            foreach($ambil as $jadwal):
                            ?>
                            <tr>
                                <td><?= $nomor++ ?></td>
                                <td><?= $jadwal['tanggal_ujian'] ?></td>
                                <td><?= $jadwal['kelas'] ?></td>
                                <td><?= $jadwal['jam'] ?></td>
                                <td><?= $jadwal['mapel'] ?></td>
                            </tr>
                            <?php endforeach ?>
                        </tbody>
                    </table>
                    <?php
                        if(empty($kelas)){
                            echo "<p class='text-center'>No data available in table</p>";
                        }
                    ?>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card shadow-hover">
                <div class="card-header bg-<?= $settings['warna_topbar'] ?>">
                    <div class="h5 text-center text-uppercase text-white">
                        login siswa
                    </div>
                </div>
                <div class="card-body">
                    <?php require 'pesan.php' ?>
                    <form action="" method="post">
                        <div class="input-group mb-3">
                            <div class="input-group-append">
                                <span class="input-group-text"><i class="fa fa-user"></i></span>
                            </div>
                            <?php
                            if(isset($_GET['username'])){
                                echo "<input type='text' name='username' placeholder='Username' required class='form-control' value='$_GET[username]'>";
                            } else {
                                echo "<input type='text' name='username' placeholder='Username' required class='form-control' value=''>";
                            }
                            ?>
                        </div>
                        <div class="input-group mb-3">
                            <div class="input-group-append">
                                <span class="input-group-text"><i class="fa fa-key"></i></span>
                            </div>
                            <?php
                            if(isset($_GET['username'])){
                                echo "<input type='text' name='password' placeholder='Password' required class='form-control is-invalid'>";
                            } else {
                                echo "<input type='text' name='password' placeholder='Password' required class='form-control' value=''>";
                            }
                            ?>
                        </div>
                        <button type="submit" class="btn btn-success pull-right" name="login_ujian">
                            <i class="fa fa-sign-in-alt"></i> 
                            Login siswa
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<?php
if(isset($_POST['login_ujian'])){
    $username = $_POST['username'];
    $password = $_POST['password'];

    $ambil = $koneksi->query("SELECT * FROM tb_kelas k INNER JOIN tb_siswa s ON s . id_kelas = k . id WHERE username = '$username'");

    if($siswa = $ambil->fetch_assoc()){
        if($password == $siswa['password']){
            $_SESSION['siswa'] = $siswa['id'];
            $koneksi->query("UPDATE tb_siswa SET status = 'login' WHERE id = '$siswa[id]'");
            echo "<script>location='siswa/m?page=daftar-ujian&kelas=$siswa[kelas] $siswa[jurusan]';</script>";
        } else {
            echo "<script>location='m?page=login&error=password&username=$username';</script>";
        }
    } else {
        echo "<script>location='m?page=login&error=username';</script>";
    }
}
?>