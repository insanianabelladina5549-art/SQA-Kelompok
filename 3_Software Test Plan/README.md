DAFTAR ISI
1.	Pendahuluan
 1.1 Tujuan
 1.2 Latar Belakang
 1.3 Ruang Lingkup 
2.	Lingkungan Pengujian Perangkat Lunak
 2.1 Material Pengujian
 2.2 Teknik Pengujian 
3.	Rencana Pengujian 
4.	Hasil Pengujian



















1. PENDAHULUAN
1.1 Tujuan
Dokumen Software Test Plan ini bertujuan untuk mendefinisikan proses pengujian pada Sistem Informasi Manajemen Produksi dan Stok berbasis web. Pengujian dilakukan untuk memastikan bahwa seluruh fungsi sistem, seperti manajemen bahan baku, produk, produksi, pembelian bahan, serta pelaporan, berjalan sesuai dengan kebutuhan yang telah didefinisikan pada dokumen SKPL.
1.2 Latar Belakang
Sistem informasi inventory yang dikembangkan menggunakan PHP dan MySQL ini berfungsi untuk mengelola proses produksi dan stok secara terintegrasi. Sistem mencakup berbagai fitur seperti pengelolaan bahan baku, produk, komposisi produk, produksi, serta laporan biaya dan margin .
Karena sistem ini berperan penting dalam pencatatan stok dan produksi, maka diperlukan proses pengujian untuk memastikan:
•	Keakuratan perhitungan HPP 
•	Konsistensi data stok 
•	Validitas transaksi produksi dan pembelian 
•	Keamanan akses pengguna 
1.3 Ruang Lingkup
Ruang lingkup pengujian meliputi seluruh fitur utama sistem, yaitu:
•	Autentikasi pengguna (login & logout) 
•	Manajemen user (t_user) 
•	Manajemen produk (t_produk) 
•	Manajemen bahan baku (t_bahan_baku) 
•	Komposisi produk (t_komposisi_produk) 
•	Proses produksi (t_produksi) 
•	Detail bahan terpakai (t_detail_bahan_terpakai) 
•	Biaya tambahan produksi (t_biaya_tambahan) 
•	Margin produk (t_margin_produk) 
•	Pembelian bahan (t_pembelian_bahan) 
•	Laporan biaya dan margin 



2. LINGKUNGAN PENGUJIAN PERANGKAT LUNAK
2.1 Material Pengujian
Perangkat Keras
•	Laptop/PC 
•	RAM minimal 4GB 
•	Processor minimal Dual Core 
Perangkat Lunak
•	Sistem Operasi: Windows 10 
•	Web Server: XAMPP 
•	Bahasa Pemrograman: PHP 
•	Database: MySQL 
•	Browser: Google Chrome 
Data Uji
•	Data user (Admin, Produksi, Gudang) 
•	Data produk 
•	Data bahan baku 
•	Data transaksi produksi 
•	Data pembelian bahan 
•	
2.2 Teknik Pengujian
1. Black Box Testing
Pengujian dilakukan dengan melihat input dan output tanpa memperhatikan kode program.
2. Functional Testing
Mengujikan setiap fungsi sesuai dengan use case sistem, seperti:
•	Login 
•	Kelola produk 
•	Input produksi 
•	Pembelian bahan 
3. Validation Testing
Pengujian terhadap validasi input:
•	Field kosong 
•	Format data tidak sesuai 
•	Input duplikat (nama produk/bahan harus unik) 

3. RENCANA PENGUJIAN
1. Pengujian Login (t_user)
No	Skenario	Input	Expected Result
1	Login valid	Email & password benar	Masuk ke dashboard
2	Password salah	Password salah	Error login
3	Email tidak terdaftar	Email salah	Error
4	Field kosong	Kosong	Validasi muncul

2. Pengujian Manajemen Produk (t_produk)
No	Skenario	Input	Expected Result
1	Tambah produk	nama_produk unik	Data tersimpan
2	Nama duplikat	nama sama	Error
3	Edit produk	Update data	Data berubah
4	Hapus produk	Klik hapus	Data terhapus

3. Pengujian Bahan Baku (t_bahan_baku)
No	Skenario	Input	Expected Result
1	Tambah bahan	nama_bahan unik	Berhasil
2	Input stok	angka	Stok tersimpan
3	Edit bahan	Update	Berhasil
4	Hapus bahan	Klik hapus	Terhapus

4. Pengujian Komposisi Produk (t_komposisi_produk)
No	Skenario	Expected Result
1	Tambah komposisi	Data tersimpan
2	Duplikasi komposisi	Ditolak
3	Relasi produk-bahan	Valid







5. Pengujian Produksi (t_produksi)
No	Skenario	Expected Result
1	Input produksi valid	Data tersimpan
2	Stok bahan cukup	Produksi berhasil
3	Stok tidak cukup	Muncul error
4	Hitung HPP	Nilai sesuai perhitungan

6. Pengujian Detail Bahan Terpakai
No	Skenario	Expected Result
1	Simpan detail bahan	Tersimpan
2	Relasi produksi	Valid

7. Pengujian Biaya Tambahan
No	Skenario	Expected Result
1	Tambah biaya	Tersimpan
2	Hitung total biaya	Akurat

8. Pengujian Pembelian Bahan (t_pembelian_bahan)
No	Skenario	Expected Result
1	Input pembelian	Data tersimpan
2	Stok bertambah	Update stok
3	Input kosong	Error

9. Pengujian Laporan
No	Skenario	Expected Result
1	Laporan margin	Tampil
2	Laporan biaya	Tampil
3	Cetak PDF	Berhasil










4. HASIL PENGUJIAN
No	Fitur	Skenario	Hasil	Keterangan
1	Login	Valid	Berhasil	Sesuai
2	Produk	Tambah	Berhasil	OK
3	Bahan	Tambah	Berhasil	OK
4	Produksi	Stok cukup	Berhasil	OK
5	Produksi	Stok kurang	Gagal	Validasi berjalan
6	Pembelian	Input	Berhasil	Stok bertambah

Kesimpulan
Berdasarkan hasil pengujian yang telah dilakukan, sistem informasi manajemen produksi dan stok berbasis web telah berjalan sesuai dengan kebutuhan fungsional yang ditentukan. Seluruh fitur utama seperti pengelolaan data, produksi, dan laporan dapat digunakan dengan baik, meskipun masih diperlukan pengujian lanjutan untuk memastikan kestabilan sistem dalam penggunaan skala besar.

