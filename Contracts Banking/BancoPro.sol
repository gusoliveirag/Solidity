// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract BancoPro {

    // O Caderno de Contas
    mapping(address => uint256) public saldos;

    // DEPOSITAR
    function depositar() external payable {
        saldos[msg.sender] += msg.value; // Soma ao saldo da pessoa
    }

    // VER SALDO (Da pessoa que chama)
    function verSaldo() external view returns (uint256) {
        return saldos[msg.sender];
    }

    // SACAR (Com valor específico)
    function sacar(uint256 _valorDoSaque) external {
        // 1. VERIFICAÇÃO DE SEGURANÇA
        // O saldo no caderno tem de ser maior ou igual ao que a pessoa quer sacar.
        require(saldos[msg.sender] >= _valorDoSaque, "Saldo insuficiente para este saque.");

        // 2. ATUALIZAR O CADERNO (Muito importante fazer isto ANTES de enviar)
        saldos[msg.sender] -= _valorDoSaque;

        // 3. ENVIAR O DINHEIRO
        payable(msg.sender).transfer(_valorDoSaque);
    }
}