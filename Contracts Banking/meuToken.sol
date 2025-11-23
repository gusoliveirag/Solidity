// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

// 1. IMPORTAR O PADRÃO (A "Arma Secreta")
// O Remix vai à internet buscar o código oficial da OpenZeppelin.
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// 2. HERANÇA
// 'is ERC20' significa: "Este contrato tem todos os superpoderes do código importado acima".
contract GustavoCoin is ERC20 {

    // 3. O CONSTRUTOR (Nasce a Moeda)
    constructor() ERC20("GustavoCoin", "GUS") {
        
        // 4. IMPRIMIR DINHEIRO (Mint)
        // Criamos 1 milhão de moedas.
        // 'msg.sender': O dinheiro vai para a tua carteira.
        // '* 10 ** decimals()': Adiciona os 18 zeros necessários (lembras-te do Wei?).
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }
}