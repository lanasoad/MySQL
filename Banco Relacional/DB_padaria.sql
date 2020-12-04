create database db_padoca;

use db_padoca;

create table tb_bolo (
idBolo bigint auto_increment,
descricao varchar (30) not null,
amanhecido boolean not null,
valor decimal (10,2) not null,

primary key (idBolo)
);

create table tb_cliente (
idCliente bigint auto_increment,
nome varchar (255) not null,
cpf char(11) not null,
celular char (12) not null,
endereco varchar (255),
numero int not null,
cep char (8) not null, 

primary key (idCliente)
);

create table tb_pao (
idPao bigint auto_increment,
descricao varchar (70) not null,
disponivel boolean not null,
valor decimal (10,2) not null,

primary key (idPao)
);

create table tb_bebida (
idBebida bigint auto_increment,
descricao varchar (60) not null,
disponivel boolean not null,
valor decimal (10,2) not null,

primary key (idBebida)
);

create table tb_forma_pag (
idFormaPag int auto_increment,
descricao varchar (50) not null,

primary key (idFormaPag)
);

create table tb_comanda (
idComanda bigint auto_increment,
descricao varchar (255) not null,
pao_id bigint not null,
bolo_id bigint not null,
pagamento_id int not null,
bebida_id bigint not null,
cliente_id bigint not null,

primary key (idComanda),
foreign key (bolo_id) references tb_bolo (idBolo),
foreign key (pao_id) references tb_pao (idPao),
foreign key (cliente_id) references tb_cliente (idCliente),
foreign key (bebida_id) references tb_bebida (idBebida),
foreign key (pagamento_id) references tb_forma_pag (idFormaPag)
);

insert into tb_bolo (descricao, amanhecido, valor) values ("Limão", True, 10.50);
insert into tb_bolo (descricao, amanhecido, valor) values ("Doce de leite com paçoca", True, 18.50);
insert into tb_bolo (descricao, amanhecido, valor) values ("Ninho trufado", True, 22.50);
insert into tb_bolo (descricao, amanhecido, valor) values ("Cenoura com chocolate", True, 13.50);
insert into tb_bolo (descricao, amanhecido, valor) values ("Fubá com goiabada", True, 15.50);
 
select * from tb_bolo;

insert into tb_cliente (nome, cpf, celular, endereco, numero, cep) values ("Gustavo Broch", "5673439080", "011988769090", "Rua das Flores", 34, "78790011");
insert into tb_cliente (nome, cpf, celular, endereco, numero, cep) values ("Laíse Galvão", "12125549080", "019978659000", "Rua Galeão Branco", 434, "09768450");
insert into tb_cliente (nome, cpf, celular, endereco, numero, cep) values ("Alana Rodrigues", "54683432900", "011945772131", "Rua dos Pássaros", 102, "09354777");
insert into tb_cliente (nome, cpf, celular, endereco, numero, cep) values ("Vitor Borela", "44576789811", "019980876645", "Rua Gavião Real", 311, "08223120");
insert into tb_cliente (nome, cpf, celular, endereco, numero, cep) values ("Bruno Falango", "40098771234", "019987754043", "Rua Jubarte Ramos", 18, "08445443");

select * from tb_cliente;

insert into tb_pao (descricao, disponivel, valor) values ("Pão de queijo", True, 2.50);
insert into tb_pao (descricao, disponivel, valor) values ("Pão de milho com coco", True, 4.00);
insert into tb_pao (descricao, disponivel, valor) values ("Pão de coco", True, 1.80);
insert into tb_pao (descricao, disponivel, valor) values ("Pão francês", True, 0.50);
insert into tb_pao (descricao, disponivel, valor) values ("Pão na chapa com presunto e queijo", True, 3.50);

select * from tb_pao;

insert into tb_bebida (descricao, disponivel, valor) values ("Suco de laranja", True, 3.50);
insert into tb_bebida (descricao, disponivel, valor) values ("Vitamina de abacate", True, 5.50);
insert into tb_bebida (descricao, disponivel, valor) values ("Café com leite", True, 3.00);
insert into tb_bebida (descricao, disponivel, valor) values ("Água", True, 2.50);
insert into tb_bebida (descricao, disponivel, valor) values ("Refrigerante", True, 4.50);

select * from tb_bebida;

insert into tb_forma_pag (descricao) values ("Cartão de crédito");
insert into tb_forma_pag (descricao) values ("Cartão de débito");
insert into tb_forma_pag (descricao) values ("Dinheiro");
insert into tb_forma_pag (descricao) values ("Vale Refeição (RF)");
insert into tb_forma_pag (descricao) values ("Uber Eats");

select * from tb_bebida;

insert into tb_Comanda (descricao, pao_id, bolo_id, pagamento_id, bebida_id, cliente_id) values ("comanda", 1, 2, 3, 4, 5);
insert into tb_Comanda (descricao, pao_id, bolo_id, pagamento_id, bebida_id, cliente_id) values ("comanda + viagem", 4, 2, 5, 1, 3);
insert into tb_Comanda (descricao, pao_id, bolo_id, pagamento_id, bebida_id, cliente_id) values ("comanda", 1, 2, 3, 4, 5);
insert into tb_Comanda (descricao, pao_id, bolo_id, pagamento_id, bebida_id, cliente_id) values ("viagem", 1, 2, 5, 3, 4);
insert into tb_Comanda (descricao, pao_id, bolo_id, pagamento_id, bebida_id, cliente_id) values ("viagem", 3, 2, 5, 4, 1);

select * from tb_Comanda;