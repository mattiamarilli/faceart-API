DROP SCHEMA faceart;
CREATE SCHEMA faceart;

USE faceart;

CREATE TABLE `paintings` (
	`idpainting` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`title` VARCHAR(20) NOT NULL,
	`url` VARCHAR(64) NOT NULL,
	`description` VARCHAR(64) NOT NULL,
	`author` VARCHAR(64) NOT NULL
);

CREATE TABLE score (
    nickname varchar(20) PRIMARY KEY NOT NULL,
    score float NOT NULL
);