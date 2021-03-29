
create database Actividad1_2
GO
use Actividad1_2
GO
create table datos_personales(
	NroDoc bigint not null primary key,
	Nombre varchar(50) not null,
	Apellido varchar(50) not null,
	FechaNac date not null,
	Género char null
)

create table datos_de_contacto(
	NroDoc bigint not null foreign key references datos_personales(NroDoc) primary key,
	Telefono bigint not null check(Telefono > 0),
	Mail varchar(100) not null unique
)
	

