# Grey Box Testing

Pengujian dilakukan dengan mengetahui sebagian struktur sistem.

## 1. Login

- Tester tahu tabel user di database
- Cek:
  - validasi input
  - query database
  - hasil login

Hasil:
Login berjalan sesuai logika sistem ✅


## 2. Produksi

- Tester tahu relasi bahan & produk
- Cek:
  - pengurangan stok bahan
  - penambahan produk

Hasil:
Stok otomatis berubah sesuai proses produksi ✅


## 3. Pembelian

- Tester cek database stok
- Setelah input:
  - stok bertambah

Hasil:
Sistem sinkron dengan database ✅
