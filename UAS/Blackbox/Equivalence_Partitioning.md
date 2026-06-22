#  Equivalence Partitioning (EP)

##  Definisi
Equivalence Partitioning merupakan metode Black Box Testing yang membagi data input ke dalam kelompok valid dan invalid. Pengujian dilakukan dengan mengambil perwakilan dari setiap kelompok sehingga jumlah pengujian dapat dikurangi tanpa mengurangi cakupan pengujian.



##  Tabel Equivalent Class

| No | Nama Kolom        | Tipe Data | Batasan Data                              |
|----|------------------|-----------|-------------------------------------------|
| 1  | id_produk        | Integer   | Produk harus tersedia                     |
| 2  | jumlah_produksi  | Integer   | Nilai > 0                                 |
| 3  | komposisi_produk | Integer   | Komposisi harus tersedia                  |
| 4  | stok_bahan       | Integer   | Stok harus mencukupi kebutuhan produksi   |


##  Tabel Kasus Uji

| No | Field Name        | Kelas Valid           | Kelas Invalid              |
|----|------------------|-----------------------|----------------------------|
| 1  | id_produk        | Produk tersedia       | Produk tidak tersedia      |
| 2  | jumlah_produksi  | Nilai > 0             | Nilai ≤ 0                  |
| 3  | komposisi_produk | Komposisi tersedia    | Komposisi tidak tersedia   |
| 4  | stok_bahan       | Stok mencukupi        | Stok tidak mencukupi       |



##  Tabel Test Case

| No   | Test Case                          | Input Produk             | Input Jumlah | Expected Output              | Actual Output                | Status |
|------|------------------------------------|--------------------------|--------------|------------------------------|------------------------------|--------|
| TC01 | Produk tersedia dan jumlah valid   | Produk A                 | 10           | Produksi berhasil diproses  | Produksi berhasil diproses  | PASS   |
| TC02 | Produk tidak tersedia              | Produk Tidak Ada         | 10           | Produksi ditolak            | Produksi ditolak            | PASS   |
| TC03 | Jumlah produksi valid              | Produk A                 | 5            | Produksi berhasil diproses  | Produksi berhasil diproses  | PASS   |
| TC04 | Jumlah produksi tidak valid        | Produk A                 | 0            | Produksi ditolak            | Produksi ditolak            | PASS   |
| TC05 | Komposisi tersedia                 | Produk A                 | 10           | Produksi berhasil diproses  | Produksi berhasil diproses  | PASS   |
| TC06 | Komposisi tidak tersedia           | Produk tanpa komposisi   | 10           | Produksi ditolak            | Produksi ditolak            | PASS   |
| TC07 | Stok bahan mencukupi               | Produk A                 | 20           | Produksi berhasil diproses  | Produksi berhasil diproses  | PASS   |
| TC08 | Stok bahan tidak mencukupi         | Produk A                 | 50           | Produksi ditolak            | Produksi ditolak            | PASS   |



##  Kesimpulan

Berdasarkan hasil pengujian Equivalence Partitioning, sistem mampu membedakan data valid dan data invalid dengan baik. Seluruh input yang memenuhi aturan sistem berhasil diproses, sedangkan input yang tidak memenuhi aturan berhasil ditolak sesuai dengan kebutuhan fitur Produksi.
