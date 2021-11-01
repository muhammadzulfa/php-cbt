<!--

Copyright by Muhammad Zulfa
Kandangan, Kalimantan Selatan
SMKN 2  Kandangan, Teknik Komputer dan Jaringan
Tanggal pembuatan 13 Juni 2019 - 27 Juni 2019

-->

<?php
// ambil token dari url
$token = $_GET['token'];
// ambil kelas dari url
$kelas = $_GET['kelas'];

// ambil data jadwal dari tabel tb_jadwal yang token nya sama di url
$ambil = $koneksi->query("SELECT * FROM tb_jadwal WHERE token = '$token'");
$jadwal = $ambil->fetch_assoc();

// ambil data nilai dari tabel tb_nilai yang id_siswa nya sama $_SESSION[siswa] && id_jadwal nya sama $jadwal[id]
$ambil = $koneksi->query("SELECT * FROM tb_nilai WHERE id_siswa = '$_SESSION[siswa]' && id_jadwal = '$jadwal[id]'");
$nilai = $ambil->fetch_assoc();

// ambil data dari tabel tb_settings
$ambil = $koneksi->query("SELECT * FROM tb_settings");
$settings = $ambil->fetch_assoc();

// jika sudah ada nilai di tabel nilai, maka logout, agar siswa tidak bisa mengulang untuk menjawab
if($jadwal['id'] == $nilai['id_jadwal']){
    echo "<script>location='logout';</script>";
    exit;
}

// ambil nomor dari url
$soal_kee = $_GET['soal_ke'];
// ambil data soal dari tabel tb_soal yang token nya sama di url
$ambil = $koneksi->query("SELECT * FROM tb_soal WHERE token = '$token'");
// hitung soal 
$jumlah = mysqli_num_rows($ambil);

// buat variabel waktu_mengerjakan yang isinya ada di tabel tb_jadwal di kali 60, agar hasil nya berupa detik
$waktu_mengerjakan = $jadwal['waktu_mengerjakan']*60;

$ambil = $koneksi->query("SELECT * FROM tb_timer WHERE id_siswa = '$_SESSION[siswa]' && id_jadwal = '$jadwal[id]'");
$timer = $ambil->fetch_assoc();

// jika ada timer dalam database tb_timer sesuai id_siswa dan id_jadwal
if(isset($timer['timer'])){
    // maka time sekarang di kurang timer yang didatabase
	$lewat = time() - $timer['timer'];
// jika tidak ada timer dalam database
} else {
    // maka insert kedatabase dulu
    $timer = time();
    $lewat = $koneksi->query("INSERT INTO tb_timer(id_siswa,id_jadwal,timer) VALUES('$_SESSION[siswa]','$jadwal[id]','$timer')");
	// $lewat = 0;
}
?>

<!-- javascript untuk timer -->
<script type="text/javascript">
    function waktuHabis(){
        document.getElementById("selesai").click();
    }
    function hampirHabis(periods){
        if($.countdown.periodsToSeconds(periods) == 60){
            $(this).css({color:"red"});
            $('#waktuhampirhabisModal').modal('show');
        }
    }
    $(function(){
        var waktu = <?= $waktu_mengerjakan ?>; 
        var sisa_waktu = waktu - <?= $lewat ?>;
        var longWayOff = sisa_waktu;
        $("#timer").countdown({
            until: longWayOff,
            compact:true,
            onExpiry:waktuHabis,
            onTick: hampirHabis
        });
    })
</script>
<!-- end javascript -->

