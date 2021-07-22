create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria (
id bigint auto_increment,
descrição varchar (255) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (descrição, ativo) values ("Pintura", true);
insert into tb_categoria (descrição, ativo) values ("Acabamento", true);
insert into tb_categoria (descrição, ativo) values ("Pisos", true);
insert into tb_categoria (descrição, ativo) values ("Elétrica", true);
insert into tb_categoria (descrição, ativo) values ("Hidráulica", true);
insert into tb_categoria (descrição, ativo) values ("Jardinagem", true);

select * from tb_categoria;

create table tb_produtos (
id bigint auto_increment,
nome varchar (255) not null,
preço decimal (8,2) not null,
marca varchar (255) not null,
Quantidade varchar (255) not null,
categoria_id  bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produtos (nome, preço, marca, Quantidade, categoria_id) values ("Tinta Acrílica", 70.99, "Coral", "700 ml", 1);
insert into tb_produtos (nome, preço, marca, Quantidade, categoria_id) values ("Cantoneira", 24.00, "Diversas", "3 metros", 2);
insert into tb_produtos (nome, preço, marca, Quantidade, categoria_id) values ("Azuleijo Preto Fosco", 124.99, "Pisos SA", "2O m2", 3);
insert into tb_produtos (nome, preço, marca, Quantidade, categoria_id) values ("Deck Madeira", 15.00, "DecoraX", "Unidade 15x15", 3);
insert into tb_produtos (nome, preço, marca, Quantidade, categoria_id) values ("Fio 3mm", 35.00, "FioConduc", "10 m", 4);
insert into tb_produtos (nome, preço, marca, Quantidade, categoria_id) values ("Tomada", 7.99, "Eletorlux", "unidade", 4);
insert into tb_produtos (nome, preço, marca, Quantidade, categoria_id) values ("Torneira Inox", 155.99, "Blindex", "1 unidade", 5);
insert into tb_produtos (nome, preço, marca, Quantidade, categoria_id) values ("Suporte parede", 89.99, "Mundo das Plantas", "Unidade 2X1.55", 6);

select * from tb_produtos

select * from tb_produtos where preco > 50;

-- Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.
select * from tb_produtos where preço between 3 and 60;

-- Faça um select  utilizando LIKE buscando os Produtos com a letra C.
select * from tb_produtos where nome like "c%";

-- Faça um um select com Inner join entre  tabela categoria e produto.
select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são da categoria hidráulica).
select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where categoria_id = 5;


