# Cause and Effect Relationship Testing

## Definisi

Cause and Effect Relationship Testing merupakan metode Black Box Testing yang digunakan untuk mengidentifikasi hubungan antara kondisi masukan (cause) dan keluaran sistem (effect). Pengujian ini bertujuan untuk memastikan sistem produksi hanya dapat diproses apabila seluruh persyaratan terpenuhi.



## Tujuan Pengujian

Tujuan pengujian ini adalah:

- Memastikan produk telah dipilih.
- Memastikan jumlah produksi lebih dari 0.
- Memastikan komposisi produk tersedia.
- Memastikan stok bahan baku mencukupi.
- Memastikan sistem menolak proses produksi apabila salah satu syarat tidak terpenuhi.



## Tabel Cause dan Effect

### Cause (Penyebab)

| Kode | Cause |
|------|-------|
| C1 | Produk dipilih |
| C2 | Jumlah produksi lebih dari 0 |
| C3 | Komposisi produk tersedia |
| C4 | Stok bahan baku mencukupi |

### Effect (Akibat)

| Kode | Effect |
|------|--------|
| E1 | Produksi berhasil diproses |
| E2 | Produksi ditolak |



## Diagram Cause and Effect

```text
C1 ─┐
    │
C2 ─┼──> E1 (Produksi Berhasil)
    │
C3 ─┤
    │
C4 ─┘

Jika salah satu kondisi tidak terpenuhi
↓
E2 (Produksi Ditolak)
```



## Tabel Hubungan Cause dan Effect

| Rule | C1 | C2 | C3 | C4 | E1 | E2 |
|------|----|----|----|----|----|----|
| R1 | Y | Y | Y | Y | Y | N |
| R2 | N | Y | Y | Y | N | Y |
| R3 | Y | N | Y | Y | N | Y |
| R4 | Y | Y | N | Y | N | Y |
| R5 | Y | Y | Y | N | N | Y |



## Tabel Test Case
| No | Test Case | Kondisi Input | Expected Output | Actual Output | Status |
|----|-----------|---------------|-----------------|---------------|--------|
| TC01 | Semua kondisi terpenuhi | C1, C2, C3, C4 | Produksi berhasil diproses | Produksi berhasil diproses | PASS |
| TC02 | Produk tidak dipilih | C2, C3, C4 | Produksi ditolak | Produksi ditolak | PASS |
| TC03 | Jumlah produksi tidak valid | C1, C3, C4 | Produksi ditolak | Produksi ditolak | PASS |
| TC04 | Komposisi produk belum tersedia | C1, C2, C4 | Produksi ditolak | Produksi ditolak | PASS |
| TC05 | Stok bahan baku tidak mencukupi | C1, C2, C3 | Produksi ditolak | Produksi ditolak | PASS |



## Kesimpulan

Berdasarkan hasil Cause and Effect Relationship Testing, sistem produksi telah berjalan sesuai dengan kebutuhan sistem. Produksi hanya dapat diproses apabila seluruh kondisi terpenuhi, yaitu produk dipilih, jumlah produksi valid, komposisi produk tersedia, dan stok bahan baku mencukupi. Jika salah satu kondisi tidak terpenuhi, sistem akan menolak proses produksi.
