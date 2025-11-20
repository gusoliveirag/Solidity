// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract CofreInteligente {

    // 1. DEPOSITAR (Já conheces)
    // O dinheiro entra e fica no contrato
    function depositar() external payable {
    }

    // 2. VER SALDO (Já conheces)
    function verSaldoDoCofre() external view returns (uint256) {
        return address(this).balance;
    }

    // 3. SACAR TUDO (NOVO!)
    // Esta função envia TODO o dinheiro do cofre para quem clicou no botão.
    function sacarTudo() external {
        // Passo 1: Ver quanto dinheiro existe
        uint256 saldoAtual = address(this).balance;

        // Passo 2: Enviar para quem chamou a função (msg.sender)
        payable(msg.sender).transfer(saldoAtual);
    }
}