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

-- Faça um select que retorne os personagens com o poder de ataque maior do que 2000.
select * from tb_personagem where poderAtaque > 2000;

-- Faça um select trazendo  os personagens com poder de defesa entre 1000 e 2000.
select * from tb_personagem where poderDefesa between 1000 and 2000;

-- Faça um select  utilizando LIKE buscando os personagens com a letra C.
select * from tb_personagem where nome  like "C%";

-- Faça um um select com Inner join entre  tabela classe e personagem.
select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id; -- on junta as infos de ambas as classes num atributo específico


-- Faça um select onde traga todos os personagem de uma classe específica (exemplo todos os personagens que são arqueiros).
select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id where tb_classe.id = 1;

select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id where tb_classe.descricao = "mago";

select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id where tb_personagem.habilidade = "Soltar magia";

select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id where tb_personagem.poderAtaque > 2000;




update tb_personagem set nome = "Hermione" where id = 7;

 





 


