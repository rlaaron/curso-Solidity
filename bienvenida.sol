pragma solidity >= 0.8.1;

contract Bienvenida {
    constructor() public {
    }
    function getResult() public view returns(uint){
        uint a = 10;
        uint b = 2;
        uint result = a + b;
        return result;
    }
}