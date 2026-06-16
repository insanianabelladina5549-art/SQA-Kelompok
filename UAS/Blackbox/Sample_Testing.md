#  Sample Testing

##  Definisi
Sample Testing merupakan metode Black Box Testing yang dilakukan dengan mengambil beberapa sampel data sebagai perwakilan dari keseluruhan data yang akan diuji.



##  Tabel Sampel Pengujian

| No | Data Sampel                  | Keterangan      |
|----|-----------------------------|-----------------|
| 1  | Produksi 5 unit             | Sampel kecil    |
| 2  | Produksi 10 unit            | Sampel sedang   |
| 3  | Produksi 20 unit            | Sampel besar    |
| 4  | Produksi dengan stok kurang | Sampel error    |



##  Tabel Test Case

| No   | Test Case                          | Input        | Expected Output        | Actual Output          | Status |
|------|------------------------------------|-------------|------------------------|------------------------|--------|
| TC01 | Produksi skala kecil              | 5 unit      | Produksi berhasil      | Produksi berhasil      | PASS   |
| TC02 | Produksi skala sedang             | 10 unit     | Produksi berhasil      | Produksi berhasil      | PASS   |
| TC03 | Produksi skala besar              | 20 unit     | Produksi berhasil      | Produksi berhasil      | PASS   |
| TC04 | Produksi dengan stok tidak cukup  | 50 unit     | Produksi ditolak       | Produksi ditolak       | PASS   |



##  Kesimpulan

Berdasarkan hasil Sample Testing, sistem mampu memproses berbagai sampel data produksi dengan baik dan menghasilkan output yang sesuai dengan kebutuhan sistem.
