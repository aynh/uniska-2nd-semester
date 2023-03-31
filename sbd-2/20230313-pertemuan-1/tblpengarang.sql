CREATE TABLE tblpengarang
  (
    kd_peng INT AUTO_INCREMENT,
    nama VARCHAR(255),
    alamat VARCHAR(255),
    kota VARCHAR(255),
    jenkel ENUM('P', 'W'),
    PRIMARY KEY(kd_peng)
  );

INSERT INTO tblpengarang (nama, alamat, kota, jenkel)
  VALUES
    ('Asadi', 'Jl. Beo 34', 'Yogya', 'P'),
    ('Rian H.', 'Jl. Solo 123', 'Yogya', 'P'),
    ('Suadi Marwan', 'Jl. Semangka II/1', 'Bandung', 'P'),
    ('Siti Halimah', 'Jl. Sukaria 5', 'Solo', 'W'),
    ('Amir Hamzah', 'Jl. Gajah Mada 1BA', 'Kudus', 'P'),
    ('Suparman', 'Jl. Setia 1', 'Jakarta', 'P'),
    ('Jaja M', 'Jl. Hangtuah 3', 'Bandung', 'P'),
    ('Saman', 'Jl. Gedong Kuning', 'Yogya', 'P'),
    ('Anwar Junaidi', 'Jl. Tidar 6A', 'Magelang', 'P'),
    ('Fatmawati', 'Jl. Renjana 4', 'Bogor', 'W');
