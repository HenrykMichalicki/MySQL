create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
descricao varchar(255) not null, 
ativo boolean not null, 
primary key (id)
);

insert into tb_classe (descricao, ativo) values ("Mago",true);
insert into tb_classe (descricao, ativo) values ("Atirador",true);
insert into tb_classe (descricao, ativo) values ("Feiticeiro",true);
insert into tb_classe (descricao, ativo) values ("Andarilho",true);
insert into tb_classe (descricao, ativo) values ("Monstro",true);
insert into tb_classe (descricao, ativo) values ("Elfo",true);

select * from tb_classe;

create table tb_personagem(
id bigint auto_increment,
nome varchar(255) not null,
habilidade varchar(255),
poderAtaque int,
poderDefesa int,
classe_id bigint,
primary key (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe (id) 
);

insert into tb_personagem (nome, habilidade, poderAtaque, poderDefesa, classe_id) values ("Asterix", "Soltar magia", 2500, 1500, 1);
insert into tb_personagem (nome, habilidade, poderAtaque, poderDefesa, classe_id) values ("Costrix", "voar", 2000, 1200, 6);
insert into tb_personagem (nome, habilidade, poderAtaque, poderDefesa, classe_id) values ("Rambo", "Atirar", 1800, 1500, 2);
insert into tb_personagem (nome, habilidade, poderAtaque, poderDefesa, classe_id) values ("Hulk", "devorar", 3000, 1300, 5);
insert into tb_personagem (nome, habilidade, poderAtaque, poderDefesa, classe_id) values ("Pandoramix", "roubar", 1400, 1200, 4);
insert into tb_personagem (nome, habilidade, poderAtaque, poderDefesa, classe_id) values ("Abstratrix", "Soltar encatamentos", 2500, 1500, 3);
insert into tb_personagem (nome, habilidade, poderAtaque, poderDefesa, classe_id) values ("Bellatrix", "Soltar magia", 2500, 1500, 1);
insert into tb_personagem (nome, habilidade, poderAtaque, poderDefesa, classe_id) values ("Casterix", "Soltar magia", 1800, 1300, 6);

select * from tb_personagem;

select * from tb_personagem where poderAtaque > 2000;

select * from tb_personagem where poderDefesa between 1000 and 2000;

select * from tb_personagem where nome  like "C%";

-- para alterar um dado da tabela já estabelecido
update tb_personagem set nome = "Hermione" where id = 7;



 


