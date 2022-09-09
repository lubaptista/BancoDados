create database trabalho_xastre;

use trabalho_xastre;

create table Professores(
	RP int(6),
    Nome varchar(20)
);

select * from Professores;

insert into Professores 
	values (225405, 'Xastre'), (225455, 'Angela'), (210923, 'Miro'), (223451, 'Pannain');Professores
    
select * from Professores;

drop table Professores;