drop database if exists organisation;
create database organisation;
use organisation;

create table patron (
nom varchar(25),
prenom varchar (30),
age int not null,
primary key (nom, prenom)) 
;
insert into patron values
('labis', 'nadia', 35),
('martin', 'lucas', 32),
('dubois', 'françois', 45),
('xu', 'kai', 27),
('lopez', 'sara', 26),
('dupis', 'vincent', 48),
('izumaki', 'naruto', 29),
('hwang', 'nabi', 43),
('rodrigez', 'shakira', 33),
('itto', 'arataki', 41),
('mata', 'eric', 41),
('leman', 'faride', 28),
('marcelle', 'christophe', 50),
('vale', 'maria', 25),
('lucie', 'carlas', 55);

create table clients (
nc int not null,
nom varchar (30), 
prenom varchar (30) not null,
primary key (nc)
);

insert into clients values
        (01, 'Zvonareva', 'Vera'),
        (02, 'Andreev', 'Igor'),
        (03, 'Moya', 'Carlos'),
        (04, 'Dulko', 'Gisela'),
        (05, 'Golovin', 'Tatiana'),
        (06, 'Ivanovic', 'Ana'),
        (07, 'Murray', 'Andy'),
        (08, 'Kuznetsova', 'Svetlana'),
        (09, 'Kremer', 'Anne'),
        (10, 'Vaidisova', 'Nicole'),
        (11, 'Lopez', 'Feliciano'),
        (12, 'Ancic', 'Mario'),
        (13, 'Ljubicic', 'Ivan'),
        (14, 'Harkleroad', 'Ashley'),
        (15, 'Baghdatis', 'Marcos'),
        (16, 'Simon', 'Gilles'),
        (17, 'Bartoli', 'Marion'),
        (18, 'Roddick', 'Andy'),
        (19, 'Serra', 'Florent'),
        (20, 'Razzano', 'Virginie');
        
create table vélo (
n°serie int not null, 
marque varchar (30) not null,
prix float,
primary key(n°serie) 
);

insert into vélo values
(12345678, 'bmc', 299.99),
(12546135, 'scott', 199.99),
(14785236, 'lapierre', 450.62),
(12248557, 'orbea', 1899.00),
(54236178, 'bh', 2100.34),
(54485123, 'fty', 204.99),
(54485621, 'cervelo',125.87 ),
(15478931, 'merida', 2014.24),
(17896443, 'fouji', 3541.24),
(54789931, 'ktm', 564.32),
(17894124, 'felt', 345.12),
(47896412, 'girs', 847.15),
(15478632, 'facteur', 157.21),
(19874562, 'sunn', 546.21),
(18745611, 'exs', 1845.64),
(14885213, 'rose', 789.45),
(58578963, 'massi', 784.46),
(78945612, 'live', 694.99),
(12345687, 'bmc', 478.00),
(96547812, 'basso', 789.64),
(30466789, '3t', 156.99),
(21054657, 'isaac', 465.03),
(78950134, 'gt', 548.12),
(12345645, 'seven', 954.14),
(16547814, 'gios', 1500.48),
(87946210, 'ribble', 1789.15),
(54412036, 'alane', 1200.99),
(21035568, 'stork', 2365.41),
(14579000, 'bulls', 1000);

create table constructeur (
n°nf int not null, 
nom varchar (30)not null,
primary key( n°nf));

insert into constructeur values
(1234532222, 'carlos'),
(1586546651, 'vincent'),
(1544562322, 'alaine'),
(1659466664, 'riberri'),
(1245454121, 'mariane'),
(1484354635, 'ames'),
(1794782112, 'glorine'),
(1420012365, 'aespa'),
(201201302, 'gotseven'),
(1200144778, 'ikon'),
(1859856214, 'ramata'),
(1965478592, 'etina'),
(1523697412, 'tanui'),
(1932563256, 'jyudt'),
(1874587458, 'kurop'),
(1574521444, 'prolike');

