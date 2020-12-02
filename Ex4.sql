create database db_ecommerce;

use db_ecommerce;

create table tb_produtosCorinthians (
id bigint (2) auto_increment,
nome varchar (30) not null,
tamanho varchar (1),
preço double,
codigo int,
estoque boolean,

primary key (id)
);

insert into tb_produtoscorinthians (nome, tamanho, preço, codigo, estoque) values ("Camiseta Regata", "M", 69.90, 520, true);
insert into tb_produtoscorinthians (nome, tamanho, preço, codigo, estoque) values ("Camiseta Manga", "G", 79.90, 342, true);
insert into tb_produtoscorinthians (nome, tamanho, preço, codigo, estoque) values ("Caneca", "U", 59.90, 756, true);
insert into tb_produtoscorinthians (nome, tamanho, preço, codigo, estoque) values ("Bandana", "U", 29.90, 899, true);
insert into tb_produtoscorinthians (nome, tamanho, preço, codigo, estoque) values ("Meia", "U", 25.90, 034, true);
insert into tb_produtoscorinthians (nome, tamanho, preço, codigo, estoque) values ("Agenda 2021", " ", 34.90, 220, true);
insert into tb_produtoscorinthians (nome, tamanho, preço, codigo, estoque) values ("Caneta", " ", 12.90, 520, true);
insert into tb_produtoscorinthians (nome, tamanho, preço, codigo, estoque) values ("Blusa Moletom", "P", 119.90, 650, true);
insert into tb_produtoscorinthians (nome, tamanho, preço, codigo, estoque) values ("Calça Moletom", "M", 89.90, 550, true);
insert into tb_produtoscorinthians (nome, tamanho, preço, codigo, estoque) values ("Body", "M", 49.90, 443, true);
insert into tb_produtoscorinthians (nome, tamanho, preço, codigo, estoque) values ("Toalha (banho)", " ", 79.90, 570, true);
insert into tb_produtoscorinthians (nome, tamanho, preço, codigo, estoque) values ("Vestido", "M", 39.90, 844, true);
insert into tb_produtoscorinthians (nome, tamanho, preço, codigo, estoque) values ("Short", "P", 29.90, 899, true);

-- Faça um select que retorne os produtos com o valor maior do que 500.
select nome, preço from tb_produtoscorinthians where preço > 500.0;

-- Faça um select que retorne os produtos com o valor menor do que 500.
select nome, preço from tb_produtoscorinthians where preço < 500.0;

-- Atualize um dado desta tabela através de uma query de atualização.
update tb_produtoscorinthians set preço = 799.90 where id = 8;

-- Faça um select que retorne os dados com o valor entre 700 e 900.
select nome, preço from tb_produtoscorinthians where preço > 700.0 and preço < 900;

delete from tb_produtoscorinthians where id = 3;

select * from tb_produtoscorinthians; 


