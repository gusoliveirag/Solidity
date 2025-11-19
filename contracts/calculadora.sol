// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Exemplovariavel {
    
    // --- VARIÁVEIS ---
    uint8 public maxPermit = 255;
    uint8 public testLimit;
    int256 public negativo = -1;
    uint256 public numero;
    int256 public numeroNegativo;

    // NOVA VARIÁVEL: Para guardar o resultado da conta
    uint256 public resultadoDaSoma;

    // --- FUNÇÕES ANTERIORES ---
    function inseriMaxuint(uint8 _numero) external {
        testLimit = _numero;
    }

    function inserirNumero(uint256 _numero) external {
        numero = _numero;
    }

    function inserirNumeroNegativo(int256 _numero) external {
        numeroNegativo = _numero;
    }

    function testeNegativo(int256 _numero) external pure returns (int256) {
        return _numero; 
    }

    // --- NOVA FUNÇÃO DE SOMA ---
    // Esta função recebe dois números (a e b), soma-os e guarda o resultado.
    function somarValores(uint256 _valorA, uint256 _valorB) external {
        resultadoDaSoma = _valorA + _valorB;
    }
}