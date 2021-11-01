<?php
// ambil kelas dari url
$kelas = $_GET['kelas'];
// ambil token dari url
$token = $_GET['token'];

// ambil data dari tabel tb_kelas join ke tabel tb_siswa
$ambil = $koneksi->query("SELECT * FROM tb_kelas k INNER JOIN tb_siswa s ON s . id_kelas = k . id WHERE s . id = '$_SESSION[siswa]'");
$siswa = $ambil->fetch_assoc();

// ambil data jadwal dari tabel tb_jadwal yang token nya sama dengan token di url
$ambil = $koneksi->query("SELECT * FROM tb_jadwal WHERE token = '$token'");
$jadwal = $ambil->fetch_assoc();

// ambil data nilai dari tabel tb_nilai yang id_siswa nya sama dengan session siswa && id_jadwal sama dengan id dari tb_jadwal
$ambil = $koneksi->query("SELECT * FROM tb_nilai WHERE id_siswa = '$_SESSION[siswa]' && id_jadwal = '$jadwal[id]'");
$nilai = $ambil->fetch_assoc();

// ambil data soal dari tebel tb_soal yang token nya sama dengan token di url
$ambil = $koneksi->query("SELECT * FROM tb_soal WHERE token = '$token'");
// hitung soal
$jmlh_soal = mysqli_num_rows($ambil);

// ambil data settings dari tabel tb_settings
$ambil = $koneksi->query("SELECT * FROM tb_settings");
$settings = $ambil->fetch_assoc();
?>

<div class="container">
    <div class="row">
        <div class="col-md-8">
            <div class="card mb-4 <?= $settings['card'] ?>">
                <div class="card-body table-responsive">
                    <table class="table table-borderless">
                        <tr>
                            <th width="25%">NIS</th>
                            <td><strong>: </strong><?= $siswa['username'] ?></td>
                        </tr>
                        <tr>
                            <th>Nama</th>
                            <td><strong>: </strong><?= $siswa['nama'] ?></td>
                        </tr>
                        <tr>
                            <th>Kelas</th>
                            <td><strong>: </strong><?= $siswa['kelas'].' '.$siswa['jurusan'] ?></td>
                        </tr>
                        <tr>
                            <th>Mapel</th>
                            <td><strong>: </strong><?= $jadwal['mapel'] ?></td>
                        </tr>
                        <tr>
                            <th>Jumlah soal</th>
                            <td><strong>: </strong><?= $jmlh_soal ?> soal</td>
                        </tr>
                        <tr>
                            <th>Waktu</th>
                            <td><strong>: </strong><?= $jadwal['waktu_mengerjakan'] ?> menit</td>
                        </tr>
                    </table>
                </div>
            </div>
            <?php
            $ambil = $koneksi->query("SELECT * FROM tb_jawab WHERE id_siswa = '$_SESSION[siswa]' && token = '$token'");
            $jawab = $ambil->fetch_assoc();
            ?>

            <!-- jika sudah ada data nilai di tabel tb_nilai -->
            <?php if($jadwal['id'] == $nilai['id_jadwal']): ?>
                <!-- maka tampilkan tombol sudah mengerjakan -->
                <a href="" class="btn btn-danger disabled">Sudah mengerjakan</a>
            <!-- jika sudah ada data di tabel tb_jawab -->
            <?php elseif($jawab['id_siswa'] == $_SESSION['siswa'] && $jawab['token'] == $token): ?>
                <!-- maka tampilkan tombol lanjutkan menjawab -->
                <a href="m?page=soal&kelas=<?= $kelas ?>&token=<?= $token ?>&soal_ke=1" class="btn btn-success">Lanjutkan mengerjakan</a>
            <!-- jika tidak ada soal -->
            <?php elseif($jmlh_soal < 1): ?>
                <!-- maka tampilkan tombol tidak ada soal -->
                <button class="btn btn-danger disabled">Tidak ada soal</button>
            <!-- jika sudah sip -->
            <?php else: ?>
                <!-- baru tampilkan tombol mulai mengerjakan -->
                <form action="" method="post">
                    <a href="" data-toggle="modal" data-target="#mulaimengerjakanModal" class="btn btn-success">Mulai mengerjakan</a>
                </form>
            <?php endif ?>
        </div>
    </div>
</div>

<div class="modal fade" id="mulaimengerjakanModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Pemberitahuan</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Anda akan memulai menjawab soal, jika ada kesalahan pada navigasi nomor soal hubungi Operator!</div>
        <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Batal</button>
            <form action="" method="post">
                <button type="submit" class="btn btn-success" name="mulai">Mulai mengerjakan</button>
            </form>
        </div>
      </div>
    </div>
</div>

<?php
if($jadwal['acak_soal'] == 'ya'){
    // ambil data soal dari tabel tb_soal yang token nya sama dengan token di url
    $ambil = $koneksi->query("SELECT * FROM tb_soal WHERE token = '$token' ORDER BY RAND()");
} elseif($jadwal['acak_soal'] == 'tidak'){
    // ambil data soal dari tabel tb_soal yang token nya sama dengan token di url
    $ambil = $koneksi->query("SELECT * FROM tb_soal WHERE token = '$token'");
}

// jika tombol mulai ditekan
if(isset($_POST['mulai'])){
    $nomor = 1;
    // insert ketabel tb_jawab dulu, dengan menggunakan perulangan berdasarkan jumlah soal di tabel tb_soal
    while($soal = mysqli_fetch_assoc($ambil)){
        $id_siswa = $_SESSION['siswa'];
        $id_soal = $soal['id'];
        $soal_ke = $nomor++;
        $kunci = $soal['kunci'];

        $koneksi->query("INSERT INTO tb_jawab(id_siswa,id_soal,soal_ke,soal,pil_a,pil_b,pil_c,pil_d,pil_e,kunci,jawaban,status,status2,status3,token) VALUES('$id_siswa','$id_soal','$soal_ke','$soal[soal]','$soal[pil_a]','$soal[pil_b]','$soal[pil_c]','$soal[pil_d]','$soal[pil_e]','$kunci','-','tidak dijawab','-','tidak-ragu','$soal[token]')");
        // baru siswa mulai menjawab, jadi tinggal update aja di file soal.php
        echo "<script>location='m?page=soal&kelas=$kelas&token=$token&soal_ke=1';</script>";
    }
}
?>