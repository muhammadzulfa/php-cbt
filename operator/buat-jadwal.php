<div class="container-fluid">
    <div class="card mb-4 shadow border-0">
        <div class="card-body">
            <div class="row">
                <div class="col-md-12">
                    <form action="" method="post">
                        <div class="form-grup mb-3">
                            <label for="kelas">Kelas</label>
                            <select name="kelas" id="kelas" class="custom-select" required>
                                <option value="">Pilih kelas</option>
                                <?php
                                // ambil data dari tabel tb_kelas
                                $ambil = $koneksi->query("SELECT * FROM tb_kelas");
                                // perulangan data kelas
                                foreach($ambil as $kelas){
                                    echo "<option>$kelas[kelas] $kelas[jurusan]</option>";
                                }
                                ?>
                            </select>
                        </div>
                        <div class="form-grup mb-3">
                            <label for="mapel">Mata pelajaran</label>
                            <input type="text" name="mapel" id="mapel" class="form-control" required>
                        </div>
                        <div class="form-grup mb-3">
                            <label for="sesi_masuk">Sesi masuk</label>
                            <select name="sesi_masuk" id="sesi_masuk" class="custom-select" required>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                            </select>
                        </div>
                        <div class="form-grup mb-3">
                            <label for="jam_masuk">Jam masuk</label>
                            <input type="text" name="jam_masuk" id="jam_masuk" class="form-control" required>
                            <small class="text-danger pl-2">Contoh: 07.30</small>
                        </div>
                        <div class="form-grup mb-3">
                            <label for="jam_keluar">Jam keluar</label>
                            <input type="text" name="jam_keluar" id="jam_keluar" class="form-control" required>
                            <small class="text-danger pl-2">Contoh: 08.15</small>
                        </div>
                        <div class="form-grup mb-3">
                            <label for="waktu_mengerjakan">Waktu mengerjakan</label>
                            <select name="waktu_mengerjakan" id="waktu_mengerjakan" class="custom-select" required>
                                <option value="15">15 menit</option>
                                <option value="30">30 menit</option>
                                <option value="45">45 menit</option>
                                <option value="60">60 menit</option>
                                <option value="75">75 menit</option>
                                <option value="90">90 menit</option>
                                <option value="105">105 menit</option>
                                <option value="120">120 menit</option>
                            </select>
                        </div>
                        <div class="form-grup mb-3">
                            <label for="nilai_kkm">Nilai KKM</label>
                            <input type="text" name="nilai_kkm" id="nilai_kkm" class="form-control" required>
                            <small class="text-danger pl-2">Contoh: 75</small>
                        </div>
                        <div class="form-grup mb-3">
                            <label for="jmlh_soal">Jumlah soal</label>
                            <input type="text" name="jmlh_soal" id="jmlh_soal" class="form-control" required>
                            <small class="text-danger pl-2">Contoh: 30</small>
                        </div>
                        <div class="form-grup mb-3">
                            <label for="bobot_nilai">Bobot nilai</label>
                            <input type="text" name="bobot_nilai" id="bobot_nilai" class="form-control" required>
                            <small class="text-danger pl-2">Contoh: 3.3</small>
                        </div>
                        <div class="form-grup mb-3">
                            <label for="hari_ujian">Hari ujian</label>
                            <select name="hari_ujian" id="hari_ujian" class="custom-select" required>
                                <option>Senin</option>
                                <option>Selasa</option>
                                <option>Rabu</option>
                                <option>Kamis</option>
                                <option>Jumat</option>
                                <option>Sabtu</option>
                                <option>Minggu</option>
                            </select>
                        </div>
                        <div class="form-grup mb-3">
                            <label for="tanggal_ujian">Tanggal ujian</label>
                            <input type="date" name="tanggal_ujian" id="tanggal_ujian" class="form-control" required>
                        </div>
                        <div class="form-grup mb-3">
                            <label for="status">Status</label>
                            <select name="status" id="status" class="custom-select">
                                <option>tidak aktif</option>
                                <option>kerjakan soal</option>
                            </select>
                        </div>
                        <div class="form-grup mb-3">
                            <label for="acak_soal">Soal diacak</label>
                            <select name="acak_soal" id="acak_soal" class="custom-select">
                                <option>ya</option>
                                <option>tidak</option>
                            </select>
                        </div>
                        <div class="form-grup mb-3">
                            <label>
                                <button class="btn btn-secondary" onclick="history.back(-1)">Batal</button>
                            </label>
                            <label>
                                <button type="submit" class="btn btn-primary" name="buat">Buat jadwal</button>
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
    // buat varibel yang menampung data yang di isi oleh operator
    $kelas = $_POST['kelas'];
    $mapel = $_POST['mapel'];
    $jmlh_soal = $_POST['jmlh_soal'];
    $jam = 'Sesi '.$_POST['sesi_masuk'].'/ jam '.$_POST['jam_masuk'].' - '.$_POST['jam_keluar'] ;
    echo $sesi;
    $tanggal_ujian = $_POST['hari_ujian'].'/ '.$_POST['tanggal_ujian'];
    $waktu_mengerjakan = $_POST['waktu_mengerjakan'];
    $nilai_kkm = $_POST['nilai_kkm'];
    $bobot_nilai = $_POST['bobot_nilai'];
    $status = $_POST['status'];
    $acak_soal = $_POST['acak_soal'];
    $token = sha1(time());

    // insert ke tabel tb_jadwal
    $koneksi->query("INSERT INTO tb_jadwal(kelas,mapel,jmlh_soal,jam,tanggal_ujian,waktu_mengerjakan,nilai_kkm,bobot_nilai,status,acak_soal,token)
            VALUES('$kelas','$mapel','$jmlh_soal','$jam','$tanggal_ujian','$waktu_mengerjakan','$nilai_kkm','$bobot_nilai','$status','$acak_soal','$token')");
    echo "<script>location='m?page=soal-ujian-pilih-jadwal';</script>";
}
?>