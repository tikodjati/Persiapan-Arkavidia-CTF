// SPDX-License-Identifier: MIT
pragma solidity >=0.8.18 <0.9.0; // stating the version

contract SimpleStorage {
    // Basic data types on Solidity
    bool hasFavoriteNumber = true; // boolean
    uint256 favoriteNumber = 969; // tidak bisa diset ke minus. Ada juga uint64, uint32, dll
    string favoriteNumberInText = "Sembilan Enam Sembilan"; // sering digunakan untuk teks
    int256 favoriteInt = -969; // berbeda dengan uint, int bisa diset sebagai minus
    address myAddr = 0x71C7656EC7ab88b098defB751B7401B5f6d8976F; // tipe data untuk menyimpan suatu alamat
    bytes32 favoriteBytes32 = "kucing"; // 
}            
