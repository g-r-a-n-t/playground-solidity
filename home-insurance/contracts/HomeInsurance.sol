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
  uint[] homeInsuranceRequestsIds;

  
  function requestInsurance(uint value, address owner) public {
    Home memory newHome = Home(currentId, value, owner);
    homeInsuranceRequests.push(newHome);
    homeInsuranceRequestsIds.push(currentId);
    currentId++;
  }

  function signInsuranceRequest() public {

  }

  function absoluteLossRequest() public {

  }

  function signAbsoluteLossRequest() public {
    
  }

  function listInsuranceRequests() public constant returns (uint[]) {
    return homeInsuranceRequestsIds;
  }
}
