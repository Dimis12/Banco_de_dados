#Criando banco de dados
CREATE DATABASE banco_de_dados;

USE banco_de_dados;

CREATE TABLE funcionarios (

    nome varchar(60),
    cpf char (12),
    cargo varchar(60),
    salario float,
    nascimento date
    
    );
    
    INSERT INTO funcionarios (nome, cpf, cargo, salario, nascimento)
    VALUES ('Dimis', '111111-1', 'Programador', 200.00, '2006-07-02');
    
    SELECT * FROM funcionarios;
    
	INSERT INTO funcionarios (nome, cpf, cargo, salario, nascimento)
	VALUES ('Iago', '17221-22', 'Programador', 2.00, '2006-11-04');
    
    SELECT * FROM funcionarios;
    