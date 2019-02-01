create database HCURSOS_TARDE;

use HCURSOS_TARDE;

create table CATEGORIAS (
	ID int identity primary key
	,NOME varchar(250) not null unique
);

create table PROFESSORES (
	ID int identity primary key
	,NOME varchar(250) not null  
);

create table ALUNOS (
	ID int identity primary key
	,NOME varchar(250) not null
);

create table CURSOS (
	ID int identity primary key
	,NOME varchar(250) not null
	,TITULO varchar(255) not null
	,ID_CATEGORIA int foreign key references CATEGORIAS(ID)
	,ID_PROFESSOR int foreign key references PROFESSORES(ID)
); 

create table CURSOS_ALUNOS (
	ID_ALUNO int foreign key references ALUNOS(ID) not null 
	,ID_CURSO int foreign key references CURSOS(ID) not null
);
