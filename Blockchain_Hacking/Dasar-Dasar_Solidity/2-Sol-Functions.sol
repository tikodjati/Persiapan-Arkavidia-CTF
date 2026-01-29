// SPDX-License-Identifier: MIT
pragma solidity >=0.8.18 <0.9.0; // stating the version

contract SimpleStorage {
   uint256 public favoriteNumber; // inisiasi favoriteNumber secara default bervalue 0

    // public, private, external, internal
    // fungsi ini berguna untuk menyimpan data atau nilai baru ke blockchain
   function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
   }

    // view, pure : view -> return variable ; pure -> return value
    // fungsi ini berguna untuk membaca data dari blockchain
   function retrieve() public view returns(uint256){
        return favoriteNumber;
   }
}
