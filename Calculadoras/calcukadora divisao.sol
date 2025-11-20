// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract CalculadoraCompleta {
    
    // Variável para guardar o resultado de qualquer operação
    uint256 public resultado;

    // 1. SOMA (+)
    function somar(uint256 _a, uint256 _b) external {
        resultado = _a + _b;
    }

    // 2. SUBTRAÇÃO (-)
    // Lembra-te: _a tem de ser maior que _b, senão dá erro!
    function subtrair(uint256 _a, uint256 _b) external {
        resultado = _a - _b;
    }

    // 3. MULTIPLICAÇÃO (*)
    // O símbolo é o asterisco
    function multiplicar(uint256 _a, uint256 _b) external {
        resultado = _a * _b;
    }

    // 4. DIVISÃO (/)
    // O símbolo é a barra. Cuidado: Não aceita vírgulas!
    function dividir(uint256 _a, uint256 _b) external {
        resultado = _a / _b;
    }
}