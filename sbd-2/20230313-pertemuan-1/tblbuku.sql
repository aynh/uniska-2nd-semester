CREATE TABLE tblbuku
  (
    kd_buku INT AUTO_INCREMENT PRIMARY KEY,
    judul VARCHAR(255),
    kd_peng INT,
    FOREIGN KEY (kd_peng) REFERENCES tblpengarang(kd_peng)
  );

INSERT INTO tblbuku (judul, kd_peng)
  VALUES
    ('Pemrograman C++', 1),
    ('Pengantar Basis Data', 1),
    ('Panduan Microsoft Office', 2),
    ('Pemrograman Visual dBASE', 1),
    ('System Pakar', 4),
    ('Pemrograman Web', 3),
    ('Visual C++', 6),
    ('Qbasic', 5),
    ('Pemrograman Pascal', 8),
    ('Pemrograman Delphi', 8);
