pragma solidity >=0.5.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Adoptions.sol";

contract TestAdoption {
    // The address of the adoption contract to be Tested
    Adoptions adoption = Adoptions(DeployedAddresses.Adoptions());

    //The id of the pet that will be used for testing
    uint expectedPetId = 8;

    //The expected owner of the adopted pet is this contract
    address expectedAdopter = address(this);

    //Testing the adopt() function
    function testUserCanAdopt() public {
        uint returnedId = adoption.adopt(expectedPetId);

        Assert.equal(returnedId, expectedPetId, "Adoption of the expected pet should match what is returned.");
    }

    //Testing retrival of a single Pet's owner
    function testGetAdopterAddressByPetId() public {
        address adopter = adoption.adopters(expectedPetId);

        Assert.equal(adopter, expectedAdopter, "Owner of the expected pet should be this contract");

    }

    //Testing retrival of all pet owners
    function testGetAdopterAddressbyPetIdArray() public {
        //Store Adopters in memory rather than contract's storage
        address[16] memory adopters = adoption.getAdopters();

        Assert.equal(adopters[expectedPetId], expectedAdopter, "Owner of the expected pet should be this contract");
    }
}


