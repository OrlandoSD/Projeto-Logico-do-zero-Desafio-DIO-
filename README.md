# Projeto-Logico-do-zero-Desafio-DIO-
O desafio é: Construir um Projeto Lógico de Banco de Dados do Zero


# **Sistema de Banco de Dados para Oficina**

## **Descrição do Projeto**
Este projeto consiste na modelagem e implementação de um banco de dados para gerenciar o funcionamento de uma oficina mecânica. Inclui informações sobre clientes, veículos, ordens de serviço, funcionários e serviços prestados. 

O objetivo é fornecer uma solução robusta, com um sistema relacional eficiente que permite consultas complexas, além de um front-end para interagir com o banco de dados.

---

## **Modelo Relacional**
O banco de dados segue o modelo lógico e relacional, com as seguintes tabelas principais:
1. **Clientes**
2. **Veículos**
3. **Ordens de Serviço**
4. **Serviços**
5. **Funcionários**
6. **Tabelas Associativas**: OS_Servicos e Funcionarios_Ordens.

#### **Relacionamentos**
- Cada cliente pode ter vários veículos.
- Cada veículo pode ter várias ordens de serviço.
- Cada ordem pode ter múltiplos serviços e funcionários associados.

### **Imagem do Esquema Relacional**
Incluímos a representação gráfica do modelo relacional para facilitar o entendimento:

![Esquema Relacional](diagramas/esquema_oficina.png)

---

## **Front-End**

### **Descrição Geral**
Foi desenvolvido um front-end para interação com os dados, permitindo que usuários visualizem, cadastrem, editem e excluam informações relacionadas ao sistema de oficina.

### **Funcionalidades**
1. Exibição de dados dinâmicos, como clientes, veículos, ordens de serviço e serviços prestados.
2. Formulários para **cadastrar**, **editar** e **excluir** dados diretamente na interface.
3. Feedback para o usuário com mensagens de sucesso ou erro.
4. Uso de **Bootstrap** para responsividade e componentes interativos.

### **Estrutura do Front-End**
- **HTML**: Estrutura das páginas, incluindo tabelas e formulários.
- **CSS**: Estilização personalizada e integração com o Bootstrap.
- **JavaScript**: Lógica para gerenciamento de dados e integração com a API.

### **Próximos Passos**
- Adicionar gráficos interativos para análise de dados (ex.: faturamento mensal).
- Implementar tabelas dinâmicas usando **DataTables.js**.
- Melhorar o design com componentes avançados do Bootstrap.

---

## **Scripts SQL**
Os seguintes scripts estão disponíveis no repositório:
1. **criar_esquema.sql**: Script para criação do banco de dados e suas tabelas.
2. **inserir_dados.sql**: Script para popular o banco de dados com dados de teste.
3. **consultas.sql**: Conjunto de consultas SQL para análise de dados.

---

## **Consultas Demonstrativas**
Exemplos de queries incluídas:
1. **Quantos veículos cada cliente possui?**
   ```sql
   SELECT Clientes.Nome, COUNT(Veiculos.ID_Veiculo) AS Total_Veiculos
   FROM Clientes
   JOIN Veiculos ON Clientes.ID_Cliente = Veiculos.ID_Cliente
   GROUP BY Clientes.ID_Cliente;
