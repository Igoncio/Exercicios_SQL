create database Fabrica276;
use Fabrica276;

create table colaborador(
	id_colaborador int not null auto_increment,
    matricula char(9) not null,
    nome varchar(50) not null,
    cpf char(11) not null,
    sexo enum('F', 'M', 'O') not null,
	email varchar(100) not null,
    data_nasc date not null,
    data_admissao date not null,
    funcao varchar(100) not null,
    salario varchar(30) not null,
    endereco text not null,
    cep char(9) not null,
    cidade varchar(100) not null,
    estado varchar(100) not null,
    constraint primary key (id_colaborador)
);

select * from colaborador;

insert into colaborador (matricula, nome, cpf, sexo, email, data_nasc, data_admissao, funcao, salario, endereco, cep, cidade, estado)
values ('202218068', "Wanderley da Silva Terra", "18135813040", "M", "hasana818@uorak.com", "2011-02-11", "2022-11-26", "Aluno", "R$33,00", "Rua Genélio Heliodoro Luiz", "88309-705", "Itajaí", "Santa Catarina");

desc colaborador;

create view idade_colaborador as select id_colaborador,nome,FLOOR(DATEDIFF(CURDATE(), data_nasc) / 365) AS idade FROM colaborador 
order by data_nasc desc;


create table Departamento(
	Id_departamento int not null auto_increment,
    Nome_dep varchar(100) not null,
	constraint primary key (Id_departamento)
); 

select * from Departamento;

insert into Departamento (Nome_dep) values ("Diretoria");

create table Cargo(
	Id_cargo int not null auto_increment,
    nome_cargo varchar(100) not null,
    Id_departamento int not null,
	constraint primary key (Id_cargo)
);

select*from Cargo;

ALTER TABLE Departamento
ADD id_colaborador int not NULL;

desc Cargo;

insert into Cargo (nome_cargo, Id_departamento) values ("Diretor", 8);

create table Dependentes(
	Id_dependentes int not null auto_increment,
    n°_certidao varchar(36) not null,
    nome_depen varchar(36) not null,
    id_colaborador int not null, 
    constraint primary key (Id_dependentes)
);

select*from Dependentes;


ALTER TABLE Dependentes
ADD idade CHAR(3) NOT NULL; 

