// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract BancoIndividual {

    // O CADERNO (MAPPING)
    // Aqui vamos guardar quanto cada pessoa tem.
    // O computador sabe que para cada 'address', existe um 'uint' associado.
    mapping(address => uint256) public saldos;

    // 1. DEPOSITAR (Agora é inteligente)
    function depositar() external payable {
        // Antes, o dinheiro só entrava no contrato.
        // Agora, nós ANOTAMOS no caderno quem mandou.
        
        // saldos[quem_mandou] = o_que_tinha_antes + o_que_mandou_agora;
        saldos[msg.sender] += msg.value;
    }

    // 2. VER O MEU SALDO
    // Esta função só devolve o saldo de quem está a chamar.
    function verMeusaldo() external view returns (uint256) {
        return saldos[msg.sender];
    }
}