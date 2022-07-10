USE faceart;

-- authors

INSERT INTO authors(name_author,infourl_author) 
VALUES ('Leoanardo Da Vinci','https://it.wikipedia.org/wiki/Leonardo_da_Vinci');

INSERT INTO authors(name_author,infourl_author) 
VALUES ('Caravaggio','https://it.wikipedia.org/wiki/Caravaggio');

INSERT INTO authors(name_author, infourl_author)
VALUES ('Vincent Van Gogh', 'https://it.wikipedia.org/wiki/Vincent_van_Gogh');

INSERT INTO authors(name_author, infourl_author)
VALUES ('Raffaello Sanzio', 'https://it.wikipedia.org/wiki/Raffaello_Sanzio');

INSERT INTO authors(name_author, infourl_author)
VALUES ('Antonello da Messina', 'https://it.wikipedia.org/wiki/Antonello_da_Messina');

INSERT INTO authors(name_author, infourl_author)
VALUES ('Tiziano Vecellio', 'https://it.wikipedia.org/wiki/Tiziano_Vecellio');

INSERT INTO authors(name_author, infourl_author)
VALUES ('Andy Warhol', 'https://it.wikipedia.org/wiki/Andy_Warhol');

INSERT INTO authors(name_author, infourl_author)
VALUES ('Gustave Courbet', 'https://it.wikipedia.org/wiki/Gustave_Courbet');

INSERT INTO authors(name_author, infourl_author)
VALUES ('Sandro Botticelli', 'https://it.wikipedia.org/wiki/Sandro_Botticelli');

INSERT INTO authors(name_author, infourl_author)
VALUES ('Jan Vermeer', 'https://it.wikipedia.org/wiki/Jan_Vermeer');

INSERT INTO authors(name_author, infourl_author)
VALUES ('Grant Wood', 'Grant_Wood');

-- paintings

INSERT INTO paintings(name,year,location,imgurl,infourl,description,id_author) 
VALUES ('Gioconda',1503,'Museo del Louvre, Parigi','https://mattiamarilli.github.io/faceapi-img/gioconda.jpeg','https://it.wikipedia.org/wiki/Gioconda','A wonderful painting by Leonardo Da Vinci',1);

INSERT INTO paintings(name,year,location,imgurl,infourl,description,id_author) 
VALUES ('Scudo con testa di Medusa',1598,'Galleria degli Uffizi, Firenze','https://mattiamarilli.github.io/faceapi-img/medusa.jpg','https://it.wikipedia.org/wiki/Scudo_con_testa_di_Medusa','A wonderful painting by Caravaggio',2);

INSERT INTO paintings(name, year, location, imgurl, infourl, description, id_author)
VALUES ('Dama col liocorno', 1505, 'Galleria Borghese, Roma', 'https://mattiamarilli.github.io/faceapi-img/damaLiocorno.jpg', 'https://it.wikipedia.org/wiki/Dama_col_liocorno', 'A wonderful painting by Raffaello Sanzio', 4);

INSERT INTO paintings(name, year, location, imgurl, infourl, description, id_author)
VALUES ('La Bella', 1536, 'Galleria Palatina, Firenze', 'https://mattiamarilli.github.io/faceapi-img/laBella.jpg', 'https://it.wikipedia.org/wiki/La_Bella', 'A wonderful painting by Tiziano Vecellio', 6);

INSERT INTO paintings(name, year, location, imgurl, infourl, description, id_author)
VALUES ('Nascita di Venere', 1485, 'Galleria degli Uffizi, Firenze', 'https://mattiamarilli.github.io/faceapi-img/venere.jpg', 'https://it.wikipedia.org/wiki/Nascita_di_Venere', 'A wonderful painting by Sandro Botticelli', 9);

INSERT INTO paintings(name, year, location, imgurl, infourl, description, id_author)
VALUES ("Ritratto d'uomo", 1476, 'National Gallery, Londra', 'https://mattiamarilli.github.io/faceapi-img/ritrattoUomo.jpg', "https://it.wikipedia.org/wiki/Ritratto_d'uomo_(Antonello_da_Messina_Londra)", 'A wonderful painting by Antonello da Messina', 5);

INSERT INTO paintings(name, year, location, imgurl, infourl, description, id_author)
VALUES ("Ragazza col turbante", 1666, 'Mauritshuis, Paesi Bassi', 'https://mattiamarilli.github.io/faceapi-img/ragazzaTurbante.jpg', "https://it.wikipedia.org/wiki/Ragazza_col_turbante", 'A wonderful painting by Jan Vermeer', 10);

INSERT INTO paintings(name, year, location, imgurl, infourl, description, id_author)
VALUES ('American Gotic', 1930, 'Art Institute of Chicago, Chicago', 'https://mattiamarilli.github.io/faceapi-img/americanGotic.jpeg', "https://it.wikipedia.org/wiki/American_Gothic_(dipinto)", 'A wonderful painting by Grant Wood', 11);

INSERT paintings(name, year, location, imgurl, infourl, description, id_author)
VALUES ('Ritratto di Elisabetta Gonzaga', 1505, "Galleria degli Uffizi, Firenze", 'https://mattiamarilli.github.io/faceapi-img/elisabettaGonzaga.jpg', 'https://it.wikipedia.org/wiki/Ritratto_di_Elisabetta_Gonzaga', 'A wonderful painting by Raffaello Sanzio', 4);

-- tips (3 tips for painting)

INSERT INTO tips (description) 
VALUES ('Ricorda, Lisa Gherardini, la donna ritratta da Leonardo da Vinci posa girata a sinistra, con il volto frontale, 
ruotato verso lo spettatore');

INSERT INTO tips (description) 
VALUES ('Dai ce la puoi fare! Leonardo fu particolarmente bravo a dipingere la gioconda che impossibile cogliere 
tracce delle pennellate grazie al morbidissimo sfumato');

INSERT INTO tips (description) 
VALUES ('La gioconda ha un espressione neutrale in quanto Leonardo voleva introdurre una profondissima introspezione psicologica');

-- tips_paintings

-- link giocanda with tips n.1
INSERT INTO tips_paintings (id_painting, id_tip) VALUES (1,1);
INSERT INTO tips_paintings (id_painting, id_tip) VALUES (1,2);
INSERT INTO tips_paintings (id_painting, id_tip) VALUES (1,3);