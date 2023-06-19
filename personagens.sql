CREATE DATABASE db_generation_game_online;

Use db_generation_game_online;

CREATE TABLE tb_personagens (
id bigint auto_increment,
nickname varchar(255) not null,
nivel int,
hp int,
mn int,
classes_id bigint,
primary key (id)
);

insert into tb_personagens (nickname, nivel, hp, mn, classes_id)
values ("ShaolinMatadordePorco", 15, 2000, 2000, 1); 
insert into tb_personagens (nickname, nivel, hp, mn, classes_id)
values ("ZéDaManga", 45, 2500, 2200, 3); 
insert into tb_personagens (nickname, nivel, hp, mn, classes_id)
values ("JuninDoPneu", 63, 4100, 3099, 2); 
insert into tb_personagens (nickname, nivel, hp, mn, classes_id)
values ("KidzinApelão", 117, 6325, 7869, 3);

CREATE TABLE tb_classes (
id bigint,
classe varchar(255) not null,
arma varchar(255) not null,
primary key (id)
);

INSERT INTO tb_classes (id, classe, arma) values (1, "Assassino", "Adagas Duplas");
INSERT INTO tb_classes (id, classe, arma) values (2, "Bárbaro", "Machado");
INSERT INTO tb_classes (id, classe, arma) values (3, "Arqueiro", "Arco e Flecha");

SELECT * FROM tb_classes;

ALTER TABLE tb_personagens ADD classes_id bigint;

ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes 
FOREIGN KEY (classes_id) REFERENCES tb_personagens (id);

SELECT nickname, nivel, hp, mn, classes_id  FROM tb_personagens where hp > 3000;

SELECT nickname, nivel, hp, mn, classes_id  FROM tb_personagens where mn <=  2000 ;

SELECT * FROM tb_personagens WHERE nickname LIKE "s%";

SELECT nickname, nivel from tb_personagens
INNER JOIN tb_classes ON classes_id = tb_personagens.classes_id;





