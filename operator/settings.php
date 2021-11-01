<?php
$ambil = $koneksi->query("SELECT * FROM tb_settings");
$settings = $ambil->fetch_assoc();
?>
<div class="container-fluid">
    <div class="card mb-4">
        <div class="card-body">
            <table class="table table-hover">
                <tr>
                    <td>Jika siswa selesai mengerjakan soal redirect ke halaman</td>
                    <td>
                        <form action="" method="post">
                            <div class="form-group">
                                <div class="custom-control custom-radio small">
                                    <?php if($settings['selesai_redirect'] == 'daftar-ujian'): ?>
                                        <input type="radio" class="custom-control-input" id="daftar-ujian" name="selesai_redirect" value="daftar-ujian" checked>
                                    <?php else: ?>
                                        <input type="radio" class="custom-control-input" id="daftar-ujian" name="selesai_redirect" value="daftar-ujian">
                                    <?php endif ?>
                                    <label class="custom-control-label" for="daftar-ujian">Daftar ujian</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="custom-control custom-radio small">
                                    <?php if($settings['selesai_redirect'] == 'detail-mapel'): ?>
                                        <input type="radio" class="custom-control-input" id="detail-mapel" name="selesai_redirect" value="detail-mapel" checked>
                                    <?php else: ?>
                                        <input type="radio" class="custom-control-input" id="detail-mapel" name="selesai_redirect" value="detail-mapel">
                                    <?php endif ?>
                                    <label class="custom-control-label" for="detail-mapel">Detail mapel</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="custom-control custom-radio small">
                                    <?php if($settings['selesai_redirect'] == 'lihat-nilai'): ?>
                                        <input type="radio" class="custom-control-input" id="lihat-nilai" name="selesai_redirect" value="lihat-nilai" checked>
                                    <?php else: ?>
                                        <input type="radio" class="custom-control-input" id="lihat-nilai" name="selesai_redirect" value="lihat-nilai">
                                    <?php endif ?>    
                                    <label class="custom-control-label" for="lihat-nilai">Lihat nilai</label>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary btn-sm" name="update_selesai_redirect">Update</button>
                        </form>
                        <?php
                            if(isset($_POST['update_selesai_redirect'])){
                                $selesai_redirect = $_POST['selesai_redirect'];

                                $koneksi->query("UPDATE tb_settings SET selesai_redirect = '$selesai_redirect' WHERE id = '1'");
                                echo "<script>location='m?page=settings';</script>";
                            }
                        ?>
                    </td>
                </tr>
                <tr>
                    <td>Jika nomor soal dihover dengan mouse</td>
                    <td>
                        <form action="" method="post">
                            <div class="form-group">
                                <div class="custom-control custom-radio small">
                                    <?php if($settings['nomor_hover'] == 'rotate-0deg border-dark'): ?>
                                        <input type="radio" class="custom-control-input" id="rotate-0deg" name="nomor_hover" value="rotate-0deg border-dark" checked>
                                    <?php else: ?>
                                        <input type="radio" class="custom-control-input" id="rotate-0deg" name="nomor_hover" value="rotate-0deg border-dark">
                                    <?php endif ?>
                                    <label class="custom-control-label" for="rotate-0deg">Rotate 0deg</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="custom-control custom-radio small">
                                    <?php if($settings['nomor_hover'] == 'rotate-360deg'): ?>
                                        <input type="radio" class="custom-control-input" id="rotate-360deg" name="nomor_hover" value="rotate-360deg" checked>
                                    <?php else: ?>
                                        <input type="radio" class="custom-control-input" id="rotate-360deg" name="nomor_hover" value="rotate-360deg">
                                    <?php endif ?>    
                                    <label class="custom-control-label" for="rotate-360deg">Rotate 360deg</label>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary btn-sm" name="update_nomor_hover">Update</button>
                        </form>
                        <?php
                            if(isset($_POST['update_nomor_hover'])){
                                $nomor_hover = $_POST['nomor_hover'];

                                $koneksi->query("UPDATE tb_settings SET nomor_hover = '$nomor_hover' WHERE id = '1'");
                                echo "<script>location='m?page=settings';</script>";
                            }
                        ?>
                    </td>
                </tr>
                <tr>
                    <td>Warna topbar halaman siswa</td>
                    <td>
                        <form action="" method="post">
                            <div class="form-group">
                                <div class="custom-control custom-radio small">
                                    <?php if($settings['warna_topbar'] == 'dark'): ?>
                                        <input type="radio" class="custom-control-input" id="dark" name="warna_topbar" value="dark" checked>
                                    <?php else: ?>
                                        <input type="radio" class="custom-control-input" id="dark" name="warna_topbar" value="dark">
                                    <?php endif ?>
                                    <label class="custom-control-label" for="dark">Dark</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="custom-control custom-radio small">
                                    <?php if($settings['warna_topbar'] == 'primary'): ?>
                                        <input type="radio" class="custom-control-input" id="primary" name="warna_topbar" value="primary" checked>
                                    <?php else: ?>
                                        <input type="radio" class="custom-control-input" id="primary" name="warna_topbar" value="primary">
                                    <?php endif ?>
                                    <label class="custom-control-label" for="primary">Primary</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="custom-control custom-radio small">
                                    <?php if($settings['warna_topbar'] == 'success'): ?>
                                        <input type="radio" class="custom-control-input" id="success" name="warna_topbar" value="success" checked>
                                    <?php else: ?>
                                        <input type="radio" class="custom-control-input" id="success" name="warna_topbar" value="success">
                                    <?php endif ?>    
                                    <label class="custom-control-label" for="success">Success</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="custom-control custom-radio small">
                                    <?php if($settings['warna_topbar'] == 'info'): ?>
                                        <input type="radio" class="custom-control-input" id="info" name="warna_topbar" value="info" checked>
                                    <?php else: ?>
                                        <input type="radio" class="custom-control-input" id="info" name="warna_topbar" value="info">
                                    <?php endif ?>    
                                    <label class="custom-control-label" for="info">Info</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="custom-control custom-radio small">
                                    <?php if($settings['warna_topbar'] == 'warning'): ?>
                                        <input type="radio" class="custom-control-input" id="warning" name="warna_topbar" value="warning" checked>
                                    <?php else: ?>
                                        <input type="radio" class="custom-control-input" id="warning" name="warna_topbar" value="warning">
                                    <?php endif ?>    
                                    <label class="custom-control-label" for="warning">Warning</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="custom-control custom-radio small">
                                    <?php if($settings['warna_topbar'] == 'danger'): ?>
                                        <input type="radio" class="custom-control-input" id="danger" name="warna_topbar" value="danger" checked>
                                    <?php else: ?>
                                        <input type="radio" class="custom-control-input" id="danger" name="warna_topbar" value="danger">
                                    <?php endif ?>    
                                    <label class="custom-control-label" for="danger">Danger</label>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary btn-sm" name="update_warna_topbar">Update</button>
                        </form>
                        <?php
                            if(isset($_POST['update_warna_topbar'])){
                                $warna_topbar = $_POST['warna_topbar'];

                                $koneksi->query("UPDATE tb_settings SET warna_topbar = '$warna_topbar' WHERE id = '1'");
                                echo "<script>location='m?page=settings';</script>";
                            }
                        ?>
                    </td>
                </tr>
                <tr>
                    <td>Warna sidebar halaman operator</td>
                    <td>
                        <form action="" method="post">
                            <div class="form-group">
                                <div class="custom-control custom-radio small">
                                    <?php if($settings['warna_sidebar'] == 'dark'): ?>
                                        <input type="radio" class="custom-control-input" id="dark2" name="warna_sidebar" value="dark" checked>
                                    <?php else: ?>
                                        <input type="radio" class="custom-control-input" id="dark2" name="warna_sidebar" value="dark">
                                    <?php endif ?>
                                    <label class="custom-control-label" for="dark2">Dark</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="custom-control custom-radio small">
                                    <?php if($settings['warna_sidebar'] == 'gradient-primary'): ?>
                                        <input type="radio" class="custom-control-input" id="gradient-primary" name="warna_sidebar" value="gradient-primary" checked>
                                    <?php else: ?>
                                        <input type="radio" class="custom-control-input" id="gradient-primary" name="warna_sidebar" value="gradient-primary">
                                    <?php endif ?>    
                                    <label class="custom-control-label" for="gradient-primary">Gradient-primary</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="custom-control custom-radio small">
                                    <?php if($settings['warna_sidebar'] == 'primary'): ?>
                                        <input type="radio" class="custom-control-input" id="primary2" name="warna_sidebar" value="primary" checked>
                                    <?php else: ?>
                                        <input type="radio" class="custom-control-input" id="primary2" name="warna_sidebar" value="primary">
                                    <?php endif ?>
                                    <label class="custom-control-label" for="primary2">Primary</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="custom-control custom-radio small">
                                    <?php if($settings['warna_sidebar'] == 'gradient-success'): ?>
                                        <input type="radio" class="custom-control-input" id="gradient-success" name="warna_sidebar" value="gradient-success" checked>
                                    <?php else: ?>
                                        <input type="radio" class="custom-control-input" id="gradient-success" name="warna_sidebar" value="gradient-success">
                                    <?php endif ?>    
                                    <label class="custom-control-label" for="gradient-success">Gradient-success</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="custom-control custom-radio small">
                                    <?php if($settings['warna_sidebar'] == 'success'): ?>
                                        <input type="radio" class="custom-control-input" id="success2" name="warna_sidebar" value="success" checked>
                                    <?php else: ?>
                                        <input type="radio" class="custom-control-input" id="success2" name="warna_sidebar" value="success">
                                    <?php endif ?>    
                                        <label class="custom-control-label" for="success2">Success</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="custom-control custom-radio small">
                                    <?php if($settings['warna_sidebar'] == 'gradient-info'): ?>
                                        <input type="radio" class="custom-control-input" id="gradient-info" name="warna_sidebar" value="gradient-info" checked>
                                    <?php else: ?>
                                        <input type="radio" class="custom-control-input" id="gradient-info" name="warna_sidebar" value="gradient-info">
                                    <?php endif ?>    
                                    <label class="custom-control-label" for="gradient-info">Gradient-info</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="custom-control custom-radio small">
                                    <?php if($settings['warna_sidebar'] == 'info'): ?>
                                        <input type="radio" class="custom-control-input" id="info2" name="warna_sidebar" value="info" checked>
                                    <?php else: ?>
                                        <input type="radio" class="custom-control-input" id="info2" name="warna_sidebar" value="info">
                                    <?php endif ?>    
                                    <label class="custom-control-label" for="info2">Info</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="custom-control custom-radio small">
                                    <?php if($settings['warna_sidebar'] == 'gradient-warning'): ?>
                                        <input type="radio" class="custom-control-input" id="gradient-warning" name="warna_sidebar" value="gradient-warning" checked>
                                    <?php else: ?>
                                        <input type="radio" class="custom-control-input" id="gradient-warning" name="warna_sidebar" value="gradient-warning">
                                    <?php endif ?>    
                                    <label class="custom-control-label" for="gradient-warning">Gradient-warning</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="custom-control custom-radio small">
                                    <?php if($settings['warna_sidebar'] == 'warning'): ?>
                                        <input type="radio" class="custom-control-input" id="warning2" name="warna_sidebar" value="warning" checked>
                                    <?php else: ?>
                                        <input type="radio" class="custom-control-input" id="warning2" name="warna_sidebar" value="warning">
                                    <?php endif ?>    
                                    <label class="custom-control-label" for="warning2">Warning</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="custom-control custom-radio small">
                                    <?php if($settings['warna_sidebar'] == 'gradient-danger'): ?>
                                        <input type="radio" class="custom-control-input" id="gradient-danger" name="warna_sidebar" value="gradient-danger" checked>
                                    <?php else: ?>
                                        <input type="radio" class="custom-control-input" id="gradient-danger" name="warna_sidebar" value="gradient-danger">
                                    <?php endif ?>    
                                    <label class="custom-control-label" for="gradient-danger">Gradient-danger</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="custom-control custom-radio small">
                                    <?php if($settings['warna_sidebar'] == 'danger'): ?>
                                        <input type="radio" class="custom-control-input" id="danger2" name="warna_sidebar" value="danger" checked>
                                    <?php else: ?>
                                        <input type="radio" class="custom-control-input" id="danger2" name="warna_sidebar" value="danger">
                                    <?php endif ?>    
                                    <label class="custom-control-label" for="danger2">Danger</label>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary btn-sm" name="update_warna_sidebar">Update</button>
                        </form>
                        <?php
                            if(isset($_POST['update_warna_sidebar'])){
                                $warna_sidebar = $_POST['warna_sidebar'];

                                $koneksi->query("UPDATE tb_settings SET warna_sidebar = '$warna_sidebar' WHERE id = '1'");
                                echo "<script>location='m?page=settings';</script>";
                            }
                        ?>
                    </td>
                </tr>
                <tr>
                    <td>Text footer</td>
                    <td>
                        <form action="" method="post">
                            <div class="form-grup mb-3">
                                <input type="text" name="text_footer" id="text_footer" required value="<?= $settings['text_footer'] ?>" class="form-control">
                            </div>
                            <div class="form-grup">
                                <button type="submit" class="btn btn-primary btn-sm" name="update_text_footer">Update</button>
                            </div>
                        </form>
                        <?php
                            if(isset($_POST['update_text_footer'])){
                                $text_footer = $_POST['text_footer'];

                                $koneksi->query("UPDATE tb_settings SET text_footer = '$text_footer' WHERE id = '1'");
                                echo "<script>location='m?page=settings';</script>";
                            }
                        ?>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</div>