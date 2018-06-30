pragma solidity ^0.4.23;

contract HomeInsurance {
  struct Home {
    uint id;
    uint value;
    address owner;
  }

  uint currentId;
  Home[] homesInsured;
  Home[] homeInsuranceRequests;

  
  function requestInsurance(uint value, address owner) public {
    Home memory newHome = Home(currentId, value, owner);
    homeInsuranceRequests.push(newHome);
    currentId++;
  }

  function signInsuranceRequest() public {

  }

  function absoluteLossRequest() public {

  }

  function signAbsoluteLossRequest() public {
    
  }

  function listInsuranceRequests() public constant returns (uint[]) {
    uint[] storage ids;
    for(uint i = 0; i < homeInsuranceRequests.length; i++) {
      ids.push(homeInsuranceRequests[i].id);
    } 
    return ids;
  }
}
