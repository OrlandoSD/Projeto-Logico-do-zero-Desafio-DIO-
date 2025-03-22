document.addEventListener("DOMContentLoaded", () => {
    // Simulação de dados (os reais virão de uma API ou backend)
    const clientes = [
        { nome: "João Silva", cpf_cnpj: "123.456.789-00", contato: "(11) 98765-4321" },
        { nome: "Maria Oliveira", cpf_cnpj: "12.345.678/0001-22", contato: "(11) 92345-6789" }
    ];

    const veiculos = [
        { placa: "ABC-1234", modelo: "Civic", cliente: "João Silva" },
        { placa: "XYZ-9876", modelo: "Corolla", cliente: "Maria Oliveira" }
    ];

    // Preencher tabela de clientes
    const clientesTabela = document.getElementById("clientes-tabela");
    clientes.forEach(cliente => {
        const row = `<tr>
            <td>${cliente.nome}</td>
            <td>${cliente.cpf_cnpj}</td>
            <td>${cliente.contato}</td>
        </tr>`;
        clientesTabela.innerHTML += row;
    });

    // Preencher tabela de veículos
    const veiculosTabela = document.getElementById("veiculos-tabela");
    veiculos.forEach(veiculo => {
        const row = `<tr>
            <td>${veiculo.placa}</td>
            <td>${veiculo.modelo}</td>
            <td>${veiculo.cliente}</td>
        </tr>`;
        veiculosTabela.innerHTML += row;
    });
    document.getElementById("formCadastroCliente").addEventListener("submit", (e) => {
        e.preventDefault();
        const nome = document.getElementById("nomeCliente").value;
        const cpfCnpj = document.getElementById("cpfCnpjCliente").value;
        const contato = document.getElementById("contatoCliente").value;
    
        fetch('https://api-seu-servidor.com/clientes', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({ nome, cpfCnpj, contato })
        })
        .then(response => response.json())
        .then(data => {
            console.log("Cliente cadastrado:", data);
            // Atualizar a tabela de clientes dinamicamente
        })
        .catch(error => console.error('Erro ao cadastrar cliente:', error));
    });
    alert("Cliente cadastrado com sucesso!");

        const ctx = document.getElementById('meuGrafico').getContext('2d');
        const chart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ['Jan', 'Fev', 'Mar'],
            datasets: [{
                label: 'Faturamento',
                data: [1000, 1500, 2000],
                backgroundColor: ['#007bff']
            }]
        }
    });


});
