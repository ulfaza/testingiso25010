/*==============================================================*/
/* dbms name:      mysql 5.0                                    */
/* created on:     4/9/2020 1:58:49 pm                          */
/*==============================================================*/


DROP TABLE IF EXISTS aplikasi;

DROP TABLE IF EXISTS hasil_kuesioner;

DROP TABLE IF EXISTS karakteristik;

DROP TABLE IF EXISTS penilaian_karakteristik;

DROP TABLE IF EXISTS penilaian_sub_karakteristik;

DROP TABLE IF EXISTS responden;

DROP TABLE IF EXISTS sub_karakteristik;

DROP TABLE IF EXISTS users;

/*==============================================================*/
/* table: user                                                  */
/*==============================================================*/
CREATE TABLE users
(
   username             VARCHAR(32) NOT NULL,
   nama                 VARCHAR(128),
   role                 VARCHAR(32),
   instansi             VARCHAR(128),
   pwd             VARCHAR(32),
   PRIMARY KEY (username)
);

/*==============================================================*/
/* table: aplikasi                                              */
/*==============================================================*/
CREATE TABLE aplikasi
(
   id_aplikasi          INT NOT NULL AUTO_INCREMENT,
   username             VARCHAR(32),
   nama_aplikasi        VARCHAR(256),
   nama_instansi        VARCHAR(256),
   total                FLOAT(6),
   PRIMARY KEY (id_aplikasi)
);

/*==============================================================*/
/* table: karakteristik                                         */
/*==============================================================*/
CREATE TABLE karakteristik
(
   id_karakteristik     INT NOT NULL AUTO_INCREMENT,
   nama_karakteristik   VARCHAR(64),
   PRIMARY KEY (id_karakteristik)
);

/*==============================================================*/
/* table: sub_karakteristik                                     */
/*==============================================================*/
CREATE TABLE sub_karakteristik
(
   id_sub_karakteristik INT NOT NULL AUTO_INCREMENT,
   id_karakteristik     INT NOT NULL,
   nama_sub_karakteristik VARCHAR(64),
   PRIMARY KEY (id_sub_karakteristik)
);

/*==============================================================*/
/* table: responden                                             */
/*==============================================================*/
CREATE TABLE responden
(
   id_responden         INT NOT NULL AUTO_INCREMENT,
   nama_responden       VARCHAR(256),
   PRIMARY KEY (id_responden)
);

/*==============================================================*/
/* table: penilaian_karakteristik                               */
/*==============================================================*/
CREATE TABLE penilaian_karakteristik
(
   id_penilaian_karakteristik INT NOT NULL AUTO_INCREMENT,
   id_aplikasi          INT,
   id_karakteristik     INT,
   bobot_karakteristik  FLOAT(6),
   nilai_karakteristik  FLOAT(6),
   PRIMARY KEY (id_penilaian_karakteristik)
);

/*==============================================================*/
/* table: penilaian_sub_karakteristik                           */
/*==============================================================*/
CREATE TABLE penilaian_sub_karakteristik
(
   id_penilaian_sub_karakteristik INT NOT NULL AUTO_INCREMENT,
   id_penilaian_karakteristik INT NOT NULL,
   bobot_relatif        FLOAT(6),
   nilai_sub            FLOAT(6),
   PRIMARY KEY (id_penilaian_sub_karakteristik)
);

/*==============================================================*/
/* table: hasil_kuesioner                                       */
/*==============================================================*/
CREATE TABLE hasil_kuesioner
(
   id_penilaian_sub_karakteristik INT NOT NULL,
   id_responden         INT,
   nilai                INT
);

ALTER TABLE aplikasi ADD CONSTRAINT fk_relationship_7 FOREIGN KEY (username)
      REFERENCES users (username) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE sub_karakteristik ADD CONSTRAINT fk_relationship_8 FOREIGN KEY (id_karakteristik)
      REFERENCES karakteristik (id_karakteristik) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE penilaian_karakteristik ADD CONSTRAINT fk_memilih FOREIGN KEY (id_aplikasi)
      REFERENCES aplikasi (id_aplikasi) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE penilaian_karakteristik ADD CONSTRAINT fk_relationship_6 FOREIGN KEY (id_karakteristik)
      REFERENCES karakteristik (id_karakteristik) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE penilaian_sub_karakteristik ADD CONSTRAINT fk_memiliki FOREIGN KEY (id_penilaian_karakteristik)
      REFERENCES penilaian_karakteristik (id_penilaian_karakteristik) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE hasil_kuesioner ADD CONSTRAINT fk_mendapat_nilai FOREIGN KEY (id_penilaian_sub_karakteristik)
      REFERENCES penilaian_sub_karakteristik (id_penilaian_sub_karakteristik) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE hasil_kuesioner ADD CONSTRAINT fk_relationship_9 FOREIGN KEY (id_responden)
      REFERENCES responden (id_responden) ON DELETE CASCADE ON UPDATE CASCADE;

