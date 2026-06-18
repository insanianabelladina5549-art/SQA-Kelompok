# Boundary Value Analysis (BVA)

## Definisi
Boundary Value Analysis (BVA) merupakan metode Black Box Testing yang digunakan untuk menguji nilai batas minimum dan maksimum dari suatu input agar sistem dapat menangani data dengan benar.

---

## Tabel Equivalent Class

| No | Nama Kolom       | Tipe Data | Batasan Data                    |
|----|----------------|----------|--------------------------------|
| 1  | id_produk      | Integer  | Produk harus tersedia           |
| 2  | jumlah_produksi| Integer  | Nilai ≥ 1                      |
| 3  | stok_bahan     | Integer  | Nilai ≥ kebutuhan produksi     |

---

## Tabel Batasan Equivalent Class

| No | Field Name       | Boundary        | Value | Input Data |
|----|----------------|----------------|-------|-----------|
| 1  | jumlah_produksi| Minimum        | 1     | 1         |
| 2  | jumlah_produksi| Minimum - 1    | 0     | 0         |
| 3  | jumlah_produksi| Normal         | 10    | 10        |
| 4  | stok_bahan     | Equal Boundary | 20    | 20        |
| 5  | stok_bahan     | Boundary - 1   | 19    | 19        |

---

## Tabel Test Case

| No   | Test Case                              | Input Produk | Input Jumlah Produksi | Expected Output                              | Actual Output                                | Status |
|------|----------------------------------------|-------------|----------------------|----------------------------------------------|----------------------------------------------|--------|
| TC01 | Nilai minimum jumlah produksi          | Produk A    | 1                    | Produksi berhasil diproses                   | Produksi berhasil diproses                   | PASS   |
| TC02 | Nilai di bawah batas minimum           | Produk A    | 0                    | Produksi ditolak                             | Produksi ditolak                             | PASS   |
| TC03 | Nilai normal                          | Produk A    | 10                   | Produksi berhasil diproses                   | Produksi berhasil diproses                   | PASS   |
| TC04 | Stok sama dengan kebutuhan produksi    | Produk A    | 20                   | Produksi berhasil diproses                   | Produksi berhasil diproses                   | PASS   |
| TC05 | Stok kurang dari kebutuhan produksi    | Produk A    | 19                   | Produksi ditolak karena stok tidak mencukupi | Produksi ditolak karena stok tidak mencukupi | PASS   |

---

## Kesimpulan

Berdasarkan hasil pengujian Boundary Value Analysis, seluruh nilai batas yang diuji menghasilkan output sesuai dengan yang diharapkan. Sistem mampu menangani kondisi batas minimum, nilai normal, serta kondisi ketika stok bahan tidak mencukupi sehingga fitur Produksi berjalan dengan baik.