UPDATE `Fabrica276`.`Dependentes` SET `idade` = '2' WHERE (`Id_dependentes` = '1');
UPDATE `Fabrica276`.`Dependentes` SET `idade` = '6' WHERE (`Id_dependentes` = '2');
UPDATE `Fabrica276`.`Dependentes` SET `idade` = '7' WHERE (`Id_dependentes` = '3');
UPDATE `Fabrica276`.`Dependentes` SET `idade` = '8' WHERE (`Id_dependentes` = '4');
UPDATE `Fabrica276`.`Dependentes` SET `idade` = '9' WHERE (`Id_dependentes` = '5');
UPDATE `Fabrica276`.`Dependentes` SET `idade` = '53' WHERE (`Id_dependentes` = '6');
UPDATE `Fabrica276`.`Dependentes` SET `idade` = '32' WHERE (`Id_dependentes` = '7');
UPDATE `Fabrica276`.`Dependentes` SET `idade` = '12' WHERE (`Id_dependentes` = '8');
UPDATE `Fabrica276`.`Dependentes` SET `idade` = '43' WHERE (`Id_dependentes` = '9');
UPDATE `Fabrica276`.`Dependentes` SET `idade` = '64' WHERE (`Id_dependentes` = '10');
UPDATE `Fabrica276`.`Dependentes` SET `idade` = '45' WHERE (`Id_dependentes` = '11');
UPDATE `Fabrica276`.`Dependentes` SET `idade` = '2' WHERE (`Id_dependentes` = '12');
UPDATE `Fabrica276`.`Dependentes` SET `idade` = '5' WHERE (`Id_dependentes` = '13');
UPDATE `Fabrica276`.`Dependentes` SET `idade` = '7' WHERE (`Id_dependentes` = '14');
UPDATE `Fabrica276`.`Dependentes` SET `idade` = '9' WHERE (`Id_dependentes` = '15');
UPDATE `Fabrica276`.`Dependentes` SET `idade` = '2' WHERE (`Id_dependentes` = '16');
UPDATE `Fabrica276`.`Dependentes` SET `idade` = '4' WHERE (`Id_dependentes` = '17');
UPDATE `Fabrica276`.`Dependentes` SET `idade` = '5' WHERE (`Id_dependentes` = '18');
UPDATE `Fabrica276`.`Dependentes` SET `idade` = '22' WHERE (`Id_dependentes` = '19');
UPDATE `Fabrica276`.`Dependentes` SET `idade` = '16' WHERE (`Id_dependentes` = '20');
UPDATE `Fabrica276`.`Dependentes` SET `idade` = '14' WHERE (`Id_dependentes` = '21');
UPDATE `Fabrica276`.`Dependentes` SET `idade` = '17' WHERE (`Id_dependentes` = '22');
UPDATE `Fabrica276`.`Dependentes` SET `idade` = '19' WHERE (`Id_dependentes` = '24');
UPDATE `Fabrica276`.`Dependentes` SET `idade` = '23' WHERE (`Id_dependentes` = '23');
UPDATE `Fabrica276`.`Dependentes` SET `idade` = '21' WHERE (`Id_dependentes` = '25');
UPDATE `Fabrica276`.`Dependentes` SET `idade` = '12' WHERE (`Id_dependentes` = '26');
UPDATE `Fabrica276`.`Dependentes` SET `idade` = '11' WHERE (`Id_dependentes` = '27');
UPDATE `Fabrica276`.`Dependentes` SET `idade` = '10' WHERE (`Id_dependentes` = '28');
UPDATE `Fabrica276`.`Dependentes` SET `idade` = '11' WHERE (`Id_dependentes` = '29');
UPDATE `Fabrica276`.`Dependentes` SET `idade` = '3' WHERE (`Id_dependentes` = '30');
UPDATE `Fabrica276`.`Dependentes` SET `idade` = '7' WHERE (`Id_dependentes` = '31');

Alter table Departamento Add financeiro decimal(10, 2) not null;

insert into Dependentes (n°_certidao, nome_depen,id_colaborador) values ("140506", "Jõao", 1);
insert into Dependentes (n°_certidao, nome_depen,id_colaborador) values ("150405", "Pedro" , 2);
insert into Dependentes (n°_certidao, nome_depen,id_colaborador) values ("192832", "Messias", 3);
insert into Dependentes (n°_certidao, nome_depen,id_colaborador) values ("324509", "Gabriele", 4);
insert into Dependentes (n°_certidao, nome_depen,id_colaborador) values ("777777", "Armelinda", 5);
insert into Dependentes (n°_certidao, nome_depen,id_colaborador) values ("1234321", "Robertinho", 6);
insert into Dependentes (n°_certidao, nome_depen,id_colaborador) values ("909192", "Vinicius", 7);
insert into Dependentes (n°_certidao, nome_depen,id_colaborador) values ("808182", "Jair", 8);
insert into Dependentes (n°_certidao, nome_depen,id_colaborador) values ("676345", "Inacio", 9);
insert into Dependentes (n°_certidao, nome_depen,id_colaborador) values ("247523","Marina", 10);
insert into Dependentes (n°_certidao, nome_depen,id_colaborador) values ("1233543","Marquinhos", 11);
insert into Dependentes (n°_certidao, nome_depen,id_colaborador) values ("765543", "Thiagos", 12);
insert into Dependentes (n°_certidao, nome_depen,id_colaborador) values ("0000001", "Mario", 13);
insert into Dependentes (n°_certidao, nome_depen,id_colaborador) values ("20202020","Pitty", 14);
insert into Dependentes (n°_certidao, nome_depen,id_colaborador) values ("1321434",  "Eduarda", 15);
insert into Dependentes (n°_certidao, nome_depen,id_colaborador) values ("8475483",  "Isabella", 16);
insert into Dependentes (n°_certidao, nome_depen,id_colaborador) values ("4547642", "Adão", 17);
insert into Dependentes (n°_certidao, nome_depen,id_colaborador) values ("354363", "Guilherminho", 18);
insert into Dependentes (n°_certidao, nome_depen,id_colaborador) values ("436467", "Jamal", 19);
insert into Dependentes (n°_certidao, nome_depen,id_colaborador) values ("85632", "Arthur. Jr", 20);
insert into Dependentes (n°_certidao, nome_depen,id_colaborador) values ("8465729", "Gabriel Toledo", 21);
insert into Dependentes (n°_certidao, nome_depen,id_colaborador) values ("981364", "Fernandinho", 22);
insert into Dependentes (n°_certidao, nome_depen,id_colaborador) values ("019401","Fernandinha", 23);
insert into Dependentes (n°_certidao, nome_depen,id_colaborador) values ("13424", "Sylas", 24);
insert into Dependentes (n°_certidao, nome_depen,id_colaborador) values ("564573", "Draven", 25);
insert into Dependentes (n°_certidao, nome_depen,id_colaborador) values ("437543", "Rivelino", 26);
insert into Dependentes (n°_certidao, nome_depen,id_colaborador) values ("652374", "Katarina", 27);
insert into Dependentes (n°_certidao, nome_depen,id_colaborador) values ("575623", "Van Persie", 28);
insert into Dependentes (n°_certidao, nome_depen,id_colaborador) values ("575623", "Van Persie", 28);
insert into Dependentes (n°_certidao, nome_depen,id_colaborador) values ("575562", "Neymar", 2);
insert into Dependentes (n°_certidao, nome_depen,id_colaborador) values ("3254232", "Hallandinho", 10);
insert into Dependentes (n°_certidao, nome_depen,id_colaborador) values ("11111", "Beckham", 11);

