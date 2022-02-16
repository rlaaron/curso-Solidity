pragma solidity >= 0.8.1;

contract Visibilidad {
    
    function x()  private view returns(uint){
        uint data = 9;
        return data;
    }

    function y() public view returns(uint){
        return x();
    }
}      
