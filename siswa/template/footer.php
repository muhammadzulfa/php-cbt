
<br>
<br>
<br>
<br>

<div class="mb-2"></div>

<?php
$ambil = $koneksi->query("SELECT * FROM tb_settings");
$settings = $ambil->fetch_assoc();
?>


<div class="card-footer footer bg-light <?= $settings['card'] ?>">
    <div class="text-center">
        <small>
          <?= $settings['text_footer'] ?>
        </small>
    </div>
</div>

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

</body>
</html>