<?php    
ob_start();
require ("../../assets/html2pdf/html2pdf.class.php");
?>

<html>
<head>
   <style type="text/css">
        .box{
            border: 1px solid #000;
        }
        .header td{
            border-bottom: 1px solid #000;
        }
        .box td{
            padding: 5px 10px;
        }
   </style>
</head>
<body>

<?php
require '../../koneksi.php';
$ambil = $koneksi->query("SELECT * FROM tb_identitas");
$identitas = $ambil->fetch_assoc();

$ambil = $koneksi->query("SELECT * FROM tb_siswa s JOIN tb_kelas k ON s.id_kelas = k.id WHERE s.id_kelas = '$_GET[id_kelas]' ORDER BY nama ASC");
$no = 1;
echo "<table width='100%' cellspacing='20'><tr>";
while($siswa = mysqli_fetch_array($ambil)){
    echo "
        <td class='box' width='335'>
            <table width='100%' style='width: 330px' cellspacing='0'>
                <tr class='header'>
                    <td width='60' align='center'>
                        <img src='../media/logo.png' width='50' height='50'>
                    </td>
                    <td width='130' align='center' valign='middle' style='padding: 5px 30px;'>
                        <b>KARTU PESERTA UJIAN</b>
                    </td>
                </tr>
                <tr><td>Nama</td><td>: $siswa[nama]</td></tr>
                <tr><td>Kelas</td><td>: $siswa[kelas] $siswa[jurusan]</td></tr>
                <tr><td>Username</td><td>: $siswa[username]</td></tr>
                <tr><td>Password</td><td>: $siswa[password]</td></tr>
            </table>
        </td>
    ";
    
if($no%2 == 0) echo "</tr><tr>";
$no++; 
}
echo "</tr></table>";
?>
    
</body>
</html>

<?php
$content = ob_get_clean();
ob_end_clean();
try
{
    $html2pdf = new HTML2PDF('P', 'A4','fr', false, 'ISO-8859-15',array(2, 2, 2, 2)); 
    $html2pdf->setDefaultFont('Arial');
    $html2pdf->writeHTML($content, isset($_GET['vuehtml']));
    $html2pdf->Output('kartu-ujian.pdf');
}
catch(HTML2PDF_exception $e) { echo $e; }
?>