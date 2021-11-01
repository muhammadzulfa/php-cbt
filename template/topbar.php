<?php
// ambil data dari tabel tb_settings
$ambil = $koneksi->query("SELECT * FROM tb_settings");
$settings = $ambil->fetch_assoc();
?>

<nav class="navbar navbar-expand-lg navbar-dark bg-<?= $settings['warna_topbar'] ?> fixed-top shadow text-uppercase">
    <div class="container">
        <div class="navbar-brand d-none d-md-inline">
            <span>
                <div class="row">
                    <div class="col-md-1">
                        <i class="fa fa-user"></i>
                    </div>
                    <div class="col-md-10">
                        selamat datang, silahkan login
                    </div>
                </div>
            </span>
        </div>
        <div class="navbar-nav">
            <a href="" data-toggle="modal" data-target="#loginModal" class="nav-item nav-link">login operator</a>
        </div>
	</div>
</nav>

<br>
<br>
<br>

<div class="mb-2"></div>

<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Login Operator</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="" method="post">
                    <div class="input-group mb-3">
                        <div class="input-group-append">
                            <span class="input-group-text"><i class="fa fa-at"></i></span>
                        </div>
                    <?php if(isset($_GET['email'])): ?>
                        <input type="email" name="email" placeholder="Alamat email" value="<?= $_GET['email'] ?>" required class="form-control" value="">
                    <?php else: ?>
                        <input type="email" name="email" placeholder="Alamat email" required class="form-control" value="operator@gmail.com">
                    <?php endif ?>
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-append">
                            <span class="input-group-text"><i class="fa fa-key"></i></span>
                        </div>
                        <input type="password" name="password" placeholder="Password" required class="form-control" value="123">
                    </div>
            </div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Batal</button>
                    <button type="submit" class="btn btn-primary" name="login_operator">
                        Login operator
                    </button>
                </form>
            </div>
        </div>
    </div>
</div>

<?php
if(isset($_POST['login_operator'])){
    $email = $_POST['email'];
    $password = $_POST['password'];

    $ambil = $koneksi->query("SELECT * FROM tb_operator WHERE email = '$email'");

    if($row = $ambil->fetch_assoc()){
        if($password == $row['password']){
            $_SESSION['operator'] = $row['id'];
            echo "<script>location='operator/m?page=beranda';</script>";
        } else {
            echo "<script>location='m?page=login&error=password&email=$email';</script>";
        }
    } else {
        echo "<script>location='m?page=login&error=email';</script>";
    }
}
?>