create database db_escola;
-- banco de dados para um registro de uma escola.
use db_escola;

create table tb_registro (
id bigint(2) auto_increment,
nome varchar (30) not null,
ano int,
matrícula int,
mediaNota double,
aprovadx boolean,

primary key (id)
);

insert into tb_registro (nome, ano, matrícula, mediaNota, aprovadx) values ("Ana Carolina", 9, 21345, 7.8, true);
insert into tb_registro (nome, ano, matrícula, mediaNota, aprovadx) values ("Andreza Guimarães", 9, 21455, 9.8, true);  
insert into tb_registro (nome, ano, matrícula, mediaNota, aprovadx) values ("Beatriz Lobo", 9, 21767, 7.8, true);  
insert into tb_registro (nome, ano, matrícula, mediaNota, aprovadx) values ("Chris Toledo", 9, 21890, 5.8, false);  
insert into tb_registro (nome, ano, matrícula, mediaNota, aprovadx) values ("Danielly Santos", 9, 21355, 9.7, true);  
insert into tb_registro (nome, ano, matrícula, mediaNota, aprovadx) values ("Esdras Duarte", 9, 21566, 7.0, true);  
insert into tb_registro (nome, ano, matrícula, mediaNota, aprovadx) values ("Fernanda Lima", 9, 21345, 7.2, true);  
insert into tb_registro (nome, ano, matrícula, mediaNota, aprovadx) values ("Fernando Castro", 9, 21333, 6.6, true);  
insert into tb_registro (nome, ano, matrícula, mediaNota, aprovadx) values ("Luan Garcia", 9, 21121, 7.1, true);  
insert into tb_registro (nome, ano, matrícula, mediaNota, aprovadx) values ("Luana Soares", 9, 21311, 4.8, false);  
insert into tb_registro (nome, ano, matrícula, mediaNota, aprovadx) values ("Luana Maria", 9, 21322, 6.8, true);  
insert into tb_registro (nome, ano, matrícula, mediaNota, aprovadx) values ("Malu de Jesus", 9, 21501, 8.8, true);  
insert into tb_registro (nome, ano, matrícula, mediaNota, aprovadx) values ("Marcos Teixeira", 9, 21785, 7.5, true);  
insert into tb_registro (nome, ano, matrícula, mediaNota, aprovadx) values ("Mariana Carvalho", 9, 21404, 7.8, true);  
insert into tb_registro (nome, ano, matrícula, mediaNota, aprovadx) values ("Melita Ramos", 9, 21411, 3.9, false);  
insert into tb_registro (nome, ano, matrícula, mediaNota, aprovadx) values ("Noel Yuri", 9, 21021, 6.5, true);  
insert into tb_registro (nome, ano, matrícula, mediaNota, aprovadx) values ("Noêmia Luz", 9, 21091, 7.8, true);  
insert into tb_registro (nome, ano, matrícula, mediaNota, aprovadx) values ("Otávio dos Santos", 9, 21030, 7.8, true);  
insert into tb_registro (nome, ano, matrícula, mediaNota, aprovadx) values ("Renata Lauton", 9, 21349, 7.8, true);  
insert into tb_registro (nome, ano, matrícula, mediaNota, aprovadx) values ("Viviane dos Santos", 9, 21341, 4.5, false); 

-- Faça um select que retorne o/as alunos/a com a nota maior do que 7.
 select nome, mediaNota from tb_registro where mediaNota > 7;
 
 -- Faça um select que retorne o/as alunos/a com a nota menor do que 7.
 select nome, mediaNota from tb_registro where mediaNota < 7;
 
 -- Delete pelo menos um dado de acordo com a sua preferência.
 delete from tb_registro where id = 13 and id = 09;
 
 -- Ao término, atualize um dado desta tabela através de uma query de atualização.
 update tb_registro set peso = 12.0 where id = 5;
 
 select * from tb_registro;
 

