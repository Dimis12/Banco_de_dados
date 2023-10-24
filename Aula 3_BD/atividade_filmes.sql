CREATE DATABASE cine_senai_max;

USE cine_senai_max;

CREATE TABLE filmes (
	id_filmes int,
	titulo VARCHAR(60),
    genero VARCHAR(45),
    duracao VARCHAR(45),
    ano_lancamento INT,
    preco_aluguel DOUBLE,
    primary key(id_filmes)
);

DROP TABLE filmes;

INSERT INTO filmes (id_filmes,titulo, genero, duracao, ano_lancamento, preco_aluguel)
VALUES ("1","Tropa de ELITE","Ação","115","2007","5.99");
SELECT * FROM filmes;

SELECT titulo, genero FROM filmes WHERE id_filmes = 6;

SELECT titulo, ano_lancamento FROM filmes WHERE id_filmes = 33;

SELECT * FROM filmes WHERE id_filmes = 73;

DELETE FROM filmes WHERE id_filmes = 73;

SELECT * FROM filmes WHERE titulo = "Rio 2";
UPDATE filmes SET genero = "Animação" WHERE id_filmes = 71;

UPDATE filmes SET preco_aluguel = preco_aluguel * 1.1 WHERE id_filmes = 1;

SELECT titulo, genero, preco_aluguel FROM filmes
WHERE genero = "Drama" OR gemero = "Comédia";

