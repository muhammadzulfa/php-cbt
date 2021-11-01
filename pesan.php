<?php
if(isset($_GET['error']) && $_GET['error'] == 'password'){
echo "
<div class='alert alert-danger'>
Password anda salah, coba lagi
</div>";
}
?>
<?php
if(isset($_GET['error']) && $_GET['error'] == 'username'){
echo "
<div class='alert alert-danger'>
Username anda belum terdaftar
</div>";
}
?>
<?php
if(isset($_GET['error']) && $_GET['error'] == 'email'){
echo "
<div class='alert alert-danger'>
Email anda belum terdaftar
</div>";
}
?>
<?php
if(isset($_GET['pesan']) && $_GET['pesan'] == 'logout'){
echo "
<div class='alert alert-success'>
Anda keluar
</div>";
}
?>