-- cria banco de dados
CREATE DATABASE empresa_xpto;
-- ativa a tabela
USE empresa_xpto;
DESCRIBE funcionarios;
-- exclui a tabela
DROP TABLE funcionarios;
-- cria uma tabela
CREATE TABLE funcionarios (
    nome VARCHAR(60),
    cpf CHAR(12),
    cargo VARCHAR(60),
    salario FLOAT,
    nascimento DATE
);
-- muda da variavel
SELECT
	nome as 'Nome Completo', 
    salario as 'Salário',
    nascimento as 'Data de nascimento'
FROM funcionarios;

-- inseri uma tabela
INSERT INTO funcionarios (nome, cpf,  cargo, salario, nascimento)
VALUES ('João Francisco','111111111-11','Engenheiro Civil','2000.00','2006-03-09'), ('Iago','111111111-11','Engenheiro Civil','2000.00','2006-11-04'), ('Luiz Felipe','111111111-11','Engenheiro Civil','2000.00','2006-07-02');
-- consulta todas tabelas de funcionarios
SELECT * FROM funcionarios;
-- consulta as colunas nome e nascimento da tabela
SELECT nome, nascimento FROM funcionarios;
-- consulta as colunas nome, cargo e salario da tabela
SELECT nome, cargo, salario FROM funcionarios;
-- consulta as colunas salario, cargo da tabela
SELECT salario, cargo FROM funcionarios;
-- consulta cargo específicoo na tabela
SELECT * FROM funcionarios WHERE cargo = "Arquiteto de Software";
-- atividades
SELECT nome, cargo, salario FROM funcionarios WHERE cargo = "Gerente de projetos";
SELECT salario, cargo FROM funcionarios WHERE cargo = "Professor";
SELECT nome, cargo, salario FROM funcionarios WHERE salario > 10000;
SELECT nome, salario FROM funcionarios WHERE salario < 1200;
SELECT cargo, salario FROM funcionarios WHERE salario >= 28000;
SELECT nome, cargo FROM funcionarios WHERE nome = "Monica Yates";
SELECT nome, cargo , salario FROM funcionarios WHERE  nome = "Jennifer Gardner";
SELECT nome, nascimento FROM funcionarios WHERE nome = "Russell Cole";
SELECT nome, cargo, cpf FROM funcionarios WHERE cpf = 84716339531;
SELECT
	nome as 'Nome Completo', 
    salario as 'Salário',
    nascimento as 'Data de nascimento'
FROM funcionarios 
WHERE nascimento > '1998-01-01'; 
SELECT nome FROM funcionarios ORDER BY nome ASC;
SELECT nome, cargo, salario FROM funcionarios ORDER BY salario DESC;
SELECT salario, cargo, nascimento FROM funcionarios ORDER BY nascimento ASC;

SELECT
	nome as 'Nome Completo', 
    salario as 'Salário'
FROM funcionarios 
ORDER BY salario DESC 
LIMIT 5;
SELECT nome, nascimento FROM funcionarios ORDER BY nascimento ASC LIMIT 1;
SELECT nome, salario FROM funcionarios ORDER BY salario ASC LIMIT 10;
SELECT nome, salario, cargo FROM funcionarios WHERE cargo = "Professor" ORDER BY nome ASC;
SELECT nome, salario, cargo FROM funcionarios WHERE cargo = "Médico" ORDER BY salario DESC LIMIT 5;
SELECT nome, cpf  FROM funcionarios WHERE cargo = "Recepcionista" ORDER BY salario ASC LIMIT 1;