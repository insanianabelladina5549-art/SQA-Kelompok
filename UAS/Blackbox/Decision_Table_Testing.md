Decision Table Testing
Definisi

Decision Table Testing merupakan metode Black Box Testing yang digunakan untuk menguji kombinasi beberapa kondisi yang menghasilkan keputusan tertentu pada sistem.

Tabel Kondisi
Kode	Kondisi
C1	Produk dipilih
C2	Jumlah produksi > 0
C3	Komposisi produk tersedia
C4	Stok bahan mencukupi
Tabel Aksi
Kode	Aksi
A1	Produksi berhasil diproses
A2	Produksi ditolak
Tabel Keputusan (Decision Table)
Kondisi / Aksi	Rule 1	Rule 2	Rule 3	Rule 4
C1	Y	N	Y	Y
C2	Y	Y	N	Y
C3	Y	Y	Y	N
C4	Y	Y	Y	Y
A1	Y	N	N	N
A2	N	Y	Y	Y
Tabel Test Case
No	Test Case	Kondisi	Expected Output	Actual Output	Status
TC01	Semua kondisi terpenuhi	C1, C2, C3, C4	Produksi berhasil diproses	Produksi berhasil diproses	PASS
TC02	Produk tidak dipilih	C2, C3, C4	Produksi ditolak	Produksi ditolak	PASS
TC03	Jumlah produksi tidak valid	C1, C3, C4	Produksi ditolak	Produksi ditolak	PASS
TC04	Komposisi tidak tersedia	C1, C2, C4	Produksi ditolak	Produksi ditolak	PASS
 Kesimpulan

Berdasarkan hasil pengujian menggunakan Decision Table Testing, seluruh kombinasi kondisi menghasilkan keputusan yang sesuai dengan aturan bisnis pada fitur Produksi, sehingga sistem dapat dikatakan berjalan dengan baik dan valid.
