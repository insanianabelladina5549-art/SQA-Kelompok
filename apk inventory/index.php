<?php
session_start();

// Jika sudah login, arahkan ke dashboard
if (isset($_SESSION['id_user'])) {
    header("Location: dashboard.php");
    exit;
}

// Jika belum login, arahkan ke login page
header("Location: login.php");
exit;
?>
