# Pattern Testing

## Definisi

Pattern Testing adalah teknik Gray Box Testing yang digunakan untuk mengidentifikasi pola perilaku sistem berdasarkan data masukan dan keluaran yang dihasilkan. Pengujian ini bertujuan untuk memastikan bahwa sistem memberikan respons yang konsisten terhadap pola penggunaan tertentu.

Pada Sistem Informasi Inventory Roti, Pattern Testing diterapkan pada fitur Produksi untuk mengamati pola penggunaan sistem berdasarkan jumlah produksi, penggunaan bahan baku, serta perubahan stok yang terjadi setelah proses produksi dijalankan.

---

## Tujuan Pengujian

1. Mengidentifikasi pola penggunaan fitur produksi.
2. Memastikan sistem memberikan hasil yang konsisten pada kondisi yang sama.
3. Memastikan stok bahan baku berkurang sesuai pola komposisi produk.
4. Memastikan stok produk bertambah sesuai jumlah produksi yang dilakukan.
5. Memastikan perhitungan HPP mengikuti pola penggunaan bahan baku.

---

# 1. Identifikasi Pola Sistem

### Pola yang Diamati

| No | Aktivitas | Pola yang Diharapkan |
|----|------------|---------------------|
| 1 | Produksi dilakukan | Stok produk bertambah |
| 2 | Produksi dilakukan | Stok bahan berkurang |
| 3 | Jumlah produksi meningkat | Kebutuhan bahan meningkat |
| 4 | Jumlah produksi meningkat | HPP meningkat |
| 5 | Stok bahan tidak cukup | Produksi ditolak |

---

# 2. Menentukan Data Pengujian

| No | Jumlah Produksi | Kondisi Stok Bahan | Hasil Yang Diharapkan |
|----|----------------|-------------------|----------------------|
| 1 | 5 | Cukup | Produksi berhasil |
| 2 | 10 | Cukup | Produksi berhasil |
| 3 | 20 | Cukup | Produksi berhasil |
| 4 | 50 | Tidak cukup | Produksi ditolak |

---

# 3. Melakukan Pengujian

### Test Case

| No | Test Case | Expected Output | Actual Output | Status |
|----|-----------|-----------------|---------------|--------|
| TC01 | Produksi 5 unit | Produksi berhasil | Produksi berhasil | PASS |
| TC02 | Produksi 10 unit | Produksi berhasil | Produksi berhasil | PASS |
| TC03 | Produksi 20 unit | Produksi berhasil | Produksi berhasil | PASS |
| TC04 | Produksi 50 unit dengan stok tidak cukup | Produksi ditolak | Produksi ditolak | PASS |

---

# 4. Analisis Pola

### Hasil Pengamatan

| No | Pola Yang Diamati | Hasil |
|----|------------------|--------|
| 1 | Produksi menyebabkan stok produk bertambah | Sesuai |
| 2 | Produksi menyebabkan stok bahan berkurang | Sesuai |
| 3 | Semakin besar jumlah produksi maka kebutuhan bahan semakin besar | Sesuai |
| 4 | Semakin besar jumlah produksi maka HPP semakin besar | Sesuai |
| 5 | Produksi ditolak jika stok bahan tidak mencukupi | Sesuai |

---

## Kesimpulan

Berdasarkan hasil Pattern Testing, sistem menunjukkan pola yang konsisten terhadap setiap proses produksi yang dilakukan. Semakin besar jumlah produksi maka semakin besar pula penggunaan bahan baku dan nilai HPP yang dihasilkan. Selain itu, sistem berhasil menolak proses produksi apabila stok bahan baku tidak mencukupi. Dengan demikian fitur Produksi pada Sistem Informasi Inventory Roti telah berjalan sesuai dengan pola bisnis yang diharapkan.
