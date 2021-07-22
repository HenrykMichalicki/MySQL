create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
descrição varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (descrição, ativo) values ("Dermo Cosméticos",true);
insert into tb_categoria (descrição, ativo) values ("Farmácia Popular",true);
insert into tb_categoria (descrição, ativo) values ("Hipertenção",true);
insert into tb_categoria (descrição, ativo) values ("Linha infantil",true);
insert into tb_categoria (descrição, ativo) values ("Anti Alérgicos",true);

select * from tb_categoria;

create table tb_produto (
id bigint auto_increment,
nome varchar (255) not null,
marca varchar (255) not null,
tamanho varchar (255) not null,
valor decimal (8,2),
promoção boolean not null,
QuantidadeEstoque int,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produto (nome, marca, tamanho, valor, promoção, QuantidadeEstoque, categoria_id) values ("Effaclair Duo", "La Roche", "300 ml", 69.00, true, 20, 1);
insert into tb_produto (nome, marca, tamanho, valor, promoção, QuantidadeEstoque, categoria_id) values ("Protetor Solar", "Roc", "70 ml", 89.00, true, 20, 1);
insert into tb_produto (nome, marca, tamanho, valor, promoção, QuantidadeEstoque, categoria_id) values ("Loratamed", "EMS", "10 comprimidos", 6.99, true, 50, 2);
insert into tb_produto (nome, marca, tamanho, valor, promoção, QuantidadeEstoque, categoria_id) values ("Dorflex", "Eurofarma", "8 comprimidos", 8.45, true, 100, 2);
insert into tb_produto (nome, marca, tamanho, valor, promoção, QuantidadeEstoque, categoria_id) values ("Hipertenses", "Drazz", "10 comprimidos", 140.00, true, 10, 3);
insert into tb_produto (nome, marca, tamanho, valor, promoção, QuantidadeEstoque, categoria_id) values ("Baby Soft Lenços", "Pumpers", "120 unidades", 15.00, true, 30, 4);
insert into tb_produto (nome, marca, tamanho, valor, promoção, QuantidadeEstoque, categoria_id) values ("Shampoo Neutro", "Baby Care", "120 ml", 25.00, true, 15, 4);
insert into tb_produto (nome, marca, tamanho, valor, promoção, QuantidadeEstoque, categoria_id) values ("Polaramine", "Eurofarma", "120 ml", 45.99, true, 40, 5);

select * from tb_produto;

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select * from tb_produto where valor > 50;

-- Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.
select * from tb_produto where valor between 3 and 60;

-- Faça um select  utilizando LIKE buscando os Produtos com a letra B.
select * from tb_produto where nome like "%b%";

-- Faça um um select com Inner join entre  tabela categoria e produto.
select * from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.categoria_id;


-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são cosméticos).
select * from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.categoria_id  where categoria_id = 1;




















