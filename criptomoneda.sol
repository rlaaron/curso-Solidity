pragma solidity >= 0.8.1;

contract Coin {

    address public minter;
    mapping (address => uint) public balances;

    event Sent (address from, address to, uint amount);

    constructor() {
        minter = msg.sender;   
    }

    // enviar cantidad de moneda creada a la direccion especifica
    function mint(address receiver, uint amount) public {
        require(msg.sender == minter);
        balances[receiver] += amount;    
    }

    error insufficientBalance(uint requested, uint available);

    //funcion enviar moneda

    function send(address receiver, uint amount) public {
        if (amount > balances[msg.sender])
            revert insufficientBalance({
                requested: amount,
                available: balances[msg.sender]
            });
    }
}