ALTER TABLE mahasiswa ADD umur integer;

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

SELECT nim, nama, alamat, nama_jurusan FROM mahasiswa, jurusan
WHERE mahasiswa.jurusan = jurusan.id_jurusan;

SELECT nim, nama, alamat, umur FROM mahasiswa WHERE umur <= 20;

