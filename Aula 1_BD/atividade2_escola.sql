CREATE DATABASE escola;
USE escola;

CREATE TABLE escola_alunos (
	nome varchar(60),
    matricula int,
    curso varchar(45)

);
 INSERT INTO escola_alunos (nome, matricula, curso)
    VALUES ('Dimis',201928230, 'Programação');
    
    SELECT * FROM escola_alunos;
    
	INSERT INTO escola_alunos (nome, matricula, curso)
	VALUES ('joao',202028230, 'Cozinheiro');
    
    SELECT * FROM escola_alunos;

	
