CREATE TABLE mahasiswa (
  NIM VARCHAR(9) PRIMARY KEY,
  NAMA VARCHAR(25),
  ALAMAT VARCHAR(30),
  KD_PRODI VARCHAR(2)
);

INSERT INTO mahasiswa
  VALUES
    ('100101001', 'WAHYUDI', 'SURAKARTA', '01'),
    ('100101002', 'SRIYONO', 'KLATEN', '01'),
    ('100202001', 'RUSTANTO', 'SUKOHARJO', '02'),
    ('100103001', 'MARIYATUN', 'WONOGIRI', '03'),
    ('100202002', 'SRI HANDAYANI', 'SRAGEN', '02'),
    ('100204001', 'HANDAYANI', 'KLATEN', '04'),
    ('100204002', 'SRI MARIYATUN', 'SURAKARTA', '04'),
    ('100103002', 'EKO WAHYUDI', 'SURAKARTA', '03');

ALTER TABLE mahasiswa ADD telepon VARCHAR(20);
