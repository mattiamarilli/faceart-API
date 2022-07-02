DROP SCHEMA faceart;
CREATE SCHEMA faceart;

USE faceart;

CREATE TABLE authors (
    id_author INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(64) NOT NULL,
    infourl VARCHAR(2000) NOT NULL
);

CREATE TABLE paintings (
	id_painting INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(64) NOT NULL,
    year INT(4) NOT NULL,
    location VARCHAR(64) NOT NULL,
	imgurl VARCHAR(2000) NOT NULL,
    infourl VARCHAR(2000) NOT NULL,
	description VARCHAR(64) NOT NULL,
	id_author INT NOT NULL REFERENCES authors (id_author)
);

CREATE TABLE score (
    nickname varchar(20) PRIMARY KEY NOT NULL,
    score float NOT NULL
);