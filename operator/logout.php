<?php
// hapus session operator
unset($_SESSION['operator']);
header("location: ../m?page=login&pesan=logout");
?>