<?php
// ambil token dari url
$token = $_GET['token'];

// ambil data dari tabel tb_jadwal yang token nya sama dengan token yang di url
$ambil = $koneksi->query("SELECT * FROM tb_jadwal WHERE token = '$token'");
$jadwal = $ambil->fetch_assoc()
?>

<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <div class="card mb-4 shadow">
                <div class="card-body">
                    <form action="" method="post">
                        <div class="form-grup mb-3">
                            <label for="kelas">Kelas</label>
                            <input type="text" name="kelas" id="kelas" value="<?= $jadwal['kelas'] ?>" required class="form-control">
                        </div>
                        <div class="form-grup mb-3">
                            <label for="mapel">Mata pelajaran</label>
                            <input type="text" name="mapel" id="mapel" value="<?= $jadwal['mapel'] ?>" required class="form-control">
                        </div>
                        <div class="form-grup mb-3">
                            <label for="jam">Jam masuk - keluar</label>
                            <input type="text" name="jam" id="jam" value="<?= $jadwal['jam'] ?>" required class="form-control">
                        </div>
                        <div class="form-grup mb-3">
                            <label for="tanggal_ujian">Tanggal ujian</label>
                            <input type="text" name="tanggal_ujian" id="tanggal_ujian" value="<?= $jadwal['tanggal_ujian'] ?>" required class="form-control">
                        </div>
                        <div class="form-grup mb-3">
                            <label for="waktu_mengerjakan">Waktu mengerjakan *menit</label>
                            <input type="text" name="waktu_mengerjakan" id="waktu_mengerjakan" value="<?= $jadwal['waktu_mengerjakan'] ?>" required class="form-control">
                        </div>
                        <div class="form-grup mb-3">
                            <label for="jmlh_soal">Jumlah soal</label>
                            <input type="text" name="jmlh_soal" id="jmlh_soal" value="<?= $jadwal['jmlh_soal'] ?>" required class="form-control">
                        </div>
                        <div class="form-grup mb-3">
                            <label for="nilai_kkm">Nilai KKM</label>
                            <input type="text" name="nilai_kkm" id="nilai_kkm" value="<?= $jadwal['nilai_kkm'] ?>" required class="form-control">
                        </div>
                        <div class="form-grup mb-3">
                            <label for="bobot_nilai">Bobot nilai</label>
                            <input type="text" name="bobot_nilai" id="bobot_nilai" value="<?= $jadwal['bobot_nilai'] ?>" required class="form-control">
                        </div>
                        <div class="form-grup mb-3">
                            <label for="acak_soal">Soal diacak</label>
                            <select name="acak_soal" id="acak_soal" class="custom-select" required>
                                <?php
                                    if($jadwal['acak_soal'] == 'ya'){
                                        echo '<option>ya</option>';
                                        echo '<option>tidak</option>';
                                    } elseif($jadwal['acak_soal'] == 'tidak'){
                                        echo '<option>tidak</option>';
                                        echo '<option>ya</option>';
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
    // buat varibel yang isinya di input operator
    $kelas = $_POST['kelas'];
    $mapel = $_POST['mapel'];
    $jam = $_POST['jam'];
    $tanggal_ujian = $_POST['tanggal_ujian'];
    $jmlh_soal = $_POST['jmlh_soal'];
    $waktu_mengerjakan = $_POST['waktu_mengerjakan'];
    $nilai_kkm = $_POST['nilai_kkm'];
    $bobot_nilai = $_POST['bobot_nilai'];
    $acak_soal = $_POST['acak_soal'];

    // update ke tabel tb_jadwal
    $koneksi->query("UPDATE tb_jadwal SET kelas = '$kelas', mapel = '$mapel', jmlh_soal = '$jmlh_soal', tanggal_ujian = '$tanggal_ujian', jam = '$jam', waktu_mengerjakan = '$waktu_mengerjakan', nilai_kkm = '$nilai_kkm', bobot_nilai = '$bobot_nilai', acak_soal = '$acak_soal' WHERE token = '$token'");
    echo "<script>location='m?page=soal-ujian-pilih-jadwal';</script>";
}
?>