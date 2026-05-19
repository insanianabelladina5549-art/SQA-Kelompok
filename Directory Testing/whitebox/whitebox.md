# White Box Testing

White Box Testing dilakukan dengan memeriksa struktur internal, logika program, alur proses, dan kode program pada aplikasi Inventory Management System. Pengujian dilakukan untuk memastikan setiap fungsi sistem berjalan sesuai dengan logika yang dirancang.

---

# 1. Desk Checking

Desk Checking dilakukan dengan memeriksa logika program secara manual pada fitur login, pengelolaan data bahan, produksi, pembelian bahan, dan laporan sistem.

Pemeriksaan dilakukan pada:
- Validasi username dan password
- Proses penyimpanan data bahan
- Proses pengurangan stok saat produksi
- Proses penambahan stok saat pembelian
- Proses menampilkan laporan

Hasil pengujian menunjukkan bahwa logika program berjalan sesuai kebutuhan sistem.

---

# 2. Code Walkthrough

Code Walkthrough dilakukan dengan meninjau source code aplikasi bersama anggota kelompok untuk memahami alur sistem dan memastikan fungsi program berjalan dengan baik.

Peninjauan dilakukan pada:
- proses_login.php
- tambah_user.php
- modul data bahan
- modul produksi
- modul laporan

Hasil peninjauan menunjukkan bahwa struktur kode program dapat berjalan sesuai fungsi yang dirancang.

---

# 3. Control Flow Testing

Control Flow Testing dilakukan untuk menguji alur kontrol dan percabangan program pada sistem inventory.

Pengujian dilakukan pada:
- proses login pengguna
- validasi input data
- proses produksi
- proses pembelian bahan

Alur program yang diuji:
- Jika data benar maka sistem memproses data
- Jika data salah maka sistem menampilkan pesan error

Hasil pengujian menunjukkan seluruh alur kontrol berjalan dengan baik.

---

# 4. Data Flow Testing

Data Flow Testing dilakukan untuk memastikan aliran data dari input, proses, hingga output berjalan dengan baik.

Pengujian dilakukan pada:
- input data bahan
- penyimpanan data user
- proses produksi
- pembelian bahan
- laporan margin dan biaya

Hasil pengujian menunjukkan data berhasil tersimpan, diperbarui, dan ditampilkan sesuai proses sistem.

---

# 5. Formal Inspections

Formal Inspections dilakukan dengan pemeriksaan kode program secara terstruktur untuk menemukan kesalahan pada sistem.

Pemeriksaan dilakukan pada:
- query database
- koneksi database
- validasi form input
- pengolahan data stok
- proses cetak laporan PDF

Hasil pemeriksaan menunjukkan tidak ditemukan kesalahan kritis pada sistem.

---

# 6. Basis Path Testing

Basis Path Testing dilakukan untuk menguji jalur independen pada sistem aplikasi inventory.

Pengujian dilakukan pada:
- login berhasil
- login gagal
- tambah data berhasil
- edit data berhasil
- hapus data berhasil
- produksi berhasil
- pembelian berhasil

Hasil pengujian menunjukkan seluruh jalur program dapat dijalankan dengan baik.

---

# 7. Loop Testing

Loop Testing dilakukan untuk menguji proses perulangan data pada sistem.

Pengujian dilakukan pada:
- tampilan data bahan
- tampilan data user
- tampilan laporan produksi
- tampilan laporan margin
- tampilan laporan biaya

Hasil pengujian menunjukkan proses perulangan berjalan normal dan seluruh data dapat ditampilkan dengan baik.

---

# Kesimpulan

Berdasarkan White Box Testing yang telah dilakukan, logika program, alur sistem, proses pengolahan data, dan struktur aplikasi Inventory Management System berjalan sesuai dengan fungsi yang dirancang dan tidak ditemukan kesalahan kritis pada sistem.
