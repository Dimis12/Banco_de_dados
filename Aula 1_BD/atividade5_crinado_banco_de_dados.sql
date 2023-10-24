#Criando banco de dados
CREATE DATABASE empresa;

USE empresa;

CREATE TABLE funcionarios (

    nome varchar(60),
    cpf char (12),
    cargo varchar(60),
    salario float,
    nascimento date
    
    );
    
    INSERT INTO funcionarios (nome, cpf, cargo, salario, nascimento)
    VALUES ('felipe', '172191-22', 'Programador', 200.00, '2006-07-02');
    
    SELECT * FROM funcionarios;
    
	INSERT INTO funcionarios (nome, cpf, cargo, salario, nascimento)
	VALUES ('iago', '17221-22', 'Programador', 2.00, '2006-11-04');
    
    ----
    #Consultando Funcionarios
    SELECT nome, cargo, salario FROM funcionarios;
    
    SELECT salario, cargo FROM funcionarios;
    
    SELECT*FROM funcionarios WHERE cargo = 'Arquiteto de Software';
    
    SELECT nome, salario, cargo FROM funcionarios WHERE cargo = 'Gerente de Projetos';
    
    SELECT  salario, cargo FROM funcionarios WHERE cargo = 'Professor';
    
    SELECT nome, salario, cargo FROM funcionarios WHERE salario > 10000;
    
    SELECT nome, salario FROM funcionarios WHERE salario < 1320;
    
    SELECT cargo FROM funcionarios WHERE salario >= 28000;
    
    SELECT nome from funcionarios where nome = 'Monica Yates';
    
    SELECT salario, cargo FROM funcionarios WHERE nome = 'Jennifer Gardner';
    
    SELECT  nascimento FROM funcionarios WHERE nome = 'Russell Cole';
    
    SELECT  nome, cargo FROM funcionarios WHERE cpf = '84716339531';
    
    ----
    #Possivel dar apelidos as suas tabelas
    select nome as 'Nome Completo', salario as 'Salário', nascimento as 'Data de Nascimento' from funcionarios;
    
    select nome as 'Nome Completo', salario as 'Salário', nascimento as 'Data de Nascimento' from funcionarios where nascimento >'1998-01-01';
    
    ----
    select nome as 'Nome Completo' from funcionarios order by nome ASC;
    
    select  salario as 'Salário' from funcionarios order by salario DESC;
    
    select  salario as 'Salário', cargo as 'Cargos', nascimento as 'Data de Nascimento' from funcionarios order by nascimento ASC;
    
    ----
   select nome as 'Nome Completo', cargo as 'Cargos', salario as 'Maior salario' from funcionarios order by salario DESC limit 5;
   
   select nome as 'Nome Completo', nascimento as 'Mais velho' from funcionarios order by nascimento ASC limit 1;
   
   select salario as 'Menor Salário' from funcionarios order by salario ASC limit 10;
   

   
   
    
    
	#ORDER BY, serve para ordenar entre numeros, alfabeticamente e etc.. Basicamente para ordernar
    
    #consultando todas as colunas de uma tabela
    #SELECT * FROM funcionarios;
    
    #consultando as colunas nome e nascimento de uma tabela
    #SELECT nome, nascimento FROM funcionarios;
    
    #Inserta as coisas dentro da table
    #INSERT INTO funcionarios (nome, cpf, cargo, salario, nascimento)
    
    #Consultar todas as colunas
    