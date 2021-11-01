<?php
$token = $_GET['token'];

$ambil = $koneksi->query("SELECT * FROM tb_jadwal WHERE token = '$token'");
$jadwal = $ambil->fetch_assoc();

$ambil = $koneksi->query("SELECT * FROM tb_soal WHERE token = '$token'");
$soal = $ambil->fetch_assoc();
?>

<div class="container-fluid">
  <div class="card shadow mb-4">
    <div class="card-header py-3">
      <div class="m-0">
        <a href="m?page=buat-soal&token=<?= $token ?>" class="btn btn-primary btn-sm"><i class="fa fa-book"></i> Buat soal baru</a>
      <?php if(isset($soal)): ?>
        <a href="" data-toggle="modal" data-target="#salinsemuasoalModal" class="btn btn-primary btn-sm"><i class="fa fa-copy"></i> Copy semua soal</a>
        <a href="" data-toggle="modal" data-target="#hapussemuasoalModal" class="btn btn-danger btn-sm pull-right"><i class="fa fa-trash-alt"></i> Hapus semua</a>
      <?php endif ?>
      </div>
    </div>
    <div class="card-body">
      <div class="table-responsive">
        <?php require '../pesan.php' ?>
        <form action="" method="post">
          <table class="table table-hover" id="dataTable" width="100%" cellspacing="0">
            <thead>
              <tr>
                <th>
                  <div class="custom-control custom-checkbox small">
                    <input type="checkbox" class="custom-control-input" id="ceklist-semua">
                    <label class="custom-control-label" for="ceklist-semua"></label>
                  </div>
                </th>
                <th>No</th>
                <th width="40%">Soal</th>
                <th width="50%">Pilihan</th>
                <th width="10%">Aksi</th>
              </tr>
            </thead>
            <tbody>
              <?php
              $ambil = $koneksi->query("SELECT * FROM tb_soal WHERE id_jadwal = '$jadwal[id]'");
              $nomor = 1;
              foreach($ambil as $soal):
              ?>
              <tr>
                <td>
                  <div class="custom-control custom-checkbox small">
                    <input type="checkbox" name="id[]" value="<?= $soal['id'] ?>" class="custom-control-input ceklist-satu" id="<?= $soal['id'] ?>">
                    <label class="custom-control-label" for="<?= $soal['id'] ?>"></label>
                  </div>
                </td>
                <td><?= $nomor++ ?></td>
                <td><?= $soal['soal'] ?></td>
                <td>
                  <?php
                    if($soal['pil_e'] == ''){
                      if($soal['pil_a'] == $soal['kunci']){
                        echo "<span class='maker'>A. ".$soal['pil_a']."</span><br>";
                        echo "B. ".$soal['pil_b']."<br>";
                        echo "C. ".$soal['pil_c']."<br>";
                        echo "D. ".$soal['pil_d']."<br>";
                      } elseif($soal['pil_b'] == $soal['kunci']){
                        echo "A. ".$soal['pil_a']."<br>";
                        echo "<span class='maker'>B. ".$soal['pil_b']."</span><br>";
                        echo "C. ".$soal['pil_c']."<br>";
                        echo "D. ".$soal['pil_d']."<br>";
                      } elseif($soal['pil_c'] == $soal['kunci']){
                        echo "A. ".$soal['pil_a']."<br>";
                        echo "B. ".$soal['pil_b']."<br>";
                        echo "<span class='maker'>C. ".$soal['pil_c']."</span><br>";
                        echo "D. ".$soal['pil_d']."<br>";
                      } elseif($soal['pil_d'] == $soal['kunci']){
                        echo "A. ".$soal['pil_a']."<br>";
                        echo "B. ".$soal['pil_b']."<br>";
                        echo "C. ".$soal['pil_c']."<br>";
                        echo "<span class='maker'>D. ".$soal['pil_d']."</span><br>";
                      } elseif($soal['pil_e'] == $soal['kunci']){
                        echo "A. ".$soal['pil_a']."<br>";
                        echo "B. ".$soal['pil_b']."<br>";
                        echo "C. ".$soal['pil_c']."<br>";
                        echo "D. ".$soal['pil_d']."<br>";
                      }
                    } else {
                      if($soal['pil_a'] == $soal['kunci']){
                        echo "<span class='maker'>A. ".$soal['pil_a']."</span><br>";
                        echo "B. ".$soal['pil_b']."<br>";
                        echo "C. ".$soal['pil_c']."<br>";
                        echo "D. ".$soal['pil_d']."<br>";
                        echo "E. ".$soal['pil_e'];
                      } elseif($soal['pil_b'] == $soal['kunci']){
                        echo "A. ".$soal['pil_a']."<br>";
                        echo "<span class='maker'>B. ".$soal['pil_b']."</span><br>";
                        echo "C. ".$soal['pil_c']."<br>";
                        echo "D. ".$soal['pil_d']."<br>";
                        echo "E. ".$soal['pil_e'];
                      } elseif($soal['pil_c'] == $soal['kunci']){
                        echo "A. ".$soal['pil_a']."<br>";
                        echo "B. ".$soal['pil_b']."<br>";
                        echo "<span class='maker'>C. ".$soal['pil_c']."</span><br>";
                        echo "D. ".$soal['pil_d']."<br>";
                        echo "E. ".$soal['pil_e'];
                      } elseif($soal['pil_d'] == $soal['kunci']){
                        echo "A. ".$soal['pil_a']."<br>";
                        echo "B. ".$soal['pil_b']."<br>";
                        echo "C. ".$soal['pil_c']."<br>";
                        echo "<span class='maker'>D. ".$soal['pil_d']."</span><br>";
                        echo "E. ".$soal['pil_e'];
                      } elseif($soal['pil_e'] == $soal['kunci']){
                        echo "A. ".$soal['pil_a']."<br>";
                        echo "B. ".$soal['pil_b']."<br>";
                        echo "C. ".$soal['pil_c']."<br>";
                        echo "D. ".$soal['pil_d']."<br>";
                        echo "<span class='maker'>E. ".$soal['pil_e']."</span";
                      }
                    }
                  ?>
                </td>
                <td>
                  <a href="m?page=edit-soal&id=<?= $soal['id'] ?>&token=<?= $token ?>" class="btn btn-success btn-sm"><i class="fa fa-edit"></i></a>
                  <a onclick="return confirm('Anda ingin menghapus soal')" href="hapus/hapus-soal?id=<?= $soal['id'] ?>&token=<?= $token ?>" class="btn btn-danger btn-sm"><i class="fa fa-trash-alt"></i></a>
                </td>
              </tr>
              <?php endforeach ?>
            </tbody>
          </table>
          <br>
          <?php if(isset($soal)){ ?>
          <button onclick="return confirm('Anda yakin ingin menghapus data yang diceklist')" type="submit" class="btn btn-danger btn-sm" name="hapus_ceklist">Hapus yang diceklist</button>
          <?php } ?>
        </form>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="hapussemuasoalModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Pemberitahuan</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">Anda yakin ingin menghapus semua soal ujian.</div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Batal</button>
                <a href="hapus/hapus-semua-soal?token=<?= $token ?>" class="btn btn-danger">Hapus</a>
            </div>
        </div>
    </div>
