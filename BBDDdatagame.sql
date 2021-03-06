DROP DATABASE IF EXISTS datagame;
CREATE DATABASE datagame;

USE datagame;

CREATE TABLE PLAYER (
	username VARCHAR(30) NOT NULL,
	pwd VARCHAR(20) NOT NULL,
	id INT AUTO_INCREMENT,
	PRIMARY KEY (id)
)ENGINE=InnoDB;

CREATE TABLE GAME (
	id INT NOT NULL,
	day VARCHAR(12),
	hour VARCHAR(10),
	matchtime INT,
	winner VARCHAR(30),
	PRIMARY KEY (id)
)ENGINE=InnoDB;

CREATE TABLE PARTICIPATION (
	ID_G INT NOT NULL,
	FOREIGN KEY (ID_G) REFERENCES GAME (id)
)ENGINE=InnoDB;

INSERT INTO PLAYER (username, pwd) VALUES ('Cris', '1234');
INSERT INTO PLAYER (username, pwd) VALUES ('Davis', '4321');
INSERT INTO PLAYER (username, pwd) VALUES ('Ems', '5678');

INSERT INTO GAME VALUES (1, '15/10/2020','12:43', 20, 'Cris');
INSERT INTO GAME VALUES (2, '15/10/2020','13:10', 10, 'Davis');
INSERT INTO GAME VALUES (3, '16/10/2020','13:30', 15, 'Ems');
INSERT INTO GAME VALUES (4, '17/10/2020','13:30', 5, 'Davis');
INSERT INTO GAME VALUES (5, '17/10/2020','18:30', 20, 'Davis');
INSERT INTO GAME VALUES (6, '17/10/2020','20:30', 12, 'Cris');


INSERT INTO PARTICIPATION VALUES (1);
INSERT INTO PARTICIPATION VALUES (1);
INSERT INTO PARTICIPATION VALUES (2);
INSERT INTO PARTICIPATION VALUES (2);
INSERT INTO PARTICIPATION VALUES (3);
INSERT INTO PARTICIPATION VALUES (3);
INSERT INTO PARTICIPATION VALUES (3);
INSERT INTO PARTICIPATION VALUES (4);
INSERT INTO PARTICIPATION VALUES (4);
INSERT INTO PARTICIPATION VALUES (5);
INSERT INTO PARTICIPATION VALUES (5);
INSERT INTO PARTICIPATION VALUES (6);
INSERT INTO PARTICIPATION VALUES (6);









