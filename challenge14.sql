CREATE TABLE jurusan(
    id_jurusan varchar(50) primary key,
    nama_jurusan varchar(50)
);

CREATE TABLE mahasiswa(
    nim varchar(50) primary key,
    nama varchar(50),
    alamat varchar(50),
    id_jurusan varchar(50)
);

CREATE TABLE mata_kuliah(
    id_matkul varchar(50) primary key,
    nama varchar(50),
    sks varchar(50)
);

CREATE TABLE dosen(
    id_dosen varchar(50) primary key,
    nama varchar(50)
);

CREATE TABLE kontrak(
    id_kontrak varchar(50) primary key,
    nilai integer,
    nim varchar(50),
    id_matkul varchar(50),
    id_dosenn VARCHAR (50)    
);
