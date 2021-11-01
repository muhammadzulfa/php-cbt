<br>
<br>

<div class="mb-2"></div>

<?php
$ambil = $koneksi->query("SELECT * FROM tb_settings");
$settings = $ambil->fetch_assoc();
?>

<div class="card-footer fixed-bottom bg-light <?= $settings['card'] ?>">
    <div class="text-center">
        <small>
            <?= $settings['text_footer'] ?>
        </small>
    </div>
</div>
    
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
</body>
</html>