<?php
$token = $_GET['token'];
$ambil = $koneksi->query("SELECT * FROM tb_jadwal WHERE token = '$token'");
$jadwal = $ambil->fetch_assoc();
?>

<div class="container-fluid">
    <h5><?= $jadwal['mapel'] ?>: kelas <?= $jadwal['kelas'] ?></h5>
    <div class="card shadow">
        <div class="card-body">
            <form action="" method="post">
                <div class="form-group">
                    <div class="custom-control custom-radio small">
                        <?php if($jadwal['status'] == 'tidak aktif'): ?>
                            <input type="radio" class="custom-control-input" id="tidak aktif" name="status" value="tidak aktif" checked>
                        <?php else: ?>
                            <input type="radio" class="custom-control-input" id="tidak aktif" name="status" value="tidak aktif">
                        <?php endif ?>
                        <label class="custom-control-label" for="tidak aktif">tidak aktif</label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="custom-control custom-radio small">
                        <?php if($jadwal['status'] == 'kerjakan soal'): ?>
                            <input type="radio" class="custom-control-input" id="kerjakan soal" name="status" value="kerjakan soal" checked>
                        <?php else: ?>
                            <input type="radio" class="custom-control-input" id="kerjakan soal" name="status" value="kerjakan soal">
                        <?php endif ?>    
                        <label class="custom-control-label" for="kerjakan soal">kerjakan soal</label>
                    </div>
                </div>
                <div class="form-grup">
                    <label class="ahref">
                        <a class="btn btn-secondary" onclick="history.back(-1)">Batal</a>
                    </label>
                    <label>
                        <button type="submit" name="update" class="btn btn-primary">Update</button>
                    </label>
                </div>
            </form>
        </div>
    </div>
</div>

<?php
if(isset($_POST['update'])){
    $status = $_POST['status'];

    $koneksi->query("UPDATE tb_jadwal SET status = '$status' WHERE token = '$token'");
    echo "<script>location='m?page=status-ujian';</script>";
}
?>