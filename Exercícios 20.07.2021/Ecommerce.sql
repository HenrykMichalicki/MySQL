create database	db_Ecommerce;

use db_Ecommerce; 

create table tb_produtos(
id bigint auto_increment,
Marca varchar(255),
Modelo varchar(255),
Quantidade int,
Numeração int,
Preço decimal(8,2),
primary key(id)
);

insert into tb_estoque(Marca, Modelo, Quantidade, Numeração, Preço) values( "Adidas", "RunParley", 10, 40, 699);
insert into tb_estoque(Marca, Modelo, Quantidade, Numeração, Preço) values( "Adidas", "AirPlusID", 10, 30, 899);
insert into tb_estoque(Marca, Modelo, Quantidade, Numeração, Preço) values( "Adidas", "PrideEdition", 10, 42, 999);
insert into tb_estoque(Marca, Modelo, Quantidade, Numeração, Preço) values( "Adidas", "SunriseIQ", 30, 40, 499);
insert into tb_estoque(Marca, Modelo, Quantidade, Numeração, Preço) values( "Adidas", "SuperStasr", 10, 39, 799);
insert into tb_estoque(Marca, Modelo, Quantidade, Numeração, Preço) values( "Adidas", "EcoEdition", 10, 41, 499);
insert into tb_estoque(Marca, Modelo, Quantidade, Numeração, Preço) values( "Adidas", "MoveOn", 10, 44, 399);
insert into tb_estoque(Marca, Modelo, Quantidade, Numeração, Preço) values( "Adidas", "IvyPark", 10, 38, 799);

select * from tb_estoque;

select * from tb_estoque where Preço > 500;

select * from tb_estoque where Preço < 500;

update tb_produtos set modelo = "IvyPark Limited" where id = 8;


