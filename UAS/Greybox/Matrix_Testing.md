# Matrix Testing

## Definisi

Matrix Testing adalah teknik Gray Box Testing yang digunakan untuk menguji berbagai kombinasi input dan kondisi dalam suatu aplikasi. Teknik ini membantu mengidentifikasi kesalahan yang muncul akibat interaksi antar parameter yang berbeda dalam sistem.

Pada Sistem Informasi Inventory Roti, Matrix Testing diterapkan pada fitur Produksi untuk memastikan proses produksi berjalan dengan baik berdasarkan kombinasi kondisi produk, komposisi, jumlah produksi, dan stok bahan baku.

---

## Tujuan Pengujian

1. Memastikan proses produksi dapat dilakukan apabila seluruh syarat terpenuhi.
2. Memastikan sistem menolak produksi apabila salah satu syarat tidak terpenuhi.
3. Memastikan stok bahan baku diperiksa sebelum produksi dijalankan.
4. Memastikan data komposisi produk digunakan dengan benar dalam proses produksi.

---

## 1. Definisikan Parameter dan Kondisi

### Parameter Pengujian

| Parameter | Kondisi Valid | Kondisi Tidak Valid |
|------------|------------|------------|
| Produk | Produk tersedia | Produk tidak tersedia |
| Komposisi Produk | Komposisi tersedia | Komposisi tidak tersedia |
| Jumlah Produksi | > 0 | ≤ 0 |
| Stok Bahan Baku | Mencukupi | Tidak mencukupi |

---

## 2. Membuat Tabel Matriks

| No | Produk | Komposisi | Jumlah Produksi | Stok Bahan | Hasil Yang Diharapkan |
|----|---------|------------|----------------|------------|----------------------|
| 1 | Ada | Ada | Valid | Cukup | Produksi berhasil |
| 2 | Tidak Ada | Ada | Valid | Cukup | Produksi ditolak |
| 3 | Ada | Tidak Ada | Valid | Cukup | Produksi ditolak |
| 4 | Ada | Ada | Tidak Valid | Cukup | Produksi ditolak |
| 5 | Ada | Ada | Valid | Tidak Cukup | Produksi ditolak |

---

## 3. Menjalankan Test Case

| No | Test Case | Expected Output | Actual Output | Status |
|----|-----------|-----------------|---------------|--------|
| TC01 | Produk tersedia, komposisi tersedia, jumlah valid, stok cukup | Produksi berhasil | Produksi berhasil | PASS |
| TC02 | Produk tidak tersedia | Produksi ditolak | Produksi ditolak | PASS |
| TC03 | Komposisi tidak tersedia | Produksi ditolak | Produksi ditolak | PASS |
| TC04 | Jumlah produksi tidak valid | Produksi ditolak | Produksi ditolak | PASS |
| TC05 | Stok bahan tidak mencukupi | Produksi ditolak | Produksi ditolak | PASS |

---

## 4. Analisis Hasil

Berdasarkan hasil pengujian matriks, sistem berhasil memproses produksi ketika seluruh parameter berada pada kondisi valid. Sebaliknya, sistem menolak proses produksi ketika salah satu parameter tidak memenuhi syarat, seperti produk tidak tersedia, komposisi belum dibuat, jumlah produksi tidak valid, atau stok bahan baku tidak mencukupi.

---

## Kesimpulan

Berdasarkan Matrix Testing yang telah dilakukan, seluruh kombinasi kondisi menghasilkan keluaran yang sesuai dengan kebutuhan sistem. Dengan demikian fitur Produksi telah memenuhi aturan bisnis yang diterapkan pada Sistem Informasi Inventory Roti.
