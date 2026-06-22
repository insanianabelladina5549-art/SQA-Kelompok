# Regression Testing

## Definisi

Regression Testing adalah teknik Gray Box Testing yang digunakan untuk memastikan bahwa perubahan yang dilakukan pada sistem tidak menyebabkan kesalahan baru pada fungsi yang sebelumnya telah berjalan dengan baik.

Pada Sistem Informasi Inventory Roti, Regression Testing dilakukan pada fitur Produksi untuk memastikan bahwa perubahan sistem tidak mempengaruhi proses produksi, perhitungan HPP, pengurangan stok bahan baku, dan penambahan stok produk.

---

## Tujuan Pengujian

1. Memastikan fitur yang telah diperbaiki tetap berjalan dengan baik.
2. Memastikan fitur baru tidak merusak fungsi yang sudah ada.
3. Memastikan data produksi tersimpan dengan benar.
4. Memastikan stok bahan baku dan stok produk diperbarui secara otomatis.

---

# 1. Menambah Fitur Baru

### Skenario

Pengembang menambahkan fitur perhitungan otomatis Harga Pokok Produksi (HPP) pada saat proses produksi dilakukan.

### Tujuan

Memastikan fitur produksi yang sebelumnya berjalan tetap berfungsi setelah fitur HPP ditambahkan.

### Langkah Pengujian

a. Jalankan kembali proses produksi yang telah diuji sebelumnya.

b. Pastikan data produksi tetap tersimpan ke tabel produksi.

c. Pastikan stok bahan baku tetap berkurang sesuai komposisi produk.

d. Pastikan stok produk bertambah sesuai jumlah produksi.

e. Pastikan nilai HPP berhasil dihitung dan disimpan.

### Hasil Pengujian

| No | Pengujian | Hasil Yang Diharapkan | Hasil Aktual | Status |
|----|------------|----------------------|-------------|--------|
| 1 | Simpan Produksi | Data produksi tersimpan | Data tersimpan | PASS |
| 2 | Pengurangan Stok Bahan | Stok bahan berkurang | Stok berkurang | PASS |
| 3 | Penambahan Stok Produk | Stok produk bertambah | Stok bertambah | PASS |
| 4 | Perhitungan HPP | HPP berhasil dihitung | HPP berhasil dihitung | PASS |

---

# 2. Memperbaiki Bug dan Gangguan

### Skenario

Pengembang memperbaiki bug yang menyebabkan proses produksi tetap berjalan meskipun stok bahan baku tidak mencukupi.

### Tujuan

Memastikan bug telah diperbaiki dan tidak menimbulkan masalah baru.

### Langkah Pengujian

a. Jalankan produksi dengan stok bahan yang cukup.

b. Jalankan produksi dengan stok bahan yang kurang.

c. Pastikan sistem menolak produksi jika stok tidak mencukupi.

d. Pastikan fitur lain tetap berjalan normal.

### Hasil Pengujian

| No | Pengujian | Hasil Yang Diharapkan | Hasil Aktual | Status |
|----|------------|----------------------|-------------|--------|
| 1 | Stok mencukupi | Produksi berhasil | Produksi berhasil | PASS |
| 2 | Stok tidak mencukupi | Produksi ditolak | Produksi ditolak | PASS |
| 3 | Pengurangan stok | Berjalan normal | Berjalan normal | PASS |

---

# 3. Mengubah Infrastruktur

### Skenario

Sistem Inventory dipindahkan dari server pengembangan ke server produksi.

### Tujuan

Memastikan sistem tetap berjalan dengan baik setelah perubahan infrastruktur.

### Langkah Pengujian

a. Jalankan fitur produksi pada server baru.

b. Pastikan database dapat diakses.

c. Pastikan penyimpanan data produksi berjalan normal.

d. Pastikan proses update stok berjalan dengan baik.

### Hasil Pengujian

| No | Pengujian | Hasil Yang Diharapkan | Hasil Aktual | Status |
|----|------------|----------------------|-------------|--------|
| 1 | Koneksi Database | Berhasil terhubung | Berhasil terhubung | PASS |
| 2 | Simpan Produksi | Data tersimpan | Data tersimpan | PASS |
| 3 | Update Stok Bahan | Berhasil diperbarui | Berhasil diperbarui | PASS |
| 4 | Update Stok Produk | Berhasil diperbarui | Berhasil diperbarui | PASS |

---

## Kesimpulan

Berdasarkan hasil Regression Testing, seluruh fungsi produksi tetap berjalan dengan baik setelah dilakukan penambahan fitur, perbaikan bug, maupun perubahan infrastruktur. Tidak ditemukan gangguan baru yang mempengaruhi proses produksi pada Sistem Informasi Inventory Roti.
