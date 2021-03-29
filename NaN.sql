create database Act_NaN1
GO 
Use Act_NaN1
GO
create table Materias(
	ID bigint not null primary key,
	Nombre varchar(20) not null 
)

create table Alumnos(
	NroDoc bigint not null primary key,
	Nombre varchar(20) not null,
	Apellido varchar(20) not null,
	Fnac date not null,
)

create table alumnos_x_materias(
	NroDoc bigint not null  foreign key references Alumnos(NroDoc),
	IDmateria bigint not null  foreign key references Materias(ID) 
	
)

ALTER table alumnos_x_materias ADD PRIMARY KEY (NroDoc, IDmateria)

