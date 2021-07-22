create database	db_RHEmpresa;

use db_RHEmpresa; 

create table tb_funcionaries(
id bigint auto_increment,	
nome varchar(255),
cargo varchar(255),
idade int,
salario decimal (8,2),
primary key(id)
);

insert into tb_funcionaries (nome, cargo, idade, salario) values ("Henryk", "Desenvolvedor Back End Jr", 29, 5.000); 
insert into tb_funcionaries (nome, cargo, idade, salario) values ("Ary", "Desenvolvedor Back End Jr", 32, 5.000); 
insert into tb_funcionaries (nome, cargo, idade, salario) values ("Matheus", "Desenvolvedor Back End Senior", 25, 8.000); 
insert into tb_funcionaries (nome, cargo, idade, salario) values ("Nathalia", "Desenvolvedor Back End Jr", 28, 5.000); 
insert into tb_funcionaries (nome, cargo, idade, salario) values ("Felipe", "Diretor Criativo", 27, 8.000); 
insert into tb_funcionaries (nome, cargo, idade, salario) values ("Barbie", "Recepcionista", 25, 1.800); 
insert into tb_funcionaries (nome, cargo, idade, salario) values ("Ken", "Auxiliar geral", 32, 1.500); 

select * from tb_funcionaries;

select * from tb_funcionaries where salario > 2000.00;
select * from tb_funcionaries where salario < 2000.00;

update tb_funcionaries set nome = "Barbie Afrontosa"  where id = 6;

