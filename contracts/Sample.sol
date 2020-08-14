// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;

contract Sample {
    address owner;
    string public name;

    constructor(string memory _name) public {
        owner = msg.sender;
        name = _name;
    }

    function changeName(string memory newName) public {
        name = newName;
    }
}
