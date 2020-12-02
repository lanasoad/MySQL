create database db_rh;

use db_rh;

create table tb_funcionarios (
id bigint (2) auto_increment,
nome varchar (25) not null,
admissao date not null,
setor int (1),
ativo boolean,

primary key (id)
);

alter table tb_funcionarios add column salario double;

insert into tb_funcionarios (nome, admissao, setor, ativo) values ("Gustavo", "2020-11-25", 1, true);
update tb_funcionarios set salario = 6000 where id = 1;
insert into tb_funcionarios (nome, admissao, setor, ativo, salario) values ("Laíse", "2019-04-26", 1, true, 7500);
insert into tb_funcionarios (nome, admissao, setor, ativo, salario) values ("Vitor", "2020-06-13", 3, true, 5800);
insert into tb_funcionarios (nome, admissao, setor, ativo, salario) values ("Bruno F.", "2018-09-02", 2, false, 6000);
insert into tb_funcionarios (nome, admissao, setor, ativo, salario) values ("Alana", "2020-11-03", 2, false, 1900);
insert into tb_funcionarios (nome, admissao, setor, ativo, salario) values ("Erci", "2017-11-18", 1, true, 8100);
insert into tb_funcionarios (nome, admissao, setor, ativo, salario) values ("Mateus V.", "2019-08-05", 3, false, 6100);
insert into tb_funcionarios (nome, admissao, setor, ativo, salario) values ("Gabriel", "2020-10-02", 3, true, 1900);
insert into tb_funcionarios (nome, admissao, setor, ativo, salario) values ("Beatriz", "2018-07-10", 2, true, 5750);
insert into tb_funcionarios (nome, admissao, setor, ativo, salario) values ("Yuri", "2020-01-28", 1, false, 1900);
insert into tb_funcionarios (nome, admissao, setor, ativo, salario) values ("Andressa", "2019-02-27", 1, true, 3900);
insert into tb_funcionarios (nome, admissao, setor, ativo, salario) values ("Pamela", "2020-01-08", 1, true, 4500);
insert into tb_funcionarios (nome, admissao, setor, ativo, salario) values ("João Paulo", "2020-07-15", 1, true, 5200);
insert into tb_funcionarios (nome, admissao, setor, ativo, salario) values ("Cinthia", "2019-06-28", 1, true, 6300);
insert into tb_funcionarios (nome, admissao, setor, ativo, salario) values ("Ana C.", "2019-06-28", 1, true, 1900);

-- Faça um select que retorne os funcionários com o salário maior do que 2000.
select nome, salario from tb_funcionarios where salario > 2000;

-- Faça um select que retorne os funcionários com o salário menor do que 2000.
select nome, salario from tb_funcionarios where salario < 2000;

-- Delete pelo menos um dado de acordo com a sua preferência.
delete from tb_funcionarios where id = 14;

-- Ao término atualize um dado desta tabela através de uma query de atualização.
update tb_funcionarios set salario = 8500 where id = 9;

select * from tb_funcionarios;
