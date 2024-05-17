<?php
//Disini akan digunakan kode PHP untuk memproses data
//Ambil koneksi ke basisdata, karena data ini akan disimpan didalam basisdata.
require_once "KoneksiDB2.php";
//cek form yang di kirim
if($_SERVER['REQUEST_METHOD']=="POST"){
//ambil data dari form, simpan dalam variabel
$nip=$_POST['nip']; //yg didalam tanda kutip harus sama dengan name di form
$nama=$_POST['nama'];
$alamat=$_POST['alamat'];
$email=$_POST['email'];
$jenis_kelamin=$_POST['jenis_kelamin'];
$umur=$_POST['umur'];
$no_hp=$_POST['no_hp'];
//buat SQL untuk simpan data
$sqlupdate="UPDATE tbdosen SET nama='$nama', alamat='$alamat', email='$email', jenis_kelamin='$jenis_kelamin', umur='$umur', no_hp='$no_hp' WHERE nip='$nip'";
//Proses ke mysql server, menggunakan mysqli_query()
if(mysqli_query($koneksi,$sqlupdate)){
//redirect ke halaman tampildata.php jika proses simpan berhasil
echo "<script> alert('Data sudah diupdate');
window.location.assign('TampilData2.php'); </script>";
}
}
//Sampai disini program sudah siap, kita coba jalankan.
//Ok. program untuk tambah data (save) sudah selesai.
//ketika input jgn menggunakan nim yg sama karena nim adalah primary key, jik ingin kontrol dari sistem jg bisa...kita bahas pertemuan berikutnya.