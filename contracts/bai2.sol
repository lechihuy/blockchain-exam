//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Bai2 {
    function count_letters(uint n) public pure returns (uint) {
        uint count = 1;
        
        while (n / 10 ** count >= 1) {
            count++;
        }

        return count;
    }

    function find_last_digit(uint n) public pure returns (uint) {
        return n % 10;
    }

    function find_first_digit(uint n) public pure returns (uint) {
        return uint(n / 10 ** (count_letters(n) - 1));
    }

    function sum_letters(uint n) public pure returns (uint) {
        uint sum = 0;
        for (uint i = count_letters(n); i >= 1; i--) {
            uint digit = uint(n / 10 ** (i - 1));
            sum += digit;
            n -= digit * 10 ** (i - 1);
        }
        return sum;
    }

    function reverse(uint n) public pure returns (uint) {
        uint reverser = 0;
        uint last_digit;

        while(n != 0){
            last_digit = n % 10;
            reverser = reverser * 10 + last_digit;
            n = uint(n / 10);
        }

        return reverser;
    }

    function execute(uint n) public pure returns (uint count, uint last_digit, uint first_digit, uint sum, uint reverser) {
        count = count_letters(n);
        last_digit = find_last_digit(n);
        first_digit = find_first_digit(n);
        sum = sum_letters(n);
        reverser = reverse(n);
    }
}