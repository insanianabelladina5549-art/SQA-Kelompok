Cause-Effect Relationship Testing

Definisi

Cause-Effect Relationship Testing merupakan metode Black Box Testing yang digunakan untuk mengidentifikasi hubungan antara kondisi masukan (cause) dan hasil keluaran (effect) pada sistem.

Tabel Cause dan Effect

Cause

Kode| Cause (Penyebab)
C1| Produk dipilih
C2| Jumlah produksi lebih dari 0
C3| Komposisi produk tersedia
C4| Stok bahan mencukupi

Effect

Kode| Effect (Akibat)
E1| Produksi berhasil diproses
E2| Produksi ditolak

Diagram Cause-Effect

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

Tabel Hubungan Cause dan Effect

Rule| C1| C2| C3| C4| E1| E2
R1| Y| Y| Y| Y| Y| N
R2| N| Y| Y| Y| N| Y
R3| Y| N| Y| Y| N| Y
R4| Y| Y| N| Y| N| Y
R5| Y| Y| Y| N| N| Y

Tabel Test Case

No| Test Case| Kondisi Input| Expected Output| Actual Output| Status
TC01| Semua kondisi terpenuhi| C1,C2,C3,C4| Produksi berhasil diproses| Produksi berhasil diproses| PASS
TC02| Produk tidak dipilih| C2,C3,C4| Produksi ditolak| Produksi ditolak| PASS
TC03| Jumlah produksi tidak valid| C1,C3,C4| Produksi ditolak| Produksi ditolak| PASS
TC04| Komposisi tidak tersedia| C1,C2,C4| Produksi ditolak| Produksi ditolak| PASS
TC05| Stok bahan tidak mencukupi| C1,C2,C3| Produksi ditolak| Produksi ditolak| PASS

Kesimpulan

Berdasarkan hasil Cause-Effect Relationship Testing, sistem telah menghasilkan output yang sesuai terhadap setiap kombinasi kondisi yang diuji. Produksi hanya dapat diproses apabila seluruh syarat terpenuhi, sedangkan jika salah satu syarat tidak terpenuhi maka sistem akan menolak proses produksi.
