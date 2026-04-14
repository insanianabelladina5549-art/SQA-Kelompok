<?php
session_start();
include 'koneksi.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {

    $email = trim($_POST["email"]);
    $password = trim($_POST["password"]);

    $query = "SELECT * FROM t_user WHERE email = ?";
    $stmt = mysqli_prepare($conn, $query);

    mysqli_stmt_bind_param($stmt, "s", $email);
    mysqli_stmt_execute($stmt);

    $result = mysqli_stmt_get_result($stmt);
    $user = mysqli_fetch_assoc($result);

    if ($user) {

        if (password_verify($password, $user['password'])) {

            // ✅ SIMPAN SESSION
            $_SESSION['id_user'] = $user['id'];
            $_SESSION['user_name'] = $user['user_name'];
            $_SESSION['role'] = $user['role'];

            header("Location: dashboard.php");
            exit;

        } else {
            $_SESSION['error'] = "Password salah!";
        }

    } else {
        $_SESSION['error'] = "Email tidak ditemukan!";
    }

    header("Location: login.php");
    exit;
}