<?php
session_start();
if (!isset($_SESSION["id_user"])) {
    header("Location: ../login.php");
    exit;
}
include '../koneksi.php';
?>

<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Data Bahan Baku</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h3>🧪 Data Bahan Baku</h3>
    <a href="tambah.php" class="btn btn-primary mb-3">+ Tambah Bahan</a>
    <table class="table table-bordered bg-white">
        <thead class="table-dark">
            <tr>
                <th>No</th>
                <th>Nama Bahan</th>
                <th>Satuan</th>
                <th>Stok</th>
                <th>Harga Satuan</th>
                <th>Aksi</th>
            </tr>
        </thead>
        <tbody>
        <?php
        $no = 1;
        $query = mysqli_query($conn, "SELECT * FROM t_bahan_baku ORDER BY id_bahanBaku ASC");
        if (mysqli_num_rows($query) > 0) {
            while ($row = mysqli_fetch_assoc($query)) {
                echo "<tr>
                        <td>{$no}</td>
                        <td>{$row['nama_bahan']}</td>
                        <td>{$row['satuan']}</td>
                        <td>{$row['stok']}</td>
                        <td>Rp " . number_format($row['harga_satuan'], 0, ',', '.') . "</td>
                        <td>
                            <a href='edit.php?id={$row['id_bahanBaku']}' class='btn btn-warning btn-sm'>Edit</a>
                            <a href='hapus.php?id={$row['id_bahanBaku']}' onclick='return confirm(\"Hapus bahan ini?\")' class='btn btn-danger btn-sm'>Hapus</a>
                        </td>
                    </tr>";
                $no++;
            }
        } else {
            echo "<tr><td colspan='6' class='text-center'>Belum ada data bahan baku.</td></tr>";
        }
        ?>
        </tbody>
    </table>
    <a href="../dashboard.php" class="btn btn-secondary">← Kembali ke Dashboard</a>
</div>
</body>
</html>
