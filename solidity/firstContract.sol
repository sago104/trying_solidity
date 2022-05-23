// SPDX-License-Identifier: MIT

// Use Solidity to create a smart contract for a simple online marketplace. This contract will let users list an item for sale and buy an available item. There are two roles involved: a seller and a buyer

pragma solidity ^0.8.14;

contract Marketplace {
    address public seller;
    address public buyer;
    mapping (address => uint) public balances;

    event listItem(address seller, uint price);
    event purchasedItem(address seller, address buyer, uint price);

    enum stateType {
        itemAvailable,
        itemPurchased
    }

    stateType public state;

    constructor() {
        seller = msg.sender;
        state = stateType.itemAvailable;
    }

    function buy(address _seller, address _buyer, uint price) public payable {
        require(price <= balances[buyer], "Insufficient balance");
        state = stateType.itemPurchased;
        balances[_buyer] -= price;
        balances[_seller] += price;

        emit purchasedItem(seller, buyer, msg.value);
        
    }
}
