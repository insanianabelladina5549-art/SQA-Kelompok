<?php
session_start();
if (!isset($_SESSION["id_user"])) {
    header("Location: ../login.php");
    exit;
}

include '../koneksi.php';

$id = isset($_GET['id']) ? (int)$_GET['id'] : 0;
if ($id <= 0) {
    echo "❌ ID tidak valid!";
    exit;
}

// Cek apakah bahan digunakan di komposisi
$cek_komposisi = mysqli_query($conn, "SELECT 1 FROM t_komposisi_produk WHERE id_bahanBaku = $id LIMIT 1");
if (mysqli_num_rows($cek_komposisi) > 0) {
    echo "<script>alert('❌ Bahan masih digunakan di komposisi produk. Tidak dapat dihapus.'); window.location='list.php';</script>";
    exit;
}

// Cek apakah bahan digunakan di pembelian
$cek_pembelian = mysqli_query($conn, "SELECT 1 FROM t_pembelian_bahan WHERE id_bahanBaku = $id LIMIT 1");
if (mysqli_num_rows($cek_pembelian) > 0) {
    echo "<script>alert('❌ Bahan ini sudah pernah dibeli. Tidak dapat dihapus karena terhubung dengan histori pembelian.'); window.location='list.php';</script>";
    exit;
}

// Hapus bahan jika aman
$stmt = mysqli_prepare($conn, "DELETE FROM t_bahan_baku WHERE id_bahanBaku = ?");
mysqli_stmt_bind_param($stmt, "i", $id);
mysqli_stmt_execute($stmt);
mysqli_stmt_close($stmt);

header("Location: list.php?status=deleted");
exit;
?>
