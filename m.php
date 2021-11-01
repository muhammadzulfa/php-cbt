<?php
require 'koneksi.php';
require 'template/header1.php';

if(isset($_GET['page'])){
    switch($_GET['page']){
        case 'login'; $title = 'Login siswa'; echo "<title>$title</title>"; break;
    }
}

require 'template/header2.php';
require 'template/topbar.php';

if(isset($_GET['page'])){
    switch($_GET['page']){
        case 'login'; require 'login.php'; break;
    }
}

require 'template/footer.php';
?>