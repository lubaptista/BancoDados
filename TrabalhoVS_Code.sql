create database trabalho_final;


create table tabela_aluno (
    RA int,
    NOME varchar(255),
    SOBRENOME varchar(255)
);

insert into tabela_aluno
	values ('11111111', 'Beatriz', 'Newman');

insert into tabela_aluno
	values ('22222222', 'Daniela', 'Hayashi');

insert into tabela_aluno
	values ('33333333', 'Flavia', 'Medeiros');

insert into tabela_aluno
	values ('44444444', 'Giovana', 'Alarcon');

insert into tabela_aluno
	values ('55555555', 'Luana', 'Batista');


create table tabela_materia (
	ID int,
    NOME_PROFESSOR varchar(255),
    NOME_DA_MATERIA varchar(255),
    QUANTIDADE_DE_tabela_materiaCREDITOS int
);

insert into tabela_materia
	values ('1', 'Xastre', 'Fundamentos da Engenharia', '2');

insert into tabela_materia
	values ('2', 'Xastre', 'Vida Universitaria', '1');

insert into tabela_materia
	values ('3', 'Xastre', 'PI: Desenvolvimentos de Sistemas Web', '3');

insert into tabela_materia
	values ('4', 'Miro', 'Calculo I', '3');

insert into tabela_materia
	values ('5', 'Pannain', 'Organização de Sistemas', '2');