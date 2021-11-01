<div class="container-fluid">
    <div class="row">
        <div class="col-md-8">
            <div class="card mb-4 shadow">
                <div class="card-body">
                    <?php require '../pesan.php' ?>
                    <form action="" method="post">
                        <label for="nama">Nama</label>
                        <div class="input-group mb-2">
                            <input type="text" name="nama" placeholder="Nama" value="<?= $operator['nama'] ?>" required class="form-control">
                            <div class="input-group-append">
                                <span class="input-group-text"><i class="fa fa-user"></i></span>
                            </div>
                        </div>
                        <label for="email">Email</label>
                        <div class="input-group mb-2">
                            <input type="email" name="email" placeholder="Email" value="<?= $operator['email'] ?>" required class="form-control">
                            <div class="input-group-append">
                                <span class="input-group-text"><i class="fa fa-at"></i></span>
                            </div>
                        </div>
                        <label for="password_lama">Password lama</label>
                        <div class="input-group mb-2">
                        <?php if(isset($_GET['password_lama'])): ?>
                            <input type="password" name="password_lama" placeholder="Password lama" value="<?= $_GET['password_lama'] ?>" required class="form-control">
                        <?php else: ?>    
                            <input type="password" name="password_lama" placeholder="Password lama" required class="form-control">
                        <?php endif ?>
                            <div class="input-group-append">
                                <span class="input-group-text"><i class="fa fa-key"></i></span>
                            </div>
                        </div>
                        <label for="password1">Password baru</label>
                        <div class="input-group mb-2">
                        <?php if(isset($_GET['password1'])): ?>
                            <input type="password" name="password1" placeholder="Password baru" value="<?= $_GET['password1'] ?>" required class="form-control">
                        <?php else: ?>    
                            <input type="password" name="password1" placeholder="Password baru" required class="form-control">
                        <?php endif ?>
                            <div class="input-group-append">
                                <span class="input-group-text"><i class="fa fa-key"></i></span>
                            </div>
                        </div>
                        <label for="password2">Konfirmasi password</label>
                        <div class="input-group mb-4">
                            <input type="password" name="password2" placeholder="Konfirmasi password" required class="form-control">
                            <div class="input-group-append">
                                <span class="input-group-text"><i class="fa fa-key"></i></span>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary btn-block" name="edit">Edit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<?php
if(isset($_POST['edit'])){
    $nama = $_POST['nama'];
    $email = $_POST['email'];
    $password_lama = $_POST['password_lama'];
    $password1 = $_POST['password1'];
    $password2 = $_POST['password2'];

    // ambil password lama
    $ambil = $koneksi->query("SELECT * FROM tb_operator WHERE id = '$_SESSION[operator]'");
    $operator = $ambil->fetch_assoc();

    if($operator['password'] !== $password_lama){
        echo "<script>location='m?page=edit-akun&error=password_lama';</script>";
        return false;
    }
    
    if($password1 !== $password2){
        echo "<script>location='m?page=edit-akun&error=konfirmasi_password&password_lama=$password_lama&password1=$password1';</script>";
        return false;
    }

    $koneksi->query("UPDATE tb_operator SET nama = '$nama', email = '$email', password = '$password2' WHERE id = '$_SESSION[operator]'");
    echo "<script>location='m?page=edit-akun&sukses=edit-akun';</script>";
}
?>