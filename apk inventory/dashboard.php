<?php
session_start();

if (!isset($_SESSION['id_user'])) {
    header("Location: login.php");
    exit;
}
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Dashboard Utama</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            padding-top: 70px;
        }
        .btn-link {
            display: block;
            width: 100%;
            padding: 12px;
            margin-bottom: 10px;
            text-align: left;
            background: #f8f9fa;
            border: 1px solid #ddd;
            border-radius: 6px;
            text-decoration: none;
            color: #333;
            transition: all 0.2s ease-in-out;
        }
        .btn-link:hover {
            background-color: #e2e6ea;
            color: #000;
        }
        .sidebar {
            height: 100vh;
            background-color: #f0f0f0;
            padding: 20px;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Sistem Inventory</a>
            <div class="d-flex">
                <a href="logout.php" class="btn btn-outline-light">Logout</a>
            </div>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="container-fluid">
        <div class="row">
            <!-- Sidebar -->
            <div class="col-md-3 sidebar">
                <h4>Menu</h4>
                <a href="produk/list.php" class="btn-link">Produk</a>
                <a href="bahan/list.php" class="btn-link">Bahan Baku</a>
                <a href="produksi/list.php" class="btn-link">Produksi</a>
                <a href="produksi/form.php" class="btn-link">Produksi Bahan ke Produk</a>
                <a href="pembelian/list.php" class="btn-link">Pembelian Bahan</a>
                <a href="komposisi/list.php" class="btn-link">Komposisi Produk</a>
                <a href="laporan/margin.php" class="btn-link">Laporan Margin</a>
                <a href="laporan/biaya.php" class="btn-link">Laporan Biaya</a>
                <a href="produksi/biaya.php" class="btn-link">Input Biaya Produksi</a>
                <a href="user/list.php" class="btn-link">Manajemen User</a>
            </div>

            <!-- Content -->
            <div class="col-md-9 p-4">
                <h2>Selamat Datang, <?= htmlspecialchars($_SESSION['user_name']) ?>!</h2>
                <p>Gunakan menu di sebelah kiri untuk mengelola sistem inventory produksi.</p>

                <!-- Card Ringkasan -->
                <div class="row">
                    <div class="col-md-4 mb-3">
                        <div class="card text-bg-primary">
                            <div class="card-body">
                                <h5 class="card-title">Data Produk</h5>
                                <p class="card-text">Lihat dan kelola daftar produk.</p>
                                <a href="produk/list.php" class="btn btn-light">Lihat</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mb-3">
                        <div class="card text-bg-success">
                            <div class="card-body">
                                <h5 class="card-title">Stok Bahan</h5>
                                <p class="card-text">Kelola bahan baku & stok.</p>
                                <a href="bahan/list.php" class="btn btn-light">Kelola</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mb-3">
                        <div class="card text-bg-warning">
                            <div class="card-body">
                                <h5 class="card-title">Laporan Produksi</h5>
                                <p class="card-text">Lihat laporan dan biaya.</p>
                                <a href="laporan/biaya.php" class="btn btn-light">Lihat</a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Ringkasan -->
            </div>
        </div>
    </div>
</body>
</html>
