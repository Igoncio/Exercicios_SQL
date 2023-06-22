create database Netiflix;
use Netiflix;

create table usuarios(
id_usuario int not null auto_increment,
cpf int(11) not null,
nome varchar(100) not null,
email varchar(100) not null,
senha varchar(100) not null, 
constraint primary key (id_usuario)
);

alter table usuarios modify cpf char (20) not null;
select * from usuarios;


/*===============================Insira 25 usuários================================================================*/
insert into usuarios(cpf, nome, email, senha) values
(021.339-34,'Jair' ,'eusterio8626@uorak.com', 1234 ),
('284.737.640-21','Rosana', 'yichen5040@uorak.com', 4321),
('609.746.030-9', 'Messias', 'bridget1141@uorak.com', 42134),
('009.632.620-41', 'Inassio', 'clariza9836@uorak.com', 4936739),
('072.077.240-04', 'Julliete', 'christiana2328@uorak.com', 42363),
('668.083.640-95', 'Guilherme', 'medarda4127@uorak.com', 003852),
('170.959.380-67', 'Leadro', 'nailya3857@uorak.com', 46546),
('123.454.130-00', 'Joceyr', 'mikele5053@uorak.com', 436357),
('919.313.970-58', 'Vini', 'renate1385@uorak.com', 54745),
('564.789.540-99', 'Pelé', 'teodula4426@uorak.com', 23522),
('610.066.160-80', 'Neymar', 'jiao7359@uorak.com', 4625624),
('792.039.960-28', 'Enilda', 'latosha6812@uorak.com', 5474),
('615.897.840-06', 'Thiago', 'royal3605@uorak.com', 684673),
('028.092.860-27', 'Ederson', 'sirio1329@uorak.com',635463),
('931.246.490-60', 'Laysa', 'geraxane4385@uorak.com', 473682),
('504.696.740-59', 'Arthur', 'jasminka9236@uorak.com', 762573),
('122.270.630-09', 'Zé da Boina', 'siricio5269@uorak.com', 5837584),
('087.158.240-63', 'Juliana', 'boualam1591@uorak.com', 85352),
('346.231.330-44', 'Anny', 'ezequiela5480@uorak.com', 57221),
('254.688.530-86','Renan', 'buford9339@uorak.com', 6385373),
('427.086.880-57', 'Igor', 'magdolna9449@uorak.com',143654),
('971.782.310-33', 'Lucas', 'mouaad7803@uorak.com', 5473),
('960.496.140-32', 'Teandra', 'ayana1716@uorak.com', 6474),
('964.288.400-30', 'Wolney', 'sergii5398@uorak.com', 63562),
('532.662.880-50', 'Roberto', 'tarsicio9200@uorak.com', 5732);
/*======================================================================================================================================================*/

create table play(
id_play int not null auto_increment,
data_play datetime default current_timestamp,
id_usuario int not null,
id_series int not null,
constraint primary key (id_play),
FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
foreign key (id_series) references series(id_series)
);

select * from play;
alter table play modify column data_play date not null default current_timestamp();

/*===============================Insira 15 plays================================================================*/
 insert into play(data_play, id_usuario, id_series) values 
(default, 7, 1),
(default, 9, 2),
(default, 11, 3),
(default, 12, 4),
(default, 21, 5),
(default, 6, 10),
(default, 9, 6),
(default, 23, 7),
(default, 25, 8),
(default, 15, 9),
(default, 17, 10),
(default, 19, 2),
(default, 20, 3),
(default, 3, 1),
(default, 2, 3);
/*======================================================================================================================================================*/


create table series(
id_series int not null auto_increment,
nome varchar(100) not null,
sinopse text not null,
temporadas smallint,
constraint primary key (id_series)
);

select * from series;

/*===============================Insira 10 Série================================================================*/

select * from series;

insert into series(nome, sinopse, temporadas) values
('Dark', 'frente, do your respeito, chifre. killers o dessa', 3),
('Alice in Bordland',  'frente, do your respeito, chifre. killers o dessa',4 ),
('Como vender drogas online',  'frente, do your respeito, chifre. killers o dessa', 5),
('Friend',  'frente, do your respeito, chifre. killers o dessa', 6),
('Stranger things',  'frente, do your respeito, chifre. killers o dessa', 1),
('Arcane',  'frente, do your respeito, chifre. killers o dessa', 2),
('TWD',  'frente, do your respeito, chifre. killers o dessa', 3),
('Cyberpunk edrruners',  'frente, do your respeito, chifre. killers o dessa', 2),
('O Arquivo',  'frente, do your respeito, chifre. killers o dessa', 1),
('1986',  'frente, do your respeito, chifre. killers o dessa', 5);

/*================================================Utilizando a cláusula INNER JOIN do MySQL:​=========================================================================================*/

/*======Exercicio 1=========================================================================================*/

select * from usuarios;
select * from play;

select u.id_usuario, u.nome, p.id_usuario, p.id_series, p.id_play
from usuarios as u
inner join play as p
on u.id_usuario = p.id_usuario;

/*======Exercicio 2=========================================================================================*/

select * from series;
select * from play;

select s.id_series ,s.nome, p.id_series, p.data_play
from series as s
inner join play as p
on s.id_series = p.id_series;

/*======Exercicio 3=========================================================================================*/

select * from usuarios;
select * from series;

select usuarios.nome,  series.nome from play 
inner join usuarios on usuarios.id_usuario = play.id_usuario
inner join series on series.id_series = play.id_series;