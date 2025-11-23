// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract UserData {
    uint256 public idade;
    bool public sucess;
    string public nome;
    address public endereco;

    // Constructor for initialization
    constructor(
        uint256 _idade,
        string memory _nome,
        address _endereco
    ) {
        idade = _idade;
        nome = _nome;
        endereco = _endereco;
    }

    // Setter functions with access control (e.g., only owner)
    function setIdade(uint256 _idade) public {
        idade = _idade;
    }

    function setNome(string memory _nome) public {
        nome = _nome;
    }

    function setEndereco(address _endereco) public {
        endereco = _endereco;
    }
}