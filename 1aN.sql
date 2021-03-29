create database Act_1aN
GO
use Act_1aN
GO
create table clubes(
	Nombre varchar(50) not null primary key,
	Localidad varchar(50) not null,
	Categoría char not null,
)

create table jugadores(
	Nombre varchar(20) not null,
	Apellido varchar(20) not null,
	FechaNac date not null,
	Club varchar(50) not null foreign key references clubes(Nombre)
)