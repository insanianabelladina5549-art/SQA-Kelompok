<?php
include '../koneksi.php';

$id = isset($_GET['id']) ? (int)$_GET['id'] : 0;

// Ambil data bahan
$q = mysqli_query($conn, "SELECT * FROM t_bahan_baku WHERE id_bahanBaku = $id");
$data = mysqli_fetch_assoc($q);

// Jika data tidak ditemukan
if (!$data) {
    echo "Data bahan tidak ditemukan.";
    exit;
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nama   = $_POST['nama'];
    $satuan = $_POST['satuan'];
    $stok   = $_POST['stok'];
    $harga  = $_POST['harga'];

    $stmt = mysqli_prepare($conn, "
        UPDATE t_bahan_baku 
        SET nama_bahan = ?, satuan = ?, stok = ?, harga_satuan = ? 
        WHERE id_bahanBaku = ?
    ");
    mysqli_stmt_bind_param($stmt, "ssidi", $nama, $satuan, $stok, $harga, $id);
    mysqli_stmt_execute($stmt);

    header("Location: list.php");
    exit;
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Bahan</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="p-5 bg-light">
    <div class="container">
        <h3>Edit Bahan Baku</h3>
        <form method="POST">
            <div class="mb-3">
                <label for="nama" class="form-label">Nama Bahan</label>
                <input type="text" name="nama" value="<?= htmlspecialchars($data['nama_bahan']) ?>" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="satuan" class="form-label">Satuan</label>
                <input type="text" name="satuan" value="<?= htmlspecialchars($data['satuan']) ?>" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="stok" class="form-label">Stok</label>
                <input type="number" name="stok" value="<?= $data['stok'] ?>" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="harga" class="form-label">Harga Satuan</label>
                <input type="number" name="harga" step="0.01" value="<?= $data['harga_satuan'] ?>" class="form-control" required>
            </div>
            <button class="btn btn-primary">Update</button>
            <a href="list.php" class="btn btn-secondary">Batal</a>
        </form>
    </div>
</body>
</html>