/* =======================================EXERCICIOS DAS FUNÇÕES DO SQL=========================================================*/

/* EXERCICIO 1 -------------------------------------------->>>>>>>>>>>>>>>>>>>>>>>>>>>>> */

select * from colaborador;

/* EXERCICIO 2 -------------------------------------------->>>>>>>>>>>>>>>>>>>>>>>>>>>>> */

select * from Departamento;

/* EXERCICIO 3 -------------------------------------------->>>>>>>>>>>>>>>>>>>>>>>>>>>>> */

select * from Cargo;

/* EXERCICIO 4 -------------------------------------------->>>>>>>>>>>>>>>>>>>>>>>>>>>>> */

select * from Dependentes;

/* EXERCICIO 5 -------------------------------------------->>>>>>>>>>>>>>>>>>>>>>>>>>>>> */

select * from colaborador;
UPDATE `Fabrica276`.`colaborador` SET `salario` = 'R$6500,00' WHERE (`id_colaborador` = '3');

/* EXERCICIO 6 -------------------------------------------->>>>>>>>>>>>>>>>>>>>>>>>>>>>> */

select * from colaborador;
UPDATE `Fabrica276`.`colaborador` SET `endereco` = 'Av. Afonso Pena' WHERE (`id_colaborador` < '5');

/* EXERCICIO 7 -------------------------------------------->>>>>>>>>>>>>>>>>>>>>>>>>>>>> */

select * from colaborador;
SELECT nome,FLOOR(DATEDIFF(CURDATE(), data_nasc) / 365) AS data_nasc FROM colaborador 
order by data_nasc desc;

/* EXERCICIO 8 -------------------------------------------->>>>>>>>>>>>>>>>>>>>>>>>>>>>> */



/* EXERCICIO 9 -------------------------------------------->>>>>>>>>>>>>>>>>>>>>>>>>>>>> */

select * from colaborador;
select * from colaborador   where id_colaborador > 7 and id_colaborador < 19;

/* EXERCICIO 10 -------------------------------------------->>>>>>>>>>>>>>>>>>>>>>>>>>>>> */

select * from colaborador;
select * from colaborador where id_colaborador in (1,2,8,18,21);

/* EXERCICIO 11 -------------------------------------------->>>>>>>>>>>>>>>>>>>>>>>>>>>>> */

