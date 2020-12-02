create database db_rh2;

use db_rh2;

create table tb_cargo (
id_cargo bigint (2) auto_increment,
cargo varchar (40) not null,
experiencia varchar (30),
turno boolean,

primary key (id_cargo)
);

create table tb_funcionario (
id_func bigint (2) auto_increment,
nome varchar (30) not null,
salario double,
admissao date,
ativo boolean,
id_cargo bigint (2),

foreign key (id_cargo) references tb_cargo (id_cargo),
primary key (id_func)
);

-- popular tabela tb_cargo
insert into tb_cargo (cargo, experiencia, turno) values ("Programador(a) Full-Stack", "Júnior", true); -- 1950.00
insert into tb_cargo (cargo, experiencia, turno) values ("Programador(a) Full-Stack", "Pleno", true); -- 4200.00
insert into tb_cargo (cargo, experiencia, turno) values ("Desenvolvedor(a) Mobile", "Sênior", true); -- 6500.00
insert into tb_cargo (cargo, experiencia, turno) values ("Desenvolvedor(a) Mobile", "Pleno", true); -- 4150.00
insert into tb_cargo (cargo, experiencia, turno) values ("Desenvolvedor(a) Mobile", "Master", true); -- 8900.00

-- popular tabela tb_funcionario
insert into tb_funcionario (nome, salario, admissao, ativo, id_cargo) values ("Carla José Castro", 1950.00, "2019-10-10", 1, 1);
insert into tb_funcionario (nome, salario, admissao, ativo, id_cargo) values ("Giuliana dos Santos", 4200.00, "2018-10-10", 1, 2);
insert into tb_funcionario (nome, salario, admissao, ativo, id_cargo) values ("Tobias Freitas", 6500.00, "2019-10-10", 0, 3);
insert into tb_funcionario (nome, salario, admissao, ativo, id_cargo) values ("Juliana Lopes", 4150.00, "2016-10-10", 1, 4);
insert into tb_funcionario (nome, salario, admissao, ativo, id_cargo) values ("Carol Bastos", 8900.00, "2017-10-10", 1, 5);
insert into tb_funcionario (nome, salario, admissao, ativo, id_cargo) values ("Mariana Rodrigues", 1950.00, "2019-10-10", 1, 1);
insert into tb_funcionario (nome, salario, admissao, ativo, id_cargo) values ("Maria Paula Santos", 4200.00, "2019-10-10", 0, 2);
insert into tb_funcionario (nome, salario, admissao, ativo, id_cargo) values ("Carina Rosângela Freitas", 6500.00, "2018-10-10", 1, 3);
insert into tb_funcionario (nome, salario, admissao, ativo, id_cargo) values ("Hélio Teixeira", 4150.00, "2018-10-10", 1, 4);
insert into tb_funcionario (nome, salario, admissao, ativo, id_cargo) values ("Diana de Jesus", 8900.00, "2020-10-10", 1, 5);
insert into tb_funcionario (nome, salario, admissao, ativo, id_cargo) values ("Suellen Alves", 1950.00, "2019-10-10", 1, 1);
insert into tb_funcionario (nome, salario, admissao, ativo, id_cargo) values ("Vanda Pereira", 4200.00, "2018-10-10", 1, 2);
insert into tb_funcionario (nome, salario, admissao, ativo, id_cargo) values ("Lis Souza", 6500.00, "2018-10-10", 0, 3);
insert into tb_funcionario (nome, salario, admissao, ativo, id_cargo) values ("Chris Gomes", 4150.00, "2016-10-10", 1, 4);
insert into tb_funcionario (nome, salario, admissao, ativo, id_cargo) values ("Beatriz Veracruz", 8900.00, "2015-10-10", 1, 5);

-- Faça um select que retorne os funcionários com o salário maior do que 2000.
select * from tb_funcionario where salario > 2000.00;

-- Faça um select trazendo  os funcionários com salário entre 1000 e 2000.
select * from tb_funcionario where salario > 999.00 and salario < 2001.00;

-- Faça um select  utilizando LIKE buscando os Funcionários com a letra C.
select * from tb_funcionario where nome like "C%";

-- Faça um um select com Inner join entre  tabela cargos e funcionarios.
select * from tb_funcionario
	inner join tb_cargo on tb_cargo.id_cargo = tb_funcionario.id_cargo; --

-- Faça um select onde traga todos os funcionários de um cargo específico (exemplo todos os funcionários que são programador).
select * from tb_funcionario
	inner join tb_cargo on tb_cargo.id_cargo = tb_funcionario.id_cargo 
    where cargo = "Programador(a) Full-Stack";
    