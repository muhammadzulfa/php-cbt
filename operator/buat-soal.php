<?php
// ambil token dari url
$token = $_GET['token'];

// ambil data dari tabel tb_jadwal yang token nya sama dengan yang ada di url
$ambil = $koneksi->query("SELECT * FROM tb_jadwal WHERE token = '$token'");
$jadwal = $ambil->fetch_assoc()
?>
<div class="container-fluid">
    <h5><?= $jadwal['mapel'] ?>: kelas <?= $jadwal['kelas'] ?></h5>
    <div class="card mb-4">
        <div class="card-body">
            <div class="row">
                <div class="col-md-12">
                    <form action="" method="post">
                        <div class="form-grup mb-3">
                            <label for="soal">Soal</label>
                            <textarea type="text" class="form-control" rows="5" name="soal"></textarea>
                        </div>
                        <div class="form-grup mb-3">
                            <label for="pil_a">Pilihan A</label>
                            <textarea type="text" class="form-control" name="pil_a"></textarea>
                        </div>
                        <div class="form-grup mb-3">
                            <label for="pil_b">Pilihan B</label>
                            <textarea type="text" class="form-control" name="pil_b"></textarea>
                        </div>
                        <div class="form-grup mb-3">
                            <label for="pil_c">Pilihan C</label>
                            <textarea type="text" class="form-control" name="pil_c"></textarea>
                        </div>
                        <div class="form-grup mb-3">
                            <label for="pil_d">Pilihan D</label>
                            <textarea type="text" class="form-control" name="pil_d"></textarea>
                        </div>
                        <div class="form-grup mb-3">
                            <label for="pil_e">Pilihan E</label>
                            <textarea type="text" class="form-control" name="pil_e"></textarea>
                        </div>
                        <div class="form-grup mb-4">
                            <label for="kunci">Kunci jawaban</label>
                            <select name="kunci" id="kunci" class="custom-select" required>
                                <option value="a">A</option>
                                <option value="b">B</option>
                                <option value="c">C</option>
                                <option value="d">D</option>
                                <option value="e">E</option>
                            </select>
                        </div>
                        <div class="form-grup mb-3">
                            <label>
                                <button class="btn btn-secondary" onclick="history.back(-1)">Batal</button>
                            </label>
                            <label>
                                <button type="submit" class="btn btn-primary" name="buat">Buat soal</button>
                            </label>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<?php
// jika tombol buat ditekan
if(isset($_POST['buat'])){
    // buat variabel yang menampung data yang di isi oleh operator
    $id_jadwal = $jadwal['id'];
    $soal = $_POST['soal'];
    $pil_a = $_POST['pil_a'];
    $pil_b = $_POST['pil_b'];
    $pil_c = $_POST['pil_c'];
    $pil_d = $_POST['pil_d'];
    $pil_e = $_POST['pil_e'];
    
    // jika operator memilih kunci jawaban adalah a
    if($_POST['kunci'] == 'a'){
        // maka buat varibel kunci yang isi nya form inputan pilihan a
        $kunci = $_POST['pil_a'];
    // jika operator memilih kunci jawaban adalah b
    } elseif($_POST['kunci'] == 'b'){
        // maka buat varibel kunci yang isi nya form inputan pilihan b
        $kunci = $_POST['pil_b'];
    // jika operator memilih kunci jawaban adalah c
    } elseif($_POST['kunci'] == 'c'){
        // maka buat varibel kunci yang isi nya form inputan pilihan c
        $kunci = $_POST['pil_c'];
    // jika operator memilih kunci jawaban adalah d
    } elseif($_POST['kunci'] == 'd'){
        // maka buat varibel kunci yang isi nya form inputan pilihan d
        $kunci = $_POST['pil_d'];
    // jika operator memilih kunci jawaban adalah e
    } elseif($_POST['kunci'] == 'e'){
        // maka buat varibel kunci yang isi nya form inputan pilihan e
        $kunci = $_POST['pil_e'];
    }

    // inert ketabel tb_soal
    $koneksi->query("INSERT INTO tb_soal(id_jadwal,soal,pil_a,pil_b,pil_c,pil_d,pil_e,kunci,token)
        VALUES('$id_jadwal','$soal','$pil_a','$pil_b','$pil_c','$pil_d','$pil_e','$kunci','$token')");
    echo "<script>location='m?page=soal&token=$token';</script>";
}
?>