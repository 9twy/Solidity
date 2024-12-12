// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
import {SimpleStorage} from "./SimpleStorage.sol";
contract StorageFactory{
    // unit256 public favoiurt number
     SimpleStorage[] public listOfSimpleStorageContracts;
    function createSimpleStorageContract() public {
        SimpleStorage newSimpleStorage=new SimpleStorage();
        listOfSimpleStorageContracts.push(newSimpleStorage);


    }
    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
        // address 
        // ABI -Application binary Interface . the complier knows what is the it's abi beacuse he's the one who created it .

        SimpleStorage mySimpleStorage=listOfSimpleStorageContracts[_simpleStorageIndex];
        mySimpleStorage.store(_newSimpleStorageNumber);

    }
    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256)   {
        SimpleStorage  mySimpleStorage=listOfSimpleStorageContracts[_simpleStorageIndex];
        return mySimpleStorage.retrive(); 

    }
    
}

