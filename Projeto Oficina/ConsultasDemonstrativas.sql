
---Quantos veículos cada cliente possui?

SELECT Clientes.Nome, COUNT(Veiculos.ID_Veiculo) AS Total_Veiculos
FROM Clientes
JOIN Veiculos ON Clientes.ID_Cliente = Veiculos.ID_Cliente
GROUP BY Clientes.ID_Cliente;

---Ordens de serviço abertas em uma data específica:

SELECT * 
FROM Ordens_de_Servico
WHERE Data_Abertura = '2025-03-01';

---Funcionários envolvidos em mais de 3 ordens:

SELECT ID_Funcionario, COUNT(ID_OS) AS Total_Ordens
FROM Funcionarios_Ordens
GROUP BY ID_Funcionario
HAVING Total_Ordens > 3;


--- Veículos e clientes que possuem ordens de serviço:

SELECT Veiculos.Placa, Clientes.Nome
FROM Ordens_de_Servico
JOIN Veiculos ON Ordens_de_Servico.ID_Veiculo = Veiculos.ID_Veiculo
JOIN Clientes ON Veiculos.ID_Cliente = Clientes.ID_Cliente;


