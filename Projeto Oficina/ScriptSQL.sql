-- Tabela Clientes
CREATE TABLE Clientes (
    ID_Cliente INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100),
    CPF_CNPJ VARCHAR(14) UNIQUE NOT NULL,
    Endereço VARCHAR(255),
    Contato VARCHAR(50)
);

-- Tabela Veículos
CREATE TABLE Veiculos (
    ID_Veiculo INT PRIMARY KEY AUTO_INCREMENT,
    Placa VARCHAR(10) UNIQUE NOT NULL,
    Modelo VARCHAR(50),
    Marca VARCHAR(50),
    Ano INT,
    ID_Cliente INT,
    FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID_Cliente)
);

-- Tabela Ordens de Serviço
CREATE TABLE Ordens_de_Servico (
    ID_OS INT PRIMARY KEY AUTO_INCREMENT,
    ID_Veiculo INT NOT NULL,
    Data_Abertura DATE,
    Data_Conclusao DATE,
    Valor_Total DECIMAL(10, 2),
    FOREIGN KEY (ID_Veiculo) REFERENCES Veiculos(ID_Veiculo)
);

-- Tabela Serviços
CREATE TABLE Servicos (
    ID_Servico INT PRIMARY KEY AUTO_INCREMENT,
    Descricao VARCHAR(255),
    Preco DECIMAL(10, 2)
);

-- Tabela Associativa: OS_Servicos
CREATE TABLE OS_Servicos (
    ID_OS INT NOT NULL,
    ID_Servico INT NOT NULL,
    Quantidade INT,
    Subtotal DECIMAL(10, 2),
    PRIMARY KEY (ID_OS, ID_Servico),
    FOREIGN KEY (ID_OS) REFERENCES Ordens_de_Servico(ID_OS),
    FOREIGN KEY (ID_Servico) REFERENCES Servicos(ID_Servico)
);

-- Tabela Funcionários
CREATE TABLE Funcionarios (
    ID_Funcionario INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100),
    Cargo VARCHAR(50),
    Salario DECIMAL(10, 2)
);

-- Tabela Associativa: Funcionarios_Ordens
CREATE TABLE Funcionarios_Ordens (
    ID_OS INT NOT NULL,
    ID_Funcionario INT NOT NULL,
    PRIMARY KEY (ID_OS, ID_Funcionario),
    FOREIGN KEY (ID_OS) REFERENCES Ordens_de_Servico(ID_OS),
    FOREIGN KEY (ID_Funcionario) REFERENCES Funcionarios(ID_Funcionario)
);
