pragma solidity >=0.5.0;

contract Purchase {

    address[16] public purchasers;

    //Purchasing a wallpaper
    function purchase(uint purchaseId) public returns (uint) {
        require(purchaseId >= 0 && purchaseId <= 15);

        purchasers[purchaseId] = msg.sender;

        return purchaseId;
    }

    function getPurchasers() public view returns (address[16] memory) {
        return purchasers;
    }

}

