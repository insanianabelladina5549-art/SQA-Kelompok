<?php
include '../koneksi.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nama   = $_POST['nama'];
    $satuan = $_POST['satuan'];
    $stok   = $_POST['stok'];
    $harga  = $_POST['harga'];

    // Gunakan mysqli_prepare untuk keamanan
    $stmt = mysqli_prepare($conn, "INSERT INTO t_bahan_baku (nama_bahan, satuan, stok, harga_satuan) VALUES (?, ?, ?, ?)");
    mysqli_stmt_bind_param($stmt, "ssid", $nama, $satuan, $stok, $harga);
    mysqli_stmt_execute($stmt);

    header("Location: list.php");
    exit;
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Tambah Bahan</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="p-5 bg-light">
    <div class="container">
        <h3 class="mb-4">➕ Tambah Bahan Baku</h3>
        <form method="POST">
            <div class="mb-3">
                <label for="nama" class="form-label">Nama Bahan</label>
                <input type="text" name="nama" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="satuan" class="form-label">Satuan (contoh: gram, liter, pcs)</label>
                <input type="text" name="satuan" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="stok" class="form-label">Stok Awal</label>
                <input type="number" name="stok" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="harga" class="form-label">Harga per Satuan</label>
                <input type="number" name="harga" step="0.01" class="form-control" required>
            </div>
            <button class="btn btn-success">Simpan</button>
            <a href="list.php" class="btn btn-secondary">Batal</a>
        </form>
    </div>
</body>
</html>
