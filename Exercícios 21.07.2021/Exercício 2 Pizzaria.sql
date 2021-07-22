create database db_pizzaria_legal;

use db_pizza_legal;

create table tb_categoria (
id bigint auto_increment,
descrição varchar (255) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (descrição, ativo) values ("Inteira", true);
insert into tb_categoria (descrição, ativo) values ("Meio a Meio", true);
insert into tb_categoria (descrição, ativo) values ("Broto", true);
insert into tb_categoria (descrição, ativo) values ("Salgada", true);
insert into tb_categoria (descrição, ativo) values ("Doce", true);

select * from tb_categoria;

create table tb_pizza (
id bigint auto_increment,
sabor varchar (255) not null,
borda varchar (255) not null,
SaborAdicional varchar (255) not null,
cobertura varchar (255) not null,
preço decimal (8,2),
AcompanhaRefri boolean not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_pizza (sabor, borda, SaborAdicional, cobertura, preço, AcompanhaRefri, categoria_id) values ("Chocolate", "Sem borda", "Não", "Granulado", 45.99, true, 5);
insert into tb_pizza (sabor, borda, SaborAdicional, cobertura, preço, AcompanhaRefri, categoria_id) values ("Ovo Maltine", "Sem borda", "Não", "Leite Ninho", 55.99, true, 5);
insert into tb_pizza (sabor, borda, SaborAdicional, cobertura, preço, AcompanhaRefri, categoria_id) values ("Marguerita", "Sem borda", "Não", "Sem", 39.99, true, 1);
insert into tb_pizza (sabor, borda, SaborAdicional, cobertura, preço, AcompanhaRefri, categoria_id) values ("Calabresa Vegana", "Sem borda", "Não", "Cebola", 30.99, true, 4);
insert into tb_pizza (sabor, borda, SaborAdicional, cobertura, preço, AcompanhaRefri, categoria_id) values ("Brócolis e Mussarela Vegana", "Sem borda", "Não", "Não", 43.99, true, 2);
insert into tb_pizza (sabor, borda, SaborAdicional, cobertura, preço, AcompanhaRefri, categoria_id) values ("Romeu e Julieta", "Sem borda", "Não", "Extra Goiabada", 29.99, true, 3);

select * from tb_pizza;

-- Faça um select que retorne os Produtos com o valor maior do que 45 reais.
select * from tb_pizza where preço > 45;

-- Faça um select trazendo  os Produtos com valor entre 29 e 60 reais.
select * from tb_pizza where preço between 29.00 and 60.00;

-- Faça um select  utilizando LIKE buscando os Produtos com a letra C.
select * from tb_pizza where sabor like "C%";

-- Faça um um select com Inner join entre  tabela categoria e pizza.
select * from tb_categoria inner join tb_pizza on tb_categoria.id = tb_pizza.categoria_id;

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são pizza doce).
select * from tb_categoria inner join tb_pizza on tb_categoria.id = tb_pizza.categoria_id where categoria_id = 5;


 






 









