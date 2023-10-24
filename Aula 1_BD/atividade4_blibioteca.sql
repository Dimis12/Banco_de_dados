CREATE DATABASE biblioteca;
USE biblioteca;

CREATE TABLE livraria (
	 titulo varchar(45),
     genero varchar(45),
     autor varchar (45),
     lancamento date

);
 INSERT INTO livraria (titulo, genero, autor, lancamento)
    VALUES ('Stephen Hawking uma breve história do tempo', 'ciencia', 'stephen hawking','1998-07-02');
    
    SELECT * FROM livraria;
    
	INSERT INTO livraria (titulo, genero, autor, lancamento)
	VALUES ('Pai rico pai pobre', 'dinheiro', 'pai','1999-12-02');
    
    SELECT * FROM livraria;
    
     INSERT INTO livraria (titulo, genero, autor, lancamento)
    VALUES ('Sapiens', 'ciencia', 'Yuval Noah','1998-12-09');
    
    SELECT * FROM livraria;

	
