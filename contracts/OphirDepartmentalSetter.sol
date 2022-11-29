// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.14;

import {OphirDepartmentalContractInterface} 
from "../interfaces/OphirDepartmentalContractInterface.sol";

/**
* @title OphirDepartmentalSetter.
* @author
* @dev 
*/
abstract contract OphirDepartmentalSetter {
    function addWorkersInDepartment(
        address _ophir, 
        string memory _dept,
        uint256 _number
    ) public
    {
        OphirDepartmentalContractInterface(_ophir).increaseDepartmentNumber(_dept, _number);
    }
}