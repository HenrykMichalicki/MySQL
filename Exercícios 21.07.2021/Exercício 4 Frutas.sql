create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria (
id bigint auto_increment,
descrição varchar (255) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (descrição, ativo) values ("Frutas", true);
insert into tb_categoria (descrição, ativo) values ("Legumes", true);
insert into tb_categoria (descrição, ativo) values ("Platas", true);
insert into tb_categoria (descrição, ativo) values ("Verduras", true);
insert into tb_categoria (descrição, ativo) values ("Leguminosas", true);

select * from tb_categoria;

create table tb_produto (
id bigint auto_increment,
produto varchar (255) not null,
preço decimal (8,2) not null,
QuantidadeProduto varchar (255) not null,
Validade date,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produto (produto, preço, QuantidadeProduto,  Validade, categoria_id) values ("Tomate", 1.99, "100 kg", '2021-08-22', 1);
insert into tb_produto (produto, preço, QuantidadeProduto, Validade, categoria_id) values ("Manga", 5.99, "50 kg", '2021-10-22', 1);
insert into tb_produto (produto, preço, QuantidadeProduto, Validade, categoria_id) values ("Cenoura", 0.99, "200 kg", '2021-08-22', 2);
insert into tb_produto (produto, preço, QuantidadeProduto, Validade, categoria_id) values ("Beterraba", 1.59, "100 kg", '2021-08-25', 2);
insert into tb_produto (produto, preço, QuantidadeProduto, Validade, categoria_id) values ("Couve Flor", 2.99, "30 kg", '2021-08-22', 4);
insert into tb_produto (produto, preço, QuantidadeProduto, Validade, categoria_id) values ("Cacto Adulto", 50.99, "50 unidades", '2021-09-22', 3);
insert into tb_produto (produto, preço, QuantidadeProduto, Validade, categoria_id) values ("Espada de São Jorge Tamanho G", 70.99, "20 unidades", '2022-08-22', 3);
insert into tb_produto (produto, preço, QuantidadeProduto, Validade, categoria_id) values ("Feijão Fradinho", 6.99, "100 kg", '2022-08-23', 5);

select * from tb_produto;

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select * from tb_produto where preço > 50;

-- Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.
select * from tb_produto where preço between 3 and 60;

-- Faça um select  utilizando LIKE buscando os Produtos com a letra C.
select * from tb_produto where produto like "c%";

-- Faça um um select com Inner join entre  tabela categoria e produto.
select * from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.categoria_id;

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são aves ou legumes).
select * from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.categoria_id where categoria_id = 2;
















	