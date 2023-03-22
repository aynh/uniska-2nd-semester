1. Berdasarkan tabel `tblpengarang`, tuliskan pernyataan SQL untuk menampilkan:

- Nama Pengarang yang kode pengarangnya adalah 5

```sql
SELECT nama FROM tblpengarang
  WHERE kd_peng = 5;
```

- Semua nama pengarang yang tinggal di Yogya

```sql
SELECT nama FROM tblpengarang
  WHERE kota = 'Yogya';
```

- Semua nama pengarang yang tidak tinggal di Yogya

```sql
SELECT nama FROM tblpengarang
  WHERE kota != 'Yogya';
-- atau
SELECT nama FROM tblpengarang
  WHERE NOT kota = 'Yogya';
```

- Semua nama pengarang berkelamin wanita

```sql
SELECT nama FROM tblpengarang
  WHERE jenkel = 'W';
```

- Nama, alamat, dan kota pengarang yang berkelamin pria

```sql
SELECT nama, alamat, kota FROM tblpengarang
  WHERE jenkel = 'P';
```

2. Berdasarkan tabel `tblbuku`, tuliskan pernyataan SQL untuk menampilkan:

- Semua judul buku yang ditulis oleh pengarang berkode 1

```sql
SELECT judul FROM tblbuku
  WHERE kd_peng = 1;
```

- Semua data (semua kolom dan semua baris)

```sql
SELECT * FROM tblbuku;
```

3. Tuliskan pernyataan untuk menciptakan tabel bernama `tblpegawai`, dengan komposisi sebagai berikut:

- NIP bertipe karakter, panjang 6
- Nama bertipe karakter, panjang 25
- Gaji bertipe numeric 8 digit

```sql
CREATE TABLE tblpegawai
  (
    nip CHAR(6) PRIMARY KEY,
    nama CHAR(25),
    gaji INT(8)
  );
```

4. Tuliskan pernyataan untuk membuat indeks dengan nama `idx_nip` yang dikenakan terhadap kolom NIP pada tabel `tblpegawai`

```sql
ALTER TABLE tblpegawai
  ADD idx_nip CHAR(6);
```

5. Bagaimana cara menghapus indeks `idx_nip` yang baru saja diciptakan?

```sql
ALTER TABLE tblpegawai
  DROP idx_nip;
```

6. Bagaimana perintahnya agar panjang Nama pada tabel `tblpegawai` tidak lagi 25 karakter, melainkan 35 karakter?

```sql
ALTER TABLE tblpegawai
  MODIFY nama CHAR(35);
```

7. Bagaimana caranya agar semua kota Yogya yang ada pada tabel `tblpengarang` diubah menjadi Yogyakarta?

```sql
UPDATE tblpengarang
  SET kota = 'Yogyakarta'
  WHERE kota = 'Yogya';
```

8. Apa perintah untuk menghapus data pegawai pada tabel `tblpegawai` yang NIP-nya 123456?

```sql
DELETE FROM tblpegawai
  WHERE nip = '123456';
```

9. Diinginkan untuk menghapus tabel `tblpegawai`, apa perintahnya?

```sql
DROP TABLE tblpegawai;
```
