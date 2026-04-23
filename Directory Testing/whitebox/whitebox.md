# White Box Testing

Pengujian dilakukan dengan melihat logika program pada aplikasi inventory.

## 1. Login (proses_login.php)

Flow:
1. User input username & password
2. Sistem mengambil data dari database
3. Validasi:
   - Jika cocok → redirect ke dashboard
   - Jika tidak → kembali ke login

Pengujian:
- IF username & password benar → TRUE ✅
- IF salah → FALSE ❌



## 2. Tambah User

Flow:
1. Input data user
2. Sistem validasi form
3. Simpan ke database

Pengujian:
- IF data lengkap → data tersimpan ✅
- IF kosong → error ❌



## 3. Data Bahan (CRUD)

Flow:
1. Tambah / edit / hapus bahan
2. Sistem update database

Pengujian:
- Insert → berhasil masuk DB ✅
- Update → data berubah ✅
- Delete → data terhapus ✅
