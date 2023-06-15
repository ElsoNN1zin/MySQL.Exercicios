CREATE DATABASE db_rh;

use db_rh;

CREATE TABLE tb_atributos(
	id bigint auto_increment,
	nome varchar(255) not null,
	idade int,
	email text,
	cargo varchar(255) not null,
	salario decimal not null,

    PRIMARY KEY (id)
    );
    
INSERT INTO tb_atributos(nome, idade, email, cargo, salario) 
values ("Maria",25, "Maria.silva@gmail.com", "Dev Jr", 3500 );
INSERT INTO tb_atributos(nome, idade, email, cargo, salario) 
values ("Carlos",29, "Carlos1995@gmail.com", "Dev Jr", 3500 );
INSERT INTO tb_atributos(nome, idade, email, cargo, salario) 
values ("Augusto",31, "AugustoM@gmail.com", "Dev Senior", 6500 );
INSERT INTO tb_atributos(nome, idade, email, cargo, salario) 
values ("Roberta",30, "RobertaSuper@gmail.com", "Supervisor", 8000 );
INSERT INTO tb_atributos(nome, idade, email, cargo, salario) 
values ("Lucas",40, "LucasLima@gmail.com", "Gerente", 15000 );
    
select * from tb_atributos;

SELECT nome, idade, email, cargo, salario FROM tb_atributos where salario < 4000;

SELECT nome, idade, email, cargo, salario FROM tb_atributos where salario > 4000;

update tb_atributos set salario = 8650 where id= 4;