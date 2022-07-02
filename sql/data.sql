USE faceart;

--AUTHORS

INSERT INTO authors(name,infourl) 
VALUES ('Leoanardo Da Vinci','https://it.wikipedia.org/wiki/Leonardo_da_Vinci');

INSERT INTO authors(name,infourl) 
VALUES ('Caravaggio','https://it.wikipedia.org/wiki/Caravaggio');

--PAINTINGS 

INSERT INTO paintings(name,year,location,imgurl,infourl,description,id_author) 
VALUES ('Gioconda',1503,'Louvre, Parigi','https://cdn.studenti.stbm.it/images/2017/01/10/gioconda-orig.jpeg','https://it.wikipedia.org/wiki/Gioconda','A wonderful painting by Leonardo',1);

INSERT INTO paintings(name,year,location,imgurl,infourl,description,id_author) 
VALUES ('Scudo con testa di Medusa',1598,'Uffizi, Firenze','https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Medusa_by_Caravaggio.jpg/520px-Medusa_by_Caravaggio.jpg','https://it.wikipedia.org/wiki/Scudo_con_testa_di_Medusa','A wonderful painting by Caravaggio',2);
