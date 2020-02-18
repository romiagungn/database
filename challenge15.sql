ALTER TABLE mahasiswa ADD umur integer;
ALTER TABLE mata_kuliah ADD nama_matkul varchar(50);
ALTER TABLE mata_kuliah DROP COLUMN nama;

UPDATE mahasiswa SET umur = '18' WHERE nim = 'M001';
UPDATE mahasiswa SET umur = '21' WHERE nim = 'M002';
UPDATE mahasiswa SET umur = '24' WHERE nim = 'M003';
UPDATE mahasiswa SET umur = '17' WHERE nim = 'M004';
UPDATE mahasiswa SET umur = '19' WHERE nim = 'M005';

UPDATE kontrak SET nilai = 'A' WHERE id_kontrak = 'K001';
UPDATE kontrak SET nilai = 'B' WHERE id_kontrak = 'K002';
UPDATE kontrak SET nilai = 'E' WHERE id_kontrak = 'K003';
UPDATE kontrak SET nilai = 'D' WHERE id_kontrak = 'K004';
UPDATE kontrak SET nilai = 'C' WHERE id_kontrak = 'K005';

INSERT INTO kontrak (id_kontrak, nilai, nim, id_matkul, id_dosen) values 
('K006','B','M001','P004','D002'),
('K007','D','M001','P003','D002');

SELECT nim, nama, alamat, nama_jurusan FROM mahasiswa, jurusan
WHERE mahasiswa.jurusan = jurusan.id_jurusan;

SELECT nim, nama, alamat, umur FROM mahasiswa WHERE umur <= 20;

SELECT id_kontrak, nama, nilai FROM kontrak, mahasiswa 
WHERE kontrak.nim = mahasiswa.nim AND nilai <= 'B';

SELECT mahasiswa.nama, sum(sks) FROM kontrak 
JOIN mahasiswa ON kontrak.nim = mahasiswa.nim
JOIN mata_kuliah ON kontrak.id_matkul = mata_kuliah.id_matkul
GROUP BY mahasiswa.nama 
HAVING sum(sks) > 10;

SELECT id_kontrak, mahasiswa.nama, nilai, mata_kuliah.nama_matkul FROM kontrak
JOIN mahasiswa ON kontrak.nim = mahasiswa.nim
JOIN mata_kuliah ON kontrak.id_matkul = mata_kuliah.id_matkul
WHERE mata_kuliah.nama_matkul = 'data mining';

SELECT id_kontrak, dosen.nama_dosen, COUNT(nama) FROM kontrak
JOIN mahasiswa ON kontrak.nim = mahasiswa.nim
JOIN dosen ON kontrak.id_dosen = dosen.id_dosen
GROUP BY dosen.nama_dosen;

SELECT * FROM mahasiswa ORDER BY umur asc;


SELECT nama, alamat, nilai, nama_dosen, nama_matkul, nama_jurusan 
FROM kontrak
JOIN mahasiswa ON kontrak.nim = mahasiswa.nim
JOIN mata_kuliah ON mata_kuliah.id_matkul = kontrak.id_matkul
JOIN dosen ON kontrak.id_dosen = dosen.id_dosen
JOIN jurusan ON mahasiswa.jurusan = jurusan.id_jurusan
WHERE nilai BETWEEN 'D' AND 'E';