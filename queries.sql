-- 1- Inserir 4 departamentos: TI, RH, Administração e Almox.

INSERT INTO Departamento (NOME) VALUES ('TI'),('RH'),('Administração'),('Almox');

-- 2- Insira um funcionário com nome João Matias, cpf 01243565478 e que nasceu em 28/5/1995. 
-- Ele deve trabalhar no departamento TI.

INSERT INTO Funcionario (Nome, CPF, DataNascimento, codDepartamento, Salario, Sexo) VALUES ('João Matias', '012343565578','20/5/1995', 1, '1000.00', 'M');

-- 3- Insira 3 funcionários (com dados diferentes) em cada departamento criado no exercício 1.

INSERT INTO Funcionario (Nome, CPF, DataNascimento, codDepartamento, Salario, Sexo) VALUES 
('Maria Gomes', '12346545548','02/10/2000', 1, '3000.00', 'F'), 
('Julio Costa', '15665454548','06/05/1980', 3, '2000.00', 'M'), 
('Julia Fernanda', '95945454548','09/09/1985', 2, '2000.00', 'M');

-- 4- Aloque João Matias no P&D.

INSERT INTO Departamento (NOME) VALUES ('P&D');

UPDATE Funcionario SET codDepartamento = 5 WHERE codFuncionario = 1;

-- 5- Altere o nome do departamento "Almox" para "Almoxerifado".

UPDATE Departamento SET NOME = 'Almoxerifado' WHERE NOME = 'Almox';


-- 6- Em todos departamentos concatene a palavra "Depto " com o seu nome.

UPDATE Departamento set NOME = 'Depto ' || NOME;

-- 7- Mostre todos funcionários homens que trabalham no departamento de TI ou RH.

SELECT * FROM Funcionario WHERE Sexo = 'M' AND codDepartamento = 2 OR codDepartamento = 1;

-- 8- Mostre apenas o nome e cpf dos funcionários com salários entre 2000 e 10000.

SELECT (Nome, CPF) FROM Funcionario WHERE Salario >= 2000.00 AND Salario <= 10000.00;

-- 9- Liste o nome e idade de todos funcionários.

SELECT Nome, extract(year FROM age(DataNascimento)) FROM Funcionario;

-- 10- Mostre todos os funcionários do departamento 03.

SELECT * FROM Funcionario WHERE codDepartamento = 3;

-- 11- Exclua todos funcinários com mais de 50 anos.

INSERT INTO Funcionario (Nome, CPF, DataNascimento, codDepartamento, Salario, Sexo) VALUES ('IZA', '054643565578','25/5/1955', 1, '5000.00', 'F');

DELETE FROM Funcionario WHERE extract(year FROM age(DataNascimento)) > 50;

-- 12- Faça um aumento de 10% para todas a mulheres. 
update Funcionario set Salario = Salario + Salario * 0.10 where Sexo = 'F';