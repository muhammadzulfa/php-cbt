<?php
// ambil id dari url
$id = $_GET['id'];

// ambil data dari tabel tb_soal yang id nya sama dengan id di url
$ambil = $koneksi->query("SELECT * FROM tb_soal WHERE id = '$id'");
$soal = $ambil->fetch_assoc()
?>

<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <div class="card mb-4 shadow">
                <div class="card-body">
                    <form action="" method="post">
                        <div class="form-grup mb-3">
                            <label for="soal">Soal</label>
                            <textarea name="soal" id="soal" class="form-control"><?= $soal['soal'] ?></textarea>
                        </div>
                        <div class="form-grup mb-3">
                            <label for="pil_a">Pilihan A</label>
                            <textarea name="pil_a" id="pil_a" class="form-control"><?= $soal['pil_a'] ?></textarea>
                        </div>
                        <div class="form-grup mb-3">
                            <label for="pil_b">Pilihan B</label>
                            <textarea name="pil_b" id="pil_b" class="form-control"><?= $soal['pil_b'] ?></textarea>
                        </div>
                        <div class="form-grup mb-3">
                            <label for="pil_c">Pilihan C</label>
                            <textarea name="pil_c" id="pil_c" class="form-control"><?= $soal['pil_c'] ?></textarea>
                        </div>
                        <div class="form-grup mb-3">
                            <label for="pil_d">Pilihan D</label>
                            <textarea name="pil_d" id="pil_d" class="form-control"><?= $soal['pil_d'] ?></textarea>
                        </div>
                        <div class="form-grup mb-3">
                            <label for="pil_e">Pilihan E</label>
                            <textarea name="pil_e" id="pil_e" class="form-control"><?= $soal['pil_e'] ?></textarea>
                        </div>
                        <div class="form-grup mb-3">
                            <label for="kunci">Kunci jawaban</label>
                            <select name="kunci" id="kunci" class="custom-select" required>
                                <?php
                                    if($soal['pil_a'] == $soal['kunci']){
                                        echo "<option value='$soal[pil_a]'>A</option>";
                                        echo "<option value='$soal[pil_b]'>B</option>";
                                        echo "<option value='$soal[pil_c]'>C</option>";
                                        echo "<option value='$soal[pil_d]'>D</option>";
                                        echo "<option value='$soal[pil_e]'>E</option>";
                                    } elseif($soal['pil_b'] == $soal['kunci']){
                                        echo "<option value='$soal[pil_b]'>B</option>";
                                        echo "<option value='$soal[pil_a]'>A</option>";
                                        echo "<option value='$soal[pil_c]'>C</option>";
                                        echo "<option value='$soal[pil_d]'>D</option>";
                                        echo "<option value='$soal[pil_e]'>E</option>";
                                    } elseif($soal['pil_c'] == $soal['kunci']){
                                        echo "<option value='$soal[pil_c]'>C</option>";
                                        echo "<option value='$soal[pil_a]'>A</option>";
                                        echo "<option value='$soal[pil_b]'>B</option>";
                                        echo "<option value='$soal[pil_d]'>D</option>";
                                        echo "<option value='$soal[pil_e]'>E</option>";
                                    } elseif($soal['pil_d'] == $soal['kunci']){
                                        echo "<option value='$soal[pil_d]'>D</option>";
                                        echo "<option value='$soal[pil_a]'>A</option>";
                                        echo "<option value='$soal[pil_b]'>B</option>";
                                        echo "<option value='$soal[pil_c]'>C</option>";
                                        echo "<option value='$soal[pil_e]'>E</option>";
                                    } elseif($soal['pil_e'] == $soal['kunci']){
                                        echo "<option value='$soal[pil_a]'>A</option>";
                                        echo "<option value='$soal[pil_b]'>B</option>";
                                        echo "<option value='$soal[pil_c]'>C</option>";
                                        echo "<option value='$soal[pil_d]'>D</option>";
                                        echo "<option value='$soal[pil_e]'>E</option>";
                                    }
                                ?>
                            </select>
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
    // buat variabel yang isinya hasil inputan operator
    $soal = $_POST['soal'];
    $pil_a = $_POST['pil_a'];
    $pil_b = $_POST['pil_b'];
    $pil_c = $_POST['pil_c'];
    $pil_d = $_POST['pil_d'];
    $pil_e = $_POST['pil_e'];
    $kunci = $_POST['kunci'];

    // update data ke tabel tb_soal
    $koneksi->query("UPDATE tb_soal SET soal = '$soal', pil_a = '$pil_a', pil_b = '$pil_b', pil_c = '$pil_c', pil_d = '$pil_d', pil_e = '$pil_e', kunci = '$kunci' WHERE id = '$id'");
    
    // ambil token dari url
    $token = $_GET['token'];
    echo "<script>location='m?page=soal&token=$token';</script>";
}
?>