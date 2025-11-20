// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract CofreSeguro {

    // Variável para guardar quem manda nisto tudo
    address public dono;

    // CONSTRUTOR: Executa apenas UMA vez, no Deploy.
    constructor() {
        // msg.sender aqui é quem clicou no botão "Deploy"
        dono = msg.sender; 
    }

    function depositar() external payable {
        // Qualquer pessoa pode depositar (isso é bom!)
    }

    function verSaldo() external view returns (uint256) {
        return address(this).balance;
    }

    // Função Protegida
    function sacarTudo() external {
        // O SEGURANÇA 👮‍♂️
        // Se quem chamou (msg.sender) NÃO for o dono, para tudo e mostra o erro.
        require(msg.sender == dono, "Voce nao e o dono! Xo daqui!");

        // Se passou pelo segurança, pode sacar.
        payable(msg.sender).transfer(address(this).balance);
    }
}