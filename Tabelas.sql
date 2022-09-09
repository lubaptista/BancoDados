create database cadastro;

create table alunos (
Nome varchar(100) NOT NULL,
RA int NOT NULL,
Email varchar(100) NOT NULL,
Nascimento date
);

describe alunos;

create table materias (
Nome varchar(100),
Id_mat int,
Sala tinyint
);

describe materias;

create table professor (
Nome varchar (100),
Email varchar (100),
Materia int
);

describe professor;