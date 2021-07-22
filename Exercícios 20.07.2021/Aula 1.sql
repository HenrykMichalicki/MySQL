-- Criando o Banco de Dados (DataBase)
create database	db_brecho; 

-- Após a criação do banco, precisa seleciona-lo
use db_brecho; 

-- criando a tabela
create table tb_produtos( -- Atributos da tabela entre ()'
id bigint auto_increment, -- chave primaria
nome varchar(255),
quantidade int,
preco decimal,
primary key (id)
);

-- para inserir dados no banco (exceto o id --> automático)
insert into tb_produtos(nome, quantidade, preco) values ("Camiseta", 30, 18.90); 
insert into tb_produtos(nome, quantidade, preco) values ("Calça", 10, 29.90);
insert into tb_produtos(nome, quantidade, preco) values ("Blusa", 15, 15.10);
insert into tb_produtos(nome, quantidade, preco) values ("Casaco", 20, 25.90);
insert into tb_produtos(nome, quantidade, preco) values ("Meia", 50, 5.99);

/* o valor precisou ser alterado pois a informação de casas decimais não foi passada anteriormente,
entao precisamos alterar através dos comandos*/
update tb_produtos set preco = 18.90 where id = 1;

-- para excluir dados do DB
delete from tb_produtos where id = 4; -- quando um dado é apagado a Id dele some junto

-- seleciona tdo na tabela produtos --> * = all
select * from tb_produtos; 

/*altere a estrutura da tabela produtos, modificando o preco para decimal 
de 8,2 --> 8 digitos, com 2 casas após a virgula 123456,78*/
alter table tb_produtos modify preco decimal (8, 2);

-- alterando o nome do campo/atributo
alter table tb_produtos change nome nome_produto varchar(255);

-- agora a inserção de dados deve levar em conta a mudança do campo "nome" para nome_produto
insert into tb_produtos(nome_produto, quantidade, preco) values ("Chinelo", 7, 29.99);

-- acrescentando um campo/atributo na tabela de produtos através do "add"
alter table tb_produtos add descricao varchar(255);

-- apagando um campo/atributo na tabela de produtos através do drop
alter table tb_produtos drop descricao;

-- selecionando dados com condições
select * from tb_produtos where preco > 15;
select * from tb_produtos where nome_produto = "calça";
select * from tb_produtos where id = 6;
select * from tb_produtos where quantidade > 5 and preco > 15;
