# Black Box Testing
Black Box Testing adalah metode pengujian yang dilakukan tanpa melihat kode program, tetapi hanya fokus pada fungsi sistem berdasarkan input dan output.
## 1. Login
| No | Input Username | Input Password | Expected Output | Hasil |
|----|----------------|----------------|------------------|--------|
| 1  | admin          | admin123       | Masuk ke dashboard | ✅ |
| 2  | admin          | salah          | Muncul error login | ✅ |
| 3  | (kosong)       | admin123       | Tidak bisa login   | ✅ |
| 4  | admin          | (kosong)       | Tidak bisa login   | ✅ |

## 2. Tambah User
| No | Input Data      | Expected Output            | Hasil |
|----|----------------|----------------------------|--------|
| 1  | Data lengkap   | User berhasil ditambahkan  | ✅ |
| 2  | Data kosong    | Muncul error               | ✅ |

## 3. Data Bahan
| No | Aksi           | Expected Output                | Hasil |
|----|----------------|--------------------------------|--------|
| 1  | Tambah bahan  | Data masuk ke database         | ✅ |
| 2  | Edit bahan    | Data berhasil diperbarui       | ✅ |
| 3  | Hapus bahan   | Data berhasil dihapus          | ✅ |

## 4. Produksi
| No | Input                   | Expected Output        | Hasil |
|----|------------------------|------------------------|--------|
| 1  | Data produksi valid    | Produk bertambah       | ✅ |
| 2  | Stok bahan tidak cukup | Muncul error           | ✅ |

## 5. Pembelian Bahan
| No | Input              | Expected Output        | Hasil |
|----|--------------------|------------------------|--------|
| 1  | Input pembelian   | Stok bahan bertambah   | ✅ |

## 6. Laporan
| No | Aksi                   | Expected Output              | Hasil |
|----|------------------------|------------------------------|--------|
| 1  | Lihat laporan margin  | Data tampil                  | ✅ |
| 2  | Cetak PDF laporan     | File berhasil diunduh        | ✅ |
