# 📦 Sistem Manajemen Produksi & Stok (Inventory)

Aplikasi berbasis web untuk membantu pengelolaan bahan baku, proses produksi, dan laporan secara otomatis dan terintegrasi.

---

## 🚀 Fitur Utama

### 🔐 Autentikasi

* Login menggunakan email dan password
* Logout dari sistem

### 👤 Manajemen User

* Tambah user
* Edit user
* Hapus user
* Reset password

### 📦 Manajemen Produk

* Menampilkan daftar produk
* Menambah produk baru
* Mengubah data produk
* Menghapus produk

### 🧪 Manajemen Komposisi Produk

* Menentukan bahan penyusun produk
* Mengatur jumlah bahan
* Menghapus komposisi

### 🛒 Manajemen Pembelian

* Input pembelian bahan baku
* Menyimpan harga bahan
* Menghapus data pembelian

### 🏭 Proses Produksi

* Input produksi
* Cek komposisi bahan otomatis
* Menghitung biaya produksi (HPP)
* Update stok otomatis

### 📊 Laporan

* Laporan produksi
* Laporan biaya
* Laporan margin
* Detail produksi
* Export ke PDF (menggunakan dompdf)

---

## 🗂️ Struktur Project

```
├── login.php
├── proses_login.php
├── logout.php
├── koneksi.php
│
├── user/
├── produk/
├── komposisi/
├── pembelian/
├── produksi/
├── laporan/
```

---

## ⚙️ Teknologi yang Digunakan

* PHP (Native)
* MySQL
* HTML, CSS, JavaScript
* Apache (XAMPP / Laragon)
* dompdf (generate PDF)

---

## 💻 Kebutuhan Sistem

### Software

* XAMPP / Laragon
* Web Browser (Chrome / Edge)

### Hardware

* Laptop / PC
* RAM minimal 4GB
* Storage minimal 500MB

---

## 👥 Aktor Sistem

* **Admin**

  * Mengelola semua data
  * Mengakses laporan
  * Mengatur user

* **User (Opsional)**

  * Login
  * Mengakses fitur tertentu

---

## 🔄 Alur Sistem

1. User login ke sistem
2. Mengelola data (produk, bahan baku, pembelian)
3. Melakukan input produksi
4. Sistem menghitung biaya produksi otomatis
5. Sistem memperbarui stok
6. User melihat dan mencetak laporan

---

## 🛠️ Cara Menjalankan Project

1. Clone repository ini
2. Pindahkan ke folder `htdocs` (XAMPP)
3. Jalankan Apache & MySQL
4. Import database ke phpMyAdmin
5. Jalankan di browser:

```
http://localhost/nama_project
```

---

## 📄 Catatan

* Pastikan konfigurasi database di file `koneksi.php` sudah sesuai
* Gunakan akun admin untuk akses penuh sistem

---

## 👨‍💻 Author

Kelompok 8
Sistem Manajemen Produksi & Stok
