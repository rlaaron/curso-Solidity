pragma solidity >= 0.8.1;

contract enums{
    enum tamanoPapasFritas {GRANDE, MEDIANO, PEQUENO}
    tamanoPapasFritas choice;
    tamanoPapasFritas constant defaultChoice = tamanoPapasFritas.GRANDE;
    function setSmall() public {
        choice = tamanoPapasFritas.PEQUENO;
    }


    function getChoice() public view returns(tamanoPapasFritas){
        return choice;
    }
    function getDefaultChoice() public view returns (uint) {
        return uint(defaultChoice);
    }   
}