CREATE DATABASE estoque_senai;

USE estoque_senai;

CREATE TABLE marcas(
	id_marca INT,
    nome VARCHAR(45),
    descricao VARCHAR(45),
    PRIMARY KEY(id_marca)
);

CREATE TABLE produtos(
	id_produto INT,
    nome VARCHAR(45),
    preco_unitario FLOAT,
    id_marca INT,
    PRIMARY KEY(id_produto),
    FOREIGN KEY(id_marca) REFERENCES marcas(id_marca)
);

INSERT INTO marcas (id_marca, nome, descricao)
VALUES 
	(1, "Eudora", "Produtos de beleza"),
    (2, "Logitech", "Produtos eletrônicos"),
    (3, "Apple", "Empresa de tecnologia");
    
INSERT INTO produtos (id_produto, nome, preco_unitario, id_marca)
VALUES
	(1, "Shampoo Revela Cachos", 59.99, 1),
    (2, "Mouse Gamer G", 159.90, 2),
    (3, "Iphone 15 Pro Max", 10999.99, 3);
    
    