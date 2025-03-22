fetch('https://api-seu-servidor.com/clientes')
    .then(response => response.json())
    .then(data => {
        data.forEach(cliente => {
            // Preencher tabelas dinamicamente
        });
    });
    fetch('https://api-seu-servidor.com/ordens')
    .then(response => response.json())
    .then(ordens => {
        const tabelaOS = document.getElementById("os-tabela");
        ordens.forEach(os => {
            const row = `<tr>
                <td>${os.id}</td>
                <td>${os.veiculo}</td>
                <td>${os.data_abertura}</td>
                <td>${os.status}</td>
                <td>${os.valor_total}</td>
            </tr>`;
            tabelaOS.innerHTML += row;
        });
    })
    .catch(error => console.error('Erro ao carregar as ordens:', error));
