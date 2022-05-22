// SPDX-License-Identifier: MIT

pragma solidity ^0.8.14; // Versión del compilador

contract Marketplace { // Nombre del contrato
    uint price; // State variable
    address public seller; // stores the 20-byte Ethereum address of the seller

    modifier onlySeller (){ // describes that only a seller can list an item
        require(
            msg.sender == seller, 
            "Only seller can put an item up for sale."
        );
        _; // indicate where the function body gets inserted
    }

    function listItem() public view onlySeller{

    }
}