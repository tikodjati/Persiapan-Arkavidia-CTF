// SPDX-License-Identifier: MIT
pragma solidity >=0.8.18 <0.9.0;

import {SimpleStorage, SimpleStorage2} from "./SimpleStorage.sol";

contract StorageFactory{
    SimpleStorage[] public listOfSimpleStorageContract;

    // Membuat SmartContract baru
    function createSimpleStorageContract() public {
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listOfSimpleStorageContract.push(newSimpleStorageContract);
    }

    // Menyimpan value di smartcontract tertentu berdasarkan index
    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
        // Address
        // ABI - Application Binary Interface
        SimpleStorage mySimpleStorage = listOfSimpleStorageContract[_simpleStorageIndex];
        mySimpleStorage.store(_newSimpleStorageNumber);
    }

    // Mendapatkan value dari SmartContract index tertentu
    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){
        SimpleStorage mySimpleStorage = listOfSimpleStorageContract[_simpleStorageIndex];
        return mySimpleStorage.retrieve();
    }
}
