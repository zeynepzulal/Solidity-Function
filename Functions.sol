// SPDX-License-Identifier:MIT

  pragma solidity ^0.8.17;

  contract Functions{

      /*
      *view -> sadece  state veri okuyacaksa
      *pure -> state veri okuyamaz
      *hicbir sey kullanmamak -> set edilirken
      */
       function returnMany() public pure returns(uint,bool,uint){
           return(1,true,5);
       }

       function namedReturn() public pure returns(uint x ,bool y,uint z){
           return(1,true,5);
       }

       function example() public pure returns(uint,bool,uint,uint,uint){

        (uint i, bool b, uint c) = returnMany();
        uint a = i * c;
        uint z = c - i;

        return(i,b,c,a,z);

       }

       function arrayInput(uint[] memory _arr) public pure returns(uint[] memory){
           return _arr;
       }
       //mapping herhangi bir input veya output olamaz
       //mapping key-value olarak pair ediyor (esliyor).
  }