</div>



<div class="modal fade" id="salinsemuasoalModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Pemberitahuan</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">
              <form action="" method="post">
                <div class="form-grup">
                  <select name="id_jadwal" id="id_jadwal" class="custom-select mb-4" required>
                      <option value="">Pilih kelas</option>
                      <?php
                          $ambil = $koneksi->query("SELECT * FROM tb_jadwal");
                          foreach($ambil as $jadwal){
                              echo "<option value='$jadwal[id]'>".$jadwal['kelas'].' '.$jadwal['jurusan'].' Mata pelajaran '.$jadwal['mapel']."</option>";
                          }
                      ?>
                  </select>
                </div>
              </div>
              <div class="modal-footer">
                  <button class="btn btn-secondary" type="button" data-dismiss="modal">Batal</button>
                  <button type="submit" class="btn btn-primary" name="paste">Paste</button>
              </div>
            </form>
        </div>
    </div>
</div>

<?php
if(isset($_POST['paste'])){
    $id_jadwal = $_POST['id_jadwal'];
    
    $ambil = $koneksi->query("SELECT * FROM tb_jadwal WHERE id = '$id_jadwal'");
    $jadwal = $ambil->fetch_assoc();

    $tokeninsert = $jadwal['token'];
    
    $ambil = $koneksi->query("SELECT * FROM tb_soal WHERE token = '$token'");
    foreach($ambil as $soal){

    $koneksi->query("INSERT INTO tb_soal(id_jadwal,soal,pil_a,pil_b,pil_c,pil_d,pil_e,kunci,token)
            VALUES('$id_jadwal','$soal[soal]','$soal[pil_a]','$soal[pil_b]','$soal[pil_c]','$soal[pil_d]','$soal[pil_e]','$soal[kunci]','$tokeninsert')");
    echo "<script>location='m?page=soal-ujian-pilih-jadwal';</script>";
    }
}
?>

<script>
$(document).ready(function(){
    $("#ceklist-semua").click(function(){
        if($(this).is(":checked"))
        $(".ceklist-satu").prop("checked",true);
        else
        $(".ceklist-satu").prop("checked",false);
    });
});
</script>

<?php
if(isset($_POST['hapus_ceklist'])){
    if(isset($_POST['id'])){
        $id = $_POST['id'];
        $koneksi->query("DELETE FROM tb_soal WHERE id IN(".implode(",",$id).")");
        echo "<script>location='m?page=soal&token=$token'</script>";
    } else {
      echo "<script>location='m?page=soal&token=$token&error=hapus-semua'</script>";
    }
}
?>