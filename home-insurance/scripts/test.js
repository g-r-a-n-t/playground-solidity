const HomeInsurance = artifacts.require('HomeInsurance');

module.exports = function(callback) {
  var contact;
  HomeInsurance.deployed().then(function(instance) { 
    instance.requestInsurance(123, 0x5CF769d2ddaC6b91B117616Ab05FA14BF4d0Ec77); 
    instance.listInsuranceRequests.call().then(function(result) {
      console.log(result);
    }); 
  });
}
