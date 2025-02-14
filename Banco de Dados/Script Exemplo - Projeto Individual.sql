create database ProjetoIndividual;
use ProjetoIndividual;

Create table HQ (
idHQ int primary key auto_increment,
NomeHQ varchar (50),
Descrição varchar (100),
DataLançamento date
);

insert into HQ values 
(null, 'A Morte do Capitão Marvel', 'O herói é diagnosticado com câncer e vai definhando aos poucos.', 19820225),
(null, 'A Maior Heroína da Terra - #1', 'Carol Danvers pela primeira vez assumir o manto de Capitã Marvel.', 20120105),
(null, 'Inimigo Interior', 'A trama gira em torno de Carol descobrindo que possui uma lesão cerebral.', 20120214),
(null, 'Guerra Civil II', 'Carol Danvers e Tony Stark batem de frente.', 20170101),
(null, 'Capitã Marvel e Capitão Mar-Vell', 'Na trama, os dois tentam entender qual o papel deles no mundo.', 20170825);

select * from HQ;

Create table Usuario (
id int primary key auto_increment,
nome varchar (50),
email varchar (50),
login varchar (20),
senha varchar (10),
fkHQ int,
foreign key (fkHQ) references HQ(idHQ)
) auto_increment = 10;

insert into Usuario values 
(null, 'Carolina Costa', 'carol_cida@gmail.com','Vers','123a456', 2);

insert into Usuario values 
(null, 'Anna Paula Silva', 'anna@paula.com.br', 'AnnaDanvers', '565698', 2),
(null, 'Francisco Bezerra', 'franfran@hotmsil.com', 'francap', '1234F', 4),
(null, 'Fernando Santiago', 'santiago@fernando.com', 'SanVers', '787855a', 1),
(null, 'Ana Paula Costa', 'costaana80@bol.com.br', 'AnaVers', '321654p', 3),
(null, 'Guiomar de Jesus', 'guiomar@gmail.com', 'MarGuioC', '147852j', 5);

select * from Usuario;

Create table AvaliaçãoHQ (
Nota decimal (10, 2),
DataAvaliação date,
fkHQ int,
foreign key (fkHQ) references HQ(idHQ),
fkUsuário int,
foreign key (fkUsuário) references Usuario(id)
);

insert into AvaliaçãoHQ values 
(6.5, 20210216, 5, 10);

insert into AvaliaçãoHQ values 
(10, 20201205, 4, 10),
(8.5, 20210215, 1, 11),
(5.75, 20210110, 3, 12),
(7.8, 20210407, 2, 14),
(9.9, 20210309, 3, 13),
(6.66, 20210526, 1, 15);

select * from AvaliaçãoHQ;

select * from HQ join Usuário on fkHQ = HQ.idHQ;

select * from HQ 
join Usuário on fkHQ = HQ.idHQ 
join AvaliaçãoHQ on fkUsuário = Usuario.id;

select NomeHQ, Descrição, Nome, Nota from HQ join Usuário on fkHQ = HQ.idHQ 
join AvaliaçãoHQ on fkUsuário = Usuario.id;

select * from Usuário;


