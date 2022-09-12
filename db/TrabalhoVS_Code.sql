use Trabalho_X;

create table alunos (
    NOME varchar(100) NOT NULL,
    RA int(8),
    EMAIL varchar(100) NOT NULL
);

create table materias (
    NOME varchar(100),
    ID_MATERIA int,
    SALA varchar(10)
);

create table professor (
    NOME varchar (100),
    EMAIL varchar (100),
    MATERIA int
);

insert into alunos (NOME, RA, EMAIL)
values
    ('Beatriz Newman','22000001','beatriz.newman@puccampinas.edu.br'),
    ('Daniela Hayashi','22000002','daniela.hayashi@puccampinas.edu.br'),
    ('Flavia Medeiros','22000003','flavia.medeiros@puccampinas.edu.br'),
    ('Giovana Alarcon','22000004','giovana.alarcon@puccampinas.edu.br'),
    ('Luana Baptista','22000005','luana.baptista@puccampinas.edu.br');

insert into materias 
values
    ('Pi: Desenvolvimento de Sistemas Web','12902','H15_S04'),
    ('Organizacao de Sistemas de Computacao','12903','H15_110'),
    ('Calculo I','11445','H15_111');

insert into professor 
values
    ('Alonso Xastre','xastre@puccampinas.edu.br','12902'),
    ('Ricardo Pannain','pannain@puccampinas.edu.br','12903'),
    ('Valdemiro dos Santos','miro@puccampinas.edu.br','11445');
