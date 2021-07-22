
create database db_cidade_das_carnes;

use db_cidade_das_carnes;

-- not null o campo precisa ser obrigatoriamente preenchido

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null, 
ativo boolean not null, -- boolean pois é do tipo verdadeiro --> 1 ou falso --> 0, diz se esse item existe ou não na tabela
primary key (id)
);

insert into tb_categoria (descricao, ativo) values ("Bovino",true);
insert into tb_categoria (descricao, ativo) values ("Suino",true);
insert into tb_categoria (descricao, ativo) values ("Aves",true);
insert into tb_categoria (descricao, ativo) values ("pertence feijoada",true);
insert into tb_categoria (descricao, ativo) values ("imbutidos",true);
insert into tb_categoria (descricao, ativo) values ("soja",true);
insert into tb_categoria (descricao, ativo) values ("outros",true);

select * from tb_categoria; -- query uma consulta 

create table tb_produtos (
id bigint auto_increment, -- IDENTIFICADOR ÚNICO DA TABELA PRODUTOS, SENDO FEITO AUTOMATICAMENTE
nome varchar (255) not null,
preco decimal(6,2) not null,
qtproduto int not null,
dtvalidade date,
categoria_id bigint, -- bigint porque faz relação ao id da tb_categoria, ou seja, chave estrangeira tem que ter o mesmo formato de dados da tabela primária
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id) -- FOREIGN KEY chave estrangeira, que estabelece conexão com a chave primária da tabela categoria ID
);

insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("ASA",40.00,30, "2021-11-07", 3);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Picanha",20.00,30, "2021-11-08", 1);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("coxa de frango",20.00,30, "2021-11-07", 3);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Bacon",30.00,30, "2021-11-09", 1);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("hamburguer",60.00,30, "2021-09-07", 5);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Cupim",20.00,30, "2021-11-10", 1);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Peito de frango",25.00,30, "2021-11-09", 3);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Orelha de porco",20.00,30, "2021-11-07", 4);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Salame",18.00,30, "2021-11-21", 5);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("medalhao",50.00,30, "2021-11-15", 3);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("mocoto",20.00,30, "2021-10-05", 2);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("chuleta",20.00,30, "2021-10-07", 1);
insert into tb_produtos (nome, preco, qtProduto) values ("acendedor de churrasqueira",20.00,30);
insert into tb_produtos (nome, preco, qtProduto) values ("soprador de churrasqueira",35.00,30);

select * from tb_produtos; -- mostra todos os dados da tabela

select nome, preco, categoria_id from td_produtos; -- mostra apenas alguns itens

-- criar consultas do tipo LIKE (busca a info com determinada sequencia de caracteres + %)

select * from tb_produtos where nome  like "ha%";

select * from tb_produtos where nome  like "%ha";

select * from tb_produtos where nome  like "%ha%";

-- criar consultas do tipo IN (traz itens da tabela com valor estabelecido)
select * from tb_produtos where preco in (20.00, 30.00, 40.00);

-- criar consultas do tipo BETWEEN (traz itens da tabela com valor estabelecido dentro desse intervalo, entre os valores estabelecidos)
select * from tb_produtos where preco between 20.00 and 40.00;
select * from tb_produtos where dtvalidade between '2021-11-07' and '2021-11-15' order by dtvalidade, nome;

-- ORDER BY--> coloca em ordem de baixo para cima ou order by (categoria) des --> ordena os itens de forma de cima para baixo
select * from tb_produtos where preco between 20.00 and 40.00 order by preco;
select * from tb_produtos where preco between 20.00 and 40.00 order by preco desc;
select * from tb_produtos where preco between 20.00 and 40.00 order by nome, preco; -- cria ordem primeiro em relação ao nome e depois em relação ao preço


 -- FUNÇÕES MATEMÁTICAS
 select count(*) from tb_produtos; -- conta o número de linhas da tabaela
 
 select count(categoria_id) from tb_produtos; --  traz o número de categorias preenchidas. Atribuitos que não tem valor preenchido, não são listados.alter

select sum(preco) from tb_produtos; -- soma todos os itens da tabela produtos

select avg(preco)  as Média from tb_produtos; -- calcula a media de todos os produtos. AS da o nome a função estabelecida, para ficar visualmente mais fácil de se compreender.alter

select categoria_id as Categoria, format(avg(preco), 2)   as Média from tb_produtos group by categoria_id; -- calcula a média de preço por categoria. GROUP BY agrupa os dados, faz a média de cada categoria, não da tb num todo. FORMAT determina como o item será apresentado, no caso, 2 com duas casas depois da vírgula

select max(preco) as Preço_Máximo from tb_produtos; -- apresenta o maior preço apresentado na tabela produtos

select min(preco) as Preço_Mínimo from tb_produtos; -- apresenta o menor preço apresentado na tabela produtos

-- consulta composta, jogar uma consulta dentro de outra
select * from tb_produtos where preco = (select max(preco) as Preço_Máximo from tb_produtos);

-- consulta de relação entre tabelas do tipo INNER JOIN
select tb_produtos.nome, tb_produtos.preco, tb_categoria.descricao as Categoria
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;
-- indicar a origem dos itens que serão relacionados, onde cada item está 
-- trazer os produtos relacionados da tabela produtos que estão na tabela categoria.
-- on indica onde é a referência entre as categorias

select tb_produtos.nome, tb_produtos.preco, tb_categoria.descricao as Categoria
from tb_produtos left join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;


select tb_produtos.nome, tb_produtos.preco, tb_categoria.descricao as Categoria
from tb_produtos right join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;



