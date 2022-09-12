create database trabalho_xastre;

use trabalho_xastre;



insert into Professores 
	values (225405, 'Xastre','Web'), (225455, 'Angela', 'C'), (210923, 'Miro', 'Calculo'), (223451, 'Pannain', 'Assembly');
    
select * from Professores;


create table Alunos(
     RA int(6),
     Nome varchar(20),
     Sobrenome varchar(20),
     Materias varchar(20)
     );
     
     select * from Alunos;
     
     insert into Alunos
        values (22002150, 'Beatriz', 'Newman', 'Calculo'), 
			   (2002245, 'Luana', 'Baptista', 'Assembly'), 
			   (22552135, 'Flavia', 'Medeiros', 'Web');

create table Professores(
	RP int(6),
    Nome varchar(20),
    aula varchar(20)
);

SELECT * FROM  Professores;
