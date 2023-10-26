CREATE DATABASE editora_relacionamento;

USE editora_relacionamento;

DROP TABLE editoras;
DROP TABLE livros;

CREATE TABLE editoras (
	id_editora INT,
    nome VARCHAR(45),
    cnpj CHAR(14),
    PRIMARY KEY(id_editora)
);

CREATE TABLE livros (
	id_livro INT,
    titulo VARCHAR(45),
    lancamento INT,
    id_editora INT,
    PRIMARY KEY(id_livro),
    FOREIGN KEY(id_editora) REFERENCES editoras(id_editora)
);
	
INSERT INTO editoras (id_editora, nome, cnpj)
VALUES (1, "Intrinseca",  "05660045000106");

select * from editoras;
    
INSERT INTO livros (id_livro, titulo, lancamento, id_editora)
VALUES (100, "Uma breve história do tempo", 1988, 1);

INSERT INTO livros(id_livro, titulo, lancamento, id_editora)
VALUES (101, "O livro das fobias e mania", 2023, 1);

INSERT INTO livros (id_livro, titulo, lancamento, id_editora)
VALUES (102, "TRADER ou investidor?", 2022, 1);

select * from livros;

INSERT INTO editoras (id_editora, nome, cnpj)
VALUES (2, "Atlas",  "61080370000766");

select * from editoras;

INSERT INTO livros (id_livro, titulo, lancamento, id_editora)
VALUES (103, "ADMINISTRAÇÃO", 2019, 2);

INSERT INTO livros (id_livro, titulo, lancamento, id_editora)
VALUES (104, "Gestão de pessoas e cultura organizacional", 2018, 2);

select * from livros;







    