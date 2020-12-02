create database db_locadora;

use db_locadora;

create table tb_filmes (
id bigint (2) auto_increment,
título varchar (30) not null,
categoria varchar (20) not null,
qtde int,
disponível boolean,

primary key (id)
);

alter table tb_filmes
modify column título varchar (50);

insert into tb_filmes (título, categoria, qtde, disponível) values ("Harry Potter e a Pedra Filosofal", "Fantasia", 2, true);
insert into tb_filmes (título, categoria, qtde, disponível) values ("Harry Potter e a Câmara Secreta", "Fantasia", 1, false);
insert into tb_filmes (título, categoria, qtde, disponível) values ("Harry Potter e Prisioneiro de Azkaban", "Fantasia", 2, true);
insert into tb_filmes (título, categoria, qtde, disponível) values ("Harry Potter e o Cálice de Fogo", "Fantasia", 3, false);
insert into tb_filmes (título, categoria, qtde, disponível) values ("Harry Potter e a Ordem da Fênix", "Fantasia", 5, true);
insert into tb_filmes (título, categoria, qtde, disponível) values ("Harry Potter e o Enigma do Príncipe", "Fantasia", 4, true);
insert into tb_filmes (título, categoria, qtde, disponível) values ("Harry Potter e as Relíquias da Morte Pt.1", "Fantasia", 6, true);
insert into tb_filmes (título, categoria, qtde, disponível) values ("Harry Potter e as Relíquias da Morte Pt.2", "Fantasia", 4, true);
insert into tb_filmes (título, categoria, qtde, disponível) values ("Sociedade dos Poetas Mortos", "Fantasia", 2, true);
insert into tb_filmes (título, categoria, qtde, disponível) values ("Shrek", "Animação", 1, false);
insert into tb_filmes (título, categoria, qtde, disponível) values ("Shrek 2", "Animação", 2, true);
insert into tb_filmes (título, categoria, qtde, disponível) values ("Shrek 3", "Animação", 2, true);
insert into tb_filmes (título, categoria, qtde, disponível) values ("Shrek para sempre", "Animação", 4, true);
insert into tb_filmes (título, categoria, qtde, disponível) values ("Operação Big Hero", "Animação", 3, true);
insert into tb_filmes (título, categoria, qtde, disponível) values ("Sherlock Holmes", "Fantasia", 1, true);
insert into tb_filmes (título, categoria, qtde, disponível) values ("Humano – Uma Viagem Pela Vida", "Documentário", 3, true);
insert into tb_filmes (título, categoria, qtde, disponível) values ("Sombras da vida", "Suspense", 2, false);
insert into tb_filmes (título, categoria, qtde, disponível) values ("Ela é Demais", "Comédia Romântica", 2, true);
insert into tb_filmes (título, categoria, qtde, disponível) values ("O amor é cego", "Comédia Romântica", 1, false);
insert into tb_filmes (título, categoria, qtde, disponível) values ("Sal da Terra", "Documentário", 3, true);
insert into tb_filmes (título, categoria, qtde, disponível) values ("Star Wars: Episódio I – A Ameaça Fantasma", "Ficção Científica", 3, true);
insert into tb_filmes (título, categoria, qtde, disponível) values ("Up! Altas aventuras", "Animação", 3, true);
insert into tb_filmes (título, categoria, qtde, disponível) values ("Carandiru", "Drama", 2, false);
insert into tb_filmes (título, categoria, qtde, disponível) values ("O auto da compadecida", "Comédia Nacional", 3, true);
insert into tb_filmes (título, categoria, qtde, disponível) values ("Que horas ela volta?", "Drama Nacional", 1, false);

-- Faça um select que retorne os filmes cujo o nome comece com a letra S. 
select * from tb_filmes where título like "s%";

-- Faça um select que retorne os dos títulos dos filmes por uma categoria especifica.
select * from tb_filmes where categoria like "Documentário%";

-- Delete pelo menos um dado de acordo com a sua preferencia.
delete from tb_filmes where id = 17;

-- Ao término atualize um dado desta tabela através de uma query de atualização.
update tb_filmes set qtde = 6 where id = 25;

select * from tb_filmes;