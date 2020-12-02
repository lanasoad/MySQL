create database db_ecommerce2;

use db_ecommerce2;

create table tb_categoria (
codigo_categ bigint (2) auto_increment,
tipo varchar (80) not null,
marca varchar (40),

primary key (codigo_categ)
);

create table tb_produto (
codigo_prod bigint (2) auto_increment,
nome varchar (80) not null,
preco double,
estoque boolean,
codigo_categ bigint (2),

foreign key (codigo_categ) references tb_categoria (codigo_categ),
primary key (codigo_prod)
);

-- popular tabela tb_categoria
insert into tb_categoria (tipo, marca) values ("Eletrodomésticos", "Electrolux"); 
insert into tb_categoria (tipo, marca) values ("Telefonia", "Samsung"); 
insert into tb_categoria (tipo, marca) values ("Eletroportáteis", "Mondial"); 
insert into tb_categoria (tipo, marca) values ("TV e Vídeo", "Sony"); 
insert into tb_categoria (tipo, marca) values ("Informática", "Asus"); 

-- popular tabela tb_produto
insert into tb_produto (nome, preco, estoque, codigo_categ) values ("Geladeira Frost Free", 2199.00, 1, 1); 
insert into tb_produto (nome, preco, estoque, codigo_categ) values ("Máquina de Lavar (15KG)", 1599.00, 1, 1); 
insert into tb_produto (nome, preco, estoque, codigo_categ) values ("Freezer 2 portas (405L)", 1449.00, 0, 1); 
insert into tb_produto (nome, preco, estoque, codigo_categ) values ("Smartphone Galaxy A21s 64GB (4GB)", 1399.00, 1, 2); 
insert into tb_produto (nome, preco, estoque, codigo_categ) values ("Smartphone Galaxy A51 128GB (4GB)", 1699.00, 1, 2); 
insert into tb_produto (nome, preco, estoque, codigo_categ) values ("Smartphone Galaxy A01 32GB (2GB)", 699.00, 1, 2); 
insert into tb_produto (nome, preco, estoque, codigo_categ) values ("Cafeteira Elétrica - 32X", 109.00, 0, 3); 
insert into tb_produto (nome, preco, estoque, codigo_categ) values ("Fritadeira Elétrica Air Fryer (3,2L)", 399.00, 1, 3); 
insert into tb_produto (nome, preco, estoque, codigo_categ) values ("Ferro de Passar Roupa à Vapor", 59.90, 1, 3); 
insert into tb_produto (nome, preco, estoque, codigo_categ) values ("Smart TV Crystal UHD 4K LED 75” ", 6499.00, 1, 4); 
insert into tb_produto (nome, preco, estoque, codigo_categ) values ("TV Monitor 24” LED Wi-Fi", 899.00, 0, 4); 
insert into tb_produto (nome, preco, estoque, codigo_categ) values ("Home Theater Bluetooth 850w", 2289.00, 1, 4); 
insert into tb_produto (nome, preco, estoque, codigo_categ) values ("Notebook Intel Core i5 1TB (8GB) 15,6” - Windows 10", 3899.00, 1, 5); 
insert into tb_produto (nome, preco, estoque, codigo_categ) values ("HD Externo 1TB USB 3.0", 399.00, 1, 5); 
insert into tb_produto (nome, preco, estoque, codigo_categ) values ("Kit Teclado e Mouse Sem Fio", 159.00, 1, 5); 

-- Faça um select que retorne os produtos com o valor maior do que 2000.
select * from tb_produto where preco > 2000.00;

-- Faça um select trazendo  os produtos com valor entre 1000 e 2000.
select * from tb_produto where preco < 2000.00;

-- Faça um select  utilizando LIKE buscando os produtos com a letra C.
select * from tb_produto where nome like "C%";

-- Faça um um select com Inner join entre tabela categoria e produto.
select * from tb_produto
	inner join tb_categoria on tb_categoria.codigo_categ = tb_produto.codigo_categ;

-- Faça um select onde traga todos os produtos de uma categoria específica (exemplo todos os produtos que são eletrodomesticos).
select * from tb_produto
	inner join tb_categoria on tb_categoria.codigo_categ = tb_produto.codigo_categ
    where tipo = "Telefonia";
