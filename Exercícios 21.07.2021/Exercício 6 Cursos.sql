create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria (
id bigint auto_increment,
descrição varchar (255) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (descrição, ativo) values ("Java Script", true);
insert into tb_categoria (descrição, ativo) values ("UX/UI", true);
insert into tb_categoria (descrição, ativo) values ("Phyton", true);
insert into tb_categoria (descrição, ativo) values ("MySQL", true);
insert into tb_categoria (descrição, ativo) values ("SpringBoot", true);
insert into tb_categoria (descrição, ativo) values ("Metodologia ágil", true);

select * from tb_categoria;

create table tb_produtos (
id bigint auto_increment,
nome varchar (255) not null,
preço decimal (8,2) not null,
QuantHoras int not null,
validade date,
categoria_id  bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produtos (nome, preço, QuantHoras, validade, categoria_id) values ("Java de A a Z", 100.99, 200, "2022-07-21", 1);
insert into tb_produtos (nome, preço, QuantHoras, validade, categoria_id) values ("UX para iniciantes", 50, 15, "2022-07-21", 2);
insert into tb_produtos (nome, preço, QuantHoras, validade, categoria_id) values ("UI para designers", 500.99, 100, "2022-07-21", 2);
insert into tb_produtos (nome, preço, QuantHoras, validade, categoria_id) values ("Phyton completo", 300.99, 20, "2022-07-21", 3);
insert into tb_produtos (nome, preço, QuantHoras, validade, categoria_id) values ("SpringBoot", 79.99, 10, "2022-07-21", 5);
insert into tb_produtos (nome, preço, QuantHoras, validade, categoria_id) values ("MySQL Avançado", 200.99, 30, "2022-07-21", 4);
insert into tb_produtos (nome, preço, QuantHoras, validade, categoria_id) values ("Metodologia ágil em 10 passos", 100.99, 8, "2022-07-21", 6);

select * from tb_produtos;

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais
select * from tb_produtos where preço > 50.00;

-- Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.
select * from tb_produtos where preço between 3 and 60;

-- Faça um select  utilizando LIKE buscando os Produtos com a letra J.
select * from tb_produtos where nome like "j%";

-- Faça um um select com Inner join entre  tabela categoria e produto.
select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são da categoria Java).
select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where categoria_id = 1;

