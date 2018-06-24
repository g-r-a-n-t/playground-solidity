pragma solidity ^0.4.0;

// 0x6986c7c95adbd3d5bceef545a39abb8debcd5cd2

contract Message {
    string private m = "";
    
    function setMessage(string newM) public {
        m = newM;
    }
    
    function getMessage() public constant returns (string) {
        return m;
    }
}
