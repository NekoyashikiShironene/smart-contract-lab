// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;


contract CheckIn {
    mapping(address => uint256) public usersCheckedIn;
    address[] users;

    function check_in() external {
        if (usersCheckedIn[msg.sender] == 0) {
            users.push(msg.sender);
        }
        usersCheckedIn[msg.sender] += 1;
    }

    function report() external view returns(address[] memory, uint256[] memory) {
        uint256 length = users.length;
        uint256[] memory counts = new uint256[](length);

        for (uint256 i = 0; i < length; i++) {
            counts[i] = usersCheckedIn[users[i]];
        }
        return (users, counts);
    }
} 
