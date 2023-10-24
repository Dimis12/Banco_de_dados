CREATE DATABASE biblioteca;

USE biblioteca;

CREATE TABLE livros (
	titulo VARCHAR(200),
    autora VARCHAR(60),
    qtd_pagina INT,
    genero VARCHAR(45)
);

INSERT INTO livros (titulo, autora, qtd_pagina, genero)
VALUES ('Stephen Hawking uma breve história do tempo', 'Intrínseca', 256, 'Ciencia' );

SELECT * FROM livros;

INSERT INTO livros (titulo, autora, qtd_pagina, genero)
VALUES ('Pai rico, pai pobre', 'Alta Books', 336, 'Finanças' );

SELECT * FROM livros;

INSERT INTO livros (titulo, autora, qtd_pagina, genero)
VALUES ('Sapiens - Uma Breve História da Humanidade', 'L&PM', 464, 'Ciencia' );

SELECT * FROM livros;