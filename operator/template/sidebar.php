<?php
$ambil = $koneksi->query("SELECT * FROM tb_settings");
$settings = $ambil->fetch_assoc();

$ambil = $koneksi->query("SELECT * FROM tb_identitas");
$identitas = $ambil->fetch_assoc();
?>

<ul class="navbar-nav bg-<?= $settings['warna_sidebar'] ?> sidebar sidebar-dark accordion" id="accordionSidebar">

  <a class="sidebar-brand d-flex align-items-center justify-content-center" href="">
    <div class="sidebar-brand-icon rotate-n-15">
      <i class="fas fa-code"></i>
    </div>
    <div class="sidebar-brand-text mx-3">Operator</div>
  </a>

  <hr class="sidebar-divider my-0">

<?php if($title == 'Beranda - '.$identitas['nama_sekolah']): ?>
  <li class="nav-item active">
<?php else: ?>
  <li class="nav-item">
<?php endif ?>
    <a class="nav-link pb-0" href="m?page=beranda">
      <i class="fas fa-fw fa-tachometer-alt"></i>
      <span>Beranda</span></a>
  </li>

  <hr class="sidebar-divider mt-3">

  <div class="sidebar-heading">
    Interface
  </div>

  <?php if($title == 'Data kelas - '.$identitas['nama_sekolah']): ?>
  <li class="nav-item active">
<?php else: ?>
  <li class="nav-item">
<?php endif ?>
    <a class="nav-link pb-0" href="m?page=data-kelas">
      <i class="fas fa-fw fa-calendar"></i>
      <span>Data kelas</span>
    </a>
  </li>
  
<?php if($title == 'Soal ujian - '.$identitas['nama_sekolah']): ?>
  <li class="nav-item active">
<?php else: ?>
  <li class="nav-item">
<?php endif ?>
    <a class="nav-link pb-0" href="m?page=soal-ujian-pilih-jadwal">
      <i class="fas fa-fw fa-calendar"></i>
      <span>Soal ujian</span>
    </a>
  </li>
  
  <?php if($title == 'Status ujian - '.$identitas['nama_sekolah']): ?>
    <li class="nav-item active">
  <?php else: ?>
    <li class="nav-item">
  <?php endif ?>
      <a class="nav-link pb-0" href="m?page=status-ujian">
        <i class="fas fa-fw fa-calendar"></i>
        <span>Status ujian</span>
      </a>
    </li>
  
<?php if($title == 'Status siswa - '.$identitas['nama_sekolah']): ?>
  <li class="nav-item active">
<?php else: ?>
  <li class="nav-item">
<?php endif ?>
    <a class="nav-link pb-0" href="m?page=status-siswa">
      <i class="fas fa-fw fa-calendar"></i>
      <span>Status siswa</span>
    </a>
  </li>

<?php if($title == 'Nilai ujian siswa - '.$identitas['nama_sekolah']): ?>
  <li class="nav-item active">
<?php else: ?>
  <li class="nav-item">
<?php endif ?>
    <a class="nav-link pb-0" href="m?page=nilai-ujian-pilih-kelas">
      <i class="fas fa-fw fa-calendar"></i>
      <span>Nilai ujian siswa</span>
    </a>
  </li>

  <hr class="sidebar-divider mt-3">

  <div class="sidebar-heading">
    settings
  </div>

  <?php if($title == 'Settings - '.$identitas['nama_sekolah']): ?>
  <li class="nav-item active">
<?php else: ?>
  <li class="nav-item">
<?php endif ?>
    <a class="nav-link pb-0" href="m?page=settings">
      <i class="fas fa-fw fa-cog"></i>
      <span>Settings</span>
    </a>
  </li>

  <li class="nav-item">
    <a class="nav-link pb-0" href="" data-toggle="modal" data-target="#logoutModal">
      <i class="fas fa-fw fa-sign-out-alt"></i>
      <span>Logout</span>
    </a>
  </li>

  <hr class="sidebar-divider mt-3 d-none d-md-block">

  <div class="text-center d-none d-md-inline">
    <button class="rounded-circle border-0" id="sidebarToggle"></button>
  </div>

</ul>