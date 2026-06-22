# GRAY BOX TESTING - SISTEM INFORMASI PRODUKSI

## Definisi Gray Box Testing

Gray Box Testing adalah metode pengujian perangkat lunak yang merupakan kombinasi antara Black Box dan White Box Testing. Pengujian dilakukan dengan memahami sebagian struktur internal sistem serta fungsionalitas eksternal untuk menghasilkan test case yang lebih efektif.

---

# 2-1 ORTHOGONAL ARRAY TESTING

## Definisi

Orthogonal Array Testing adalah teknik pengujian yang menggunakan kombinasi faktor dan level untuk menghasilkan test case yang efisien dengan cakupan pengujian maksimal.

## Faktor dan Level

| Faktor | Level |
|--------|------|
| Produk | Ada / Tidak Ada |
| Jumlah Produksi | Valid / Tidak Valid |
| Komposisi Bahan | Lengkap / Tidak Lengkap |
| Stok Bahan | Cukup / Tidak Cukup |

## Tabel Pengujian Orthogonal

| No | Produk | Jumlah | Komposisi | Stok | Output |
|----|--------|--------|------------|------|--------|
| 1 | Ada | Valid | Lengkap | Cukup | Produksi berhasil |
| 2 | Tidak Ada | Valid | Lengkap | Cukup | Produksi ditolak |
| 3 | Ada | Tidak Valid | Lengkap | Cukup | Produksi ditolak |
| 4 | Ada | Valid | Tidak Lengkap | Cukup | Produksi ditolak |
| 5 | Ada | Valid | Lengkap | Tidak Cukup | Produksi ditolak |

## Kesimpulan

Sistem mampu menangani kombinasi faktor produksi dengan baik dan menolak proses jika terdapat kondisi yang tidak terpenuhi.

---

# 2-2 MATRIX TESTING

## Definisi

Matrix Testing adalah teknik pengujian yang menggunakan tabel kombinasi input untuk melihat hubungan antar parameter sistem.

## Parameter

- Produk
- Jumlah Produksi
- Bahan Baku
- Stok

## Tabel Matrix

| Test Case | Produk | Jumlah | Bahan | Stok | Hasil |
|-----------|--------|--------|--------|------|------|
| TC1 | Ada | 10 | Ada | Cukup | Berhasil |
| TC2 | Tidak Ada | 10 | Ada | Cukup | Gagal |
| TC3 | Ada | 0 | Ada | Cukup | Gagal |
| TC4 | Ada | 10 | Tidak Ada | Cukup | Gagal |
| TC5 | Ada | 10 | Ada | Kurang | Gagal |

## Kesimpulan

Hasil pengujian menunjukkan sistem konsisten dalam memvalidasi kombinasi input produksi.

---

# 2-3 REGRESSION TESTING

## Definisi

Regression Testing adalah pengujian untuk memastikan perubahan sistem tidak merusak fitur yang sudah ada.

## Skenario Pengujian

### 1. Penambahan fitur produksi
- Sistem tetap bisa menambah bahan baku
- Sistem tetap bisa membuat produksi baru

### 2. Perubahan stok bahan
- Stok tetap terupdate setelah produksi
- Tidak ada data yang hilang

### 3. Perubahan komposisi produk
- Produksi tetap berjalan sesuai update

## Tabel Test Case

| No | Skenario | Hasil Diharapkan | Hasil Aktual | Status |
|----|----------|------------------|--------------|--------|
| 1 | Tambah produksi | Berhasil | Berhasil | PASS |
| 2 | Update stok | Stok berubah | Stok berubah | PASS |
| 3 | Edit bahan | Data aman | Data aman | PASS |

## Kesimpulan

Tidak ditemukan error setelah perubahan sistem produksi dan bahan baku.

---

# 2-4 PATTERN TESTING

## Definisi

Pattern Testing adalah pengujian eksploratif untuk menemukan bug dengan pendekatan skenario pengguna nyata.

## Skenario Pengujian

### 1. Pengujian normal
- Tambah produksi
- Input bahan baku
- Proses transaksi

### 2. Pengujian tidak normal
- Jumlah produksi 0
- Stok minus
- Data kosong

### 3. Pengujian stabilitas
- Produksi berulang
- Input cepat berturut-turut

### 4. Pengujian usability
- Kemudahan penggunaan form produksi
- Navigasi menu bahan baku

## Kesimpulan

Sistem cukup stabil, mudah digunakan, dan mampu menangani input tidak valid dengan baik.

---

# KESIMPULAN UMUM GRAY BOX TESTING

Berdasarkan seluruh pengujian Gray Box Testing pada sistem produksi dan bahan baku, sistem dinyatakan:

- Stabil
- Konsisten
- Aman terhadap input tidak valid
- Siap digunakan untuk proses produksi

Semua modul berjalan sesuai dengan kebutuhan sistem.
