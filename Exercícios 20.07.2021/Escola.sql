create database	db_Escola;

use db_Escola; 

create table tb_estudantes(
id bigint auto_increment,	
nome varchar(255),
RA varchar(255),
idade int,
Nota decimal (8,2),
Aprovado varchar(255),
primary key(id)
);

insert into tb_estudantes(nome, RA, idade, Nota, Aprovado) values ("Stephanie", 23245, 29, 10.00, "Aprovado");
insert into tb_estudantes(nome, RA, idade, Nota, Aprovado) values ("Marie", 23345, 18, 9.5, "Aprovado");
insert into tb_estudantes(nome, RA, idade, Nota, Aprovado) values ("João", 23555, 25, 8.5, "Aprovado");
insert into tb_estudantes(nome, RA, idade, Nota, Aprovado) values ("Caio", 23087, 23, 5.00, "Reprovado");
insert into tb_estudantes(nome, RA, idade, Nota, Aprovado) values ("Bárbara", 23899, 24, 7.5, "Aprovado");
insert into tb_estudantes(nome, RA, idade, Nota, Aprovado) values ("Hugo", 23245, 29, 6.5, "Reprovado");

select * from tb_estudantes;

select * from tb_funcionaries where nota > 7.0;
select * from tb_funcionaries where salario < 7.0;