create table magasin (
n°siret int not null,
nom varchar (30) not null,
localisation varchar (40) not null,
nompatron varchar (20) not null,
prenompatron varchar(30) not null,
primary key (n°siret),
foreign key (nompatron, prenompatron) references  patron (nom, prenom) on delete cascade on update cascade);

insert into magasin values
(1234567890, 'encourse', 'poissy','lopez', 'sara'),
(1583691470, 'chopbike', 'meulan', 'dupis', 'vincent'),
(1472583690, 'iswatbike', 'defence', 'izumaki', 'naruto'),
(1692581470, 'bikeseller', 'paris', 'hwang', 'nabi'),
(1412583690, 'loubnabike', 'lyon', 'rodrigez', 'shakira'),
(1632581470, 'bikepro', 'nice', 'itto', 'arataki'),
(1795462130, 'lifebike', 'paris', 'mata', 'eric'),
(1461237890, 'vitabike', 'bordeaux', 'leman', 'faride'),
(1134567890, 'lovebike', 'ponctoise', 'marcelle', 'christophe'),
(1874582160, 'friendbike', 'cergy', 'vale', 'maria'),
(1544854165, 'velis', 'osny', 'lucie', 'carlas'),
(1141232623, 'firstbike', 'aubergenville', 'mata', 'eric'),
(1255532656, 'chaouchbike', 'velizy', 'lucie', 'carlas'),
(1112546565, 'raniabike', 'versailles','dupis', 'vincent');


create table vendeur (
n° int not null,
nom varchar (30) not null, 
prenom varchar (30) not null, 
adresse varchar (30)not null, 
telephone int not null,
nompatron varchar (25),
prenompatron varchar (30),
primary key (n°),
foreign key (nompatron, prenompatron) references  patron (nom, prenom) on delete cascade on update cascade);

insert into vendeur values
(123, 'soleil', 'mathias', 'mureaux', 0625326895, 'labis', 'nadia'),
(124, 'baba', 'soulé', 'meulan', 0621557865, 'martin', 'lucas'),
(125, 'steve', 'gaetan',  'melun', 0624597581,'itto', 'arataki'),
(126, 'chantier', 'yvette', 'poissy', 0654556623, 'mata', 'eric'),
(127, 'obama', 'carlos', 'elancourt', 0789652366, 'leman', 'faride'),
(128, 'fremier', 'latouche', 'puteaux', 0754852323, 'marcelle', 'christophe'),
(129, 'mariecurie', 'mathias', 'sevre', 0756223366, 'vale', 'maria'),
(130, 'rossi', 'anna', 'nice', 0625789612, 'lucie', 'carlas'),
(131, 'alexis', 'antoine', 'antibes', 0645789555,'rodrigez', 'shakira'),
(132, 'dubois', 'martine', 'bron', 0725648931, 'hwang', 'nabi'),
(133, 'lepeltier', 'gerome', 'venissieux', 0666523699, 'izumaki', 'naruto'),
(134, 'amelie', 'nabe', 'bordeaux', 0645689523, 'dupis', 'vincent'),
(135, 'todis', 'mathias', 'cenon', 0795418842, 'lopez', 'sara'),
(136, 'sala', 'mohamed', 'osny', 0625478215, 'dubois', 'françois'),
(137, 'peter', 'harris', 'ponctoise', 0755622662, 'xu', 'kai'),
(138, 'style', 'sia', 'cergy', 0625841558,'lopez', 'sara'),
(139, 'laporte', 'margeaux', 'eragny', 0725489631, 'izumaki', 'naruto'),
(140, 'pictus', 'lorent', 'ponctoise', 0654788963, 'xu', 'kai'),
(141, 'tobis', 'maxence', 'aubergenville', 0789541326, 'dubois', 'françois'),
(142, 'solange', 'mathis', 'tessancourt', 0698442332, 'lucie', 'carlas'),
(143, 'soleille', 'lune', 'mantes', 0625326894, 'dupis', 'vincent'),
(144, 'sola', 'esperanza', 'orgeval', 0685423655, 'hwang', 'nabi'),
(145, 'salis', 'marie', 'trappes', 0625326895, 'lopez', 'sara');


