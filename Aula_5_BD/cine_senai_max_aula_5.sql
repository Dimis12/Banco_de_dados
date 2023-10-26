-- Excluindo banco de dados
DROP DATABASE cine_senai_max;

-- Criando banco de dados
create database cine_senai_max;

-- Ativando banco de dados
use cine_senai_max;

-- Criando tabela filmes
CREATE TABLE filmes (
	id_filme int,
    titulo VARCHAR(60),
    genero VARCHAR(45),
    duracao int,
    ano_lancamento INT,
    preco_aluguel DOUBLE,
    primary key(id_filme)
);

-- Criando tabela atores
CREATE TABLE atores (
	id_ator INT,
    nome_ator VARCHAR(60),
    ano_nascimento INT,
    nacionalidade VARCHAR(20),
    sexo VARCHAR(10),
    PRIMARY KEY(id_ator)
);

DESCRIBE filmes;
DESCRIBE atores;

-- Crie aqui a tabela de atuações

CREATE TABLE atuacoes (
	id_filme INT,
    id_ator INT
);

INSERT INTO filmes (id_filme, titulo, genero, duracao, ano_lancamento,preco_Aluguel)
VALUES(80, "Carandiru", "Drama", 145, 2003, 4.99);

select * from filmes;

INSERT INTO atores (id_ator, nome_ator, ano_nascimento,nacionalidade, sexo)
VALUES(150, "Rodrigo Santoro", 1975, "Brasileiro", "Masculino");

INSERT INTO atores (id_ator, nome_ator, ano_nascimento,nacionalidade, sexo)
VALUES(151, "Wagner Moura", 1976, "Brasileiro", "Masculino");

select * from atores;

INSERT INTO atuacoes (id_filme, id_ator)
VALUES (80, 151);

select * from atuacoes;

INSERT INTO filmes (id_filme, titulo, genero, duracao, ano_lancamento,preco_Aluguel)
VALUES(81, "O HOMEM DO FUTURO", " Ficção científica/Romance", 146, 2011, 6.99);

INSERT INTO atuacoes (id_filme, id_ator)
VALUES (81, 151);

select * from atuacoes;
