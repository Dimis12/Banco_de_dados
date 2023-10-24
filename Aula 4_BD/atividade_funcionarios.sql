SET SQL_SAFE_UPDATES = 0;

UPDATE funcionarios SET nome = "João Francisco" WHERE nome = "Monica Yates";

select * from funcionarios where nome = "Monica Yates";

DELETE FROM funcionarios;

DELETE FROM funcionarios where nome = "Monica Yates";

UPDATE funcionarios SET salario = salario * 1.1 WHERE cargo = "Professor";

select * from funcionarios where cargo = "Professor";

UPDATE funcionarios set salario = 1200  Where salario < 1200;

UPDATE funcionarios SET cargo = "Desenvolvedor Front-End" WHERE nome = "Alan Robinson";
select * from funcionarios where nome = "Alan Robinson";

SELECT NOW();
SELECT CURDATE();
SELECT DAY('2023-10-20');
SELECT MONTH('2023-10-20');
SELECT YEAR('2023-10-20');

SELECT nome, YEAR(CURDATE()) - YEAR(nascimento) as "idade" from funcionarios;