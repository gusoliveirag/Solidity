// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Operadores {

    uint256 valor;

    // Função 1: Calcular Média
    function calcularMedia(uint256 a, uint256 b) public pure returns (uint256) {
        uint256 media = (a + b) / 2;
        return media;
    }

    // Função 2: Multiplicação
    function calculaMultiplicacao(uint256 a, uint256 b) public pure returns (uint256) {
        uint256 resultado = a * b; 
        return resultado;
    } 

    // Função 3: Testar OU (OR)
    // Dei o nome 'testarOu' para corrigir o erro da função sem nome
    function testarOu(bool a, bool b) public pure returns (bool) {
        bool resultado = a || b;
        return resultado;
    }
    // Função 4: Testar E (AND)
    // O símbolo é &&
    function testarE(bool a, bool b) public pure returns (bool) {
        return a && b;
    }
    // Função 5: O Juiz (Quem é maior?)
    // Retorna um texto (string) a dizer o resultado
    function compararNumeros(uint256 a, uint256 b) public pure returns (string memory) {
        
        // Pergunta: O A é maior que o B?
        if (a > b) {
            return "A ganhou";
        } 
        // Senão, pergunta: O A é menor que o B?
        else if (a < b) {
            return "B ganhou";
        } 
        // Se não é maior nem menor, só podem ser iguais
        else {
            return "Empate";
        }
    }
}