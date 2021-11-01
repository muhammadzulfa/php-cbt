<?php
// ambil kelas dari url
$kelas = $_GET['kelas'];
// ambil token dari url
$token = $_GET['token'];

// ambil data settings dari tabel tb_settings
$ambil = $koneksi->query("SELECT * FROM tb_settings");
$settings = $ambil->fetch_assoc();
?>

<div class="container">
    <div class="card mb-4 <?= $settings['card'] ?>">
        <div class="card-body">
            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-1 d-none d-md-inline">
                            <h1 class="pull-right">
                                <i class="fa fa-info-circle"></i> 
                            </h1>
                        </div>
                        <div class="col-md-11">
                            <p>
                                Lorem ipsum dolor, sit amet consectetur adipisicing elit. Distinctio aut ipsam ducimus veniam praesentium veritatis hic at numquam corrupti molestiae fugit illum, mollitia accusantium culpa iste consectetur! Fuga, fugit iste?
                            </p>
                        </div>
                    </div>
                    <div class="alert alert-info">
                        <p>
                            Lorem ipsum, dolor sit amet consectetur adipisicing elit. Eos qui quidem maiores ratione recusandae. Omnis ratione sunt suscipit esse earum ea cupiditate accusantium totam quia architecto, magni obcaecati voluptatem sed?
                        </p>
                        <p>
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Corporis et ea, vel nulla, repudiandae iure minus quod quo nobis rerum veniam. Amet maiores sint molestiae necessitatibus doloribus voluptates error natus?
                        </p>
                        <p>
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Corporis et ea, vel nulla, repudiandae iure minus quod quo nobis rerum veniam. Amet maiores sint molestiae necessitatibus doloribus voluptates error natus?
                        </p>
                        <p>
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Corporis et ea, vel nulla, repudiandae iure minus quod quo nobis rerum veniam. Amet maiores sint molestiae necessitatibus doloribus voluptates error natus?
                        </p>
                    </div>
                    <div class="form-check">
                        <input type="checkbox" name="setuju" id="setuju" class="form-check-input" checked>
                        <label for="setuju" class="form-check-label">Saya memahami dan menyetujuinya</label>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <a href="m?page=detmap&kelas=<?= $kelas ?>&token=<?= $token ?>" class="btn btn-success pull-right">Berikutnya</a>
</div>