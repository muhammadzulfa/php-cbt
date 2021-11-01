<?php
// ambil kelas dari url
$kelas = $_GET['kelas'];

// ambil data settings dari tabel tb_settings
$ambil = $koneksi->query("SELECT * FROM tb_settings");
$settings = $ambil->fetch_assoc();

// ambil data jadwal dari tabel tb_jadwal yang kelas nya sama dengan di url
$ambil = $koneksi->query("SELECT * FROM tb_jadwal WHERE kelas = '$kelas'");

while($pecah = mysqli_fetch_assoc($ambil))
{
    // buat varibel jadwal berupa array
    $jadwal[] = $pecah;
}

?>

<!-- modal logout -->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Pemberitahuan</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Anda yakin ingin keluar.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Batal</button>
          <a class="btn btn-primary" href="logout">Logout</a>
        </div>
      </div>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="card mb-4 <?= $settings['card'] ?>">
                <div class="card-header bg-<?= $settings['warna_topbar'] ?> text-white">
                <?php
                // jika jadwal kosong untuk kelas dan jurusan
                if(empty($jadwal)){
                    echo "<small class=''>Belum ada ujian sekarang untuk kelas kamu. Jika ada kesalahan hubungi Operator!</small>";
                    // exit supaya program berhenti sampai disini
                    exit;
                } else {
                    echo "<h5>Daftar ujian: kelas $kelas</h5>";
                }
                ?>
                </div>
                <div class="card-body table-responsive">
                    <table class="table table-hover" width="100%">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Tanggal</th>
                                <th>Mata pelajaran</th>
                                <th>Jam</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $nomor = 1;
                            foreach($ambil as $jadwal):
                                $ambil = $koneksi->query("SELECT * FROM tb_nilai WHERE id_jadwal = '$jadwal[id]' && id_siswa = '$_SESSION[siswa]'");
                                $nilai = $ambil->fetch_assoc()
                            ?>
                            <tr>
                                <td><?= $nomor++ ?></td>
                                <td><?= $jadwal['tanggal_ujian'] ?></td>
                                <td><?= $jadwal['mapel'] ?></td>
                                <td><?= $jadwal['jam'] ?></td>
                                <td>
                                    <!-- jika sudah nilai di tabel tb_nilai dan sesuai dengan siswa yang login -->
                                    <?php if($nilai['id_jadwal'] == $jadwal['id'] && $nilai['id_siswa'] == $_SESSION['siswa']): ?>
                                        <!-- maka tampilkan tombol sudah mengerjakan -->
                                        <a href="" class="btn btn-danger btn-sm disabled">Sudah mengerjakan</a>
                                    <!-- jika status sama dengan kerjakan soal -->
                                    <?php elseif($jadwal['status'] == 'kerjakan soal'): ?>
                                        <!-- maka tampilkan tombol kerjakan soal -->
                                        <a href="m?page=info&kelas=<?= $kelas ?>&token=<?= $jadwal['token'] ?>" class="btn btn-success btn-sm"><i class="fa fa-edit"></i> <?= $jadwal['status'] ?></a>
                                    <!-- jika status sama dengan tidak aktif -->
                                    <?php elseif($jadwal['status'] == 'tidak aktif'): ?>
                                        <!-- maka tampilkan tombol tidak aktif -->
                                        <a href="" class="btn btn-danger btn-sm disabled"><i class="fa fa-power-off"></i> <?= $jadwal['status'] ?></a>
                                    <?php endif ?>
                                </td>
                            </tr>
                            <?php endforeach ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>