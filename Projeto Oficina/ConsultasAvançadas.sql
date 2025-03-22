---Listar todos os clientes e seus respectivos veículos:

SELECT Clientes.Nome, Veiculos.Placa, Veiculos.Modelo
FROM Clientes
JOIN Veiculos ON Clientes.ID_Cliente = Veiculos.ID_Cliente;


---Buscar ordens de serviço abertas antes de uma determinada data:

SELECT * 
FROM Ordens_de_Servico
WHERE Data_Abertura < '2025-03-01';

---Calcular o total da ordem de serviço com base nos subtotais:

SELECT ID_OS, SUM(Subtotal) AS Valor_Total
FROM OS_Servicos
GROUP BY ID_OS;


---Listar serviços mais caros primeiro:

SELECT * 
FROM Servicos
ORDER BY Preco DESC;


---Mostrar ordens de serviço com mais de 3 serviços associados:

SELECT ID_OS, COUNT(*) AS Total_Servicos
FROM OS_Servicos
GROUP BY ID_OS
HAVING Total_Servicos > 3;


---Listar ordens de serviço, seus veículos e clientes responsáveis:

SELECT Ordens_de_Servico.ID_OS, Veiculos.Placa, Clientes.Nome
FROM Ordens_de_Servico
JOIN Veiculos ON Ordens_de_Servico.ID_Veiculo = Veiculos.ID_Veiculo
JOIN Clientes ON Veiculos.ID_Cliente = Clientes.ID_Cliente;
