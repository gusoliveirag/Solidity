// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Banco {

    address public dono;

    constructor() {
        dono = msg.sender; // Tu és o banqueiro
    }

    // 1. DEPOSITAR
    function depositar() external payable {
        // Dinheiro entra
    }

    // 2. VER SALDO DO BANCO
    function verSaldoDoBanco() external view returns (uint256) {
        return address(this).balance;
    }

    // 3. FAZER PIX (Transferir para outra pessoa)
    // Nota o 'address payable' -> O endereço tem de estar pronto para receber dinheiro
    function fazerPix(address payable _amigo, uint256 _valor) external {
        
        // Segurança: Só o dono pode autorizar transferências!
        require(msg.sender == dono, "Voce nao pode mexer no dinheiro do banco!");

        // Verifica se o banco tem dinheiro suficiente para a transferência
        require(address(this).balance >= _valor, "Saldo insuficiente no banco!");

        // Envia o dinheiro para o amigo
        _amigo.transfer(_valor);
    }
}