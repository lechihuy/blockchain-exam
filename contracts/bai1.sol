//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Bai1 {
    function isPerfect(int n) public pure returns (bool) {
        int sum = 1;
 
        for (int i = 2; i * i <= n; i++) {
            if (n % i == 0) {
                if(i * i != n)
                    sum = sum + i + n / i;
                else
                    sum = sum + i;
            }
        }

        return sum == n && n != 1;
    }

    int[] public perfects;

    function execute() public returns (int[] memory) {
        for (int i = 2; i <= 1000; i++) {
            if (isPerfect(i)) {
                perfects.push(i);
            }
        }

        return perfects;
    }
}