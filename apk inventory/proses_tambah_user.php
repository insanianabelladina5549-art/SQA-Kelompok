<?php
session_start();
include 'koneksi.php';

$user_name = $_POST['user_name'];
$email = $_POST['email'];
$password = $_POST['password'];
$role = $_POST['role'];

// 🔐 HASH PASSWORD
$hash = password_hash($password, PASSWORD_DEFAULT);

// CEK EMAIL
$cek = mysqli_query($conn, "SELECT * FROM t_user WHERE email='$email'");

if (mysqli_num_rows($cek) > 0) {
    echo "Email sudah ada!";
    exit;
}

// INSERT
$query = "INSERT INTO t_user (user_name, email, password, role, created_at, updated_at)
VALUES ('$user_name', '$email', '$hash', '$role', NOW(), NOW())";

if (mysqli_query($conn, $query)) {
    echo "User berhasil ditambahkan!";
} else {
    echo "Gagal!";
}