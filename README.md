# Projeto-Logico-do-zero-Desafio-DIO-
O desafio é: Construir um Projeto Lógico de Banco de Dados do Zero




# Sistema de Banco de Dados para Oficina
## Descrição do Projeto
Este projeto consiste na modelagem e implementação de um banco de dados para gerenciar o funcionamento de uma oficina mecânica. O sistema foi projetado para organizar informações sobre clientes, veículos, ordens de serviço, funcionários e serviços prestados.

O objetivo é fornecer uma solução robusta que permita gerenciar relacionamentos entre dados de maneira eficiente e realizar consultas complexas para análises. Este projeto segue o modelo relacional, criado com base em um esquema conceitual do modelo ER, e inclui o desenvolvimento de um esquema lógico detalhado, implementação em SQL e exemplos de consultas avançadas.

## Modelo Relacional
O banco de dados foi projetado com as seguintes tabelas principais:

Clientes: Armazena informações de clientes da oficina.

Veículos: Registra os veículos associados aos clientes.

Ordens_de_Servico: Representa os pedidos de serviços feitos para veículos.

Servicos: Contém os tipos de serviços que podem ser realizados.

OS_Servicos: Relaciona serviços realizados com ordens de serviço (N:N).

Funcionarios: Cadastra informações de funcionários da oficina.

Funcionarios_Ordens: Relaciona funcionários às ordens de serviço (N:N).

## Relacionamentos
Cada cliente pode ter vários veículos.

Cada veículo pode ter várias ordens de serviço.

Cada ordem de serviço pode envolver vários serviços e funcionários.

Cada serviço pode ser incluído em várias ordens.

Funcionários podem trabalhar em diversas ordens simultaneamente.

## Esquema Relacional
O esquema relacional foi implementado seguindo o modelo lógico detalhado, e os scripts para criação das tabelas estão incluídos no repositório. Veja um exemplo do esquema gráfico na imagem abaixo:

## Modelo Relacional em PNG
Adicione o esquema lógico como uma imagem exportada (diagrama EER). Salve o arquivo na pasta diagramas/ e referencie-o no README:


## Scripts SQL
Os seguintes scripts estão disponíveis no repositório:

criar_esquema.sql: Script para criação do banco de dados e todas as tabelas e relações.

inserir_dados.sql: Script para popular o banco com dados de teste.

consultas.sql: Conjunto de consultas SQL para responder perguntas de negócios.

Consultas Demonstrativas
Algumas perguntas respondidas pelas consultas SQL incluídas:

## Quantos veículos cada cliente possui?

# sql
SELECT Clientes.Nome, COUNT(Veiculos.ID_Veiculo) AS Total_Veiculos
FROM Clientes
JOIN Veiculos ON Clientes.ID_Cliente = Veiculos.ID_Cliente
GROUP BY Clientes.ID_Cliente;
Ordens de serviço abertas em uma data específica:

sql
SELECT * 
FROM Ordens_de_Servico
WHERE Data_Abertura = '2025-03-01';
Funcionários envolvidos em mais de 3 ordens:

sql
SELECT ID_Funcionario, COUNT(ID_OS) AS Total_Ordens
FROM Funcionarios_Ordens
GROUP BY ID_Funcionario
HAVING Total_Ordens > 3;
Veículos e clientes que possuem ordens de serviço:

sql
SELECT Veiculos.Placa, Clientes.Nome
FROM Ordens_de_Servico
JOIN Veiculos ON Ordens_de_Servico.ID_Veiculo = Veiculos.ID_Veiculo
JOIN Clientes ON Veiculos.ID_Cliente = Clientes.ID_Cliente;
Como Executar
Clone o repositório:

bash
git clone https://github.com/seu-usuario/oficina-db.git
Execute o script criar_esquema.sql em um banco de dados MySQL ou SQL Server para criar as tabelas e relacionamentos.

Execute o script inserir_dados.sql para adicionar dados de teste.

Use o script consultas.sql para realizar as consultas especificadas.

Tecnologias Utilizadas
SGBD: MySQL ou SQL Server.

Ferramentas: MySQL Workbench para modelagem gráfica; dbdiagram.io para documentação do modelo relacional.

Linguagens: SQL.
