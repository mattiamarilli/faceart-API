USE faceart;

--AUTHORS

INSERT INTO authors(name_author,infourl_author) 
VALUES ('Leoanardo Da Vinci','https://it.wikipedia.org/wiki/Leonardo_da_Vinci');

INSERT INTO authors(name_author,infourl_author) 
VALUES ('Caravaggio','https://it.wikipedia.org/wiki/Caravaggio');

INSERT INTO authors(name_author, infourl_author)
VALUES ('Vincent Van Gogh', 'https://it.wikipedia.org/wiki/Vincent_van_Gogh')

INSERT INTO authors(name_author, infourl_author)
VALUES ('Raffaello Sanzio', 'https://it.wikipedia.org/wiki/Raffaello_Sanzio')

INSERT INTO authors(name_author, infourl_author)
VALUES ('Antonello da Messina', 'https://it.wikipedia.org/wiki/Antonello_da_Messina')

INSERT INTO authors(name_author, infourl_author)
VALUES ('Tiziano Vecellio', 'https://it.wikipedia.org/wiki/Tiziano_Vecellio')

--PAINTINGS 

INSERT INTO paintings(name,year,location,imgurl,infourl,description,id_author) 
VALUES ('Gioconda',1503,'Louvre, Parigi','https://mattiamarilli.github.io/faceapi-img/gioconda.jpeg','https://it.wikipedia.org/wiki/Gioconda','A wonderful painting by Leonardo',1);

INSERT INTO paintings(name,year,location,imgurl,infourl,description,id_author) 
VALUES ('Scudo con testa di Medusa',1598,'Uffizi, Firenze','https://mattiamarilli.github.io/faceapi-img/medusa.jpg','https://it.wikipedia.org/wiki/Scudo_con_testa_di_Medusa','A wonderful painting by Caravaggio',2);


