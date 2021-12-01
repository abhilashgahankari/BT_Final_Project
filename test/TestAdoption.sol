pragma solidity >=0.5.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Purchase.sol";

contract TestPurchase{
    // The address of the purchase contract to be Tested
    Purchase purchase = Purchase(DeployedAddresses.Purchase());

    //id of the wallpaper that will be used for  testing
    uint expectedWallpaperId = 8;

    //The expected purchaser of the wallpaper is this contract
    address expectedPurchaser = address(this);

    //testing the purchase function
    function TestPurchas() public {
        uint returedId = purchase.purchase(expectedWallpaperId);

        Assert.equal(returedId, expectedWallpaperId,"Purchase of the expected wallpaper should match what is returned.");
    }

    //testing retrival of all wallpaper owners
    function testGetPurchaserAddressByWallpaperId()public {
        address purchaser = purchase.purchasers(expectedWallpaperId);
        Assert.equal(purchaser, expectedPurchaser,  "Owner of the expected wallpaper should be this contract");
    }

    //Testing retrival of all wallpaper owners
    function testGetPurchaserAddressByWallpaperIdArray() public {
        //Store purchasers in memory rather than contract's storage
        address[16] memory purchasers = purchase.getPurchasers();

        Assert.equal(purchasers[expectedWallpaperId], expectedPurchaser, "Owner of the expected wallpaper should be this contract");
    }
}


