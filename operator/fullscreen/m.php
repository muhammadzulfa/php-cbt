<?php
require '../../koneksi.php';
require 'template/header1.php';

if(isset($_GET['page'])){
    switch($_GET['page']){
        case 'lihat-jawaban'; $title = 'Lihat jawaban'; echo "<title>$title</title>"; break;
        case 'lihat-nilai'; $title = 'Lihat nilai'; echo "<title>$title</title>"; break;
    }
}

require 'template/header2.php';
require 'template/topbar.php';

if(isset($_GET['page'])){
    switch($_GET['page']){
        case 'lihat-jawaban'; require 'lihat-jawaban.php'; break;
        case 'lihat-nilai'; require 'lihat-nilai.php'; break;
    }
}

require 'template/footer.php';
?>