create table fabrique (
n°nf int not null,
n°serie int not null,
primary key (n°serie, n°nf),
foreign key(n°nf) references constructeur (n°nf) on delete cascade on update cascade,
foreign key (n°serie) references vélo (n°serie) on delete cascade on update cascade);

insert into fabrique values
(1234532222, 12345678),
(1586546651, 54789931),
(1544562322, 17896443),
(1659466664, 15478931),
(1245454121, 54485621),
(1484354635, 54485123),
(1794782112, 54236178),
(1420012365, 12248557),
(201201302, 14785236),
(1200144778, 12546135),
(1859856214, 78950134),
(1965478592, 12345645),
(1523697412, 16547814),
(1932563256, 87946210),
(1874587458, 54412036),
(1574521444, 21035568);

create table vendre(
n°vendeur int not null, 
n°serie int not null,
nc int not null,
primary key (n°vendeur,n°serie, nc),
foreign key (n°vendeur) references vendeur (n°) on delete cascade on update cascade,
foreign key (nc) references clients (nc) on delete cascade on update cascade,
foreign key (n°serie) references vélo (n°serie) on delete cascade on update cascade);

insert into vendre values
(123, 12345678, 01),
(124, 12546135, 02),
(125, 14785236, 03),
(126, 12248557, 04),
(127, 54236178, 05),
(128, 54485123, 06),
(129, 54485621, 07),
(130, 15478931, 08),
(131, 17896443, 09),
(132, 54789931, 10),
(133, 17894124, 11),
(134, 47896412, 12),
(135, 15478632, 13),
(134, 19874562, 14),
(135, 18745611, 15),
(136, 14885213, 16),
(137, 58578963, 17),
(138, 78945612, 18),
(139, 12345687, 19),
(140, 96547812, 20);


create table acheter (
n°serie int not null,
nompatron varchar(30),
prenompatron varchar (30),
nco varchar(30),
date varchar(30),
primary key(n°serie, nompatron, prenompatron),
foreign key (n°serie) references vélo (n°serie),
foreign key(nompatron, prenompatron) references patron (nom, prenom) on delete cascade on update cascade);

insert into acheter values
(12345678, 'labis', 'nadia','555652lk', '11/02/2021'),
(12546135, 'martin', 'lucas', '452136ml','06/05/2021'),
(14785236, 'dubois', 'françois', '875432oi', '31/05/2020'),
(12248557, 'hwang', 'nabi','698743pl', '26/07/2021'),
(54236178, 'izumaki', 'naruto', '012356gh', '14/03/2020'),
(54485123, 'xu', 'kai', '365478fg', '14/08/2020'),
(54485621, 'lopez', 'sara', '032015tf', '6/05/2021'),
(15478931, 'dupis', 'vincent', '507030sd', '31/09/2021'),
(17896443, 'itto', 'arataki', '708090sq', '2/5/12546'),
(54789931, 'rodrigez', 'shakira', '204050gf', '5/05/2020'),
(54789931, 'itto', 'arataki', '154889ml', '24/12/2021'),
(17894124, 'vale', 'maria', '236540bv',14/06/2020 ),
(47896412,'lucie', 'carlas', '206485cv', '15/09/2021'),
(15478632, 'leman', 'faride', '648091xc', '28/10/2021'),
(19874562, 'lucie', 'carlas', '314751kx', '19/07/2021'),
(18745611, 'vale', 'maria', '312046gw', '18/03/2020'),
(14885213, 'marcelle', 'christophe', '214873ws', '30/05/2021'),
(58578963, 'leman', 'faride', '354860sz', '26/04/2020');

