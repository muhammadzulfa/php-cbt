<?php
$id_siswa = $_GET['id_siswa'];
$token = $_GET['token']
?>

<div class="container-fluid">
  <div class="card shadow mb-4">
    <div class="card-body">
      <div class="table-responsive">
        <table class="table table-hover" id="dataTable" width="100%" cellspacing="0">
          <thead>
            <tr>
              <th>No</th>
              <th width="25%">Soal</th>
              <th width="25%">Pilihan</th>
              <th width="25%">Jawaban siswa</th>
              <th>Status</th>
            </tr>
          </thead>
          <tbody>
            <?php
            $ambil = $koneksi->query("SELECT * FROM tb_jawab WHERE id_siswa = '$id_siswa' && token = '$token'");
            $nomor = 1;
            foreach($ambil as $jawab):
            ?>
            <tr>
              <td><?= $nomor++ ?></td>
              <td><?= $jawab['soal'] ?></td>
              <td>
                <?php
                  if($jawab['pil_a'] == $jawab['kunci']){
                    echo "<span class='maker'>A. ".$jawab['pil_a']."</span><br>";
                    echo "B. ".$jawab['pil_b']."<br>";
                    echo "C. ".$jawab['pil_c']."<br>";
                    echo "D. ".$jawab['pil_d']."<br>";
                    echo "E. ".$jawab['pil_e'];
                  } elseif($jawab['pil_b'] == $jawab['kunci']){
                    echo "A. ".$jawab['pil_a']."<br>";
                    echo "<span class='maker'>B. ".$jawab['pil_b']."</span><br>";
                    echo "C. ".$jawab['pil_c']."<br>";
                    echo "D. ".$jawab['pil_d']."<br>";
                    echo "E. ".$jawab['pil_e'];
                  } elseif($jawab['pil_c'] == $jawab['kunci']){
                    echo "A. ".$jawab['pil_a']."<br>";
                    echo "B. ".$jawab['pil_b']."<br>";
                    echo "<span class='maker'>C. ".$jawab['pil_c']."</span><br>";
                    echo "D. ".$jawab['pil_d']."<br>";
                    echo "E. ".$jawab['pil_e'];
                  } elseif($jawab['pil_d'] == $jawab['kunci']){
                    echo "A. ".$jawab['pil_a']."<br>";
                    echo "B. ".$jawab['pil_b']."<br>";
                    echo "C. ".$jawab['pil_c']."<br>";
                    echo "<span class='maker'>D. ".$jawab['pil_d']."</span><br>";
                    echo "E. ".$jawab['pil_e'];
                  } elseif($jawab['pil_e'] == $jawab['kunci']){
                    echo "A. ".$jawab['pil_a']."<br>";
                    echo "B. ".$jawab['pil_b']."<br>";
                    echo "C. ".$jawab['pil_c']."<br>";
                    echo "D. ".$jawab['pil_d']."<br>";
                    echo "<span class='maker'>E. ".$jawab['pil_e']."</span";
                  }
                ?>
              </td>
              <td>
                <?php
                  if($jawab['pil_a'] == $jawab['jawaban']){
                    echo "A. ".$jawab['jawaban'];
                  } elseif($jawab['pil_b'] == $jawab['jawaban']){
                    echo "B. ".$jawab['jawaban'];
                  } elseif($jawab['pil_c'] == $jawab['jawaban']){
                    echo "C. ".$jawab['jawaban'];
                  } elseif($jawab['pil_d'] == $jawab['jawaban']){
                    echo "D. ".$jawab['jawaban'];
                  } elseif($jawab['pil_e'] == $jawab['jawaban']){
                    echo "E. ".$jawab['jawaban'];
                  }
                ?>
              </td>
              <td>
                <?php
                  if($jawab['status2'] == 'benar'){
                    echo "<div class='badge badge-success'>$jawab[status2]</div>";
                  } elseif($jawab['status2'] == 'salah'){
                    echo "<div class='badge badge-danger'>$jawab[status2]</div>";
                  } elseif($jawab['status2'] == 'belum dijawab') {
                    echo "<div class='badge badge-warning'>$jawab[status2]</div>";
                  }
                ?>
              </td>
            </tr>
            <?php endforeach ?>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>