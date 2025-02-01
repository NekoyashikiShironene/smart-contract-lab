// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Operators {

    function add(int256 a, int256 b) public pure returns (int256) {
        return a + b;
    }

    function minus(int256 a, int256 b) public pure returns (int256) {
        return a - b;
    }

    function multiply(int256 a, int256 b) public pure returns (int256) {
        return a * b;
    }

    function devide(int256 a, int256 b) public pure returns (int256) {
        return a / b;
    }
}