## Kebutuhan Fungsional (Functional Requirements)
1. Login & Autentikasi <br>
File terkait:
- login.php
- proses_login.php
- logout.php

Kebutuhan:
- User dapat login menggunakan email & password
- Sistem memverifikasi user dari database
- User dapat logout dari sistem

2. Manajemen User <br>
File:
- user/list.php
- user/tambah.php
- user/edit.php
- user/hapus.php
- user/reset.php
- tambah_user.php

Fungsi:
- Admin dapat:
- Menambah user
- Edit user
- Hapus user
- Reset password

3. Manajemen Produk <br>
File:
- produk/list.php
- produk/tambah.php
- produk/edit.php
- produk/hapus.php

Fungsi:
- Menampilkan daftar produk
- Menambah produk baru
- Mengubah data produk
- Menghapus produk

4. Manajemen Komposisi (Bahan Produk) <br>
File:
- komposisi/list.php
- komposisi/tambah.php
- komposisi/hapus.php

Fungsi:
- Menentukan bahan-bahan penyusun produk
- Mengatur jumlah bahan
Menghapus komposisi

5. Manajemen Pembelian <br>
File:
- pembelian/list.php
- pembelian/tambah.php
- pembelian/proses_tambah.php
- pembelian/hapus.php

Fungsi:
- Mencatat pembelian bahan
- Menyimpan harga bahan
- Menghapus data pembelian

6. Proses Produksi <br>
File:
- produksi/list.php
- produksi/form.php
- produksi/proses_olah.php
- produksi/cek_komposisi.php
- produksi/biaya.php
- produksi/proses_biaya.php
- produksi/hapus.php

Fungsi:
- Input produksi
- Mengecek komposisi bahan
- Menghitung biaya produksi
- Mengolah produksi berdasarkan bahan

7. Laporan <br>
File:
- laporan/produksi.php
- laporan/biaya.php
- laporan/margin.php
- laporan/detail_produksi.php
- generate.php (PDF)

Fungsi:
- Menampilkan laporan:
- Produksi
- Biaya
- Margin keuntungan
- Export laporan ke PDF (pakai dompdf)

8. Koneksi Database <br>
File:
- koneksi.php

Fungsi:
- Menghubungkan sistem ke database MySQL

## Kebutuhan Non-Fungsional (Non-Functional Requirements)
1. Platform <br>
- Berbasis web (PHP)
- Berjalan di:
- XAMPP / Laragon
- Browser (Chrome, Edge)

2. Database
- Menggunakan MySQL
- Tabel kemungkinan:
- user
- produk
- bahan
- pembelian
- produksi
- komposisi

3. Output
- Laporan dapat di-export ke PDF (menggunakan dompdf)

4. Kebutuhan Perangkat Lunak (Software Requirements)
- PHP (Native)
- MySQL
- Web Server (Apache)
- Library:
- dompdf (untuk generate PDF)

5. Kebutuhan Perangkat Keras (Hardware)
- Minimal:
- Laptop/PC
- RAM ≥ 4GB
- Storage ≥ 500MB
- Browser modern

6. Aktor Sistem
- Admin
- Mengelola semua data
- Mengakses laporan
- Mengatur user
(Kemungkinan) User biasa
- Login
- Melihat data tertentu

7. Alur Sistem (Singkat)
- User login
- Kelola data (produk, bahan, pembelian)
- Input produksi
- Sistem hitung biaya
- Generate laporan
