<?php
$ambil = $koneksi->query("SELECT * FROM tb_identitas");
$identitas = $ambil->fetch_assoc();
?>

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="card shadow mb-4">
                <div class="card-body">
                    <?php require '../pesan.php' ?>
                    <form action="" method="post">
                        <div class="form-grup mb-3">
                            <label for="nama_sekolah">Nama sekolah</label>
                            <input type="text" name="nama_sekolah" id="nama_sekolah" value="<?= $identitas['nama_sekolah'] ?>" class="form-control" required>
                        </div>
                        <button type="submit" name="edit_nama_sekolah" class="btn btn-primary mb-4">Edit</button>
                    </form>
                    <form action="" method="post" enctype="multipart/form-data">
                        <div class="row">
                            <div class="col-md-2">
                                <div class="form-grup mb-3">
                                    <img src="media/<?= $identitas['foto'] ?>" class="img-thumbnail">
                                </div>
                            </div>
                            <div class="col-md-10">
                                <div class="form-grup mb-3">
                                    <div class="custom-file">
                                        <input type="file" class="custom-file-input" id="foto" name="foto">
                                        <label class="custom-file-label" for="foto">Choose file</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <button type="submit" name="edit_foto" class="btn btn-primary">Edit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<?php
if(isset($_POST['edit_nama_sekolah'])){
    $nama_sekolah = $_POST['nama_sekolah'];

    $koneksi->query("UPDATE tb_identitas SET nama_sekolah = '$nama_sekolah'");
    echo "<script>location='m?page=identitas-sekolah';</script>";
}

if(isset($_POST['edit_foto'])){
    $foto = $_FILES['foto']['name'];
    $ukuran = $_FILES['foto']['size'];
    $ext = explode(".", $foto);
    $ext = end($ext);
    $ext = strtolower($ext);
    $ext_boleh = array("png");
    $namafiks = "logo";
    $tujuan = "media/" . $namafiks . "." . $ext;
    $foto = $namafiks . "." . $ext;
    $sumber = $_FILES['foto']['tmp_name'];
    
    if($ukuran <= 5000000 && in_array($ext, $ext_boleh)){
        move_uploaded_file($sumber, $tujuan);
        $koneksi->query("UPDATE tb_identitas SET foto = '$foto'");
        echo "<script>location='m?page=identitas-sekolah';</script>";
    }else{
        echo "<script>location='m?page=identitas-sekolah&error=foto';</script>";
    }

}
?>