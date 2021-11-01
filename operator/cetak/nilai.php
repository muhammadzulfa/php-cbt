<?php
// memanggil library FPDF
require('../../assets/fpdf/fpdf.php');
// intance object dan memberikan pengaturan halaman PDF
$pdf = new FPDF();
// membuat halaman baru
$pdf->AddPage();

require '../../koneksi.php';
$ambil = $koneksi->query("SELECT * FROM tb_identitas");
$identitas = $ambil->fetch_assoc();


$pdf->Image('../media/logo.png',15,8,30,30);


// setting jenis font yang akan digunakan
$pdf->SetFont('Arial','B',16);
$pdf->Cell(210,8,'UJIAN NASIONAL BERBASIS KOMPUTER',0,1,'C');

$pdf->SetFont('Arial','B',15);
$pdf->Cell(210,8,'NILAI UJIAN NASIONAL BERBASIS KOMPUTER',0,1,'C');
$pdf->SetFont('Times','i',11);
$pdf->Cell(210,5,'Jl. Singajaya Desa Ulin Kec. Simpur Kab. Hulu Sungai Selatan',0,1,'C');
$pdf->SetFont('Times','i',11);
$pdf->Cell(210,7,'Provinsi Kalimantan Selatan Kode Pos. 71261 No. Telp 0831-5987-6752',0,1,'C');


$pdf->SetLineWidth(1);
$pdf->Line(10,41,200,41);
$pdf->SetLineWidth(0);
$pdf->Line(10,42,200,42);


$pdf->Cell(10,10,'',0,1);

$ambil = $koneksi->query("SELECT * FROM tb_jadwal WHERE token = '$_GET[token]'");
$jadwal = $ambil->fetch_assoc();

$pdf->SetFont('Arial','',10);
$pdf->Cell(30,6,'Kelas:',0,0,'');
$pdf->Cell(3,6,':',0,0,'');
$pdf->Cell(30,6,$jadwal['kelas'],0,1,'');

$pdf->Cell(30,6,'Mata pelajaran',0,0,'');
$pdf->Cell(3,6,':',0,0,'');
$pdf->MultiCell(160,6,$jadwal['mapel'],0,1,'');

$pdf->Cell(10,3,'',0,1);

$pdf->SetFont('Arial','B',10);
$pdf->Cell(10,7,'No',1,0,'C');
$pdf->Cell(160,7,'Nama siswa',1,0);
$pdf->Cell(20,7,'Nilai',1,1,'C');

$pdf->SetFont('Arial','',9);

$no = 1;
$ambil = $koneksi->query("SELECT * FROM tb_nilai n JOIN tb_siswa s ON n.id_siswa = s.id WHERE n.token = '$_GET[token]' ORDER BY nama ASC");
foreach ($ambil as $nilai) {
    $pdf->Cell(10,6,$no++,1,0,'C');
    $pdf->Cell(160,6,$nilai['nama'],1,0);
    $pdf->Cell(20,6,$nilai['nilai'],1,1,'C');
}

$pdf->Output();
?>