<div class="container">
    <div class="card mb-3 <?= $settings['card'] ?>">
        <div class="card-body">
            <div class="col-md-12">
                <div class="row">
                    <table border="0" cellpadding="5" cellspacing="0" width="100%">
                        <tr>
                            <td>
                                <div class="h5 d-none d-md-inline"><?= $jadwal['mapel'] ?>: kelas <?= $kelas ?></div>
                            </td>
                            <td>
                                <div class="h5 pull-right" id="timer_place"><i class="fa fa-clock"></i> 
                                    <span id="timer"></span>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <?php
    // untuk pagination supaya tampil hanya satu soal dalam 1 halaman
    $page = (isset($_GET['soal_ke']))? $_GET['soal_ke'] : 1;
    $limit = 1;
    $limit_start = ($page - 1) * $limit;
    $ambil = $koneksi->query("SELECT * FROM tb_jawab WHERE id_siswa = '$_SESSION[siswa]' && token = '$token' LIMIT ".$limit_start.",".$limit);
    $nomor = $limit_start + 1;
    while($jawab = mysqli_fetch_array($ambil)){
    ?>
    <div class="row">
        <div class="col-md-8">
            <div class="card mb-4 h-auto <?= $settings['card'] ?>">
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-0">
                            <p class="pl-4 pull-right">
                                <?= $nomor ?>. 
                            </p>
                        </div>
                        <div class="col-md-11">
                            <p>
                                <?= $jawab['soal'] ?>
                            </p>
                        </div>
                    </div>
                    <!------------------------------ KARENA SUDAH DI INSERT, MAKA TINGGAL UPDATE JAWABAN ------------------------------>
                    <!-- PILIHAN A -->
                    <form action="" method="post" class="pl-5 mb-1">
                            <input type="hidden" name="pilihan" value="<?= $jawab['pil_a'] ?>">
                            <div class="row">
                                <div class="col-md-1">
                                <!-- jika jawaban yang sudah di inputkan kedatabase sama dengan pilihan a -->
                                <?php if($jawab['jawaban'] == $jawab['pil_a']): ?>
                                    <!-- jika sama, beri warna hijau -->
                                    <button type="submit" name="update" id="A" class="pil btn btn-success">A</button>
                                <?php else: ?>
                                    <!-- jika tidak, beri outline-dark -->
                                    <button type="submit" name="update" id="A" class="pil btn btn-outline-dark">A</button>
                                <?php endif ?>
                                </div>
                                <div class="col-md-11">
                                    <label for="A" ><?= $jawab['pil_a'] ?></label>
                                </div>
                            </div>
                    </form>
                    <!-- PILIHAN B -->
                    <form action="" method="post" class="pl-5 mb-1">
                            <input type="hidden" name="pilihan" value="<?= $jawab['pil_b'] ?>">
                            <div class="row">
                                <div class="col-md-1">
                                <!-- jika jawaban yang sudah di inputkan kedatabase sama dengan pilihan b -->
                                <?php if($jawab['jawaban'] == $jawab['pil_b']): ?>
                                    <!-- jika sama, beri warna hijau -->
                                    <button type="submit" name="update" id="B" class="pil btn btn-success">B</button>
                                <?php else: ?>
                                    <!-- jika tidak, beri outline-dark -->
                                    <button type="submit" name="update" id="B" class="pil btn btn-outline-dark">B</button>
                                <?php endif ?>
                                </div>
                                <div class="col-md-11">
                                    <label for="B" ><?= $jawab['pil_b'] ?></label>
                                </div>
                            </div>
                    </form>
                    <!-- PILIHAN C -->
                    <form action="" method="post" class="pl-5 mb-1">
                            <input type="hidden" name="pilihan" value="<?= $jawab['pil_c'] ?>">
                            <div class="row">
                                <div class="col-md-1">
                                <!-- jika jawaban yang sudah di inputkan kedatabase sama dengan pilihan c -->
                                <?php if($jawab['jawaban'] == $jawab['pil_c']): ?>
                                    <!-- jika sama, beri warna hijau -->
                                    <button type="submit" name="update" id="C" class="pil btn btn-success">C</button>
                                <?php else: ?>
                                    <!-- jika tidak, beri outline-dark -->
                                    <button type="submit" name="update" id="C" class="pil btn btn-outline-dark">C</button>
                                <?php endif ?>
                                </div>
                                <div class="col-md-11">
                                    <label for="C" ><?= $jawab['pil_c'] ?></label>
                                </div>
                            </div>
                    </form>
                    <!-- PILIHAN D -->
                    <form action="" method="post" class="pl-5 mb-1">
                            <input type="hidden" name="pilihan" value="<?= $jawab['pil_d'] ?>">
                            <div class="row">
                                <div class="col-md-1">
                                <!-- jika jawaban yang sudah di inputkan kedatabase sama dengan pilihan d -->
                                <?php if($jawab['jawaban'] == $jawab['pil_d']): ?>
                                    <!-- jika sama, beri warna hijau -->
                                    <button type="submit" name="update" id="D" class="pil btn btn-success">D</button>
                                <?php else: ?>
                                    <!-- jika tidak, beri outline-dark -->
                                    <button type="submit" name="update" id="D" class="pil btn btn-outline-dark">D</button>
                                <?php endif ?>
                                </div>
                                <div class="col-md-11">
                                    <label for="D" ><?= $jawab['pil_d'] ?></label>
                                </div>
                            </div>
                    </form>
                    <?php if($jawab['pil_e'] == ''): ?>
                    <?php else: ?>
                    <!-- PILIHAN E -->
                    <form action="" method="post" class="pl-5 mb-1">
                            <input type="hidden" name="pilihan" value="<?= $jawab['pil_e'] ?>">
                            <div class="row">
                                <div class="col-md-1">
                                <!-- jika jawaban yang sudah di inputkan kedatabase sama dengan pilihan e -->
                                <?php if($jawab['jawaban'] == $jawab['pil_e']): ?>
                                    <!-- jika sama, beri warna hijau -->
                                    <button type="submit" name="update" id="E" class="pil btn btn-success">E</button>
                                <?php else: ?>
                                    <!-- jika tidak, beri outline-dark -->
                                    <button type="submit" name="update" id="E" class="pil btn btn-outline-dark">E</button>
                                <?php endif ?>
                                </div>
                                <div class="col-md-11">
                                    <label for="E"><?= $jawab['pil_e'] ?></label>
                                </div>
                            </div>
                    </form>
                    <?php endif ?>

                    <?php
                    // jika pilihan a, b, c, d, e diklik
                    if(isset($_POST['update'])){
                        $jawaban = $_POST['pilihan'];
                        $status = 'dijawab';
                        
                        if($jawab['kunci'] == $_POST['pilihan']){
                            $koneksi->query("UPDATE tb_jawab SET jawaban = '$jawaban', status = '$status', status2 = 'benar' WHERE id = '$jawab[id]'");
                        } else {
                            $koneksi->query("UPDATE tb_jawab SET jawaban = '$jawaban', status = '$status', status2 = 'salah' WHERE id = '$jawab[id]'");
                        }
                        echo "<script>location='m?page=soal&kelas=$kelas&token=$token&soal_ke=$soal_kee';</script>";
                    }
                    ?>
                    <!------------------------------ END UPDATE JAWABAN ------------------------------>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 col-4">
                    <!-- jika $nomor tidak sama dengan 1 (masksudnya, jika halaman pertama atau soal nomor 1 jangan tampilkan tombol sebelumnya) -->
                    <?php if($nomor !== 1): ?>
                        <a href="m?page=soal&kelas=<?= $kelas ?>&token=<?= $token ?>&soal_ke=<?= $soal_kee-1 ?>" class="btn btn-primary w-75">
                            Sebelumnya
                        </a>
                    <?php endif ?>
                </div>
                <div class="col-md-4 col-4 text-center">
                    <form action="" method="post">
                    <!-- jika status3 tidak sama dengan ragu-ragu -->
                    <?php if($jawab['status3'] !== 'ragu-ragu'): ?>
                            <!-- maka tidak di checked -->
                            <input type="hidden" name="ragu-ragu" value="ragu-ragu">
                            <button for="ragu-ragu" class="btn btn-warning text-white w-75" name="tombol-ragu">
                                <input type="checkbox" name="ragu-ragu" id="ragu-ragu" disabled> 
                                Ragu-ragu
                            </button>
                    <!-- jika status3 sama dengan ragu-ragu -->
                    <?php else: ?>
                            <!-- maka checked -->
                            <input type="hidden" name="ragu-ragu" value="tidak-ragu">
                            <button for="ragu-ragu" class="btn btn-warning text-white w-75" name="tombol-ragu">
                                <input type="checkbox" name="ragu-ragu" id="ragu-ragu" disabled checked> 
                                Ragu-ragu
                            </button>
                        <?php endif ?>
                    </form>
                </div>
                <div class="col-md-4 col-4">
                    <!-- jika $nomor tidak sama dengan $jumlah -->
                    <?php if($nomor !== $jumlah): ?>
                        <!-- maka tampilkan tombol berikutnya -->
                        <a href="m?page=soal&kelas=<?= $kelas ?>&token=<?= $token ?>&soal_ke=<?= $soal_kee+1 ?>" class="btn btn-primary pull-right w-75">
                            Berikutnya
                        </a>
                    <!-- jika sama -->
                    <?php else: ?>
                        <!-- maka tampilkan tombol selesai  -->
                        <a href="" class="btn btn-danger pull-right w-75" data-toggle="modal" data-target="#selesaiModal">
                            Selesai
                        </a>
                    <?php endif ?>
                </div>
            </div>
        </div>
        <?php
        // jika tombol ragu-ragu diklik
        if(isset($_POST['tombol-ragu'])){
            $ragu_ragu = $_POST['ragu-ragu'];
            $koneksi->query("UPDATE tb_jawab SET status3 = '$ragu_ragu' WHERE id = '$jawab[id]'");
            echo "<script>location='m?page=soal&kelas=$kelas&token=$token&soal_ke=$soal_kee';</script>";
        }

        
        // ambil data dari tabel tb_jawab yang id_siswa nya sama yang login && token sama ada di url
        $ambil = $koneksi->query("SELECT * FROM tb_jawab WHERE id_siswa = '$_SESSION[siswa]' && token = '$token'");
        ?>
        <div class="col-md-4 d-none d-md-inline">
            <div class="card mb-4 h-auto <?= $settings['card'] ?>">
                <div class="card-body">
                    <!-- melakukan perulangan pada tabel tb_jawab -->
                    <?php $nomor = 1 ?>
                    <table><tr>
                    <?php foreach($ambil as $jawab): ?>
                        <td>
                            <table>
                                <tr>
                                    <?php if($jawab['status3'] == 'ragu-ragu'): ?>
                                        <a class="<?= $settings['nomor_hover'] ?> no-soal-warning" href="m?page=soal&kelas=<?= $kelas ?>&token=<?= $token ?>&soal_ke=<?= $nomor ?>"><?= $nomor ?></a>
                                    <?php elseif($jawab['status'] == 'dijawab'): ?>
                                        <a class="<?= $settings['nomor_hover'] ?> no-soal-success" href="m?page=soal&kelas=<?= $kelas ?>&token=<?= $token ?>&soal_ke=<?= $nomor ?>"><?= $nomor ?></a>
                                    <?php else: ?>
                                        <a class="<?= $settings['nomor_hover'] ?> no-soal-danger" href="m?page=soal&kelas=<?= $kelas ?>&token=<?= $token ?>&soal_ke=<?= $nomor ?>"><?= $nomor ?></a>
                                    <?php endif ?>
                                </tr>
                            </table>
                        </td>
                    <?php if($nomor%5 == 0){echo "</tr><tr>";} ?>
                    <?php $nomor++ ?>
                    <?php endforeach ?>
                    </tr></table>
                </div>
            </div>
        </div>
    </div>
    <?php $nomor++; } ?>
    <!-- modal untuk mengakhiri ujian atau selesai -->
    <div class="modal fade" id="selesaiModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Pemberitahuan</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Anda yakin ingin mengakhiri ujian.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Batal</button>
                    <form action="" method="post">
                        <button type="submit" class="btn btn-primary" name="selesai" id="selesai"> 
                            Selesai
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- modal waktuhampirhabisModal -->
    <div class="modal fade" id="waktuhampirhabisModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Pemberitahuan</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Waktu anda tinggal 1 menit lagi untuk menjawab.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Abaikan</button>
                    <button class="btn btn-primary" type="button" data-dismiss="modal">Saya mengetahuinya</button>
                </div>
            </div>
        </div>
    </div>
    <!-- jika tombol selesai ditekan -->
    <?php
    if(isset($_POST['selesai'])){
        $id_siswa = $_SESSION['siswa'];
        $id_jadwal = $jadwal['id'];
        $jumlah_soal = $jadwal['jmlh_soal'];

        $ambil_benar = $koneksi->query("SELECT * FROM tb_jawab WHERE status2 = 'benar' && id_siswa = '$_SESSION[siswa]' && token = '$token'");
        $benar = mysqli_num_rows($ambil_benar);

        $ambil_salah = $koneksi->query("SELECT * FROM tb_jawab WHERE status2 = 'salah' && id_siswa = '$_SESSION[siswa]' && token = '$token'");
        $salah = mysqli_num_rows($ambil_salah);

        $ambil_tdk_jawab = $koneksi->query("SELECT * FROM tb_jawab WHERE status = 'tidak dijawab' && id_siswa = '$_SESSION[siswa]' && token = '$token'");
        $tidak_dijawab = mysqli_num_rows($ambil_tdk_jawab);

        $ambil_di_jawab = $koneksi->query("SELECT * FROM tb_jawab WHERE status = 'dijawab' && id_siswa = '$_SESSION[siswa]' && token = '$token'");
        $dijawab = mysqli_num_rows($ambil_di_jawab);

        $nilai = $benar * $jadwal['bobot_nilai'];

        $koneksi->query("INSERT INTO tb_nilai(id_siswa,id_jadwal,jmlh_soal,benar,salah,tidak_dijawab,dijawab,nilai,token)
            VALUES('$id_siswa','$id_jadwal','$jumlah_soal','$benar','$salah','$tidak_dijawab','$dijawab','$nilai','$token')");
        
        // hapus data timer yang ada pada database, agar jika memulai pelajaran baru waktu tidak menyambung pelajaran dahulu
        $koneksi->query("DELETE FROM tb_timer WHERE id_siswa = '$_SESSION[siswa]' && id_jadwal = '$jadwal[id]'");

        // ambil data settings dari tabel tb_settings
        $ambil = $koneksi->query("SELECT * FROM tb_settings");
        $settings = $ambil->fetch_assoc();
        
        // jika data selesai_redirect sama dengan daftar-ujian
        if($settings['selesai_redirect'] == 'daftar-ujian'){
            // maka redirect nya ke daftar ujian di tambah kelas dan jurusan yang ada di url
            echo "<script>location='m?page=$settings[selesai_redirect]&kelas=$kelas';</script>";
        // jika selain daftar-ujian
        } else {
            // maka redirect sesuai settingan di tambah kelas, jurusan dan token yang ada di url
            echo "<script>location='m?page=$settings[selesai_redirect]&kelas=$kelas&token=$token';</script>";
        }
    }
    ?>
</div>