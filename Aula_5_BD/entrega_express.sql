CREATE DATABASE entregas_express;

USE entregas_express;

CREATE TABLE paises (
	id_pais INT,
    nome VARCHAR(45),
    latitude VARCHAR(45),
    longitude VARCHAR(45),
    idioma_oficial VARCHAR(45),
    PRIMARY KEY(id_pais)
);

CREATE TABLE unidade_federativas (
	cod_uf INT,
    nome_uf VARCHAR(45),
    abreviacao_uf CHAR(2),
    id_pais INT,
    PRIMARY KEY(cod_uf),
	FOREIGN KEY(id_pais) REFERENCES paises(id_pais)
);

CREATE TABLE municipios (
	id_municipio INT,
    nome VARCHAR(45),
    cod_uf INT,
    PRIMARY KEY(id_municipio),
	FOREIGN KEY(cod_uf) REFERENCES unidade_federativas(cod_uf)
);

INSERT INTO paises (id_pais, nome, latitude, longitude, idioma_oficial)
VALUES (1, "Brazil", "Sul -33o 45'07 e Norte +05o 16'19", "Norte -60 o 12'45 e Sul -53o 23'50","Portugues");
select * from paises;

INSERT INTO unidade_federativas (cod_uf, nome_uf, abreviacao_uf, id_pais)
VALUES 
	(1, "Distrito Federal", "DF", 1),
    (2, "Espírito Santo", "ES", 1),
    (3, "Goiás", "GO", 1);
select * from unidade_federativas;
    
INSERT INTO municipios (id_municipio, nome, cod_uf)
VALUES 
	(100, "Valença", 1),
    (200, "Volta Redonda", 1),
    (300, "São Paulo", 2),
    (400, "Judiaí", 2),
    (500, "Belo Horizonte", 3),
    (600, "Juiz de Fora", 3);
    
    

    

