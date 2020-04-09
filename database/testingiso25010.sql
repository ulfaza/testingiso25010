/*==============================================================*/
/* dbms name:      mysql 5.0                                    */
/* created on:     4/9/2020 1:58:49 pm                          */
/*==============================================================*/


drop table if exists aplikasi;

drop table if exists hasil_kuesioner;

drop table if exists karakteristik;

drop table if exists penilaian_karakteristik;

drop table if exists penilaian_sub_karakteristik;

drop table if exists responden;

drop table if exists sub_karakteristik;

drop table if exists user;

/*==============================================================*/
/* table: user                                                  */
/*==============================================================*/
create table user
(
   username             varchar(32) not null,
   nama                 varchar(128),
   role                 varchar(32),
   instansi             varchar(128),
   password             varchar(32),
   primary key (username)
);

/*==============================================================*/
/* table: aplikasi                                              */
/*==============================================================*/
create table aplikasi
(
   id_aplikasi          int not null auto_increment,
   username             varchar(32),
   nama_aplikasi        varchar(256),
   nama_instansi        varchar(256),
   total                float(6),
   primary key (id_aplikasi)
);

/*==============================================================*/
/* table: karakteristik                                         */
/*==============================================================*/
create table karakteristik
(
   id_karakteristik     int not null auto_increment,
   nama_karakteristik   varchar(64),
   primary key (id_karakteristik)
);

/*==============================================================*/
/* table: sub_karakteristik                                     */
/*==============================================================*/
create table sub_karakteristik
(
   id_sub_karakteristik int not null auto_increment,
   id_karakteristik     char(3) not null,
   nama_sub_karakteristik varchar(64),
   primary key (id_sub_karakteristik)
);

/*==============================================================*/
/* table: responden                                             */
/*==============================================================*/
create table responden
(
   id_responden         int not null auto_increment,
   nama_responden       varchar(256),
   primary key (id_responden)
);

/*==============================================================*/
/* table: penilaian_karakteristik                               */
/*==============================================================*/
create table penilaian_karakteristik
(
   id_penilaian_karakteristik int not null auto_increment,
   id_aplikasi          int,
   id_karakteristik     char(3),
   bobot_karakteristik  float(6),
   nilai_karakteristik  float(6),
   primary key (id_penilaian_karakteristik)
);

/*==============================================================*/
/* table: penilaian_sub_karakteristik                           */
/*==============================================================*/
create table penilaian_sub_karakteristik
(
   id_penilaian_sub_karakteristik int not null auto_increment,
   id_penilaian_karakteristik int not null,
   bobot_relatif        float(6),
   nilai_sub            float(6),
   primary key (id_penilaian_sub_karakteristik)
);

/*==============================================================*/
/* table: hasil_kuesioner                                       */
/*==============================================================*/
create table hasil_kuesioner
(
   id_penilaian_sub_karakteristik int not null,
   id_responden         int,
   nilai                int
);

alter table aplikasi add constraint fk_relationship_7 foreign key (username)
      references user (username) on delete cascade on update cascade;

alter table hasil_kuesioner add constraint fk_mendapat_nilai foreign key (id_penilaian_sub_karakteristik)
      references penilaian_sub_karakteristik (id_penilaian_sub_karakteristik) on delete cascade on update cascade;

alter table hasil_kuesioner add constraint fk_relationship_9 foreign key (id_responden)
      references responden (id_responden) on delete cascade on update cascade;

alter table penilaian_karakteristik add constraint fk_memilih foreign key (id_aplikasi)
      references aplikasi (id_aplikasi) on delete cascade on update cascade;

alter table penilaian_karakteristik add constraint fk_relationship_6 foreign key (id_karakteristik)
      references karakteristik (id_karakteristik) on delete cascade on update cascade;

alter table penilaian_sub_karakteristik add constraint fk_memiliki foreign key (id_penilaian_karakteristik)
      references penilaian_karakteristik (id_penilaian_karakteristik) on delete cascade on update cascade;

alter table sub_karakteristik add constraint fk_relationship_8 foreign key (id_karakteristik)
      references karakteristik (id_karakteristik) on delete cascade on update cascade;

