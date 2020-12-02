create database db_petshop;

use db_petshop;

create table tb_registro (
id bigint (2) auto_increment,
nome varchar (15) not null,
dono varchar (25),
espécie varchar (15),
peso int (2) not null,
idade int (2),

primary key (id)
);

alter table tb_registro
modify column peso double;

insert into  tb_registro (nome, dono, espécie, peso, idade) values ("Belinha", "Maria", "canina", 26.5, 4); 
insert into  tb_registro (nome, dono, espécie, peso, idade) values ("Francisco", "Júlio", "felina", 4.0, 6); 
insert into  tb_registro (nome, dono, espécie, peso, idade) values ("Harry Pattas", "Alana", "canina", 30.5, 13); 
insert into  tb_registro (nome, dono, espécie, peso, idade) values ("Tonico", "Sidney", "canina", 9.3, 5); 
insert into  tb_registro (nome, dono, espécie, peso, idade) values ("Tinoco", "Sidney", "canina", 9.3, 5); 
insert into  tb_registro (nome, dono, espécie, peso, idade) values ("Rex", "Thiago", "ave", 0.9, 19); 
insert into  tb_registro (nome, dono, espécie, peso, idade) values ("Bianca", "Pedro", "canina", 9.5, 1); 
insert into  tb_registro (nome, dono, espécie, peso, idade) values ("Bernardo", "Helena", "felina", 3.0, 2); 
insert into  tb_registro (nome, dono, espécie, peso, idade) values ("Ricardo", "Carlos", "canina", 24.5, 2);
insert into  tb_registro (nome, dono, espécie, peso, idade) values ("Tobias", "Mariana", "felina", 9.5, 4); 
insert into  tb_registro (nome, dono, espécie, peso, idade) values ("Garfield", "Iolanda", "felina", 9.5, 5); 
insert into  tb_registro (nome, dono, espécie, peso, idade) values ("Mike", "Vinícius", "canina", 9.0, 15); 
insert into  tb_registro (nome, dono, espécie, peso, idade) values ("Serj", "Karen", "reptiliana", 6.5, 10); 
insert into  tb_registro (nome, dono, espécie, peso, idade) values ("Bananinha", "Letícia", "canina", 9.5, 4); 
insert into  tb_registro (nome, dono, espécie, peso, idade) values ("Jazz", "Juliana", "feliana", 2.5, 3); 
insert into  tb_registro (nome, dono, espécie, peso, idade) values ("Otto", "Jack", "felina", 7.0, 6); 
insert into  tb_registro (nome, dono, espécie, peso, idade) values ("Betinha", "Marcelo", "canina", 22.5, 4); 
insert into  tb_registro (nome, dono, espécie, peso, idade) values ("Cassandra", "Maria", "reptiliana", 4.5, 4); 

-- Faça um select que retorne os animais cujo o nome comece com a letra b.
select * from tb_registro where nome like "b%";

-- Faça um select que retorne os animais cujo é maior que 20kg.
select * from tb_registro where peso > 20;

-- Delete pelo menos um dado de acordo com a sua preferência.
delete from tb_registro where id = 12;

-- Ao término atualize um dado desta tabela através de uma query de atualização.
update tb_registro set peso = 12.0 where id = 5;

select * from tb_registro;
 