// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

interface Challenge2{
    function subtractitem(string calldata _items) external;
    function getitem(uint256 index) external view returns(string memory);

}

abstract contract ChallengeManager{
    string[] internal items;

    function getCount() public view returns(uint256){
        return items.length;
    }

    function subtractitem(string memory _items) public virtual;
}

contract Challenge is Challenge2, ChallengeManager{
    function subtractitem(string memory _items)public override(ChallengeManager,Challenge2){
        items.push(_items);
    }

    function getitem(uint256 index)public view override returns(string memory){
        require(index < items.length,"Out of bounds");
        return items[index];
    }
}
