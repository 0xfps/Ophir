// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.14;

import {OphirDepartmentalContractInterface} 
from "../interfaces/OphirDepartmentalContractInterface.sol";

/**
* @title OphirDepartmentalGetter.
* @author
* @dev 
*/
abstract contract OphirDepartmentalGetter {
    function getWorkersInDepartment(address _ophir, string memory _dept) 
    public 
    view 
    returns (uint256) 
    {
        return OphirDepartmentalContractInterface(_ophir).getDepartmentNumber(_dept);
    }
}