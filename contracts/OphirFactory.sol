// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.14;

import {OphirDepartmentalContract} 
from "./OphirDepartmentalContract.sol";

import {OphirDepartmentalGetter} from "./OphirDepartmentalGetter.sol";
import {OphirDepartmentalSetter} from "./OphirDepartmentalSetter.sol";

/**
* @title OphirFactory.
* @author
* @dev 
*/
contract OphirFactory is 
OphirDepartmentalGetter,
OphirDepartmentalSetter
{
    mapping(uint256 => address) public ophirs;
    uint256 public counter;
    
    function deployOphirDepartmentalContract() public {
        OphirDepartmentalContract _ophir = new OphirDepartmentalContract();
        ophirs[counter] = address(_ophir);
        counter ++;
    }

    function getWorkersAt(uint256 _ophirIndex, string memory _dept)
    public
    view
    returns(uint256)
    {
        address _ophir = ophirs[_ophirIndex];
        require(_ophir != address(0), "No Ophir At Index.");

        return getWorkersInDepartment(_ophir, _dept);
    }
}