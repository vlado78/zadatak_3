
drop database if exists udruga;

create database udruga;

use udruga;


create table osoba(
sifra int not null primary key auto_increment,
ime varchar(20),
prezime varchar (20)
);

create table prostor(
sifra int primary key not null auto_increment,
naziv varchar(20),
osoba int
);

create table sticenik(
sifra int primary key not null auto_increment,
ime varchar(20),
prezime varchar (20),
prostor int
);
 
 
 
 alter table sticenik add foreign key (prostor) references prostor(sifra);
 
 alter table prostor add foreign key (osoba) references osoba(sifra);
 
 