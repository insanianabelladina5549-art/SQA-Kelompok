<?php
session_start();
include 'koneksi.php';

if (!isset($_SESSION['id_user'])) {
    header("Location: login.php");
    exit;
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Tambah User</title>
</head>
<body>

<h3>Tambah User</h3>

<form action="proses_tambah_user.php" method="POST">
    <input type="text" name="user_name" placeholder="Nama" required><br><br>
    <input type="email" name="email" placeholder="Email" required><br><br>
    <input type="password" name="password" placeholder="Password" required><br><br>

    <select name="role" required>
        <option value="">Pilih Role</option>
        <option value="Admin">Admin</option>
        <option value="Produksi">Produksi</option>
        <option value="Gudang">Gudang</option>
    </select><br><br>

    <button type="submit">Simpan</button>
</form>

</body>
</html>