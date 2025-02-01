// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Contract {
    function count_word(string memory text) public pure returns(uint256)  {
        bytes memory strBytes = bytes(text);
        if (strBytes.length == 0) {
            return 0;
        }

        uint256 wordCount = 1;
        for (uint256 i = 0; i < strBytes.length; i++) {
            if (strBytes[i] == 0x20) {
                wordCount++;
            }
        }

        return wordCount;
    }

    function split(string memory text) public pure returns(string[] memory) {
        bytes memory strBytes = bytes(text);
        uint256 wordCount = count_word(text);
        string[] memory words = new string[](wordCount);
        
        uint256 wordIndex = 0;
        uint256 lastIndex = 0;

        for (uint256 i = 0; i <= strBytes.length; i++) {
            if (i == strBytes.length || strBytes[i] == 0x20) {
                uint256 wordLength = i - lastIndex;
                bytes memory word = new bytes(wordLength);
                for (uint256 j = 0; j < wordLength; j++) {
                    word[j] = strBytes[lastIndex + j];
                }
                words[wordIndex] = string(word);
                wordIndex++;
                lastIndex = i + 1;
            }
        }
        
        return words;
    }

}