-- 2) REQUÊTES D'INTERROGATION 
--  1) quels sont les numéros de siret des magasins qui se situe à paris 

SELECT n°siret
FROM magasin 
WHERE localisation = 'Paris';

-- 2) quels sont les types de vélos les plus vendu par ordre croissant de n serie (à revoir)

SELECT marque 
FROM velo 
WHERE  vendre
ORDER BY n°serie;

-- 3) afficher le nom le prenom et l'age de patron (à revoir)

SELECT nom, prenom, age
FROM patron;

-- 4) afficher les n°serie, prix, marque de l'ensemble  de vélo dont le prix est inferieur a 1000

SELECT n°serie, prix, marque
FROM vélo
WHERE prix <= 1000;


-- 5) afficher pour chaque patron les achats de vélos effectués
SELECT *
FROM patron inner join acheter
ON patron.nom = acheter.nompatron AND patron.prenom = acheter. prenompatron;

 
-- 6) afficher la moyenne de prix par marque de vélo
SELECT marque, AVG (prix) AS moyenne
FROM vélo
GROUP BY marque;

-- 7) afficher les velos vendus par les vendeurs

SELECT nom, prenom, marque
FROM vendeur  JOIN vendre ON n° = n°vendeur
			  JOIN vélo ON vélo.n°serie = vendre.n°serie;

-- 8) Numero de serie des vélos ayant pour marque FtY et bmc
SELECT n°serie
FROM vélo
WHERE marque = 'fty' or marque = 'bmc';

-- 9) quel est le plus jeune patron 
SELECT  nom, prenom, min(age)
from patron; 

-- 10) trier les patrons par orde decroissant
SELECT *
FROM patron
ORDER BY nom, age DESC;


-- 3)REQUÊTES DE MODIFICATION
-- 1) le vendeur 125 a changé d'adresse. nouvelle adresse : elancourt

UPDATE vendeur
SET adresse = 'elancourt'
WHERE n° = 125;

-- 2) les prix des velos ont augmenté de 20% 
UPDATE vélo 
SET prix = prix + (prix * 0.2)
WHERE marque = 'bmc' or marque = 'ktm';

-- 3) le velo tel le n°serie = 12546135 n'est plus fabriqué
DELETE FROM vélo 
WHERE n°serie = 12546135;

-- 4) Mettez les noms de tous les magasins en_majuscule

UPDATE magasin
SET nom = UPPER(nom);

-- 5) Supprimez les magasins dont la localisation commence par P

DELETE FROM magasin 
WHERE localisation like 'P%';
	  
-- 6) insérer une liste de vendeurs 
insert into vendeur values
(223, 'bts', 'suga', 'paris', 0622544585),
(224, 'bangchan', 'ahmed', 'meulan', 0621523665),
(225, 'izone', 'nako',  'melun', 0625497581),
(226, 'loona', 'yves', 'poissy', 0654556623),
(227, 'michealle', 'carlosa', 'elancourt', 0789592366),
(028, 'fermier', 'labouche', 'puteaux', 0754546723),
(329, 'ross', 'mardlide', 'sevre', 0756745766),
(230, 'ra', 'anna', 'nice', 06257225712),
(231, 'alexis', 'antoine', 'antibes', 0645789579),
(532, 'dubois', 'martine', 'bron', 0725643251);

-- 4)VUES
 CREATE VIEW Patron_Mag AS
SELECT nompatron, prenompatron
FROM magasin
WHERE prenompatron = 'naruto';

CREATE VIEW acheterplus (n°serie, nompatron, prenompatron, nco)
AS SELECT A.n°serie, nompatron, prenompatron, nco
FROM vélo V, acheter A 
WHERE V.n°serie = A.n°serie;

create user abis identified by '123';
grant ALL privileges on organisation.* TO abis;

create user lili identified by '954756';
grant update, delete, select on organisation.* to lili;