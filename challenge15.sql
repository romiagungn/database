SELECT nim, nama, alamat, nama_jurusan FROM mahasiswa, jurusan
WHERE mahasiswa.jurusan = jurusan.id_jurusan;