pragma solidity >= 0.8.1;

contract contrato{

    uint value;

    function getValue() external view returns(uint) {
        return value;
    }

    function getNewValue() external pure returns(uint) {
        return 3 + 3;
    }

    function valuePlusThree() external view returns(uint) {
        return value + 3;
    }
}