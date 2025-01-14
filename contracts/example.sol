// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract Main {

    function fibo(uint256 x) public pure returns(uint256) {
        if (x <= 1) 
            return x;

        return fibo(x-1) + fibo(x-2);

    }
}