select * from colaborador;
select nome from colaborador where nome like "j%";

/* EXERCICIO 12 -------------------------------------------->>>>>>>>>>>>>>>>>>>>>>>>>>>>> */

select * from colaborador;
select nome,salario from colaborador where nome like "j%";


/* EXERCICIO 13 -------------------------------------------->>>>>>>>>>>>>>>>>>>>>>>>>>>>> */

select * from colaborador;
select nome from colaborador where nome like "%a";

/* EXERCICIO 14 -------------------------------------------->>>>>>>>>>>>>>>>>>>>>>>>>>>>> */

select * from colaborador;
select id_colaborador from colaborador;

/* EXERCICIO 15 -------------------------------------------->>>>>>>>>>>>>>>>>>>>>>>>>>>>> */

select * from colaborador;
select min(salario) from colaborador;

/* EXERCICIO 16 -------------------------------------------->>>>>>>>>>>>>>>>>>>>>>>>>>>>> */

select * from Dependentes;
select max(idade) from Dependentes;

/* EXERCICIO 17 -------------------------------------------->>>>>>>>>>>>>>>>>>>>>>>>>>>>> */

select * from colaborador;
select round(avg(salario),2) from colaborador;

/* EXERCICIO 18 -------------------------------------------->>>>>>>>>>>>>>>>>>>>>>>>>>>>> */

select count(id_colaborador),idade from idade_colaborador group by idade;

/*================================================EXERCICIOS DE INNER JOIN =======================================================*/

/* EXERCICIO 1 -------------------------------------------->>>>>>>>>>>>>>>>>>>>>>>>>>>>> */

select * from colaborador;
select * from Cargo;

Select c.id_colaborador, c.nome, ca.id_colaborador, ca.nome_cargo
from Cargo as ca 
inner join colaborador as c
on ca.id_colaborador = c.id_colaborador;

/* EXERCICIO 2 --------------------------------------->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>*/

select * from colaborador;
select * from Departamento;

select c.id_colaborador, c.nome, d.Id_departamento, d.nome_dep, d.id_colaborador
from Departamento as d
inner join colaborador as c
on d.id_colaborador = c.id_colaborador;

/* EXERCICIO 3 -------------------------------------->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>*/

select * from colaborador;
select * from Dependentes;

select c.id_colaborador, c.nome, d.id_colaborador, d.nome_depen
from Dependentes as d
inner join colaborador as c
on d.id_colaborador = c.id_colaborador; 

/* EXERCICIO 4-------------------------------------->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>*/

select * from Cargo;
select * from colaborador;
select * from Departamento;

select c.id_colaborador, c.nome, ca.Id_cargo, ca.nome_cargo, d.id_colaborador, d.nome_dep
from colaborador as c
inner join Cargo as ca
on c.id_colaborador = ca.Id_cargo
inner join Departamento as d
on c.id_colaborador = d.id_colaborador;

/* EXERCICIO 5 ------------------------------------>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>*/

select * from colaborador;
select * from Cargo;

select c.id_colaborador, c.nome, ca.id_colaborador, ca.nome_cargo, ca.Id_cargo
from Cargo as ca
right join colaborador as c
on c.id_colaborador = ca.id_colaborador and ca.nome_cargo = null; 

/* EXERCICIO 6 ------------------------------------->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>*/

select * from colaborador;
select * from Departamento;

select c.id_colaborador, c.nome, d.id_colaborador, d.Nome_dep
from Departamento as d
right join colaborador as c
on d.id_colaborador = c.id_colaborador and c.id_colaborador = null;

/* EXERCICIO 7 ------------------------------------>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>*/

select * from colaborador;
select * from Dependentes;

select c.nome, d.nome_depen
from colaborador as c
left join Dependentes as d
on c.nome = d.nome_depen where c.nome and d.nome_depen < 0;

/* EXERCICIO 8 ---------------------------------->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>*/

select * from Dependentes;
select * from colaborador;

select d.nome_depen, c.nome
from Dependentes as d
right join colaborador as c
on d.nome_depen = c.nome where d.nome_depen and c.nome < 0;