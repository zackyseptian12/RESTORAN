CREATE TABLE transaksi(
    id_transaksi VARCHAR (20) NOT NULL,
    id_user VARCHAR (50) NOT NULL,
    id_order VARCHAR(100) NOT NULL,
    tanggal DATE NOT NULL,
    total_bayar INTEGER NOT NULL,
    updated_at TIMESTAMP,
    PRIMARY KEY (id_transaksi)
);


CREATE TABLE tb_user(
    id_user VARCHAR (50) NOT NULL,
    username VARCHAR (100) NOT NULL,
    password VARCHAR (100)  NOT NULL,
    nama_user VARCHAR (50) NOT NULL,
    id_level INTEGER NOT NULL,
    updated_at TIMESTAMP,
    PRIMARY KEY (id_user)
);

CREATE TABLE tb_order(
    id_order VARCHAR (20) NOT NULL,
    no_meja INTEGER NOT NULL,
    tanggal DATE  NOT NULL,
    id_user VARCHAR (100) NOT NULL,
    keterangan VARCHAR (100) NOT NULL,
    status_order VARCHAR (100) NOT NULL,
    updated_at TIMESTAMP,
    PRIMARY KEY (id_order)
);


CREATE TABLE tb_level(
    id_level INTEGER NOT NULL,
    nama_level VARCHAR (100) NOT NULL,
    PRIMARY KEY (id_level)
);

CREATE TABLE detail_order(
    id_detail_order VARCHAR (100) NOT NULL,
    id_order VARCHAR (100) NOT NULL,
    id_masakan VARCHAR (100) NOT NULL,
    keterangan VARCHAR (100) NOT NULL,
    status_detail_order VARCHAR (100) NOT NULL,
    PRIMARY KEY (id_detail_order)
);

CREATE TABLE masakan(
    id_masakan VARCHAR (100) NOT NULL,
    nama_masakan VARCHAR (100) NOT NULL,
    harga INTEGER NOT NULL,
    status_masakan VARCHAR (100) NOT NULL,
    PRIMARY KEY (id_masakan)
);